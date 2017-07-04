backend name segments must not be divisible by 8
================================================

setup::

  $ . $TESTDIR/setup


test::

  $ export FAKE_BACKEND_CHUNKSIZE=8

  $ fake fubar hello world
  $ fake -c fubar hello world

  $ fake -w fubar hello world
  /*/.fubar/2-/D1IMOR3F/-ETNN4R3/4 (glob)

  $ fake -w fubar hello world again
  /*/.fubar/2+/D1IMOR3F/-ETNN4R3/4 (glob)

test failure with $FAKE_BACKEND_CHUNKSIZE divisible by 8

  $ export FAKE_BACKEND_CHUNKSIZE=8

1-/CPNMUOJ1 is a *file*::

  $ rm -rf $FAKE_BINDIR/fubar $FAKE_BINDIR/.fubar

  $ fake fubar fooba

  $ fakes $FAKE_BINDIR/.fubar
  1-/CPNMUOJ1

1-/CPNMUOJ1 is a *dir*::

  $ rm -rf $FAKE_BINDIR/fubar $FAKE_BINDIR/.fubar

  $ fake fubar foobafooba

  $ fakes $FAKE_BINDIR/.fubar
  1-/CPNMUOJ1/CPNMUOJ1

test success with $FAKE_BACKEND_CHUNKSIZE /not/ divisible by 8::

  $ export FAKE_BACKEND_CHUNKSIZE=7

  $ fake fubar fooba

  $ fakes $FAKE_BINDIR/.fubar
  1-/CPNMUOJ/1
  1-/CPNMUOJ1/CPNMUOJ1

  $ fake fubar foobafooba

  $ fakes $FAKE_BINDIR/.fubar
  1-/CPNMUOJ/1
  1-/CPNMUOJ/1CPNMUO/J1
  1-/CPNMUOJ1/CPNMUOJ1
