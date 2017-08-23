fake -t incompatible options
============================

setup::

  $ . $TESTDIR/setup
  $ unset FAKE_BINDIR


test::

  $ fake -tb
  fake: error: -b cannot be used with -t
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -te
  fake: error: -e cannot be used with -t
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -to
  fake: error: -o cannot be used with -t
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -tp
  fake: error: -p cannot be used with -t
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -tv
  fake: error: -v cannot be used with -t
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -tw
  fake: error: -w cannot be used with -t
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -tx 69
  fake: error: -x cannot be used with -t
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]
