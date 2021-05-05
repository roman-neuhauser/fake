-o combines with -v
===================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -ov fubar <<\EOF
  > hello world!
  > EOF

  $ fubar 1> /dev/null
  fubar

  $ fubar
  fubar
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
