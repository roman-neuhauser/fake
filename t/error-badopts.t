fake -e incompatible options
============================

setup::

  $ . $TESTDIR/setup
  $ unset FAKE_BINDIR


test::

  $ fake -eb
  fake: error: -b cannot be used with -e
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -eo
  fake: error: -o cannot be used with -e
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -ep
  fake: error: -p cannot be used with -e
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -ev
  fake: error: -v cannot be used with -e
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]

  $ fake -ew
  fake: error: -w cannot be used with -e
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o | -v] [-c] [-x N] CMD [ARG...]
  fake: usage: fake -p [-c] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [101]
