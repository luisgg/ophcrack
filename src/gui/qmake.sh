#!/bin/sh

QMAKE=/usr/bin/qmake-qt4

$QMAKE $@

sed -i -e "s,$QMAKE,./qmake.sh," Makefile
echo '$(TARGET): ../libophcrack.a ../samdump2/libsamdump2.a' >> Makefile
