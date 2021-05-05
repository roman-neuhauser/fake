setup::

  $ . $TESTDIR/setup


test::

  $ fake -v fubar

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0-
  $ ls $FAKE_BINDIR/.fubar/0-
  impl

  $ cat $FAKE_BINDIR/.fubar/0-/impl
  #!/bin/sh
  {
  printf "%s" "${ARGV0##*/}"
  test $# -eq 0 || printf " %s" "$*"
  printf "\n"
  } >&2
