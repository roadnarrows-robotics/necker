/*! \file
 *
 * \brief Swig interface definition of libpleistocene fire.[hc].
 *
 * \pkgfile{@FILENAME}
 * \pkgcomponent{Python,necker}
 * \author Robin D. Knight, Kim Wheeler
 *
 * \LegalBegin
 * MIT
 * \LegalEnd
 */


%module fire
%{
#include "necker/fire.h"
%}

%begin
%{
/*! \file
 *  \brief Swig generated fire wrapper c file.
 */
%}

/* 
 * Required RNR C types
 */
%include "necker/fire.h"

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
Necker necker fire.
"""

## \file 
## \package necker.pleistocene
##
## \brief Pleistocene fire techniques.
##
## \author Robin D. Knight, Kim Wheeler
##  
## \par Copyright:
##   (C) 2021 Necker LLC
##   All Rights Reserved
##

%}
