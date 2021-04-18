#### configure.ac
#### Created by Laurence D. Finston (LDF) 2008.06.19.

#### Copyright (C) 2009, 2010, 2011 Gesellschaft fuer wissenschaftliche Datenverarbeitung mbH

#### * (1) Top

#### This file is part of the OptiNum Grid Installer 
#### Copyright (C) 2010, 2011, 2012, 2013 Gesellschaft fuer wissenschaftliche Datenverarbeitung mbH Goettingen 

#### The OptiNum Grid Installer is free software; you can redistribute it and/or modify 
#### it under the terms of the GNU General Public License as published by 
#### the Free Software Foundation; either version 3 of the License, or 
#### (at your option) any later version.  

#### The OptiNum Grid Installer is distributed in the hope that it will be useful, 
#### but WITHOUT ANY WARRANTY; without even the implied warranty of 
#### MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
#### GNU General Public License for more details.  

#### You should have received a copy of the GNU General Public License          
#### along with the OptiNum Grid Installer; if not, write to the Free Software                    
#### Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA 

#### ("@@" stands for a single at-sign in the following paragraph.) 

#### Please send bug reports to Laurence.Finston@@gmx.de

#### Laurence D. Finston                                                   
#### Gesellschaft fuer wissenschaftliche Datenverarbeitung mbH Goettingen  
#### Am Fassberg 11         					         
#### 37077 Goettingen              					 
#### Germany                           					                                 

#### Laurence.Finston@@gmx.de (@@ stands for a single "at" sign.)


#### !! TODO: Use macro to search for GNUTLS library.
#### LDF 2009.12.22.
  
.# Process this file with autoconf to produce a configure script.
AC_INIT(dbsrvcli.c)
AM_INIT_AUTOMAKE(dbsrvcli, 1.0, Laurence.Finston@gmx.de)
AC_CONFIG_SRCDIR(dbsrvcli.c)
AM_CONFIG_HEADER(config.h)

AH_BOTTOM([#include <optcnfg.h>])

#### ** (2)

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_INSTALL
AC_PROG_MAKE_SET

AM_PROG_LEX

AC_PROG_YACC

AC_CHECK_PROG([HAVE_TEX], [tex], 1, 0) 
AC_CHECK_PROG([HAVE_DVIPS], [dvips], 1, 0) 
AC_CHECK_PROG([HAVE_PS2PDF], [ps2pdf], 1, 0) 
AC_CHECK_PROG([HAVE_TEXI2DVI], [texi2dvi], 1, 0) 
AC_CHECK_PROG([HAVE_MAKEINFO], [makeinfo], 1, 0) 

AC_ARG_VAR([HAVE_TEX], [tex exists])
AC_ARG_VAR([HAVE_DVIPS], [dvips exists])
AC_ARG_VAR([HAVE_PS2PDF], [ps2pdf exists])
AC_ARG_VAR([HAVE_TEXI2DVI], [texi2dvi exists])
AC_ARG_VAR([HAVE_MAKEINFO], [makeinfo exists])

AC_DEFINE_UNQUOTED([HAVE_TEX], $HAVE_TEX, 
                   [Define to 1, if `tex' is available, otherwise 0.])

AC_DEFINE_UNQUOTED([HAVE_DVIPS], $HAVE_DVIPS, 
                   [Define to 1, if `dvips' is available, otherwise 0.])

AC_DEFINE_UNQUOTED([HAVE_PS2PDF], $HAVE_PS2PDF, 
                   [Define to 1, if `ps2pdf' is available, otherwise 0.])

AC_DEFINE_UNQUOTED([HAVE_TEXI2DVI], $HAVE_TEXI2DVI, 
                   [Define to 1, if `texi2dvi' is available, otherwise 0.])

AC_DEFINE_UNQUOTED([HAVE_MAKEINFO], $HAVE_MAKEINFO, 
                   [Define to 1, if `makeinfo' is available, otherwise 0.])


AC_ARG_VAR([MYSQL_LDFLAGS], [Flags for linking with the MySQL devel library])
AC_ARG_VAR([MYSQL_CXXFLAGS], [Include flag for the headers from the MySQL devel library])

AC_ARG_VAR([GNUTLS_LDFLAGS], [Flags for linking with the GNUTLS library])
AC_DEFINE_UNQUOTED([GNUTLS_LDFLAGS], $GNUTLS_LDFLAGS, [Flags for linking with the GNUTLS library])

AC_ARG_VAR([GNUTLS_INCLUDE_FLAGS], [Include flag and path for the headers from the GNUTLS])
AC_DEFINE_UNQUOTED([GNUTLS_INCLUDE_FLAGS], $GNUTLS_INCLUDE_FLAGS, 
                   [Include flag and path for the headers from the GNUTLS])

#### Other examples of tests for programs are available in revision 1.15 and
#### older.
#### LDF 2008.07.02.

# AC_CHECK_PROG([HAVE_SHA224SUM], [sha224sum], 1, 0) 
# AC_DEFINE_UNQUOTED([HAVE_SHA224SUM], $HAVE_SHA224SUM, 
#                    [Define to 1, if `sha224sum' is available, otherwise 0.])

#LT_INIT()

#LT_LANG(C)


# Checks for libraries.
#AC_CHECK_LIB(m, trunc)

AC_CHECK_LIB(gnutls, gnutls_global_init, [], [echo "Library libgnutls not found. Exiting.";exit 1])
AC_CHECK_LIB(gcrypt, gcry_check_version, [], [echo "Library libgcrypt not found. Exiting.";exit 1])
AC_CHECK_LIB(mysqlclient, mysql_init)
#AC_CHECK_LIB(tasn1, asn1_check_version, [], [echo "Library libtasn1 not found. Exiting.";exit 1])
AC_CHECK_LIB(tasn1, asn1_check_version)
AC_CHECK_LIB(z, compress)

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([errno.h float.h limits.h stdlib.h \
                  unistd.h pthread.h])

# Checks for typedefs, structures, and compiler characteristics.
#AC_C_CONST
#AC_C_INLINE
#AC_TYPE_SIZE_T
#AC_STRUCT_TM
AC_CHECK_TYPES([unsigned long long, unsigned long, unsigned int])

# Checks for library functions.
#AC_FUNC_MALLOC
##AC_FUNC_STAT
#AC_SEARCH_LIBS(trunc, m)
#AC_CHECK_FUNCS([floor sqrt trunc])

AC_CONFIG_FILES([Makefile CWEB/Makefile src/Makefile \
                 src/DATABASE/Makefile src/certtest/Makefile])

# Checks for endianness.
AC_C_BIGENDIAN

AC_CHECK_SIZEOF([int])
AC_CHECK_SIZEOF([long int])
#AC_CHECK_SIZEOF([void*])

#### Hosts for which there are `--with-is-*' options:
####
#### rocks-goegrid.gwdg.de
#### Address: 134.76.97.105
####
#### optinum-srv.gwdg.de
#### Address: 134.76.20.95
####
#### faui3cluster.informatik.uni-erlangen.de
#### Address: 131.188.33.224
####
#### pcfinston.gwdg.de
#### Address: 134.76.5.25
####
#### LDF 2011.07.22.

#### These options must be prefixed with "--with-", when used,
#### e.g., "--with-is-optinum-srv".
####
#### LDF 2011.06.30.

AC_ARG_WITH([is-optinum-srv], 
[AC_HELP_STRING([--with-is-optinum-srv],
        [Use on optinum-srv.])],
[if test $withval == "yes"
then
echo "This is optinum-srv"
AC_DEFINE([IS_OPTINUM_SRV], [1], 
  [Define to 1 if this is optinum-srv.])
else 
echo "This is not optinum-srv"
AC_DEFINE([IS_OPTINUM_SRV], [0], 
  [])
fi], 
[echo "This is not optinum-srv"
AC_DEFINE([IS_OPTINUM_SRV], [0], 
[])
])

#### Added code for the options '--with-is-rocks-goegrid',
#### '--with-is-optinum-de' and '--with-is-pcfinston-gwdg' 
#### and the corresponding preprocessor macros 'IS_ROCKS_GOEGRID',
#### 'IS_OPTINUM_DE' and 'IS_PCFINSTON_GWDG'.
####
#### LDF 2011.07.22.

AC_ARG_WITH([is-rocks-goegrid], 
[AC_HELP_STRING([--with-is-rocks-goegrid],
        [Use on rocks-goegrid.])],
[if test $withval == "yes"
then
echo "This is rocks-goegrid"
AC_DEFINE([IS_ROCKS_GOEGRID], [1], 
  [Define to 1 if this is rocks-goegrid.])
else 
echo "This is not rocks-goegrid"
AC_DEFINE([IS_ROCKS_GOEGRID], [0], 
  [])
fi], 
[echo "This is not rocks-goegrid"
AC_DEFINE([IS_ROCKS_GOEGRID], [0], 
[])
])

AC_ARG_WITH([is-optinum-de], 
[AC_HELP_STRING([--with-is-optinum-de],
        [Use on optinum-de.])],
[if test $withval == "yes"
then
echo "This is optinum-de"
AC_DEFINE([IS_OPTINUM_DE], [1], 
  [Define to 1 if this is optinum-de.])
else 
echo "This is not optinum-de"
AC_DEFINE([IS_OPTINUM_DE], [0], 
  [])
fi], 
[echo "This is not optinum-de"
AC_DEFINE([IS_OPTINUM_DE], [0], 
[])
])

AC_ARG_WITH([is-pcfinston-gwdg], 
[AC_HELP_STRING([--with-is-pcfinston-gwdg],
        [Use on pcfinston-gwdg.])],
[if test $withval == "yes"
then
echo "This is pcfinston-gwdg"
AC_DEFINE([IS_PCFINSTON_GWDG], [1], 
  [Define to 1 if this is pcfinston-gwdg.])
else 
echo "This is not pcfinston-gwdg"
AC_DEFINE([IS_PCFINSTON_GWDG], [0], 
  [])
fi], 
[echo "This is not pcfinston-gwdg"
AC_DEFINE([IS_PCFINSTON_GWDG], [0], 
[])
])

AC_ARG_WITH([is-pcmohr-gwdg], 
[AC_HELP_STRING([--with-is-pcmohr-gwdg],
        [Use on pcmohr-gwdg.])],
[if test $withval == "yes"
then
echo "This is pcmohr-gwdg"
AC_DEFINE([IS_PCMOHR_GWDG], [1], 
  [Define to 1 if this is pcmohr-gwdg.])
else 
echo "This is not pcmohr-gwdg"
AC_DEFINE([IS_PCMOHR_GWDG], [0], 
  [])
fi], 
[echo "This is not pcmohr-gwdg"
AC_DEFINE([IS_PCMOHR_GWDG], [0], 
[])
])

AC_ARG_WITH([is-faui3cluster], 
[AC_HELP_STRING([--with-is-faui3cluster],
        [Use on faui3cluster.])],
[if test $withval == "yes"
then
echo "This is faui3cluster"
AC_DEFINE([IS_FAUI3CLUSTER], [1], 
  [Define to 1 if this is faui3cluster.])
else 
echo "This is not faui3cluster"
AC_DEFINE([IS_FAUI3CLUSTER], [0], 
  [])
fi], 
[echo "This is not faui3cluster"
AC_DEFINE([IS_FAUI3CLUSTER], [0], 
[])
])

AC_ARG_WITH([is-faui36a], 
[AC_HELP_STRING([--with-is-faui36a],
        [Use on faui36a.])],
[if test $withval == "yes"
then
echo "This is faui36a"
AC_DEFINE([IS_FAUI36A], [1], 
  [Define to 1 if this is faui36a.])
else 
echo "This is not faui36a"
AC_DEFINE([IS_FAUI36A], [0], 
  [])
fi], 
[echo "This is not faui36a"
AC_DEFINE([IS_FAUI36A], [0], 
[])
])


AC_OUTPUT

#### ** (2) End of 'configure.ac'

#### * (1) Local Variables for Emacs

#### Local Variables:
#### mode:Shell-Script
#### abbrev-mode:t
#### eval:(read-abbrev-file)
#### eval:(outline-minor-mode t)
#### outline-regexp:"#### [*\\f]+[ \\t]+([0-9]+)"
#### End:
