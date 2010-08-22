# See LICENSE file for license and copyright information
# zathura make config

VERSION = 0.0.8.1

# paths
PREFIX ?= /usr
MANPREFIX ?= ${PREFIX}/share/man

# libs
GTK_INC = $(shell pkg-config --cflags gtk+-2.0 poppler-glib)
GTK_LIB = $(shell pkg-config --libs gtk+-2.0 gthread-2.0 poppler-glib)

INCS = -I. -I/usr/include ${GTK_INC}
LIBS = -lc ${GTK_LIB} -lpthread -lm

# flags
CFLAGS += -std=c99 -pedantic -Wall -Wno-format-zero-length $(INCS)

# debug
DFLAGS = -g

# compiler
CC ?= gcc

# strip
SFLAGS = -s
