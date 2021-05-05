-e combines with -v
===================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -ev fubar <<\EOF
  > gloomy sunday...
  > EOF

  $ fubar 2> /dev/null

  $ fubar
  fubar
  gloomy sunday...

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
