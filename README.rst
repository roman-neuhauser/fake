@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
               Fake: Mocks and Stubs For the Command Line
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


*Fake* is a small tool to create test doubles for commandline utilities.


.. contents::



Motivation
==========

Let's say you're writing a script supposed to manipulate network
interface configuration in a GNU/Linux host.  The script should use
ip(8) to do its work.  How would you test it?  Requiring a real host
environment is an unreasonable burden.


Solution
========

*Fake* provides an easy interface to create mocks of any command.
A fake can either respond to any argument vector or only to specific one(s),
it can have whatever body you provide, or it can use builtin behaviors:
be quiet or reflect the received arguments, with an exit code of your
choice.

The directory where the fakes are created is communicated to *Fake* using
the ``$FAKE_BINDIR`` environment variable; it's up to you to make sure this
directory is in your ``$PATH``.


Usage
=====

::

  $ fake -h
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help

  $ fake -hh
  fake: usage: fake -h|-hh
  fake: usage: fake [-b | -e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  
  Options:
  
    -h      Display short usage help.
            Given twice, display full help.
  
    -b      Body.  Create fake from stdin.
    -c      Catchall.  Created fake will receive
            any uses of CMD not covered by other,
            more specific fakes.
    -e      Error.  Created fake will emit current
            stdin to its stderr.
    -o      Output.  Created fake will emit current
            stdin to its stdout.
    -v      Verbose.  Reflect received argv on stderr.
    -w      Which.  Print pathname of the fake that
            would receive given CMD [ARG...].
    -x N    Exit code.  Fake should exit with N.


Examples
========

Assert particular arguments::

  $ rm -r $FAKE_BINDIR/ls $FAKE_BINDIR/.ls

  $ fake ls
  $ ls foo
  fake: error: argv mismatch
  fake: expected: ls
  fake: received: ls foo
  [100]

  $ rm -r $FAKE_BINDIR/ls $FAKE_BINDIR/.ls

  $ fake ls foo
  $ fake ls bar baz
  $ ls bar
  fake: error: argv mismatch
  fake: expected: ls foo
  fake: expected: ls bar baz
  fake: received: ls bar
  [100]


Accept any arguments::

  $ rm -r $FAKE_BINDIR/ls $FAKE_BINDIR/.ls

  $ fake -c ls
  $ ls -la stuff
  $ ls


Use user-defined exit code::

  $ rm -r $FAKE_BINDIR/ls $FAKE_BINDIR/.ls

  $ fake -x 42 ls foo
  $ ls foo
  [42]
  $ ls
  fake: error: argv mismatch
  fake: expected: ls foo
  fake: received: ls
  [100]


Echo received arguments::

  $ rm -r $FAKE_BINDIR/ls $FAKE_BINDIR/.ls

  $ fake -v ls foo
  $ fake -v ls bar qux

  $ ls foo
  ls foo
  $ ls bar qux
  ls bar qux


Use user-provided body::

  $ rm -r $FAKE_BINDIR/date $FAKE_BINDIR/.date

  $ echo echo 2010-11-12 | fake -b date

  $ date
  2010-11-12


You can combine options::

  $ rm -r $FAKE_BINDIR/ls $FAKE_BINDIR/.ls

  $ fake -cv ls
  $ ls
  ls
  $ ls foo bar baz
  ls foo bar baz

  $ fake -cbx 69 ls <<\EOF
  > #!/bin/sh
  > printf -- "argc=%d" "$#"
  > [ $# -eq 0 ] || printf -- " -- %s" "$@"
  > printf -- "\n"
  > EOF

  $ ls
  argc=0
  [69]

  $ ls whatever
  argc=1 -- whatever
  [69]


Display pathname of the receiver for given argv::

  $ rm -r $FAKE_BINDIR/ls $FAKE_BINDIR/.ls

  $ fake -w ls
  [1]

  $ fake ls foo bar
  $ fake -c ls
  $ fake -w ls foo
  /*/.ls/0+                  (glob)
  $ fake -w ls foo bar
  /*/.ls/2-CPNMU===-C9GN4=== (glob)


License
=======

Published under the `MIT license`__, see `LICENSE file`__.

.. __: https://opensource.org/licenses/MIT
.. __: LICENSE
