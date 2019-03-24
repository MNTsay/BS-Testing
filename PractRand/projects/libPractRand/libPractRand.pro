TEMPLATE = lib
CONFIG += static create_prl
CONFIG += c++14
CONFIG -= app_bundle qt

TARGET = PractRand

DESTDIR = $${PWD}/../../lib

INCLUDEPATH +=\
    ../../include

SOURCES += \
    $$files(../../src/*.cpp) \
    $$files(../../src/RNGs/*.cpp) \
    $$files(../../src/RNGs/other/*.cpp)

unix: {
    QMAKE_CC = g++-7
    QMAKE_CXX = g++-7
}
QMAKE_CXXFLAGS_RELEASE += -std=c++14 -O3 -march=native -pthread
