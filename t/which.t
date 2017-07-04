fake -w outputs the receiver's pathname
=======================================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -w fubar snafu
  [1]

  $ fake fubar

  $ fake -w fubar snafu
  [1]

  $ fake -w fubar
  /*/.fubar/0- (glob)

  $ fake -c fubar

  $ fake -w fubar snafu
  /*/.fubar/0+ (glob)

  $ fake -c fubar omg wtf

  $ fake -w fubar omg wtf | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/2+/DTMME===-ETQ6C===

  $ fake -w fubar omg wtf rofl lmao | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/2+/DTMME===-ETQ6C===

  $ fake fubar omg wtf

  $ fake -w fubar omg wtf | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/2-/DTMME===-ETQ6C===

  $ fake -w fubar omg wtf rofl lmao | sed "s,$FAKE_BINDIR,/*,"
  /*/.fubar/2+/DTMME===-ETQ6C===
