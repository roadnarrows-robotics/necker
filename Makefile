################################################################################
#
# Package necker top-level makefile.
#
# RN Make System Specific Makefile
#
# \LegalBegin
# \LegalEnd
# 
################################################################################

#------------------------------------------------------------------------------
# RNMAKE_PKG_ROOT

ifeq ($(NECKER_WORKSPACE),)
  $(error 'NECKER_WORKSPACE' environment variable not specified)
endif

# Package Root Directory
RNMAKE_PKG_ROOT = $(NECKER_WORKSPACE)

#------------------------------------------------------------------------------
# Subdirectories

RNMAKE_SUBDIRS = src

#------------------------------------------------------------------------------
# Distribution files
#
# Optional

# list of interface header files recursively copied to dist/<dist>/include
RNMAKE_HDR_FILES = $(RNMAKE_PKG_ROOT)/src/include/*

# list of etc files recursively copied to dist/<dist>/etc
RNMAKE_ETC_FILES = $(RNMAKE_PKG_ROOT)/share/etc/*

# list of lib configuration files recursively copied to dist/<dist>/lib
RNMAKE_LIB_CFG_FILES = $(RNMAKE_PKG_ROOT)/share/lib/cmake

# list of share files recursively copied to dist/<dist>/share/share-<ver>
RNMAKE_SHARE_FILES = $(RNMAKE_PKG_ROOT)/share/*

#------------------------------------------------------------------------------
# Include RNMAKE rules makefile(s)

include $(RNMAKE_PKG_ROOT)/rnmake/Rules.mk
