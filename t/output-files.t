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
  $ test -f $FAKE_BINDIR/.fubar/0-
  $ test -x $FAKE_BINDIR/.fubar/0-
  $ cat $FAKE_BINDIR/.fubar/0-
  #!/bin/sh
  cat >&1 <<\EOF
  hello world!
  EOF

