#### Makefile
#### .../optinum/DOC/TEXINFO/Makefile.am
#### Created by Laurence D. Finston (LDF) Fri Jan 13 17:01:01 CET 2012

#### Copyright (C) 2009, 2010, 2011, 2012, 2013 Gesellschaft fuer wissenschaftliche Datenverarbeitung mbH

#### $Id: Makefile 8382 2012-05-30 12:15:44Z finston $

#### * (1) Top

#### ** (2) Variables

SOURCES_MANUAL = authent.texi auxprgrf.texi client.texi database.texi dstngnmt.texi \
                 dhprxcrt.texi entries.texi envrshsc.texi \
                 glblfncs.texi glblvrbl.texi globssts.texi glossary.texi glsinftp.texi gpgkptp.texi \
                 hdinstrf.texi \
                 installer.texi instlltn.texi \
                 intro.texi invoking.texi listfigs.texi lstsrcfs.texi macros.texi \
                 optdbcli.texi optdbsrv.texi \
                 prsrclnt.texi prsrfncs.texi \
                 prsrsrvr.texi \
                 rspnstp.texi scnrclnt.texi scnrsrvr.texi scprpmtp.texi sftwpkin.texi \
                 quckstrt.texi rmtinstl.texi server.texi sssndttp.texi thrdfncs.texi tlsconn.texi \
                 utilfncs.texi webapp.texi \
                 parser.output prsrclnt.output

#### listing.pdf listing.ps listing.dvi listing_temp_out.pdf

PURGE_FILES = installer.aux installer.cp installer.cps  \
              installer.fn  installer.fns installer.ky \
              installer.log \
              installer.pg installer.tmp installer.toc installer.tp \
              installer.tps installer.vr installer.vrs \
              *.log \
              figures.pdf figures.ps figures.dvi figures.mp figures.[0-9]


CLEAN_FILES = $(PURGE_FILES) installer.dvi installer.html installer.info \
              installer.info-1 installer.ps installer.pdf


EXTRA_DIST = $(SOURCES_MANUAL)


#### ** (2) Generate the Texinfo manual

#### *** (3) All output formats.

# installer.html installer.info html-split

.PHONY : all

# listing.pdf

all : dvi ps pdf html html-split info 

#### *** (3) Info Output

.PHONY : info

info : installer.info

installer.info: $(SOURCES_MANUAL) 
	@echo "Running \`makeinfo'"
	makeinfo --force installer.texi

#### *** (3) TeX (DVI, PostScript, and PDF output)

.PHONY :  pdf

.PHONY : ps
.PHONY : pps

.PHONY : dvi
.PHONY : ddvi

## `make ddvi' ensures that the tables of contents are up-to-date.
## First, `make installer.dvi' is called.  If `installer.dvi' isn't 
## up-to-date, `texi2dvi installer.texi' will be called.
## Following this, `texi2dvi installer.texi' will be called regardless,
## so that `texi2dvi' will be called once if `installer.dvi' is up-to-date
## and twice if it's not.
## LDF 2008.06.11.

ddvi:
	@echo "Running texi2dvi"
	$(MAKE) installer.dvi
	texi2dvi installer.texi


pdf: installer.pdf

ps: installer.ps

#### LDF 2012.05.21.
#### To append 'listing.pdf' to 'installer.pdf':
#### listing.pdf (prerequisite)
#### pdftk installer.pdf listing.pdf cat output out_1.pdf && mv out_1.pdf installer.pdf
####
#### Not doing this at present.  It may not be the best way.

installer.pdf: installer.ps 
	@echo "Running \`ps2pdf'"
	ps2pdf installer.ps 2>/dev/null

installer.ps: installer.dvi figures_1.eps
	@echo "Running \`dvips'"
	dvips -o installer.ps installer.dvi

installer.dvi: $(SOURCES_MANUAL)
	if test ! -e pageno.txt; then echo "\`pageno.txt' doesn't exist."; echo "0" > pageno.txt; else echo "\`pageno.txt' exists."; fi;
	if test ! -e listfigs.aux1; then echo "\`listfigs.aux1' doesn't exist."; \
           echo "(Empty)" > listfigs.aux1; else echo "\`listfigs.aux1' exists."; fi;
	@echo "Running \`texi2dvi'."
	texi2dvi installer.texi 
	@echo "Extracting last line of table of contents and writing it to \`pageno.txt'."
	@head installer.log -n `expr \`grep --line-number "listfigs\\.texi" installer.log | head -n 1 | cut -d":" -f1\` + 1` \
            | tr " " "\n" | grep -e "\\[-[0-9]\+" | tr -d "()[]" | sort -n | head -n 1 > pageno.txt
	cp listfigs.aux listfigs.aux1

dvi: installer.dvi
	
#### *** (3) Parser output files

# listing.pdf: listing.ps
# 	ps2pdf listing.ps listing_temp_out.pdf 2>/dev/null
# 	pdftk listing_temp_out.pdf cat 1-endR output listing.pdf

# listing.ps: listing.dvi 
# 	dvips -o listing.ps listing.dvi

# listing.dvi: listing.tex installer.dvi parser.otp prsrclnt.otp prswbsrv.otp
# 	tex listing.tex
	
#### *** (3) HTML Output

.PHONY : html

html: installer.html

installer.html: $(SOURCES_MANUAL)
	@echo "Running \`makeinfo'"
	makeinfo --html --no-split installer.texi

#### *** (3) Split HTML Output 

.PHONY : html-split

html-split: $(SOURCES_MANUAL)
	@echo "Running \`makeinfo'"
	makeinfo --html installer.texi

#### *** (3) 

#### ** (2) Renerate

.PHONY : regen

regen:
	touch *.texi

#### ** (2) Cleaning and purging

.PHONY : clean

.PHONY : purge

#### ** (2) Figures

.PHONY : fps

fps: figures.ps figures_1.eps

.PHONY : fpdf 

fpdf: figures.pdf figures_1.eps

.PHONY : figs

figs: figures_1.eps

figures.pdf: figures.ps
	ps2pdf figures.ps 2>/dev/null

figures.ps: figures.dvi
	dvips -o figures.ps figures.dvi 

figures.dvi: figures.tex figures.1
	tex figures.tex

figures_1.eps: figures.1
	mv figures.1 figures_1.eps

figures.1: figures.mp
	mpost figures.mp

figures.mp: figures.ldf
	/home/lfinsto/3dldf_local/CWEB/3dldf figures.ldf

%.otp : %.output
	fold --spaces --width=145 $< > $@

#### ** (2) Clean and Purge

#### `make purge' removes files generated by `texidvi', `makeinfo',
#### `tex', `3dldf', etc.,
#### _except_ for the output files themselves, i.e., `installer.dvi'
#### `installer.ps', `installer.pdf', `installer.html', `installer.info'.
#### Nor does it remove the directory `installer' and its contents.  This
#### directory and its contents are generated when `makeinfo --html' 
#### is called _without_ the `--no-split' option.
####
#### `make clean' removes hthe calls `make purge' and then removes the output files
#### and the directory `installer', too.
####
#### LDF 2008.06.11.

clean :
	@rm -f $(CLEAN_FILES)
	@rm -rf installer


purge :
	@rm -f $(PURGE_FILES)



#### *** (3) Update GNU Bison *.output files

.PHONY: updo

updo:
	cp ~/opt_rep/optinum/Installer/dbsrvcli/src/parser.output ~/opt_rep/optinum/Installer/dbsrvcli/src/prsrclnt.output . && \
        svn commit -m "Updated." parser.output prsrclnt.output

#### ** (2) End of `Makefile'
      
#### * (1) Local Variables for Emacs

#### Local Variables:
#### mode:Shell-Script
#### eval:(outline-minor-mode t)
#### outline-regexp:"#### [*\\f]+[ \\t]+([0-9]+)"
#### End:
