################################################################################
#
# Package necker python modules makefile.
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
# C/C++ python wrappers

RNMAKE_SUBDIRS = wrappers

#------------------------------------------------------------------------------
# Python
#
# Note: 'RNMAKE_PYTHON_ENABLED = y' must be set for the target architecture.

# required 
RNMAKE_PYTHON_PKG = $(RNMAKE_PKG)

# Python extra targets.
EXTRA_TGT_ALL_POST 		= python-all
EXTRA_TGT_DOC 				= python-doc
EXTRA_TGT_CLEAN 			= python-clean
EXTRA_TGT_DISTCLEAN 	= python-distclean

#------------------------------------------------------------------------------
# Include RNMAKE rules makefile(s)

# include top-level rules
include $(RNMAKE_PKG_ROOT)/rnmake/Rules.mk

# include python rules
include $(RNMAKE_PKG_ROOT)/rnmake/Rules.python.mk
