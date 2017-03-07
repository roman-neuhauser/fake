-e announces error on stdin
===========================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -e fubar <<\EOF
  > gloomy sunday...
  > EOF

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0
  $ test -f $FAKE_BINDIR/.fubar/0
  $ test -x $FAKE_BINDIR/.fubar/0
  $ cat $FAKE_BINDIR/.fubar/0
  #!/bin/sh
  cat >&2 <<\EOF
  gloomy sunday...
  EOF

