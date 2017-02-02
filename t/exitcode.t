-x gives exit code for matching invocation
==========================================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -x 42 fubar

  $ fubar
  [42]

  $ fubar stuff
  fake: error: argv mismatch
  fake: expected: fubar
  fake: received: fubar stuff
  [100]

  $ fubar --more stuff
  fake: error: argv mismatch
  fake: expected: fubar
  fake: received: fubar --more stuff
  [100]

  $ fubar -omg --even=more stuff
  fake: error: argv mismatch
  fake: expected: fubar
  fake: received: fubar -omg --even=more stuff
  [100]
