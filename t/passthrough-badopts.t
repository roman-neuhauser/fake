fake -p incompatible options
============================

setup::

  $ . $TESTDIR/setup
  $ unset FAKE_BINDIR


test::

  $ fake -pb
  fake: error: -b cannot be used with -p
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -pe
  fake: error: -e cannot be used with -p
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -po
  fake: error: -o cannot be used with -p
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -pt
  fake: error: -t cannot be used with -p
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -pv
  fake: error: missing operand
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [100]

  $ fake -pw
  fake: error: -w cannot be used with -p
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -px 69
  fake: error: -x cannot be used with -p
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]
