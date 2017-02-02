-x gives exit code for matching invocation
==========================================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -x 69 fubar -sna fu

  $ fubar -sna fu
  [69]

  $ fubar -sna
  fake: error: argv mismatch
  fake: expected: fubar -sna fu
  fake: received: fubar -sna
  [100]

  $ fubar -snafu
  fake: error: argv mismatch
  fake: expected: fubar -sna fu
  fake: received: fubar -snafu
  [100]

  $ fubar -sna fu bar
  fake: error: argv mismatch
  fake: expected: fubar -sna fu
  fake: received: fubar -sna fu bar
  [100]
