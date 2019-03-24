TEMPLATE = app
CONFIG += console
CONFIG += c++14
CONFIG -= app_bundle qt

DESTDIR = $${_PRO_FILE_PWD_}/../../bin

INCLUDEPATH +=\
    ../../include \
    ../../tools

SOURCES += \
    ../../tools/RNG_benchmark.cpp

LIBS += -L$${_PRO_FILE_PWD_}/../../lib -lPractRand

unix: {
    QMAKE_CC = g++-7
    QMAKE_CXX = g++-7
}
QMAKE_CXXFLAGS_RELEASE += -std=c++14 -O3 -march=native -pthread
