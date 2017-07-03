segments backend names to to avoid ENAMETOOLONG errors
======================================================

setup::

  $ . $TESTDIR/setup

  $ if type fubar >/dev/null 2>&1; then
  >   echo "collision with $(type fubar)"
  >   exit 80
  > fi

test default chunk size (255)::

  $ fake fubar \
  >   a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9

  $ fakes $FAKE_BINDIR/.fubar
  36-/C4======-C8======-CC======-CG======-CK======-CO======-CS======-D0======-D4======-D8======-DC======-DG======-DK======-DO======-DS======-E0======-E4======-E8======-EC======-EG======-EK======-EO======-ES======-F0======-F4======-F8======-60======-64======-68=/=====-6C======-6G======-6K======-6O======-6S======-70======-74======

  $ fake -w fubar \
  >   a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9
  /*/.fubar/36-/C4======-C8======-CC======-CG======-CK======-CO======-CS======-D0======-D4======-D8======-DC======-DG======-DK======-DO======-DS======-E0======-E4======-E8======-EC======-EG======-EK======-EO======-ES======-F0======-F4======-F8======-60======-64======-68=/=====-6C======-6G======-6K======-6O======-6S======-70======-74====== (glob)

test custom chunk size::

  $ rm -rf $FAKE_BINDIR/fubar $FAKE_BINDIR/.fubar

  $ export FAKE_BACKEND_CHUNKSIZE=12

  $ fake fubar \
  >   a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9

  $ fakes $FAKE_BINDIR/.fubar
  36-/C4======-C8=/=====-CC====/==-CG======-/CK======-CO=/=====-CS====/==-D0======-/D4======-D8=/=====-DC====/==-DG======-/DK======-DO=/=====-DS====/==-E0======-/E4======-E8=/=====-EC====/==-EG======-/EK======-EO=/=====-ES====/==-F0======-/F4======-F8=/=====-60====/==-64======-/68======-6C=/=====-6G====/==-6K======-/6O======-6S=/=====-70====/==-74======

  $ fake -w fubar \
  >   a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9
  /*/.fubar/36-/C4======-C8=/=====-CC====/==-CG======-/CK======-CO=/=====-CS====/==-D0======-/D4======-D8=/=====-DC====/==-DG======-/DK======-DO=/=====-DS====/==-E0======-/E4======-E8=/=====-EC====/==-EG======-/EK======-EO=/=====-ES====/==-F0======-/F4======-F8=/=====-60====/==-64======-/68======-6C=/=====-6G====/==-6K======-/6O======-6S=/=====-70====/==-74====== (glob)
