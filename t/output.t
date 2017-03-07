-o announces output on stdin
============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -o fubar <<\EOF
  > hello world!
  > EOF

  $ fubar 1> /dev/null

  $ fubar
  hello world!

  $ fubar -omg
  fake: error: argv mismatch
  fake: expected: fubar
  fake: received: fubar -omg
  [100]

  $ fubar stuff
  fake: error: argv mismatch
  fake: expected: fubar
  fake: received: fubar stuff
  [100]
