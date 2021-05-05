-o announces error on stdin
===========================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -o fubar <<\EOF
  > hello world!
  > EOF

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0-
  $ test -f $FAKE_BINDIR/.fubar/0-/impl
  $ test -x $FAKE_BINDIR/.fubar/0-/impl
  $ cat $FAKE_BINDIR/.fubar/0-/impl
  #!/bin/sh
  cat >&1 <<\EOF
  hello world!
  EOF
