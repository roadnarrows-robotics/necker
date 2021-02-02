/*! \file
 *
 * \brief Swig interface definition of libpleistocene stone_tools.[hc].
 *
 * \pkgfile{@FILENAME}
 * \pkgcomponent{Python,necker}
 * \author Robin D. Knight, Kim Wheeler
 *
 * \LegalBegin
 * MIT
 * \LegalEnd
 */


%module stone_tools
%{
#include "necker/stone_tools.h"
%}

%begin
%{
/*! \file
 *  \brief Swig generated stone_tools wrapper c file.
 */
%}

/* 
 * Required RNR C types
 */
%include "necker/stone_tools.h"

%include "carrays.i"
%include "cpointer.i"

%inline
%{
%}

/*
 * Higher-level python interface to the core C library.
 */
%pythoncode
%{

"""
Necker necker stone tools.
"""

## \file 
## \package necker.pleitocene
##
## \brief Pleistocene stone tool industries.
##
## \author Robin D. Knight, Kim Wheeler
##  
## \par Copyright:
##   (C) 2021 Necker LLC
##   All Rights Reserved
##

%}
