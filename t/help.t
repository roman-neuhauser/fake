misuse, usage, help
===================

setup::

  $ . $TESTDIR/setup
  $ unset FAKE_BINDIR

test::

  $ fake
  fake: error: missing operand
  fake: usage: fake -h|-hh
  fake: usage: fake [options] CMD [ARG...]
  fake: use `fake -hh` to display help
  [100]

  $ fake -c
  fake: error: missing operand
  fake: usage: fake -h|-hh
  fake: usage: fake [options] CMD [ARG...]
  fake: use `fake -hh` to display help
  [100]

  $ fake -h
  fake: usage: fake -h|-hh
  fake: usage: fake [options] CMD [ARG...]
  fake: use `fake -hh` to display help

  $ fake -hh
  fake: usage: fake -h|-hh
  fake: usage: fake [options] CMD [ARG...]
  
  Options:
  
    -h      Display short usage help.
            Given twice, display full help.
  
    -b      Body.  Created fake will consist of current stdin.
    -c      Catchall.  Created fake will receive
            any uses of CMD not covered by other,
            more specific fakes.
    -e      Error.  Created fake will emit current
            stdin to its stderr.
    -o      Output.  Created fake will emit current
            stdin to its stdout.
    -v      Verbose.  Reflect received argv on stderr.
    -x N    Exit code.  Fake should exit with N.
