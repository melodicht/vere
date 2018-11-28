::
::::  /hoon/ivory/gen
  ::
/?    310
::
::::
  !:
:-  %say
|=  [[now=@da * bec=beak] *]
:-  %noun
::  sys: root path to boot system, `/~me/[desk]/now/sys`
::
=/  sys=path
  /(scot %p p.bec)/[q.bec]/(scot %da now)/sys
::  compiler-source: hoon source file producing compiler, `sys/hoon`
::
=/  compiler-source
  .^(@t %cx (welp sys /hoon/hoon))
::  compiler-hoon: compiler as hoon expression
::
::    We parse with +ream for reproducibility.
::
~&  %ivory-parsing
=/  compiler-hoon  (ream compiler-source)
~&  %ivory-parsed
::  arvo-source: hoon source file producing arvo kernel, `sys/arvo`
::
=/  arvo-source
  .^(@t %cx (welp sys /arvo/hoon))
::  whole-hoon: arvo within compiler
::
=/  whole-hoon=hoon
  :+  %tsbn  compiler-hoon
  :+  %tsld  (ream arvo-source)
  [%$ 7]
::  compile the whole schmeer
::
~&  %ivory-compiling
=/  whole-formula
  q:(~(mint ut %noun) %noun whole-hoon)
~&  %ivory-compiled
::  zuse-ovo: standard library installation event
::
::    Arvo parses the %veer payload with +rain, so
::    we pass the empty path / for reproducibility.
::
=/  zuse-ovo=ovum
  :-  /vane/zuse
  [%veer %$ / .^(@ %cx (weld sys /zuse/hoon))]
::  installed: Arvo gate (formal instance) with %zuse installed
::
::    The :zuse-ovo event occurs at a defaulted date for reproducibility.
::
~&  %zuse-installing
=/  installed
  .*  0
  :+  %7  whole-formula
  [%9 2 %10 [6 %1 *@da zuse-ovo] %0 1]
~&  %zuse-installed
::
::  produce a formula that evaluates :whole-formula (for jet registration),
::  then ignores that result and produces :installed
::
[%7 whole-formula %1 installed]
