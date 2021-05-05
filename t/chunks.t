segments backend names to to avoid ENAMETOOLONG errors
======================================================

setup::

  $ . $TESTDIR/setup


test default chunk size (119)::

  $ fake -cv fubar a

  $ fake -v fubar \
  >   a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2

  $ fakes $FAKE_BINDIR/.fubar
  1+/C4======/impl
  29-/C4======-C8======-CC======-CG======-CK======-CO======-CS======-D0======-D4======-D8======-DC======-DG======-DK======-DO/======-DS======-E0======-E4======-E8======-EC======-EG======-EK======-EO======-ES======-F0======-F4======-F8======-60==/====-64======-68======/impl

  $ fake -w fubar a
  */1+/C4======/impl (glob)

  $ fake -w fubar \
  >   a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2
  */29-/C4======-C8======-CC======-CG======-CK======-CO======-CS======-D0======-D4======-D8======-DC======-DG======-DK======-DO/======-DS======-E0======-E4======-E8======-EC======-EG======-EK======-EO======-ES======-F0======-F4======-F8======-60==/====-64======-68======/impl (glob)

  $ fubar a
  fubar a

  $ fubar a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2
  fubar a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2

  $ fubar a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3
  fubar a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3


test custom chunk size::

  $ export FAKE_BACKEND_CHUNKSIZE=5

  $ fake -v snafu
  $ echo snafu a b special | fake -o snafu a b
  $ echo snafu a b c '[...]' | fake -co snafu a b c

  $ fakes $FAKE_BINDIR/.snafu
  0-/impl
  2-/C4===/===-C/8====/==/impl
  3+/C4===/===-C/8====/==-CC/=====/=/impl

  $ fake -w snafu
  */0-/impl (glob)

  $ fake -w snafu a b
  */2-/C4===/===-C/8====/==/impl (glob)

  $ fake -w snafu a b c
  */3+/C4===/===-C/8====/==-CC/=====/=/impl (glob)

  $ snafu
  snafu

  $ snafu a b
  snafu a b special

  $ snafu a b c
  snafu a b c [...]
