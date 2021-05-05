-t -b execs `body` with `$FAKE_BINDIR` in `$PATH`
=================================================

setup::

  $ . $TESTDIR/setup

  $ fake -o snafu <<\EOF
  > hello world
  > EOF

  $ cat > body <<\EOF
  > #!/bin/sh
  > exec snafu
  > EOF

  $ fake -b broken <body
  $ fake -tb good <body

  $ broken
  *: exec: snafu: not found (glob)
  [127]

  $ good
  hello world
