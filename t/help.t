misuse, usage, help
===================

setup::

  $ . $TESTDIR/setup
  $ unset FAKE_BINDIR

test::

  $ fake
  fake: error: missing operand
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [100]

  $ fake -c
  fake: error: missing operand
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help
  [100]

  $ fake -h
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  fake: use `fake -hh` to display help

  $ fake -hh
  fake: usage: fake -h | -hh
  fake: usage: fake [-e | -o] [-c] [-v] [-x N] CMD [ARG...]
  fake: usage: fake -b [-c] CMD [ARG...]
  fake: usage: fake -p [-c] [-v] CMD [ARG...]
  fake: usage: fake -t [-c] [-v] CMD [ARG...]
  fake: usage: fake -w CMD [ARG...]
  
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
    -p      Pass-through.  This backend will remove
            $FAKE_BINDIR from $PATH and re-exec its argv.
    -t      Transparent.  Like fake -p but the delegate
            will have the original $PATH in environment.
    -v      Verbose.  Reflect received argv on stderr.
    -w      Which.  Print pathname of the fake that
            would receive given CMD [ARG...].
    -x N    Exit code.  Fake should exit with N.
