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
# Scripts

SCRIPTS = ooga_chant.sh mammoth_thigh.py

EXTRA_TGT_ALL = all-scripts

.PHONY: all-scripts
all-scripts: echo-all-scripts
	$(call copyTrees,$(SCRIPTS),$(DISTDIR_BIN))


#------------------------------------------------------------------------------
# Include RNMAKE rules makefile(s)

include $(RNMAKE_PKG_ROOT)/rnmake/Rules.mk
