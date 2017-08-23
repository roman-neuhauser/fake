fake -v incompatible options
============================

setup::

  $ . $TESTDIR/setup
  $ unset FAKE_BINDIR


test::

  $ fake -vb
  fake: error: -b cannot be used with -v
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -ve
  fake: error: -e cannot be used with -v
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -vo
  fake: error: -o cannot be used with -v
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -vp
  fake: error: -p cannot be used with -v
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -vt
  fake: error: -t cannot be used with -v
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -vw
  fake: error: -w cannot be used with -v
  fake: usage: fake -h | -hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -t [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]
