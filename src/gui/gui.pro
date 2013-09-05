# Copyright (C) 2008, Bertrand Mesot <http://www.objectif-securite.ch>
#	 	2008, Cedric Tissieres <http://www.objectif-securite.ch>
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-13, USA




TEMPLATE = app
CONFIG += warn_on release #debug

TARGET = ophcrack
DESTDIR = ..

DEPENDPATH += .

INCLUDEPATH += . ./.. ./../ntproba


LIBS += ../libophcrack.a ../samdump2/libsamdump2.a  -L/usr/lib -L/usr/lib -lm -lexpat -lpthread  -lssl -lcrypto -lqwt-qt4  

QMAKE_CFLAGS += -g -O2 -O2 -DNDEBUG -Wall -std=gnu9x -pedantic -I.. -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -I.. -I/usr/include
QMAKE_CXXFLAGS += -g -O2 -O2 -DNDEBUG -Wall -pedantic -fpermissive -Wno-long-long -I../.. -I../.. -I/usr/include -I/usr/include/qwt-qt4

# Input

HEADERS += ui_ophcrackgui.h \
           ophcrackgui.h \
           hashmodel.h \
           tablemodel.h \
           progdelegate.h \
           ui_tabledialog.h \
           tabledialog.h \
           singlehashdialog.h \
           hashview.h \
           samdialog.h \
           aboutdialog.h \
           helpdialog.h \
           graphdialog.h \
           histogram_item.h \
           exportdialog.h 

FORMS += ophcrackgui.ui \
         tabledialog.ui \
         singlehashdialog.ui \
         samdialog.ui \
         aboutdialog.ui \
         helpdialog.ui \
         graphdialog.ui \
         exportdialog.ui 

SOURCES += main.cpp \
           ophcrackgui.cpp \
           hashmodel.cpp \
           tablemodel.cpp \
           progdelegate.cpp \
           tabledialog.cpp \
           singlehashdialog.cpp \
           hashview.cpp \
           samdialog.cpp \
           aboutdialog.cpp \
           helpdialog.cpp \
           graphdialog.cpp \
           histogram_item.cpp \
           exportdialog.cpp 

RESOURCES += gui.qrc

RC_FILE += ophcrack_win32.rc

mac {
    ICON = ophcrack.icns   
    QMAKE_INFO_PLIST = Info.plist
}
