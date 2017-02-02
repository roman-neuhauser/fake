multiple fakes for a single command
===================================

setup::

  $ . $TESTDIR/setup

test::

  $ fake fubar --various things

  $ fake fubar more random stuff

  $ fubar --various things

  $ fubar more random stuff

  $ fubar
  fake: error: argv mismatch
  fake: expected: fubar --various things
  fake: expected: fubar more random stuff
  fake: received: fubar
  [100]

  $ fubar stuff
  fake: error: argv mismatch
  fake: expected: fubar --various things
  fake: expected: fubar more random stuff
  fake: received: fubar stuff
  [100]

  $ fubar -omg --even=more stuff
  fake: error: argv mismatch
  fake: expected: fubar --various things
  fake: expected: fubar more random stuff
  fake: received: fubar -omg --even=more stuff
  [100]
