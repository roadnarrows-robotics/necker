################################################################################
#
# The necker package-wide makefile.
#
# \LegalBegin
# \LegalEnd
#
################################################################################

export _PKG_MK = 1

ifndef RNMAKE_PKG_ROOT
  $(error 'RNMAKE_PKG_ROOT' Not defined in including makefile)
endif

#------------------------------------------------------------------------------
# The Package Definition
RNMAKE_PKG                 = necker
RNMAKE_PKG_VERSION_MAJOR   = 0
RNMAKE_PKG_VERSION_MINOR   = 1
RNMAKE_PKG_VERSION_RELEASE = 0
RNMAKE_PKG_VERSION_DATE    = 2021

RNMAKE_PKG_AUTHORS    = Robin D. Knight, Kim Wheeler
RNMAKE_PKG_OWNERS     = Necker LLC
RNMAKE_PKG_URL        = necker.org
RNMAKE_PKG_EMAIL      = contact@necker.org
RNMAKE_PKG_LICENSE    = MIT
RNMAKE_PKG_LOGO       = /prj/rnmake/templates/ws/docs/images/glyptodon_logo.png
RNMAKE_PKG_FAVICON    = /prj/rnmake/templates/ws/docs/images/favicon.png
RNMAKE_PKG_DESC       = Necker cubesat ultra low cost exploration spacecraft
RNMAKE_PKG_KEYWORDS   = cubesat spacecraft exploration, necker
RNMAKE_PKG_DISCLAIMER = See the LICENSE for any copyright and licensing information.

# Dotted full version number M.m.r
RNMAKE_PKG_VERSION_DOTTED = $(RNMAKE_PKG_VERSION_MAJOR).$(RNMAKE_PKG_VERSION_MINOR).$(RNMAKE_PKG_VERSION_RELEASE)

# Concatenated full version number Mmr
RNMAKE_PKG_VERSION_CAT = $(RNMAKE_PKG_VERSION_MAJOR)$(RNMAKE_PKG_VERSION_MINOR)$(RNMAKE_PKG_VERSION_RELEASE)

# Package full name name-M.m.r
RNMAKE_PKG_FULL_NAME = $(RNMAKE_PKG)-$(RNMAKE_PKG_VERSION_DOTTED)

# Package documentation home page template.
# Undefined for no home page.
RNMAKE_PKG_HOME_INDEX = $(RNMAKE_PKG_ROOT)/pkgcfg/templates/home.html.tpl

#------------------------------------------------------------------------------
# Organization
RNMAKE_ORG         = Necker
RNMAKE_ORG_FQ      = Necker LLC
RNMAKE_ORG_ABBREV  = necker
RNMAKE_ORG_URL     = necker.org
RNMAKE_ORG_LOGO    = /prj/rnmake/templates/ws/docs/images/club_logo.png
RNMAKE_ORG_FAVICON = /prj/rnmake/templates/ws/docs/images/favicon.png

#------------------------------------------------------------------------------
# Package Optional Variables and Tweaks

# Package Include Directories
RNMAKE_PKG_INCDIRS = $(RNMAKE_PKG_ROOT)/src/include

# Package System Include Directories
RNMAKE_PKG_SYS_INCDIRS =

# Package Library Subdirectories
RNMAKE_PKG_LIB_SUBDIRS = necker

# Link Library Extra Library Directories (exluding local libraries)
RNMAKE_PKG_LD_LIBDIRS = 

# Release Files (docs)
RNMAKE_PKG_REL_FILES = VERSION.txt README.md INSTALL.md LICENSE

# CPP flags
RNMAKE_PKG_CPPFLAGS =

# C flags
RNMAKE_PKG_CFLAGS =

# CXX flags
RNMAKE_PKG_CXXFLAGS =

# Link flags
RNMAKE_PKG_LDFLAGS =

#------------------------------------------------------------------------------
# Package Debian Package Configuration

# Set Debian package default install location. Default default: /usr/local
# RNMAKE_DEB_PREFIX = /some/other/loc

#------------------------------------------------------------------------------
# Package Doxygen Configuration

# Define to build doxygen documentation, undefine or empty to disable.
RNMAKE_DOXY_ENABLED := y

# Package doxygen configuration directory.
PKG_DOXY_CONF_DIR = $(RNMAKE_PKG_ROOT)/pkgcfg/doxy

# Package doxygen configuration. Doxygen documentation will not be built
# without this file.
RNMAKE_DOXY_CONF_FILE = $(RNMAKE_PKG_ROOT)/pkgcfg/doxy/doxy.conf

# Doxygen field: HTML_HEADER
RNMAKE_DOXY_HTML_HEADER = $(RNMAKE_PKG_ROOT)/pkgcfg/doxy/doxy_header.html

# Doxygen field: HTML_FOOT
RNMAKE_DOXY_HTML_FOOTER = $(RNMAKE_PKG_ROOT)/pkgcfg/doxy/doxy_footer.html

# HTML_HEADER should <link> to this stylesheet 
RNMAKE_DOXY_HTML_STYLESHEET = $(RNMAKE_PKG_ROOT)/pkgcfg/doxy/doxy.css

# All images in this directory are copied to doxygen source image directory
RNMAKE_DOXY_IMAGES = $(RNMAKE_PKG_ROOT)/docs/images

# Doxygen field: PROJECT_LOGO
RNMAKE_DOXY_PROJECT_LOGO = $(RNMAKE_PKG_LOGO)

#------------------------------------------------------------------------------
# Package Pydoc Configuration

# Define to build python documention, undefine or empty to disable.
# RNMAKE_PYTHON_ENABLED must also be defined in Arch.<arch>.mk makefile.
RNMAKE_PYDOC_ENABLED := y

# Pydoc optional index.html template.
# Undefined if no pydoc index page
RNMAKE_PYDOC_INDEX = $(RNMAKE_PKG_ROOT)/pkgcfg/templates/pydoc.html.tpl
