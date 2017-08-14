fake -b incompatible options
============================

setup::

  $ . $TESTDIR/setup
  $ unset FAKE_BINDIR


test::

  $ fake -be
  fake: error: -e cannot be used with -b
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -bo
  fake: error: -o cannot be used with -b
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -bp
  fake: error: -p cannot be used with -b
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -bv
  fake: error: -v cannot be used with -b
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -bw
  fake: error: -w cannot be used with -b
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -bx 69
  fake: error: -x cannot be used with -b
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]
