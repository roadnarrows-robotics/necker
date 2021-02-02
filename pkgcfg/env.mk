################################################################################
#
# necker envirionment makefile
#
# \LegalBegin
# \LegalEnd
#
################################################################################

#$(info DBG: $(lastword $(MAKEFILE_LIST)))

export _PKGCFG_ENV_MK = 1

# must be defined and non-empty
ifndef NECKER_WORKSPACE
  $(error 'NECKER_WORKSPACE' environment variable not specified)
endif

# ------------------------------------------------------------------------------
# RNMAKE_ARCH_DFT
#   Determines default architecture to make.
#
#   Environment variable: NECKER_ARCH_DFT
#   Fallback default:     x86_64
# ------------------------------------------------------------------------------

# 'make arch=<arch> ...' or NECKER_ARCH_DFT or x86_64
NECKER_ARCH_DFT ?= x86_64

# rnmake variable
RNMAKE_ARCH_DFT = $(NECKER_ARCH_DFT)

# ------------------------------------------------------------------------------
# RNMAKE_INSTALL_XPREFIX
#   Cross-install prefix. Actual packages are installed to:
#   $(RNMAKE_INSTALL_XPREFIX)/$(RNMAKE_ARCH)/
#
#   Environment variable: NECKER_INSTALL_XPREFIX
#   Fallback default:     $(HOME)/xinstall
# ------------------------------------------------------------------------------

# 'make xprefix=<path> ...' or RNMAKE_INSTALL_XPREFIX
NECKER_INSTALL_XPREFIX ?= $(HOME)/xinstall

# rnmake variable
RNMAKE_INSTALL_XPREFIX = $(NECKER_INSTALL_XPREFIX)

# ------------------------------------------------------------------------------
# RNMAKE_INSTALL_PREFIX
#   Install prefix. Overrides RNMAKE_INSTALL_XPREFIX. Packages are installed to:
#   $(RNMAKE_INSTALL_PREFIX)/
#
#   Environment Variable: NECKER_INSTALL_PREFIX
# ------------------------------------------------------------------------------

# rnmake variable
RNMAKE_INSTALL_PREFIX = $(NECKER_INSTALL_PREFIX)

# ------------------------------------------------------------------------------
# Export to sub-makes
#
export RNMAKE_ARCH_DFT
export RNMAKE_INSTALL_XPREFIX
export RNMAKE_INSTALL_PREFIX
