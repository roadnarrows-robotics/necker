################################################################################
#
# Package necker pythons c/c++ (swig) makefile.
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
# Swig
#
# # Note: 'RNMAKE_SWIG_ENABLED = y' must be set in the target architecture.

SWIG_FILES 				= stone_tools.i fire.i
SWIG_EXTMOD_DIR 	= ../necker/pleistocene
SWIG_EXTMOD_LIBS 	= -lpleistocene

EXTRA_TGT_ALL 			= swig-all
EXTRA_TGT_DOC 			= swig-doc
EXTRA_TGT_CLEAN 		= swig-clean
EXTRA_TGT_DISTCLEAN = swig-distclean

#------------------------------------------------------------------------------
# Include RNMAKE rules makefile(s)

# include top-level rules
include $(RNMAKE_PKG_ROOT)/rnmake/Rules.mk

# include swig rules
include $(RNMAKE_PKG_ROOT)/rnmake/Rules.swig.mk


ifdef RNMAKE_DOXY
/*! \endcond RNMAKE_DOXY */
endif
