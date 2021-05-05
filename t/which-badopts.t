fake -w incompatible options
============================

setup::

  $ . $TESTDIR/setup
  $ unset FAKE_BINDIR


test::

  $ fake -wb
  fake: error: -b cannot be used with -w
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -wc
  fake: error: -c cannot be used with -w
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -we
  fake: error: -e cannot be used with -w
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -wo
  fake: error: -o cannot be used with -w
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -wp
  fake: error: -p cannot be used with -w
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -wt
  fake: error: -t cannot be used with -w
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -wx 69
  fake: error: -x cannot be used with -w
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]
