default fake accepts exact argv
===============================

setup::

  $ . $TESTDIR/setup

test::

  $ fake fubar --more stuff

  $ fubar --more stuff

  $ fubar
  fake: error: argv mismatch
  fake: expected: fubar --more stuff
  fake: received: fubar
  [100]

  $ fubar stuff
  fake: error: argv mismatch
  fake: expected: fubar --more stuff
  fake: received: fubar stuff
  [100]

  $ fubar -omg --even=more stuff
  fake: error: argv mismatch
  fake: expected: fubar --more stuff
  fake: received: fubar -omg --even=more stuff
  [100]
