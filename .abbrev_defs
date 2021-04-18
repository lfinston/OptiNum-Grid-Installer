;;-*-coding: utf-8;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'Custom-mode-abbrev-table '())

(define-abbrev-table 'Info-edit-mode-abbrev-table '())

(define-abbrev-table 'Man-mode-abbrev-table '())

(define-abbrev-table 'apropos-mode-abbrev-table '())

(define-abbrev-table 'autoconf-mode-abbrev-table '())

(define-abbrev-table 'awk-mode-abbrev-table '())

(define-abbrev-table 'bookmark-bmenu-mode-abbrev-table '())

(define-abbrev-table 'bookmark-edit-annotation-mode-abbrev-table '())

(define-abbrev-table 'c++-mode-abbrev-table
  '(
    ("cnnctn" "connection" nil 1)
    ("eah" "cout << \"Error after here.\" << endl;" nil 1)
    ("eif" "#endif" nil 3)
    ("enl" "<< endl" nil 5)
    ("hia" "cout << \"Here I am.\" << endl;" nil 1)
    ("iff" "#if 0 /* false  */" nil 4)
    ("sccd" "succeeded" nil 1)
    ("sccsf" "successfully" nil 1)
    ("strstrm" "stringstream" nil 1)
    ("trt" "cerr << \"Enter <RETURN> to continue: \";
getchar();" nil 1)
   ))

(define-abbrev-table 'c-mode-abbrev-table
  '(
    ("dcl" "declaration" nil 1)
    ("dfn" "definition" nil 3)
    ("eah" "cerr << \"Error after here.\" << endl;" nil 3)
    ("eif" "#endif" nil 1)
    ("enl" "<< endl" nil 8)
    ("fnctn" "function" nil 2)
    ("frnd" "friend" nil 1)
    ("ifd" "if (DEBUG)" nil 3)
    ("iff" "#if 0" nil 1)
    ("sccd" "succeeded" nil 2)
    ("sccsf" "successfully" nil 1)
    ("strthr" "/* START HERE  */" nil 1)
    ("trt" "cerr << \"Enter <RETURN> to continue: \";
getchar();" nil 3)
    ("uscsf" "unsuccessfully" nil 2)
   ))

(define-abbrev-table 'calc-trail-mode-abbrev-table '())

(define-abbrev-table 'change-log-mode-abbrev-table '())

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'css-mode-abbrev-table '())

(define-abbrev-table 'cweb-mode-abbrev-table
  '(
    ("dcl" "declaration" nil 2)
    ("dfn" "definition" nil 4)
    ("eah" "cerr << \"Error after here.\" << endl;" nil 7)
    ("eah1" "cerr << \"Error after here 1.\" << endl; " nil 1)
    ("eah2" "cerr << \"Error after here 2.\" << endl; " nil 1)
    ("eif" "#endif" nil 24)
    ("eifdb" "else if (DEBUG)" nil 1)
    ("eifdbc" "#endif /* |DEBUG_COMPILE|  */@;" nil 1)
    ("enl" "<< endl" nil 69)
    ("fnctn" "function" nil 10)
    ("frnd" "friend" nil 1)
    ("hia" "cerr << \"Here I am.\" << endl
<< \"Type <RETURN> to continue: \";
getchar();" nil 1)
    ("idbc" "#if DEBUG_COMPILE" nil 1)
    ("idmen" "Id_Map_Entry_Node" nil 7)
    ("idmet" "Id_Map_Entry_Type" nil 1)
    ("ifdb" "if (DEBUG)
{ 
}" nil 1)
    ("iff" "#if 0" nil 18)
    ("itrtr" "iterator" nil 1)
    ("rtrn" "return" nil 1)
    ("rtrnd" "returned" nil 1)
    ("rtrng" "returning" nil 1)
    ("rtrnval" "return value" nil 2)
    ("sccd" "succeeded" nil 5)
    ("sccsf" "successfully" nil 3)
    ("scnrnd" "scanner_node" nil 8)
    ("scnrtp" "Scanner_Type" nil 2)
    ("sctn" "section" nil 2)
    ("sscsf" "successfully" nil 1)
    ("stcst" "static_cast<>" nil 3)
    ("sthr" "/* !!START HERE  */" nil 1)
    ("strngstrm" "stringstream" nil 1)
    ("strthr" "/* !! START HERE  */" nil 1)
    ("sttc" "static" nil 1)
    ("trt" "cerr << \"XXX Enter <RETURN> to continue: \";
getchar();" nil 6)
    ("uscsf" "unsuccessfully" nil 1)
    ("vctr" "vector" nil 1)
   ))

(define-abbrev-table 'debugger-mode-abbrev-table '())

(define-abbrev-table 'diff-mode-abbrev-table '())

(define-abbrev-table 'display-time-world-mode-abbrev-table '())

(define-abbrev-table 'docTeX-mode-abbrev-table '())

(define-abbrev-table 'doctex-mode-abbrev-table '())

(define-abbrev-table 'edit-abbrevs-mode-abbrev-table '())

(define-abbrev-table 'elisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'epa-info-mode-abbrev-table '())

(define-abbrev-table 'epa-key-list-mode-abbrev-table '())

(define-abbrev-table 'epa-key-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table
  '(
    ("eah" "cout << \"Error after here.\" << endl;" nil 1)
    ("enl" "<< endl" nil 3)
    ("hia" "cout << \"Here I am.\" << endl;" nil 1)
    ("sccd" "succeeded" nil 1)
    ("sh" "/* START HERE  */" nil 2)
    ("trt" "cout << \"Enter <RETURN> to continue.\" << endl;
getchar();" nil 2)
   ))

(define-abbrev-table 'gdb-breakpoints-mode-abbrev-table '())

(define-abbrev-table 'gdb-disassembly-mode-abbrev-table '())

(define-abbrev-table 'gdb-frames-mode-abbrev-table '())

(define-abbrev-table 'gdb-locals-mode-abbrev-table '())

(define-abbrev-table 'gdb-memory-mode-abbrev-table '())

(define-abbrev-table 'gdb-registers-mode-abbrev-table '())

(define-abbrev-table 'gdb-script-mode-abbrev-table '())

(define-abbrev-table 'gdb-threads-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table '())

(define-abbrev-table 'grep-mode-abbrev-table '())

(define-abbrev-table 'gud-mode-abbrev-table '())

(define-abbrev-table 'help-mode-abbrev-table '())

(define-abbrev-table 'html-mode-abbrev-table '())

(define-abbrev-table 'idl-mode-abbrev-table '())

(define-abbrev-table 'java-mode-abbrev-table '())

(define-abbrev-table 'js-jsx-mode-abbrev-table '())

(define-abbrev-table 'js-mode-abbrev-table '())

(define-abbrev-table 'latex-mode-abbrev-table '())

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'log-edit-mode-abbrev-table
  '(
    ("dclrs" "declarations" nil 1)
    ("dfns" "definitions" nil 1)
    ("fnctn" "function" nil 3)
    ("fnctns" "functions" nil 1)
    ("sngnfnct" "significant" nil 1)
   ))

(define-abbrev-table 'log-view-mode-abbrev-table '())

(define-abbrev-table 'makefile-automake-mode-abbrev-table '())

(define-abbrev-table 'makefile-bsdmake-mode-abbrev-table '())

(define-abbrev-table 'makefile-gmake-mode-abbrev-table '())

(define-abbrev-table 'makefile-imake-mode-abbrev-table '())

(define-abbrev-table 'makefile-makepp-mode-abbrev-table '())

(define-abbrev-table 'makefile-mode-abbrev-table '())

(define-abbrev-table 'message-mode-abbrev-table '())

(define-abbrev-table 'messages-buffer-mode-abbrev-table '())

(define-abbrev-table 'meta-mode-abbrev-table '())

(define-abbrev-table 'metafont-mode-abbrev-table '())

(define-abbrev-table 'metapost-mode-abbrev-table '())

(define-abbrev-table 'mhtml-mode-abbrev-table
  '(
    ("br" "<br>" nil 1)
   ))

(define-abbrev-table 'objc-mode-abbrev-table '())

(define-abbrev-table 'occur-edit-mode-abbrev-table '())

(define-abbrev-table 'occur-mode-abbrev-table '())

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'pike-mode-abbrev-table '())

(define-abbrev-table 'plain-tex-mode-abbrev-table
  '(
    ("bln" "boolean" nil 1)
    ("blpt" "bool_point" nil 1)
    ("cbd" "cuboid" nil 2)
    ("clr" "color" nil 1)
    ("cmplx" "complex" nil 2)
    ("cncsctn" "conic section" nil 1)
    ("crcl" "circle" nil 3)
    ("cylndr" "cylinder" nil 2)
    ("dclrs" "declarations" nil 2)
    ("dcls" "declarations" nil 1)
    ("ddclrtns" "declarations" nil 1)
    ("dshptrn" "dash pattern" nil 2)
    ("dvlpmnt" "development" nil 2)
    ("ellps" "ellipse" nil 2)
    ("ellpsd" "ellipsoid" nil 2)
    ("exprsn" "expression" nil 1)
    ("exprsns" "expressions" nil 1)
    ("fcs" "focus" nil 2)
    ("fgr" "figure" nil 2)
    ("fgrs" "figures" nil 1)
    ("fndtn" "foundation" nil 1)
    ("hlx" "helix" nil 2)
    ("hyprbla" "hyperbola" nil 2)
    ("ltc" "lattice" nil 1)
    ("mcr" "macro" nil 1)
    ("mcrs" "macros" nil 1)
    ("mtrx" "matrix" nil 1)
    ("nmbr" "number" nil 1)
    ("nmrc" "numeric" nil 1)
    ("nrb" "nurb" nil 2)
    ("pctr" "picture" nil 1)
    ("plygn" "polygon" nil 4)
    ("plyhdrn" "polyhedron" nil 3)
    ("pnt" "point" nil 2)
    ("prbla" "parabola" nil 3)
    ("prbld" "paraboloid" nil 2)
    ("pth" "path" nil 2)
    ("rctngl" "rectangle" nil 2)
    ("rglr" "regular" nil 2)
    ("sctn" "section" nil 1)
    ("slc" "slice" nil 2)
    ("sphr" "sphere" nil 3)
    ("sthr" "!! START HERE!" nil 1)
    ("strng" "string" nil 2)
    ("tkn" "token" nil 1)
    ("trngl" "triangle" nil 2)
    ("trnsfrm" "transform" nil 1)
    ("unsgnd" "unsigned" nil 1)
    ("vctr" "vector" nil 19)
    ("vflejct" "\\vfil\\eject" nil 1)
   ))

(define-abbrev-table 'process-menu-mode-abbrev-table '())

(define-abbrev-table 'prog-mode-abbrev-table '())

(define-abbrev-table 'scss-mode-abbrev-table '())

(define-abbrev-table 'select-tags-table-mode-abbrev-table '())

(define-abbrev-table 'sgml-mode-abbrev-table '())

(define-abbrev-table 'sh-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'slitex-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'speedbar-mode-abbrev-table '())

(define-abbrev-table 'sql-mode-abbrev-table
  '(
    ("cprt" "{\\\\copyright}" nil 1)
    ("cpyrt" "copyright" nil 3)
    ("scnd" "scanned" nil 1)
    ("wrds" "words" nil 2)
    ("wrdsrvrs" "words_reverse" nil 2)
    ("yr" "year" nil 3)
   ))

(define-abbrev-table 'tabulated-list-mode-abbrev-table '())

(define-abbrev-table 'tex-mode-abbrev-table '())

(define-abbrev-table 'tex-shell-abbrev-table '())

(define-abbrev-table 'texinfo-mode-abbrev-table
  '(
    ("assgnd" "assigned" nil 1)
    ("assgnmnts" "assignments" nil 1)
    ("cmmnds" "commands" nil 2)
    ("dclrd" "declared" nil 1)
    ("dclrtns" "declarations" nil 1)
    ("dtbs" "database" nil 1)
    ("mf" "@MF" nil 2)
    ("mp" "@MP" nil 2)
    ("mth" "@math{}" nil 2)
    ("nindnt" "@noindent" nil 1)
    ("oprtns" "operations" nil 1)
    ("prjctn" "projection" nil 1)
    ("pxrf" "@pxref{}" nil 2)
    ("rslt" "@result{}" nil 5)
    ("sctn" "section" nil 1)
    ("trnsfrm" "transform" nil 1)
    ("trnsfrmtn" "transformation" nil 1)
   ))

(define-abbrev-table 'text-mode-abbrev-table
  '(
    ("dfn" "definition" nil 2)
    ("enl" "<< endl" nil 12)
    ("sccsf" "successfully" nil 1)
    ("sthr" "!! START HERE!:" nil 1)
    ("trt" "  cout << \"Type <RETURN> to continue:\";
  getchar();" nil 1)
    ("uscsf" "unsuccessfully" nil 1)
   ))

(define-abbrev-table 'vc-bzr-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-dir-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-edit-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-git-region-history-mode-abbrev-table '())

(define-abbrev-table 'vc-svn-log-view-mode-abbrev-table '())

(define-abbrev-table 'xref--xref-buffer-mode-abbrev-table '())

