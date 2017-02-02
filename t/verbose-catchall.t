setup::

  $ . $TESTDIR/setup


test::

  $ fake -cv fubar

  $ fubar
  fubar

  $ fubar stuff
  fubar stuff

  $ fubar --more stuff
  fubar --more stuff

  $ fubar -omg --even=more stuff
  fubar -omg --even=more stuff
