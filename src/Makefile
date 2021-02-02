################################################################################
#
# Package necker source makefile.
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

RNMAKE_SUBDIRS = libpleistocene stones clan python scripts

#------------------------------------------------------------------------------
# Include RNMAKE rules makefile(s)

include $(RNMAKE_PKG_ROOT)/rnmake/Rules.mk
