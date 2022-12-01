#!/bin/bash
function gen() {
  for i in "${@:2:$#}"; do
    mftrace --formats=pfb --encoding=enc/$1 --magnification=8000 $i || echo "*********** $i FAILED *************"
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
  omsl6 \
  omsl8 \
  omsl9 \
  omss10 \
  omss12 \
  omss17 \
  omss8 \
  omss9 \
  omssbx10 \
  omssbxo10 \
  omssdc10 \
  omssi10 \
  omssi12 \
  omssi17 \
  omssi8 \
  omssi9 \
  omssq8 \
  omssqi8 \
  omvtt10
gen lhB.enc \
  omtex8 \
  omtex9 \
  omtex10
gen lhC.enc \
  omsltt10 \
  omsltt9 \
  omtcsc10 \
  omtt10 \
  omtt12 \
  omtt8 \
  omtt9
gen lhD.enc \
  ombxti10 \
  ombxti12 \
  ombxti7 \
  omff10 \
  omfi10 \
  omfib8 \
  omti10 \
  omti12 \
  omti7 \
  omti8 \
  omti9 \
  omu10
gen lhE.enc \
  omcsc10 \
  omcsc8 \
  omcsc9 \
  omr5
gen lhF.enc \
  omitt10 \
  omitt12 \
  omitt9
