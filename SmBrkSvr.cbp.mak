#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = -Iinc -I../build/release-install/include
CFLAGS = -Wall -fexceptions
RESINC = 
LIBDIR = -L../build/release-install/lib
LIB = -lmuduo_inspect -lmuduo_http -lmuduo_net -lmuduo_base -lhiredis -lpthread
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/SmBrkSvr

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/SmBrkSvr

OBJ_DEBUG = $(OBJDIR_DEBUG)/src/servers.o $(OBJDIR_DEBUG)/src/redisWrapper.o $(OBJDIR_DEBUG)/src/readconf.o $(OBJDIR_DEBUG)/src/main.o $(OBJDIR_DEBUG)/src/gconf.o $(OBJDIR_DEBUG)/src/commons.o $(OBJDIR_DEBUG)/src/SmBrkrS.o $(OBJDIR_DEBUG)/src/Hiredis.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/src/servers.o $(OBJDIR_RELEASE)/src/redisWrapper.o $(OBJDIR_RELEASE)/src/readconf.o $(OBJDIR_RELEASE)/src/main.o $(OBJDIR_RELEASE)/src/gconf.o $(OBJDIR_RELEASE)/src/commons.o $(OBJDIR_RELEASE)/src/SmBrkrS.o $(OBJDIR_RELEASE)/src/Hiredis.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/src/servers.o: src/servers.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/servers.cpp -o $(OBJDIR_DEBUG)/src/servers.o

$(OBJDIR_DEBUG)/src/redisWrapper.o: src/redisWrapper.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/redisWrapper.cpp -o $(OBJDIR_DEBUG)/src/redisWrapper.o

$(OBJDIR_DEBUG)/src/readconf.o: src/readconf.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/readconf.cpp -o $(OBJDIR_DEBUG)/src/readconf.o

$(OBJDIR_DEBUG)/src/main.o: src/main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/main.cpp -o $(OBJDIR_DEBUG)/src/main.o

$(OBJDIR_DEBUG)/src/gconf.o: src/gconf.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/gconf.cpp -o $(OBJDIR_DEBUG)/src/gconf.o

$(OBJDIR_DEBUG)/src/commons.o: src/commons.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/commons.cpp -o $(OBJDIR_DEBUG)/src/commons.o

$(OBJDIR_DEBUG)/src/SmBrkrS.o: src/SmBrkrS.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/SmBrkrS.cpp -o $(OBJDIR_DEBUG)/src/SmBrkrS.o

$(OBJDIR_DEBUG)/src/Hiredis.o: src/Hiredis.cc
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Hiredis.cc -o $(OBJDIR_DEBUG)/src/Hiredis.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)/src

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/src/servers.o: src/servers.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/servers.cpp -o $(OBJDIR_RELEASE)/src/servers.o

$(OBJDIR_RELEASE)/src/redisWrapper.o: src/redisWrapper.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/redisWrapper.cpp -o $(OBJDIR_RELEASE)/src/redisWrapper.o

$(OBJDIR_RELEASE)/src/readconf.o: src/readconf.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/readconf.cpp -o $(OBJDIR_RELEASE)/src/readconf.o

$(OBJDIR_RELEASE)/src/main.o: src/main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/main.cpp -o $(OBJDIR_RELEASE)/src/main.o

$(OBJDIR_RELEASE)/src/gconf.o: src/gconf.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/gconf.cpp -o $(OBJDIR_RELEASE)/src/gconf.o

$(OBJDIR_RELEASE)/src/commons.o: src/commons.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/commons.cpp -o $(OBJDIR_RELEASE)/src/commons.o

$(OBJDIR_RELEASE)/src/SmBrkrS.o: src/SmBrkrS.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/SmBrkrS.cpp -o $(OBJDIR_RELEASE)/src/SmBrkrS.o

$(OBJDIR_RELEASE)/src/Hiredis.o: src/Hiredis.cc
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Hiredis.cc -o $(OBJDIR_RELEASE)/src/Hiredis.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)/src

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

