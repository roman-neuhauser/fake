multiple fakes for a single command
===================================

setup::

  $ . $TESTDIR/setup

test::

  $ fake -x 42 fubar --various things

  $ fake -x 69 fubar more stuff

  $ fubar --various things
  [42]

  $ fubar more stuff
  [69]

  $ fubar
  fake: error: argv mismatch
  fake: expected: fubar --various things
  fake: expected: fubar more stuff
  fake: received: fubar
  [100]

  $ fubar stuff
  fake: error: argv mismatch
  fake: expected: fubar --various things
  fake: expected: fubar more stuff
  fake: received: fubar stuff
  [100]

  $ fubar -omg --even=more stuff
  fake: error: argv mismatch
  fake: expected: fubar --various things
  fake: expected: fubar more stuff
  fake: received: fubar -omg --even=more stuff
  [100]
