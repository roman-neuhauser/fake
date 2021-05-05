-b announces body on stdin
==========================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -bc fubar <<\EOF
  > #!/bin/sh
  > echo "hello ${1-unknown}!"
  > EOF

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0+
  $ ls $FAKE_BINDIR/.fubar/0+
  body
  impl

  $ test -f $FAKE_BINDIR/.fubar/0+/impl
  $ test -x $FAKE_BINDIR/.fubar/0+/impl
  $ cat $FAKE_BINDIR/.fubar/0+/impl
  #!/bin/sh
  exec "${0%/impl}/body" "$@"

  $ test -f $FAKE_BINDIR/.fubar/0+/body
  $ test -x $FAKE_BINDIR/.fubar/0+/body
  $ cat $FAKE_BINDIR/.fubar/0+/body
  #!/bin/sh
  echo "hello ${1-unknown}!"
