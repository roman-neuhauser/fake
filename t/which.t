fake -w outputs the receiver's pathname
=======================================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -w fubar snafu
  [1]

  $ fake fubar

  $ fake -w fubar snafu
  [1]

  $ fake -w fubar
  /*/.fubar/0-/impl (glob)

  $ fake -c fubar

  $ fake -w fubar snafu
  /*/.fubar/0+/impl (glob)

  $ fake -c fubar omg wtf

  $ fake -w fubar omg wtf | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/2+/DTMME===-ETQ6C===/impl

  $ fake -w fubar omg wtf rofl lmao | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/2+/DTMME===-ETQ6C===/impl

  $ fake fubar omg wtf

  $ fake -w fubar omg wtf | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/2-/DTMME===-ETQ6C===/impl

  $ fake -w fubar omg wtf rofl lmao | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/2+/DTMME===-ETQ6C===/impl

  $ fake -t fubar lol

  $ fake -w fubar lol | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/1-/DHNMO===/impl

  $ cat $(fake -w fubar lol)
  #!/bin/sh
  env PATH="$FAKE_BINDIR${PATH+:$PATH}" \
  exec "$(command -v "${ARGV0##*/}")" "$@"

  $ fake -vt fubar lollol

  $ fake -w fubar lollol | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/1-/DHNMOR3FDG======/impl

  $ cat $(fake -w fubar lollol)
  #!/bin/sh
  {
  printf "%s" "${ARGV0##*/}"
  test $# -eq 0 || printf " %s" "$*"
  printf "\n"
  } >&2
  env PATH="$FAKE_BINDIR${PATH+:$PATH}" \
  exec "$(command -v "${ARGV0##*/}")" "$@"
