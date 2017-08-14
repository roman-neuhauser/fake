setup ::

  $ . $TESTDIR/setup


test::

  $ fake -ex 69 fubar <<\EOF
  > lol
  > EOF

  $ fubar
  lol
  [69]

  $ fake -ox 42 fubar <<\EOF
  > omg
  > EOF

  $ fubar
  omg
  [42]

  $ fake -vx 69 fubar snafu

  $ fubar snafu
  fubar snafu
  [69]

  $ fake -cvx 42 snafu fubar

  $ snafu fubar roflmao
  snafu fubar roflmao
  [42]
