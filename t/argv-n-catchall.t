catchall fake accepts any argv
==============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -cv fubar sna fu

  $ fubar
  fake: error: argv mismatch
  fake: expected: fubar sna fu [...]
  fake: received: fubar
  [100]

  $ fubar stuff
  fake: error: argv mismatch
  fake: expected: fubar sna fu [...]
  fake: received: fubar stuff
  [100]

  $ fubar sna
  fake: error: argv mismatch
  fake: expected: fubar sna fu [...]
  fake: received: fubar sna
  [100]

  $ fubar sna --fu
  fake: error: argv mismatch
  fake: expected: fubar sna fu [...]
  fake: received: fubar sna --fu
  [100]

  $ fubar sna fu
  fubar sna fu

  $ fubar sna fu bar
  fubar sna fu bar

  $ fubar sna fu bar --baz
  fubar sna fu bar --baz
