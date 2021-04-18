%%%% figures.mp.
%%%% Generated on Wed Oct  2 10:46:24 2013
%%%% from figures.ldf by GNU 3DLDF 1.2.0.

verbatimtex \font\tt=cmtt12 etex;
verbatimtex \font\smalltt=cmtt10 etex;
verbatimtex \font\largett=cmtt12 etex;
verbatimtex \font\Largett=cmtt12 scaled \magstep1 etex;
verbatimtex \font\small=cmr8 etex;
verbatimtex \font\large=cmr12 etex;
verbatimtex \font\Large=cmr12 scaled \magstep1 etex;
verbatimtex \font\huge=cmr17 etex;
verbatimtex \font\largebf=cmbx12 etex;
verbatimtex \font\Largebf=cmbx12 scaled \magstep1 etex;
verbatimtex \font\hugebf=cmbx12 scaled \magstep2 etex;
prologues := 3;
beginfig(1);
verbatimtex \large etex;
ahlength := .5cm;
drawarrow (3.500000cm, 8.250000cm) -- (7.250000cm, 8.250000cm)
withcolor (0.000000, 0.000000, 0.000000) 
withpen pencircle transformed begingroup; save T; transform T;
 xxpart T = 0.150000cm; xpart T = 0.000000cm; xypart T = 0.000000cm;
 yypart T = 0.150000cm; ypart T = 0.000000cm; yxpart T = 0.000000cm; T endgroup 
 ;
drawarrow (7.250000cm, 5.500000cm) -- (3.500000cm, 5.500000cm)
withcolor (0.000000, 0.000000, 0.000000) 
withpen pencircle transformed begingroup; save T; transform T;
 xxpart T = 0.150000cm; xpart T = 0.000000cm; xypart T = 0.000000cm;
 yypart T = 0.150000cm; ypart T = 0.000000cm; yxpart T = 0.000000cm; T endgroup 
 ;
drawarrow (3.500000cm, 3.500000cm) -- (7.250000cm, 3.500000cm)
withcolor (0.000000, 0.000000, 0.000000) 
withpen pencircle transformed begingroup; save T; transform T;
 xxpart T = 0.150000cm; xpart T = 0.000000cm; xypart T = 0.000000cm;
 yypart T = 0.150000cm; ypart T = 0.000000cm; yxpart T = 0.000000cm; T endgroup 
 ;
drawarrow (7.250000cm, 1.500000cm) -- (3.500000cm, 1.500000cm)
withcolor (0.000000, 0.000000, 0.000000) 
withpen pencircle transformed begingroup; save T; transform T;
 xxpart T = 0.150000cm; xpart T = 0.000000cm; xypart T = 0.000000cm;
 yypart T = 0.150000cm; ypart T = 0.000000cm; yxpart T = 0.000000cm; T endgroup 
 ;
drawarrow (3.500000cm, -0.500000cm) -- (7.250000cm, -0.500000cm)
withcolor (0.000000, 0.000000, 0.000000) 
withpen pencircle transformed begingroup; save T; transform T;
 xxpart T = 0.150000cm; xpart T = 0.000000cm; xypart T = 0.000000cm;
 yypart T = 0.150000cm; ypart T = 0.000000cm; yxpart T = 0.000000cm; T endgroup 
 ;
drawarrow (7.250000cm, -2.500000cm) -- (3.500000cm, -2.500000cm)
withcolor (0.000000, 0.000000, 0.000000) 
withpen pencircle transformed begingroup; save T; transform T;
 xxpart T = 0.150000cm; xpart T = 0.000000cm; xypart T = 0.000000cm;
 yypart T = 0.150000cm; ypart T = 0.000000cm; yxpart T = 0.000000cm; T endgroup 
 ;
label.top(btex Server (optdbsrv) etex , (9.250000cm, 10.000000cm));
label.top(btex Client (optdbcli) etex , (0.000000cm, 10.000000cm));
label.top(btex {\largebf Storing Software Package Data} etex , (5.375000cm, 12.000000cm));
label.rt(btex Client invocation: {\tt ./optdbcli --input-filename=$\langle${\it filename\/}$\rangle$ optinum-srv.gwdg.de} etex , (-3.500000cm, 11.500000cm));
label.lrt(btex {\tt \vbox{\hbox{START\_ENTRY}\hbox{PACKAGE\_NAME {\large m4}}\hbox{PACKAGE\_VERSION $1.4.15$}\hbox{DOWNLOAD\_URL}\hbox{\quad\large http://ftp.gnu.org/gnu/m4/m4-1.4.15.tar.gz}\hbox{INSTALLATION\_SCRIPT {\large $\langle$m4\_install.sh$\rangle$}}\hbox{PUBLIC}\hbox{END\_ENTRY}}} etex , (-3.500000cm, 9.500000cm));
label.rt(btex \vbox{{\tt \hbox{SEND INSTALLATION\_SCRIPT}\hbox{{\large m4\_install.sh} FOR ENTRY {\large 8}}\hbox{{\large ``m4'' ``1.4.15''}}}} etex , (7.750000cm, 5.500000cm));
label.rt(btex \vbox{{\tt \hbox{CLIENT SENDING}\hbox{INSTALLATION\_SCRIPT {\large m4\_install.sh}}\hbox{{\large 8 1 ``m4''}}}} etex , (-3.500000cm, 3.500000cm));
label.rt(btex \vbox{\hbox{{\tt RECEIVE INSTALLATION\_SCRIPT}}\hbox{{\tt SUCCEEDED FOR ENTRY} ``m4''}} etex , (7.750000cm, 1.500000cm));
label.rt(btex \vbox{{\tt\hbox{Client Finished}}} etex , (-3.500000cm, -0.500000cm));
label.rt(btex \vbox{{\tt\hbox{Server Finished}}} etex , (7.750000cm, -2.500000cm));
label.lrt(btex (Client breaks off contact to server) etex , (-3.500000cm, -2.500000cm));
endfig;

end
