################################################################################
#
# Package necker libpleistocene makefile.
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
# Libraries

# Distribution Static Libraries
RNMAKE_DIST_STLIBS = pleistocene

# Distribution Shared Libraries
RNMAKE_DIST_SHLIBS = pleistocene

# Target subdirectory for libraries
pleistocene.SUBDIR = necker

# Source Files for libpleistocene
pleistocene.SRC.C = fire.c stone_tools.c

# Libraries to link with
pleistocene.LIBS	= 

# libraries within this package this library is dependent upon
pleistocene.LIBDEPS	=

#------------------------------------------------------------------------------
# Include RNMAKE top-level rules makefile

include $(RNMAKE_PKG_ROOT)/rnmake/Rules.mk
