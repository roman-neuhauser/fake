misuse, usage, help
===================

setup::

  $ . $TESTDIR/setup
  $ unset FAKE_BINDIR


test::

  $ fake -ob
  fake: error: -b cannot be used with -o
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -oe
  fake: error: -e cannot be used with -o
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -op
  fake: error: -p cannot be used with -o
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -ot
  fake: error: -t cannot be used with -o
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -ov
  fake: error: missing operand
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [100]

  $ fake -ow
  fake: error: -w cannot be used with -o
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]
