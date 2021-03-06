##########################################################################
#
# Excel_formula_parser_cpp.pro
#

TARGET = Excel_formula_parser_cpp
TEMPLATE = app

# QT += core

CONFIG += console
CONFIG -= app_bundle

##########################################################################
# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

##########################################################################
# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain
# version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000   
# disables all the APIs deprecated before Qt 6.0.0

##########################################################################
# PCRE

# TODO: define PCRE include path for your own environment
INCLUDEPATH += C:\workspace\pcre-8.42\pcre-8.42
LIBS += -L"C:\workspace\pcre-8.42\pcre-8.42"
LIBS += -lpcrecpp

# How to install precpp in Ubuntu 18 
# sudo apt install libpcre++-dev

##########################################################################
# Source Files

INCLUDEPATH += .

HEADERS += \
FormulaParser.h \
StrUtils.h \
Token.h \
TokenArray.h \
TokenStack.h

SOURCES += \
FormulaParser.cpp \
main.cpp \
StrUtils.cpp \
Token.cpp \
TokenArray.cpp \
TokenStack.cpp
