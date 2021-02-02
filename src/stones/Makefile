################################################################################
#
# Package necker stones makefile.
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
RNMAKE_DIST_PGMS = stones

# Source Files for libpleistocene
stones.SRC.C = stones.c

# Libraries to link with
stones.LIBS = pleistocene

# Libraries within this package this program is dependent upon
stones.LIBDEPS	= pleistocene

#------------------------------------------------------------------------------
# Include RNMAKE top-level rules makefile

include $(RNMAKE_PKG_ROOT)/rnmake/Rules.mk
