-b announces body on stdin
==========================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -bc fubar <<\EOF
  > #!/bin/sh
  > echo "hello ${1-unknown}!"
  > EOF

  $ fubar
  hello unknown!


  $ fubar snafu
  hello snafu!
