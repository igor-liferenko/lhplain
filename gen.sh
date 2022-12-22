#!/bin/bash
# Encodings are taken from amsfonts

# If you need to copy/paste from pdf document, run the following command on the copied text and copy it again:
#   sed y/‘’−/\`\'-/

# Here are generated only fonts that are listed in dvips/cyrfonts.map (except cmccsc8 and cmccsc9)
# TODO: use t1disasm/t1asm (try to compile them from source) to merge these fonts with amsfonts instead of mftrace; you will also need to generate new glyph in fonts listed under 'textit2' and 'textit0' below by adding double-dot accent to letter e (see for example t1accent program)
# Also omtex8,9,10 fonts are generated, because they can be obtained by merging cmtex*.pfb with corresponding cmctt*.pfb

rm -r pfb
mkdir pfb
function gen() {
  for i in "${@:2:$#}"; do
    mftrace --formats=pfb --encoding=enc/$1 --magnification=1000 $i || echo "*********** $i FAILED *************"
    mv $i.pfb pfb/
  done
}
gen roman0 \
  omsltt10 \
  omtt10 \
  omtt12 \
  omtt8 \
  omtt9
gen roman1csc1 \
  omr5 \
  omcsc10
gen roman2 \
  omb10 \
  ombx10 \
  ombx12 \
  ombx5 \
  ombx6 \
  ombx7 \
  ombx8 \
  ombx9 \
  ombxsl10 \
  omr10 \
  omr12 \
  omr17 \
  omr6 \
  omr7 \
  omr8 \
  omr9 \
  omsl10 \
  omsl12 \
  omsl8 \
  omsl9 \
  omss10 \
  omss12 \
  omss17 \
  omss8 \
  omss9 \
  omssbx10 \
  omssdc10 \
  omssi17 \
  omssi10 \
  omssi12 \
  omssi8 \
  omssi9 \
  omssq8 \
  omssqi8
gen textit0 \
  omitt10
gen textit2 \
  ombxti10 \
  omti10 \
  omti12 \
  omti7 \
  omti8 \
  omti9 \
  omu10
gen texset \
  omtex8 \
  omtex9 \
  omtex10
