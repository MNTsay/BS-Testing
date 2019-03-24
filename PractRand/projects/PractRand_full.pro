TEMPLATE = subdirs
SUBDIRS = libPractRand RNG_test RNG_benchmark RNG_output

CONFIG += c++14
CONFIG -= app_bundle qt

RNG_test.depends = libPractRand
RNG_benchmark.depends = libPractRand
RNG_output.depends = libPractRand
