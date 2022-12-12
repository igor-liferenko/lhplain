#!/bin/bash
# grep XXX enc/* to see where encoding differs from original
rm -r pfb
mkdir pfb
function gen() {
  for i in "${@:2:$#}"; do
    mftrace --formats=pfb --encoding=enc/$1 --magnification=1000 $i || echo "*********** $i FAILED *************"
    mv $i.pfb pfb/
  done
}
gen lhA.enc \
  omb10 \
  ombx10 \
  ombx12 \
  ombx5 \
  ombx6 \
  ombx7 \
  ombx8 \
  ombx9 \
  ombxsl10 \
  omdunh10 \
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
  omssi10 \
  omssi12 \
  omssi8 \
  omssi9 \
  omssq8 \
  omssqi8
gen lhB.enc \
  omtex8 \
  omtex9 \
  omtex10
gen lhC.enc \
  omsltt10 \
  omtt10 \
  omtt12 \
  omtt8 \
  omtt9
gen lhD.enc \
  ombxti10 \
  omti10 \
  omti12 \
  omti7 \
  omti8 \
  omti9 \
  omu10
gen lhE.enc \
  omcsc10 \
  omr5
gen lhF.enc \
  omitt10
