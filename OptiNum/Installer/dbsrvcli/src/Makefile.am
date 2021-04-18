### Makefile.am
#### [...]/optinum/dbsrvcli/src/Makefile.am

#### Created by Laurence D. Finston (LDF) Fri Aug  8 14:34:56 CEST 2008
   
#### * (1) Top 

#### * (1) Copyright and License.

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

#### Please send bug reports to Laurence.Finston@@gwdg.de

#### Laurence D. Finston                                                   
#### Gesellschaft fuer wissenschaftliche Datenverarbeitung mbH Goettingen  
#### Am Fassberg 11         					         
#### 37077 Goettingen              					 
#### Germany                           					                                 

#### Laurence.Finston@@gwdg.de (@@ stands for a single "at" sign.)
  
#### * (1) 

#### ** (2) Variables

#### Automatic Variables.  For more, see Section 10.5.3, "Automatic Variables"
#### of the Make info manual.
#### LDF 2009.12.29.

#### $@:  Target
#### $<:  First prerequisite
#### $^:  The names of all the prerequisites, with spaces between them.

bin_PROGRAMS = optdbcli$(EXEEXT) optdbsrv$(EXEEXT) prbsnflx$(EXEEXT) strtinst$(EXEEXT) \
               optpsgen$(EXEEXT) instchwn$(EXEEXT) instkypr$(EXEEXT) kllprcss$(EXEEXT)




optdbcli_SOURCES = optdbcli.web cmdlnopt.web cnnctcli.web dhprxcrt.web dstngnmt.web \
                     glblfncs.web glblvrbl.web glsinftp.web \
                     helper.web instllfn.web prsrclnt.web rspnstp.web scnrclnt.web \
                     scprpmtp.web spptdbfn.web spptenfn.web spptenvf.web spptgsfn.web spptkyfn.web \
                     spptprvl.web spptsdtp.web spptshen.web spptwren.web \
                     sssndttp.web thrdfncs.web utilfncs.web

optdbsrv_SOURCES = optdbsrv.web cmdlnopt.web connect.web dhprxcrt.web dstngnmt.web entries.web \
                   ex_rfc2818.web ex_verify.web \
                   glblfncs.web glblvrbl.web glsinftp.web gntlsfnc.web lstnfncs.web \
                   parser.web prsrclnt.web prsrfncs.web \
                   scanner.web scnrclnt.web rspnstp.web rspnstp.web scprpmtp.web \
                   spptdbfn.web spptenfn.web spptenvf.web spptgsfn.web spptkyfn.web spptprvl.web \
                   spptsdtp.web spptshen.web \
                   spptwren.web sssndttp.web thrdfncs.web \
                   utilfncs.web x509cert.web


strtinst_SOURCES = strtinst.web dhprxcrt.web dstngnmt.web glblfncs.web glblvrbl.web glsinftp.web

prbsnflx_SOURCES = prbsnflx.l++

optpsgen_SOURCES = optpsgen.web optpsgsb.web

instchwn_SOURCES = instchwn.web

instkypr_SOURCES = instkypr.web 

kllprcss_SOURCES = kllprcss.web


####  oldsckt_SOURCES = oldsckt.web  #### Commented-out.  LDF 2010.04.16.

optdbcli_cpp_files = $(optdbcli_SOURCES:.web=.c++) 
optdbsrv_cpp_files = $(optdbsrv_SOURCES:.web=.c++) 
strtinst_cpp_files = $(strtinst_SOURCES:.web=.c++) 
optpsgen_cpp_files = $(optpsgen_SOURCES:.web=.c++) 
instchwn_cpp_files = $(instchwn_SOURCES:.web=.c++) 
instkypr_cpp_files = $(instkypr_SOURCES:.web=.c++) 
kllprcss_cpp_files = $(kllprcss_SOURCES:.web=.c++) 
prbsnflx_cpp_files = $(prbsnflx_SOURCES:.l++=.c++) 


optdbcli_c_files = $(optdbcli_SOURCES:.web=.c) 
optdbsrv_c_files = $(optdbsrv_SOURCES:.web=.c) 
strtinst_c_files = $(strtinst_SOURCES:.web=.c) 
optpsgen_c_files = $(optpsgen_SOURCES:.web=.c) 
instchwn_c_files = $(instchwn_SOURCES:.web=.c) 
instkypr_c_files = $(instkypr_SOURCES:.web=.c) 
kllprcss_c_files = $(kllprcss_SOURCES:.web=.c) 
prbsnflx_c_files = $(prbsnflx_SOURCES:.l++=.c) 

optdbcli_hpp_files = $(optdbcli_SOURCES:.web=.h++) 
optdbsrv_hpp_files = $(optdbsrv_SOURCES:.web=.h++) 

optdbcli_h_files = $(optdbcli_SOURCES:.web=.h) 
optdbsrv_h_files = $(optdbsrv_SOURCES:.web=.h) 

#### !! I hope that using '$(GNUTLS_INCLUDE_FLAGS)' followed
#### by ' -I/usr/include/gnutls' will ensure that the headers in
#### my installation of the development version of the GNUTLS headers
#### will be included rather than the ones in '/usr/include'.
####
#### !! TODO:  A better solution would be to use the appropriate Autoconf
#### macros to search for the GNUTLS library.
####
#### LDF 2009.12.22.

#### LDF 2012.02.28.
#### MYSQL_CXXFLAGS is for use on systems where (a) the header
#### files for libmysqlclient are not in the default search path
#### for header files or (b) are not in '/usr/include/mysql'.
#### '-I' plus the latter path is listed in 'AM_CXXFLAGS', 
#### because this is a likely location, and it does no harm
#### if the header files are not there, the directory does not 
#### exist or the library is not available.
####
#### If the header files are somewhere else and the path is not 
#### '/usr/include/mysql', 'MYSQL_CXXFLAGS' must be used for 
#### the "non-client-only" version.

AM_CXXFLAGS = -g -I$(top_builddir) -I/usr/include/mysql $(MYSQL_CXXFLAGS) \
                 $(GNUTLS_INCLUDE_FLAGS)  

#### This didn't work because the MySQL library wasn't found.
#### LDF 2009.12.21.
#### -static 

AM_LDFLAGS = -pthread -frepo -lrt $(LIBS) $(GNUTLS_LDFLAGS)

#### ** (2) Variables for subdirectories.
#### 
#### LDF 2009.10.12.

DATABASEDIR = DATABASE

export DATABASEDIR

CERTTESTDIR = certtest

export CERTTESTDIR

SUBDIRS = $(DATABASEDIR) ###  $(CERTTESTDIR)  ### Commented-out.  LDF 2010.04.16.



#### ** (2) Purging and Cleaning

PURGE_FILES := dbsrvcli.dvi dbsrvcli.idx dbsrvcli.log dbsrvcli.pdf dbsrvcli.ps \
               dbsrvcli.scn dbsrvcli.tex dbsrvcli.toc \
               optpsgwv.dvi optpsgwv.idx optpsgwv.log optpsgwv.pdf optpsgwv.ps \
               optpsgwv.scn optpsgwv.tex optpsgwv.toc \
               scnprswv.dvi scnprswv.idx scnprswv.log scnprswv.pdf scnprswv.ps \
               scnprswv.scn scnprswv.tex scnprswv.toc 


CLEANFILES := $(PURGE_FILES) $(optdbcli_cpp_files) $(optdbsrv_cpp_files) \
              $(prbsnflx_cpp_files) $(optdbcli_hpp_files) $(optdbsrv_hpp_files) \
              $(optdbcli_c_files) $(optdbsrv_c_files) \
              $(prbsnflx_c_files) $(optdbcli_h_files) $(optdbsrv_h_files) \
              oldsckt.c oldsckt.c++ scanner.l++ parser.y++ \
              $(strtinst_cpp_files) $(strtinst_c_files)

#### *** (3) purge


.PHONY: purge

purge: 
	rm -rf $(PURGE_FILES)



#### ** (2)

#### *** (3) EXTRA_DIST 
####        (additional files to be included in the distribution)

#### `oldsckt.web' contains code which I'm about to replace.  
#### However, I still want to keep it in the project.
#### LDF 2009.11.23.

EXTRA_DIST = 00INFO 00TODO strtinst.sh strtinst_1.sh cpyrtcpp.txt cwebmac.tex DFN-VereinPCAGrid-G01.pem \
             dbsrvcli.web fixman.sh gen_proxy.sh install.sh instchwn.sh instchwn_1.sh instkypr.sh \
             instoipk.sh kyprinst.sh \
             oldsckt.web  \
             opinpbky.asc optpsgwv.web \
             parser.output prbsnflx.c++ prpencfs.sh prsrclnt.output \
             scnprswv.web setupkyp.sh test_input.txt
       
#### ** (2) Rules

#### *** (3) clean-local

all-local: 

mostlyclean-local: 

#### *** (3) Rules for Programs

#### ** (2) Additional targets and rules.
#### 
#### LDF 2008.08.08.

ttemp: ttemp.c++
	$(CXXCOMPILE) -pthread -o ttemp ttemp.c++

%.c++ %.h++ : %.web
	../CWEB/ctangle $<
	@if test -e $*.c++; \
        then \
        echo "$*.c++ exists"; \
        diff -q -w -B -I '^[[:space:]]*\(#line\|/\*\)' \
        $*.c++ $*.c > diff_c.res; \
           if test -s diff_c.res; \
           then \
              echo "$*.c++ has changed."; \
              mv $*.c $*.c++; \
           else \
              echo "$*.c++ is unchanged."; \
	      if test -s $*.o; \
	         then \
	         touch $*.o; \
	      fi; \
           fi; \
        else \
        echo "$*.c++ does not exist"; \
        mv $*.c $*.c++; \
        fi; 
####
	@if test -e $*.h++; \
        then \
        echo "$*.h++ exists"; \
        diff -q -w -B -I '^[[:space:]]*\(#line\|/\*\)' \
        $*.h++ $*.h > diff_h.res; \
           if test -s diff_h.res; \
           then \
              echo "$*.h++ has changed."; \
              mv $*.h $*.h++; \
           else \
              echo "$*.h++ is unchanged."; \
           fi; \
        else \
        echo "$*.h++ does not exist"; \
        if test -e $*.h; then \
        mv $*.h $*.h++; fi; \
        fi; 
	@rm -f diff_c.res diff_h.res 

# sqldbfnc.o : sqldbfnc.c++ thrdfncs.h++ utilfncs.h++ parser.h++ wbsrvrtp.h++ rspnstp.web 
# scprpmtp.h++ statrprt.h++ 
#              scanner.h++
# 	$(CXXCOMPILE) -c -o sqldbfnc.o sqldbfnc.c++


#### **** (4) instchwn

#### 'instchwn.web', 'instchwn', etc.,  are only used by 'optdbsrv' and don't need 
#### to be copied to the "Client-only" directory.
#### LDF 2011.10.14.

instchwn$(EXEEXT): instchwn.o
	@echo "Linking \`instchwn$(EXEEXT)'"
	$(CXXLINK) $^

instchwn.o: instchwn.c++ 
	$(CXXCOMPILE) -c -o $@ $<

#### **** (4) instkypr

#### 'instkypr.web', 'instkypr', etc.,  are only used by 'optdbsrv' and don't need 
#### to be copied to the "Client-only" directory.
#### LDF 2011.11.24.

instkypr$(EXEEXT): instkypr.o
	@echo "Linking \`instkypr$(EXEEXT)'"
	$(CXXLINK) $^

instkypr.o: instkypr.c++ 
	$(CXXCOMPILE) -c -o $@ $<

#### **** (4) kllprcss

#### 'kllprcss.web', 'kllprcss', etc.,  are only used by 'optdbsrv' and don't need 
#### to be copied to the "Client-only" directory.
#### LDF 2011.10.26.

kllprcss: kllprcss.o
	@echo "Linking \`kllprcss$(EXEEXT)'"
	$(CXXLINK) $^

kllprcss.o: kllprcss.c++ 
	$(CXXCOMPILE) -c -o $@ $<

#### **** (4) optpsgen

optpsgen: optpsgen.o optpsgsb.o
	@echo "Linking \`optpsgen$(EXEEXT)'"
	$(CXXLINK) $^

optpsgen.o: optpsgen.c++ optpsgsb.h++
	$(CXXCOMPILE) -c -o $@ $<

optpsgsb.o: optpsgsb.c++ 
	$(CXXCOMPILE) -c -o $@ $<

#### **** (4) prbsnflx

#### prbsnflx is used for removing C-style comments from the output of CWEB 
#### in order to create valid input files for Flex and GNU Bison.
####
#### LDF 2011.08.10.

prbsnflx$(EXEEXT): prbsnflx.c++ 
	$(CXXCOMPILE) -o prbsnflx prbsnflx.c++

prbsnflx.c++: prbsnflx.l++
	$(LEX) -o $@ $<
	@cat cpyrtcpp.txt > AAAtmp.txt
	@echo >> AAAtmp.txt
	@cat $@ >> AAAtmp.txt
	@mv AAAtmp.txt $@

#### **** (4)

parser.y++ : parser.web prbsnflx$(EXEEXT)
	../CWEB/ctangle $<
	./prbsnflx$(EXEEXT) parser.c $@


parser.c++ parser.h++ : parser.y++ 
	$(YACC) --debug -d -o parser.c++ $<

parser.o: parser.c++ dstngnmt.h++ entries.h++ glblfncs.h++ glblvrbl.h++ glsinftp.h++ prsrfncs.h++ rspnstp.h++  scanner.h++ \
          scprpmtp.h++ sssndttp.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

prsrclnt.y++ : prsrclnt.web prbsnflx$(EXEEXT)
	../CWEB/ctangle $<
	./prbsnflx$(EXEEXT) prsrclnt.c $@


prsrclnt.c++ prsrclnt.h++ : prsrclnt.y++ 
	$(YACC) --debug -d -o prsrclnt.c++ $<

prsrclnt.o: prsrclnt.c++ prsrclnt.h++ dhprxcrt.h++ dstngnmt.h++ entries.h++ \
                         glblfncs.h++ glblvrbl.h++ glsinftp.h++ \
                         prsrfncs.h++ rspnstp.h++ scprpmtp.h++ scnrclnt.h++ sssndttp.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

scanner.o: scanner.c++ parser.h++ entries.h++ glblfncs.h++ glblvrbl.h++ glsinftp.h++ rspnstp.h++ \
                       scprpmtp.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

scanner.c++ scanner.h++ : scanner.l++ 
	flex -o scanner.c++ $<

scanner.l++ : scanner.web prbsnflx$(EXEEXT)
	../CWEB/ctangle scanner.web
	./prbsnflx$(EXEEXT) scanner.c $@

scnrclnt.o: scnrclnt.c++ prsrclnt.h++ entries.h++ glblvrbl.h++ glsinftp.h++ rspnstp.h++ \
                         scprpmtp.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

scnrclnt.c++ scnrclnt.h++ : scnrclnt.l++ 
	flex -o scnrclnt.c++ $<

scnrclnt.l++ : scnrclnt.web prbsnflx$(EXEEXT)
	../CWEB/ctangle scnrclnt.web
	./prbsnflx$(EXEEXT) scnrclnt.c $@

#### **** (4)

cmdlnopt.o: cmdlnopt.c++ dstngnmt.h++ entries.h++ glblfncs.h++ glblvrbl.h++ \
            parser.h++ scanner.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

cnnctcli.o: cnnctcli.c++ dhprxcrt.h++ dstngnmt.h++ entries.h++ ex_rfc2818.h++ \
            glblfncs.h++ glblvrbl.h++ glsinftp.h++ gntlsfnc.h++ \
            helper.h++ instllfn.h++ parser.h++ prsrclnt.h++ rspnstp.h++ \
            scanner.h++ scnrclnt.h++ scprpmtp.h++ utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<

connect.o: connect.c++ dstngnmt.h++ entries.h++ ex_verify.h++ glblvrbl.h++ glblfncs.h++ \
                       glsinftp.h++ gntlsfnc.h++ prsrfncs.h++ rspnstp.h++ scprpmtp.h++ \
                       thrdfncs.h++ utilfncs.h++ x509cert.h++ 
	$(CXXCOMPILE) -c -o $@ $<

dhprxcrt.o: dhprxcrt.c++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

dstngnmt.o: dstngnmt.c++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

entries.o: entries.c++ dstngnmt.h++ entries.h++ parser.h++ scanner.h++ glblfncs.h++ \
                       glblvrbl.h++ glsinftp.h++ rspnstp.h++ \
                       scprpmtp.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

ex_rfc2818.o: ex_rfc2818.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ glblfncs.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

ex_verify.o: ex_verify.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ glblfncs.h++ glsinftp.h++ \
             gntlsfnc.h++ parser.h++ rspnstp.h++ scanner.h++ utilfncs.h++ \
                           scprpmtp.h++ x509cert.h++ 
	$(CXXCOMPILE) -c -o $@ $<

glblfncs.o: glblfncs.c++ cmdlnopt.h++ dstngnmt.h++ entries.h++ glblvrbl.h++
	$(CXXCOMPILE) -c -o $@ $<

glblvrbl.o: glblvrbl.c++ dstngnmt.h++ entries.h++
	$(CXXCOMPILE) -c -o $@ $<

glsinftp.o: glsinftp.c++ parser.h++ parser.h++ scanner.h++
	$(CXXCOMPILE) -c -o $@ $<

gntlsfnc.o: gntlsfnc.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ glblfncs.h++ \
                         glsinftp.h++ parser.h++ rspnstp.h++ scanner.h++ scprpmtp.h++ \
                         utilfncs.h++ x509cert.h++ 
	$(CXXCOMPILE) -c -o $@ $<

helper.o: helper.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

instllfn.o: instllfn.c++ dhprxcrt.h++ dstngnmt.h++ entries.h++ glblfncs.h++ glblvrbl.h++ \
                         glsinftp.h++ parser.h++ rspnstp.h++ scanner.h++ scprpmtp.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

lstnfncs.o: lstnfncs.c++ connect.h++ dstngnmt.h++ entries.h++ glblvrbl.h++ glblfncs.h++ glsinftp.h++ \
            gntlsfnc.h++ parser.h++ rspnstp.h++ scanner.h++ scprpmtp.h++ thrdfncs.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

utilfncs.o: utilfncs.c++ 
	$(CXXCOMPILE) -c -o $@ $<

optdbcli.o: optdbcli.c++ cmdlnopt.h++ cnnctcli.h++ dstngnmt.h++ entries.h++ ex_rfc2818.h++ \
            glblfncs.h++ glblvrbl.h++ glsinftp.h++ gntlsfnc.h++ \
            helper.h++ instllfn.h++ parser.h++ prsrclnt.h++ rspnstp.h++ \
            scanner.h++ scnrclnt.h++ scprpmtp.h++ thrdfncs.h++ utilfncs.h++ x509cert.h++  
	$(CXXCOMPILE) -c -o $@ $<

optdbsrv.o: optdbsrv.c++ cmdlnopt.h++ dhprxcrt.h++ dstngnmt.h++ entries.h++ \
            glblfncs.h++ glblvrbl.h++ lstnfncs.h++ \
            thrdfncs.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

prsrfncs.o: prsrfncs.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ glblfncs.h++ glsinftp.h++ parser.h++ prsrclnt.h++ \
            rspnstp.h++ scanner.h++ scnrclnt.h++ scprpmtp.h++ utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<

rspnstp.o: rspnstp.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ glblfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

scprpmtp.o: scprpmtp.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<

spptdbfn.o: spptdbfn.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<

spptenfn.o: spptenfn.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<


spptenvf.o: spptenvf.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<

spptgsfn.o: spptgsfn.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<

spptkyfn.o: spptkyfn.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<


spptprvl.o: spptprvl.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<


spptsdtp.o: spptsdtp.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<



spptshen.o: spptshen.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<

spptwren.o: spptwren.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ sssndttp.h++ thrdfncs.h++ \
                         utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<


sssndttp.o: sssndttp.c++ dstngnmt.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ prsrclnt.h++ rspnstp.h++ \
                         scprpmtp.h++ utilfncs.h++ 
	$(CXXCOMPILE) -c -o $@ $<

#### parser.h++ scanner.h++ 

thrdfncs.o: thrdfncs.c++ dstngnmt.h++ entries.h++ glblvrbl.h++ \
                         glblfncs.h++ glsinftp.h++ parser.h++ rspnstp.h++ \
                         scanner.h++ scprpmtp.h++ utilfncs.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<


x509cert.o: x509cert.c++ dstngnmt.h++ entries.h++ glblfncs.h++ glblvrbl.h++ glsinftp.h++ parser.h++ scanner.h++ \
            rspnstp.h++ scprpmtp.h++ x509cert.h++
	$(CXXCOMPILE) -c -o $@ $<

#### ** (3) Link optdbcli

optdbcli$(EXEEXT): optdbcli.o cmdlnopt.o cnnctcli.o dhprxcrt.o dstngnmt.o \
                   entries.o ex_verify.o ex_rfc2818.o \
                   glblfncs.o glblvrbl.o glsinftp.o gntlsfnc.o helper.o instllfn.o \
                   parser.o prsrclnt.o prsrfncs.o rspnstp.o \
                   scanner.o scnrclnt.o scprpmtp.o spptdbfn.o spptenfn.o spptenvf.o spptgsfn.o spptkyfn.o \
                   spptprvl.o spptsdtp.o spptshen.o spptwren.o sssndttp.o thrdfncs.o \
                   utilfncs.o x509cert.o 
	@echo "Linking \`optdbcli$(EXEEXT)'"
	if test -n "$(BUILD_FOR_ROCKS)"; then \
        echo "Building for rocks-goegrid.gwdg.de"; \
        g++ -g -I.. -I/opt/optinum/dbsrvcli/include -pthread -frepo -lrt -lz -lgcrypt \
            -lgnutls -lgcrypt -lgpg-error  -L/opt/optinum/dbsrvcli/lib \
            -o $@ $^; \
        else echo "Not building for rocks-goegrid.gwdg.de"; \
        $(CXXLINK) $^; fi

#### 'optdbsrv' doesn't need to link with 'prsrclnt.o' or 
#### 'scnrclnt.o', but doing so helps to ensure that the two scanner-parser pairs
#### (|yylex| and |yyparse| on the one hand and |zzlex| and |zzparse| on the other) are 
#### compatible.  In addition, the corresponding header files are included 
#### in 'prsrfncs.web'.
#### 
#### LDF 2010.02.10.

optdbsrv$(EXEEXT): cmdlnopt.o connect.o dhprxcrt.o dstngnmt.o entries.o ex_verify.o glblfncs.o glblvrbl.o \
                   glsinftp.o gntlsfnc.o lstnfncs.o optdbsrv.o parser.o prsrclnt.o prsrfncs.o \
                   rspnstp.o scanner.o scnrclnt.o \
                   scprpmtp.o spptdbfn.o spptenfn.o spptenvf.o spptgsfn.o spptkyfn.o spptprvl.o \
                   spptsdtp.o spptshen.o spptwren.o \
                   sssndttp.o thrdfncs.o utilfncs.o x509cert.o 
	@echo "Linking \`optdbsrv$(EXEEXT)'"
	$(CXXLINK) $^



#### (4) strtinst 

##### (5) Compile  

strtinst.o: strtinst.c++ dhprxcrt.h++ dstngnmt.h++ glblfncs.h++ glblvrbl.h++ glsinftp.h++ utilfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

##### (5) Link

strtinst$(EXEEXT): strtinst.o dhprxcrt.o dstngnmt.o glblfncs.o glblvrbl.o glsinftp.o utilfncs.o
	$(CXXLINK) $^

#### ** (2) Sockets

# oldsckt$(EXEEXT): oldsckt.o
# 	$(CXXLINK) -o $@ $<

# oldsckt.o: oldsckt.c++ 
# 	$(CXXCOMPILE) -c -o $@ $<

#### ** (2) CWEB documentation

.PHONY : pdf ps dvi tex

pdf : dbsrvcli.pdf optpsgwv.pdf scnprswv.pdf

ps : dbsrvcli.ps optpsgwv.ps scnprswv.ps

dvi : dbsrvcli.dvi optpsgwv.dvi scnprswv.dvi

tex : dbsrvcli.tex optpsgwv.tex scnprswv.tex

dbsrvcli.pdf: dbsrvcli.ps
	@if test $(HAVE_PS2PDF) -eq 1 -a  $(HAVE_DVIPS) -eq 1 -a $(HAVE_TEX) -eq 1; then \
        echo "Running \`ps2pdf'"; \
        ps2pdf $< 2>/dev/null; \
        else  \
        echo "\`ps2pdf' and/or  \`dvips' and/or \`tex' not present.  Touching \`dbsrvcli.pdf',"; \
        touch $@; \
        fi

dbsrvcli.ps: dbsrvcli.dvi
	@if test $(HAVE_DVIPS) -eq 1 -a $(HAVE_TEX) -eq 1; then \
        echo "Running \`dvips'"; \
        dvips $<; \
        else  \
        echo "\`dvips' and/or \`tex' not present.  Touching \`dbsrvcli.ps',"; \
        touch $@; \
        fi

dbsrvcli.dvi dbsrvcli.log: dbsrvcli.tex cwebmac.tex 
	@if test $(HAVE_TEX) -eq 1; then \
         echo "Running TeX"; \
         $(TEX) $<; \
         else  \
         echo "TeX not present.  Touching \`dbsrvcli.dvi',"; \
         touch dbsrvcli.dvi; \
         fi

dbsrvcli.tex: dbsrvcli.web $(optdbcli_SOURCES) $(optdbsrv_SOURCES) $(strtinst_SOURCES)
	../CWEB/cweave $<

optpsgwv.pdf: optpsgwv.ps
	@if test $(HAVE_PS2PDF) -eq 1 -a  $(HAVE_DVIPS) -eq 1 -a $(HAVE_TEX) -eq 1; then \
        echo "Running \`ps2pdf'"; \
        ps2pdf $< 2>/dev/null; \
        else  \
        echo "\`ps2pdf' and/or  \`dvips' and/or \`tex' not present.  Touching \`optpsgwv.pdf',"; \
        touch $@; \
        fi

optpsgwv.ps: optpsgwv.dvi
	@if test $(HAVE_DVIPS) -eq 1 -a $(HAVE_TEX) -eq 1; then \
        echo "Running \`dvips'"; \
        dvips $<; \
        else  \
        echo "\`dvips' and/or \`tex' not present.  Touching \`optpsgwv.ps',"; \
        touch $@; \
        fi

optpsgwv.dvi optpsgwv.log: optpsgwv.tex cwebmac.tex 
	@if test $(HAVE_TEX) -eq 1; then \
         echo "Running TeX"; \
         $(TEX) $<; \
         else  \
         echo "TeX not present.  Touching \`optpsgwv.dvi',"; \
         touch optpsgwv.dvi; \
         fi

optpsgwv.tex: optpsgwv.web $(optpsgen_SOURCES) 
	../CWEB/cweave $<

scnprswv.pdf: scnprswv.ps
	@if test $(HAVE_PS2PDF) -eq 1 -a  $(HAVE_DVIPS) -eq 1 -a $(HAVE_TEX) -eq 1; then \
        echo "Running \`ps2pdf'"; \
        ps2pdf $< 2>/dev/null; \
        else  \
        echo "\`ps2pdf' and/or  \`dvips' and/or \`tex' not present.  Touching \`scnprswv.pdf',"; \
        touch $@; \
        fi

scnprswv.ps: scnprswv.dvi
	@if test $(HAVE_DVIPS) -eq 1 -a $(HAVE_TEX) -eq 1; then \
        echo "Running \`dvips'"; \
        dvips $<; \
        else  \
        echo "\`dvips' and/or \`tex' not present.  Touching \`scnprswv.ps',"; \
        touch $@; \
        fi

scnprswv.dvi scnprswv.log: scnprswv.tex cwebmac.tex 
	@if test $(HAVE_TEX) -eq 1; then \
         echo "Running TeX"; \
         $(TEX) $<; \
         else  \
         echo "TeX not present.  Touching \`scnprswv.dvi',"; \
         touch scnprswv.dvi; \
         fi

scnprswv.tex: scnprswv.web parser.web scanner.web prsrclnt.web scnrclnt.web
	../CWEB/cweave $<



#### ** (2) Additional targets and rules.

#### LDF 2008.08.08.

#$(oldsckt_SOURCES) 

tags: $(optdbcli_SOURCES) $(optdbsrv_SOURCES) \
      $(strtinst_SOURCES) \
      $(optpsgen_SOURCES) \
      $(instchwn_SOURCES) \
      $(instkypr_SOURCES) \
      $(kllprcss_SOURCES) dbsrvcli.web Makefile.am
	etags $^

#### prginst deletes files owned by eras_master
#### LDF 2011.04.15.

.PHONY: prginst

prginst: 
	chmod g+w /home/lfinsto/download/
	sudo -u eras_master ../../secure/prginstl /home/lfinsto/download 
	chmod g-w /home/lfinsto/download/


#### *** (3) query

.PHONY: query

query:
	@echo "BUILD_FOR_ROCKS == $(BUILD_FOR_ROCKS)"
	@echo "abs_top_builddir == $(abs_top_builddir)"
	@echo "top_builddir == $(top_builddir)"
	@echo "bindir == $(bindir)"
	@echo "LIBS == $(LIBS)"
	@echo "GNUTLS_LDFLAGS == $(GNUTLS_LDFLAGS)"
	@echo "GNUTLS_INCLUDE_FLAGS == $(GNUTLS_INCLUDE_FLAGS)"
	@echo "LIBS == $(LIBS)"
	@echo "CXXCOMPILE == $(CXXCOMPILE)"
	@echo "CXXLINK == $(CXXLINK)"
	@echo "HAVE_TEX == $(HAVE_TEX)"

# 	@echo "DVIPS == $(DVIPS)"
# 	@echo "PS2PDF == $(PS2PDF)"
# 	@echo "TEXI2DVI == $(TEXI2DVI)"
# 	@echo "MAKEINFO == $(MAKEINFO)"
# 	@echo "HAVE_DVIPS == $(HAVE_DVIPS)"
# 	@echo "HAVE_PS2PDF == $(HAVE_PS2PDF)"
# 	@echo "HAVE_TEXI2DVI == $(HAVE_TEXI2DVI)"
# 	@echo "HAVE_MAKEINFO == $(HAVE_MAKEINFO)"

# 	@echo "abs_top_builddir == $(abs_top_builddir)"
# 	@echo "LDFLAGS == $(LDFLAGS)"
# 	@echo "AM_LDFLAGS == $(AM_LDFLAGS)"
# 	@echo "soh = $(soh)"
# 	$(MAKE) query -C $(DATABASEDIR)


.PHONY: prog

#oldsckt(EXEEXT)  #### Commented-out.  LDF 2010.04.16.

prog:  optdbsrv$(EXEEXT) optdbcli$(EXEEXT) 

#--save-temp-files

.PHONY: run-s
run-s:  optdbsrv$(EXEEXT) strtinst$(EXEEXT) instchwn$(EXEEXT) instkypr$(EXEEXT) \
        kllprcss$(EXEEXT) Makefile.am 
	./$< --ca-filename=DFN-VereinPCAGrid-G01.pem --grid-mapfile grid-mapfile


# For use on my PC.  LDF 2010.08.18.

.PHONY: run-sl

run-sl:  optdbsrv$(EXEEXT)
	export LD_LIBRARY_PATH="/home/lfinsto/libgcrypt-1.4.6/lib:/home/lfinsto/gnutls_dev/gnutls_master/lib:/usr/lib64"
	./$< --grid-mapfile grid-mapfile


.PHONY: run-sb

run-sb:  optdbsrv$(EXEEXT) strtinst$(EXEEXT) instchwn$(EXEEXT) instkypr$(EXEEXT) \
        kllprcss$(EXEEXT) Makefile.am 
	./$< --bison-trace=2 --flex-trace --ca-filename=DFN-VereinPCAGrid-G01.pem --grid-mapfile grid-mapfile



.PHONY: run-sd

run-sd:  optdbsrv$(EXEEXT)
	echo "delete from Entries where user_id = 1" | mysql dbsrvcli
	echo "delete from Prerequisites" | mysql dbsrvcli
#	./$<

.PHONY: run-c

# echo "delete from Entries where user_id = 1" | mysql dbsrvcli
# 
# echo "delete from Entries where user_id = 1 and package_name = 'bison'" | mysql dbsrvcli
# echo "delete from Prerequisites" | mysql dbsrvcli
# --bison-trace
#	echo "delete from Entries where user_id = 3" | mysql dbsrvcli
#	echo "delete from Prerequisites" | mysql dbsrvcli
#	@echo "select E.user_id, C.commonName, E.entry_id, E.package_name, " 
#        "E.package_version, E.encrypted from Entries as E, Certificates as C " 
#        "where E.user_id = 3 and C.user_id = E.user_id;" | mysql -t dbsrvcli
#	./$< --input-filename="test_input.txt" pcfinston.gwdg.de
#	./$< --input-filename="test_input.txt" 134.76.5.25 # pcfinston
#	./$< --input-filename="test_input.txt" 134.76.20.95 # optinum-srv.gwdg.de

# --transfer=x509up_u1000
# --trace=1

#### LDF 2012.02.03.
#### Testing this: --prerequisites-reinstall, --no-prerequisites-reinstall

#### --session-id="XXXYYYaaa23"

run-c:  optdbcli$(EXEEXT) strtinst$(EXEEXT) Makefile.am 
	./$< --input-filename="test_input.txt" \
        --grid-mapfile=grid-mapfile \
        --prerequisites-reinstall \
        --cert-filename=usercert.pem --key-filename=userkey.pem \
        --ca-file=DFN-VereinPCAGrid-G01.pem \
        --save-temp-files \
        localhost

.PHONY: run-co

# "/O=Grid/OU=GlobusTest/OU=simpleCA-pcmohr.gwdg.de/OU=gwdg.de/CN=Laurence Finston" 

# --session-id="XXXYYYaaa23" 

run-co:  optdbcli$(EXEEXT)
	./$< --input-filename="test_input.txt" --cert-filename=usercert.pem --key-filename=userkey.pem \
             --ca-filename=DFN-VereinPCAGrid-G01.pem \
             134.76.20.95 # optinum-srv.gwdg.de

.PHONY: run-cob

run-cob:  optdbcli$(EXEEXT)
	./$< --bi --input-filename="test_input.txt" --cert-filename=usercert.pem --key-filename=userkey.pem \
             --ca-filename=DFN-VereinPCAGrid-G01.pem 134.76.20.95 # optinum-srv.gwdg.de

run-cb:  optdbcli$(EXEEXT)
	./$< --input-filename="test_input.txt" --bi --grid-mapfile=grid-mapfile localhost

# 	echo "delete from Entries where user_id = 1" | mysql dbsrvcli
# 	echo "delete from Prerequisites" | mysql dbsrvcli
#	./$< --bison-trace --input-filename="test_input.txt" localhost
#	./$< --bison-trace --input-filename="test_input.txt" pcfinston.gwdg.de
#	./$< --bison-trace --input-filename="test_input.txt" 134.76.5.25 # pcfinston
#	./$< --bison-trace --input-filename="test_input.txt" --bison-trace 134.76.20.95 # optinum-srv.gwdg.de


.PHONY: run-cp

run-cp:  optdbcli$(EXEEXT)
	./$< --input-filename="test_input.txt" 134.76.20.95 # optinum-srv.gwdg.de

# 	./$< --input-filename="test_input.txt" --cert-filename="cert-278778248.pem" \
#           --key-filename="cert-278778248_key_1.pem" localhost 


.PHONY: run-j

run-j:  
	curl --cacert ca-bundle.crt  --cert ./usercert.pem --key ./userkey.pem \
             --cookie "xxx=value; yyy=new_value" https://pcfinston.gwdg.de/fcgi-bin/test_js.fcgi

.PHONY: run-jc



run-jc:

	curl --insecure --cacert ca-bundle.crt  --cert ./usercert.pem --key ./userkey.pem \
             --cookie cookies_send.txt \
             --cookie-jar cookies_save.txt \
             --dump-header header_dump.txt \
             https://pcfinston.gwdg.de/fcgi-bin/test_js.fcgi

.PHONY: run-k

# 
# 
# --data-urlencode installation_script@bison_test.sh
# --data-urlencode input@test_input.txt 
# --data-urlencode installation_scripts@combined_test.sh
# --data-urlencode installation_script@m4_test.sh 
# echo "update Entries set installation_script = NULL where user_id = 1" | mysql dbsrvcli
# --data-urlencode installation_scripts@combined_test.sh

# --data-urlencode proxy_file@x509

run-k:
	curl --data-urlencode input@test_input.txt \
             --cacert ca-bundle.crt  --cert ./usercert.pem \
             --key ./userkey.pem https://pcfinston.gwdg.de/fcgi-bin/optwbsrv.fcgi?optdbsrv_pcfinston=1

# 	curl --data-urlencode input@test_input.txt \
#              --cacert ca-bundle.crt  --cert usercert.pem \
#              --key userkey.pem https://pcfinston.gwdg.de/fcgi-bin/optwbsrv.fcgi



.PHONY: run-kt

run-kt:
	curl --data-urlencode input@test_input.txt --insecure \
             --cacert ca-bundle.crt  --cert cert-278778248.pem \
             --key cert-278778248_key_1.pem https://localhost/fcgi-bin/optwbsrv.fcgi


.PHONY: run-ko


# --data-urlencode installation_scripts@combined_test.sh

#             --data-urlencode installation_scripts@m4_test.sh 

run-ko:
	curl --data-urlencode input@test_data.txt \
             --cacert ca-bundle.crt  --cert usercert.pem \
             --key userkey.pem https://optinum.de/fcgi-bin/optwbsrv.fcgi

run-kot:
	curl --trace - --data-urlencode input@test_data.txt \
             --cacert ca-bundle.crt  --cert usercert.pem --key userkey.pem \
              https://optinum.de/fcgi-bin/optwbsrv.fcgi



# echo "select package_name, package_version, installation_script from Entries where user_id = 1\G" | mysql dbsrvcli

#echo "select package_name, package_version, installation_script from Entries where user_id = 1\G" | mysql dbsrvcli

.PHONY: run-com

run-com: optdbcli$(EXEEXT) Makefile
	./optdbcli --input-filename="test_input.txt" \
           --ca-filename=DFN-VereinPCAGrid-G01.pem  \
           --cert-filename=/home/mmohr1/Save/SaveCerts/CertAuthDfn.2011.08.17/usercert.pem \
           --key-filename=/home/mmohr1/Save/SaveCerts/CertAuthDfn.2011.08.17/userkey_npwd.pem optinum-srv.gwdg.de

.PHONY: run-do

run-do:  optdbcli$(EXEEXT)
	echo "delete all entries for user finally" | \
        ./$< --cert-file=usercert.pem --key-file=userkey.pem optinum-srv

.PHONY: run-d

run-d:  optdbcli$(EXEEXT)
	echo "delete all entries for user finally" | ./$< --cert-file=usercert.pem --key-file=userkey.pem \
        --ca-filename DFN-VereinPCAGrid-G01.pem localhost


.PHONY: run-hexp

run-hexp: optdbcli$(EXEEXT) Makefile.am
	echo "show entries user with_installation_script" | \
             ./$< --cert-file=/home/lfinsto/certificates/old_certificates/usercert.pem \
                  --key-file=/home/lfinsto/certificates/old_certificates/userkey.pem localhost

.PHONY: run-h

# show all entries public with_prerequisites with_installation_script

# user with_installation_script

run-h:  optdbcli$(EXEEXT) Makefile.am
	echo "show entries user with_installation_script with_prerequisites" | \
             ./$< --cert-file=usercert.pem --key-file=userkey.pem \
             --ca-filename=DFN-VereinPCAGrid-G01.pem \
             localhost


.PHONY: run-ho

run-ho:  optdbcli$(EXEEXT)
	echo "show entries user with_prerequisites with_installation_script" \
        | ./$< --ca-filename=DFN-VereinPCAGrid-G01.pem --cert-file=usercert.pem --key-file=userkey.pem optinum-srv

.PHONY: run-hom

run-hom:  optdbcli$(EXEEXT)
	echo "show entries user with_prerequisites with_installation_script html" \
        | ./$< --cert-file=usercert.pem --key-file=userkey.pem optinum-srv


.PHONY: run-hon

run-hon:  optdbcli$(EXEEXT)
	./$< --show-user --show-public --non-auth --no-read \
--dn="/C=DE/O=GridGermany/OU=Gesellschaft fuer wissenschaftliche Datenverarbeitung mbH/CN=Laurence Finston" \
        --grid-mapfile ./grid-mapfile optinum-srv

# This can be used:
# mysql -e "select * from Entries where entry_id = 12\G" dbsrvcli

.PHONY: run-cf

.PHONY: run-cfnl

.PHONY: run-cfld

# "/C=DE/O=GridGermany/OU=Gesellschaft fuer wissenschaftliche Datenverarbeitung mbH/CN=Laurence Finston" 
# --install 
# "/O=Grid/OU=GlobusTest/OU=simpleCA-pcmohr.gwdg.de/OU=gwdg.de/CN=Laurence Finston" 
#        --bison-trace 
# --install
# --reinstall
# --package-name="m4" --package-version="1.4.15" 
# rm -f ~/bin/m4; rm -rf ~/installer_work/m4_1.4.15/; rm -rf ~/Installer/m4_1.4.15/
# --show-user-entries 
# --grid-mapfile grid-mapfile #### This works, but isn't needed at the moment.  LDF 2011.05.04.

## --proxy-cert 
## x509up_u1000  # This one works (until expiration)
## GWDGCA.pem    # This one fails
## proxy2011.05.25.pem # This one fails (expired)
# x509up_u1000 # This one should be up-to-date (can be recreated).
#        --proxy-cert="proxy2011.05.25.pem" 

#        --install-dir="/home/lfinsto/download"
# m4
#        --proxy-cert x509up_u1000 
#         --install-dir=/home/lfinsto/download 
#
# --dn is no longer needed, if --proxy-cert is used.  LDF 2011.06.01.
#
# --dn="/C=DE/O=GridGermany/OU=Gesellschaft fuer wissenschaftliche Datenverarbeitung mbH/CN=Laurence Finston" 
# --proxy-cert x509up_u1000
#        --proxy-cert x509up_p16470.file8EQZ1Y.1 
# 
#        --package-version="2.4.3" 
#        --save-temp-files

#### LDF 2012.02.03.
#### Testing this: --prerequisites-reinstall, --no-prerequisites-reinstall

#### !! PLEASE NOTE:  If the --no-links option is not used,
#### this can cause serious problems, if you install something
#### that you need to build the package (such as 'bison'!)
####
#### LDF 2012.02.03.

#        --proxy-cert x509up_u`id -u` 
#        --create-links 
#       --proxy-cert x509up_u`id -u`


#### !! TODO:  LDF 2012.03.19.  This doesn't work.  Installation is
#### only started when a proxy cred. is provided, and not cert/key pair.

run-cf:  optdbcli$(EXEEXT) Makefile.am
	./$< --package-name="hello" --package-version="2.7" \
        --cert-filename usercert.pem --key-filename userkey.pem \
        --grid-mapfile ./grid-mapfile \
        --ca-file=DFN-VereinPCAGrid-G01.pem \
        --reinstall \
        --no-links \
        --install-dir=/home/lfinsto/aaa localhost 


.PHONY : run-cft

run-cft:  optdbcli$(EXEEXT) Makefile.am
	./$< --package-name="hello" --package-version="2.7" \
        --cert-filename usercert.pem --key-filename userkey.pem \
        --grid-mapfile ./grid-mapfile \
        --ca-file=DFN-VereinPCAGrid-G01.pem \
        --reinstall \
        --no-links \
        --trace \
        --install-dir=/home/lfinsto/aaa localhost 


#### This works.  LDF 2012.03.19.

.PHONY: run-cfa

run-cfa:  optdbcli$(EXEEXT) Makefile.am
	./$< --package-name="hello" --package-version="2.7" \
        --save-temp-files \
        --proxy-cert x509up_u`id -u` \
        --grid-mapfile ./grid-mapfile \
        --ca-file=DFN-VereinPCAGrid-G01.pem \
        --globus-site "optinum-srv.gwdg.de" \
        --reinstall \
        --no-links \
        --install-dir=/home/lfinsto/aaa localhost 

.PHONY: run-cfab

run-cfab:  optdbcli$(EXEEXT) Makefile.am
	./$< --package-name="hello" --package-version="2.7" \
        --proxy-cert x509up_u`id -u` \
        --bison-trace --flex-trace \
        --grid-mapfile ./grid-mapfile \
        --ca-filename=DFN-VereinPCAGrid-G01.pem \
        --globus-site "optinum-srv.gwdg.de" \
        --reinstall \
        --no-links \
        --install-dir=/home/lfinsto/aaa localhost 


run-cfnl:  optdbcli$(EXEEXT) Makefile.am
	./$< --package-name="hello" --package-version="2.7a" \
        --proxy-cert x509up_u`id -u` \
        --reinstall \
        --no-links \
        --install-dir=/home/lfinsto/aaa localhost 

# 

run-cfld:  optdbcli$(EXEEXT) Makefile.am
	./$< --package-name="hello" --package-version="2.7" \
        --proxy-cert x509up_u`id -u` \
        --reinstall \
        --link-dir="bbb" \
        --install-dir=/home/lfinsto/aaa localhost 

.PHONY: run-cfldu

#### Link directory, unencrypted entry

run-cfldu:  optdbcli$(EXEEXT) Makefile.am
	./$< --package-name="hello" --package-version="2.7a" \
        --proxy-cert x509up_u`id -u` \
        --reinstall \
        --link-dir="bbb" \
        --install-dir=/home/lfinsto/aaa localhost 


.PHONY: run-cfr

run-cfr:  optdbcli$(EXEEXT) Makefile
	./$< --package-name="hello" --package-name="hello" \
        --proxy-cert x509up_u1000 \
        --reinstall \
        --grid-mapfile ./grid-mapfile \
        --install-dir=/home/lfinsto/aaa localhost 

.PHONY: run-cfo 

#### Entry for m4 is unencrypted, entry for hello is encrypted.  Encrypted entries
#### require 'scrinstl' to be running under the owner's account on the machine
#### where installation takes place and the grid-mapfile must be present and
#### correctly associate username and DN from the certificate or proxy credential.
####
### LDF 2011.07.29.

#### START HERE:  Testing.  Or above.  It does not matter which server
##### I use.  LDF 2012.02.03.
#### scrinstl not working on pcfinston.

run-cfo:  optdbcli$(EXEEXT) Makefile.am
	./$< --package-name="hello" --package-version="2.7u" \
        --save-temp-files \
        --proxy-cert x509up_u`id -u` \
        --grid-mapfile ./grid-mapfile \
        --ca-file=DFN-VereinPCAGrid-G01.pem \
        --globus-site "optinum-srv.gwdg.de" \
        --reinstall \
        --no-links \
        --install-dir=/home/lfinsto/aaa optinum-srv




# --proxy-cert x509up_u1000 

run-cfb:  optdbcli$(EXEEXT)
	./$< --bi=1 --reinstall --package-name="m4" --package-version="1.4.15"\
        --grid-mapfile ./grid-mapfile \
        --install-dir=/home/lfinsto/aaa --no-links --proxy=x509up_u1000 localhost 




#### Transfer proxy credential
#### LDF 2011.09.26.

.PHONY: run-t
run-t:  optdbcli$(EXEEXT) Makefile.am
	./$< --transfer=x509up_u1000 \
        localhost 


.PHONY: run-to
run-to:  optdbcli$(EXEEXT) Makefile.am
	./$< --transfer=x509up_u1000 \
        optinum-srv.gwdg.de


.PHONY: run-m

#### run-m does not set 'aux_files.txt'.  LDF 2011.11.22.

run-m: Makefile.am
	curl --data-urlencode input@test_data.txt --data-urlencode proxy_cert@x509up_u1000 \
             --cacert ca-bundle.crt  --cert usercert.pem \
             --key userkey.pem https://pcfinston.gwdg.de/fcgi-bin/optwbsrv.fcgi?optdbsrv_pcfinston=1

.PHONY: run-n

run-n:  

#### '134.76.20.23' is 'www2.optinum.de'.  LDF 2010.08.19.

## --data-urlencode input@test_data.txt

run-n:
	curl --data-urlencode input@test_data.txt \
             --data-urlencode proxy_cert@x509up_u1000 \
             --data-urlencode aux_files@aux_files.txt \
             --cacert ca-bundle.crt  --cert usercert.pem \
             --key userkey.pem https://pcfinston.gwdg.de/fcgi-bin/optwbsrv.fcgi?optdbsrv_pcfinston=1

.PHONY: run-mo

run-mo:  

#### '134.76.20.23' is 'www2.optinum.de'.  LDF 2010.08.19.

run-mo: Makefile.am
	curl --data-urlencode input@test_data.txt --data-urlencode proxy_cert@x509up_u1000 \
             --cacert ca-bundle.crt  --cert usercert.pem \
             --key userkey.pem https://134.76.20.23/fcgi-bin/optwbsrv.fcgi


.PHONY: run-no

run-no:  

#### '134.76.20.23' is 'www2.optinum.de'.  LDF 2010.08.19.

## --data-urlencode input@test_data.txt
##  --data-urlencode proxy_cert@x509up_u1000
#   

run-no: Makefile.am
	curl --data-urlencode input@test_data.txt --data-urlencode proxy_cert@x509up_u1000 \
             --data-urlencode aux_files@aux_files.txt \
             --cacert ca-bundle.crt  --cert usercert.pem \
             --key userkey.pem https://134.76.20.23/fcgi-bin/optwbsrv.fcgi





#### For Michaela:  
####
#### In /home/mmohr1/opt_repos/optinum/Installer/dbsrvcli:
####
#### aclocal && && autoheader && automake && ./configure --prefix=`pwd` --with-is-pcmohr-gwdg && make && make install
####
#### Server:
####
#### ./optdbsrv --grid-mapfile=grid-mapfile
####
#### Client:
####
#### ./optdbcli --cert-file=usercert.pem --key-file=userkey.pem --input-filename=test_input.txt 127.0.0.1


.PHONY: enc

enc: dwnl_url.gpg inst_scrpt.gpg auth.gpg


dwnl_url.gpg: dwnl_url.txt
	gpg --encrypt -s -u 8F2F8230 -r 8F2F8230 -a -o dwnl_url.gpg dwnl_url.txt

inst_scrpt.gpg: inst_scrpt.sh
	gpg --encrypt -s -u 8F2F8230 -r 8F2F8230 -a -o inst_scrpt.gpg inst_scrpt.sh

auth.gpg: auth.txt inst_scrpt.gpg dwnl_url.gpg
	gpg --clearsign -u 8F2F8230 -o auth.tmp auth.txt
	gpg --encrypt -a -r 8F2F8230 -o auth.gpg auth.tmp

auth.txt: inst_scrpt.gpg dwnl_url.gpg
	echo "/C=DE/O=GridGermany/OU=Gesellschaft fuer wissenschaftliche Datenverarbeitung mbH/CN=Laurence Finston" \
           > auth.txt
	echo "hello 2.7" >> auth.txt
	sha1sum dwnl_url.gpg | cut -d" " -f1 >> auth.txt
	sha1sum inst_scrpt.gpg | cut -d" " -f1 >> auth.txt


.PHONY: d-enc

d-enc:
	rm -rf dwnl_url.gpg inst_scrpt.gpg auth.gpg auth.tmp auth.txt

install-data-hook:
	cp DFN-VereinPCAGrid-G01.pem $(bindir)

install-exec-hook:
	@cp gen_proxy.sh strtinst.sh strtinst_1.sh cpprxcrt.sh installStarterClient_sudo.sh \
            instchwn.sh instchwn_1.sh instkypr.sh \
            kyprinst.sh prpencfs.sh setupkyp.sh testotpt.sh $(bindir)
	@chmod a+rx $(bindir)/cpprxcrt.sh $(bindir)/gen_proxy.sh $(bindir)/installStarterClient_sudo.sh \
                    $(bindir)/instchwn.sh $(bindir)/instchwn_1.sh \
                    $(bindir)/instkypr.sh $(bindir)/kyprinst.sh \
                    $(bindir)/prpencfs.sh $(bindir)/setupkyp.sh $(bindir)/testotpt.sh 
	@./instoipk.sh > /dev/null

#### *** (3)

listing.dvi listing.log: listing.tex
	tex listing.tex

listing.ps: listing.dvi
	dvips -o listing.ps listing.dvi

listing.pdf: listing.ps
	ps2pdf listing.ps 2>/dev/null 

#### *** (3) Fix the CWEAVE manuals.
####         That is, put the table of contents at the front.
####         'fixman.sh' is fairly simple-minded and assumes 1 page for the table of contents.
####         If necessary, this could be changed.  See that file for more information.
####
#### LDF 2012.05.24.

.PHONY : fixman

#### Touching the '*.tex' files ensures that calling 'fixman.sh' repeatedly
#### doesn't put the contents page at the front of the files multiple times.
#### LDF 2012.05.25.

fixman: dbsrvcli.dvi optpsgwv.dvi scnprswv.dvi dbsrvcli.log optpsgwv.log scnprswv.log 
	fixman.sh dbsrvcli && fixman.sh optpsgwv && fixman.sh scnprswv
	touch dbsrvcli.tex optpsgwv.tex scnprswv.tex 

#### *** (3)

#### ** (2) End of `[...]/dbsrvcli/src/Makefile.am'


#### * (1) Local variables for Emacs

#### Local Variables:
#### mode:Makefile
#### abbrev-mode:t
#### eval:(read-abbrev-file)
#### eval:(outline-minor-mode t)
#### outline-regexp:"#### [*\\f]+[ \\t]+([0-9]+)"
#### End:
