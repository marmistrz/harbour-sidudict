#-------------------------------------------------
#
# Project created by QtCreator 2011-06-14T14:25:30
#
#-------------------------------------------------

unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += glib-2.0
    LIBS += -lz

    #VARIABLES
    isEmpty(PREFIX) {
        PREFIX = /usr/local
    }

    BINDIR = $$PREFIX/bin

    #MAKE INSTALL
    INSTALLS += target

    target.path =$$BINDIR
}
unix:DEFINES += HAVE_MMAP

#QT       += core gui declarative

TARGET = sidudict
TEMPLATE = app

SOURCES += main.cpp\
        lib/dictziplib.cpp \
        lib/distance.cpp \
        lib/lib.cpp \
        lib/stardict.cpp \
        sidudictlib.cpp

HEADERS  += lib/dictziplib.hpp \
         lib/distance.h \
         lib/file.hpp \
         lib/lib.h \
         lib/mapfile.hpp \
         lib/stardict.h \ 
         sidudictlib.h

DEPENDPATH += .
INCLUDEPATH += .

RESOURCES += \
    qml.qrc

OTHER_FILES += qml/*.qml

settings.qml.path = /usr/share/jolla-settings/pages/sidudict
settings.qml.files = qml/settings.qml

INSTALLS += settings.qml

include(sailfishapplication/sailfishapplication.pri)

