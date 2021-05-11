setup::

  $ . $TESTDIR/setup


test::

  $ fake -bv fubar <<\EOF
  > echo lol
  > EOF

  $ fubar
  fubar
  lol
