Call fake from a pass-through fake
==================================

setup::

  $ . $TESTDIR/setup

  $ mkdir ...

  $ cat > .../rofl <<\EOF
  > #!/bin/sh
  > ${1:?}
  > EOF

  $ cat > .../mao <<\EOF
  > #!/bin/sh
  > printf -- "I'm MAO\n"
  > rofl cetung
  > EOF

  $ chmod 755 .../{rofl,mao}


  $ export PATH="$FAKE_BINDIR:...:$PATH"


test::

  $ fake -p rofl mao
  $ fake -vx 49 rofl cetung

  $ rofl mao
  I'm MAO
  rofl cetung
  [49]
