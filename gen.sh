#!/bin/bash
function gen() {
  for i in "${@:2:$#}"; do
    mftrace --formats=pfb --encoding=/home/user/0000-git/system_installation/enc/$1 --magnification=2000 $i 2>/dev/null || echo "*********** $i FAILED *************"
  done
}
gen lhA.enc \
  lhb10 \
  lhbx10 \
  lhbx12 \
  lhbx5 \
  lhbx6 \
  lhbx7 \
  lhbx8 \
  lhbx9 \
  lhbxsl10 \
  lhdunh10 \
  lhr10 \
  lhr12 \
  lhr17 \
  lhr6 \
  lhr7 \
  lhr8 \
  lhr9 \
  lhsl10 \
  lhsl12 \
  lhsl6 \
  lhsl8 \
  lhsl9 \
  lhss10 \
  lhss12 \
  lhss17 \
  lhss8 \
  lhss9 \
  lhssbx10 \
  lhssbxo10 \
  lhssdc10 \
  lhssi10 \
  lhssi12 \
  lhssi17 \
  lhssi8 \
  lhssi9 \
  lhssq8 \
  lhssqi8 \
  lhvtt10
gen lhB.enc \
  lhtex8 \
  lhtex9 \
  lhtex10
gen lhC.enc \
  lhsltt10 \
  lhsltt9 \
  lhtcsc10 \
  lhtt10 \
  lhtt12 \
  lhtt8 \
  lhtt9
gen lhD.enc \
  lhbxti10 \
  lhbxti12 \
  lhbxti7 \
  lhff10 \
  lhfi10 \
  lhfib8 \
  lhti10 \
  lhti12 \
  lhti7 \
  lhti8 \
  lhti9 \
  lhu10
gen lhE.enc \
  lhcsc10 \
  lhcsc8 \
  lhcsc9 \
  lhr5
gen lhF.enc \
  lhitt10 \
  lhitt12 \
  lhitt9
