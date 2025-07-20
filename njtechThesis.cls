%%%%% ------------------------------------------------------------------------------------------
%%
%%     This is file `njtechThesis.cls',
%%     This file was recreated by Jie Cheng from 'ucasthesis.cls' Ref [1, 2]
%%
%%%%% ------------------------------------------------------------------------------------------
%% GUN
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%%
%%%%% ------------------------------------------------------------------------------------------
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
%%%%***************************** version infomation *************************************
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{njtechThesis}
  [2015/03/15 v2.x njtechThesis
   document class]
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%*************************** Declare Options *****************************************
%%
%% end-user parameters, each option is declared by one declare option command
\newif\ifNJTECH@typeinfo \NJTECH@typeinfotrue       % turn on Copyright
%\newif\ifNJTECH@typeinfo \NJTECH@typeinfofalse     % turn off Copyright
\DeclareOption{notypeinfo}{\NJTECH@typeinfofalse}
\DeclareOption{draftinfo}{% draft information reminder
  \NJTECH@typeinfotrue%
}
\DeclareOption*{% handle non-implemented options
  \PassOptionsToClass{\CurrentOption}{ctexbook}%
}
%% terminates all options processing
\ProcessOptions\relax
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%*************************** loadclass infomation ************************************
%%
\LoadClass[a4paper,UTF8,AutoFakeBold,zihao=-4]{ctexbook}[2015/03/15]
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%***************************** package infomation ***********************************
%%
%% font
%% math packages
\RequirePackage{mathtools,amsthm,amsfonts,amssymb,bm}
%% graphics packages
\RequirePackage{graphicx,psfrag,flafter,subfigure,siunitx}
\RequirePackage{fancyhdr}

%% 
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%************************ load class configuretion ************************************
%%
\AtEndOfPackage{%class cfg loaded after package, makes commands at preamble take effect
  \makeatletter
  \InputIfFileExists{njtechThesis.cfg}{}{}
  \makeatother
}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%******************************* page layout ******************************************
%%
\oddsidemargin 0 true cm
\if@twoside
  \evensidemargin 0 true cm
\else
  \evensidemargin 0 true cm
\fi
\textheight 24 true cm
\textwidth 16 true cm
\topmargin -0.6 true cm
\headheight 15pt
\footskip 32 pt
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%********************* some style control commands ********************************
%%
%% redefine \cleardoublepage to handle both oneside and twoside modes
\def\cleardoublepage{%
  \clearpage%
  \if@twoside%
    \ifodd\c@page%
      % do nothing
    \else%
      \thispagestyle{empty}%
      \hbox{}%
      \newpage%
      \if@twocolumn%
        \hbox{}%
        \newpage%
      \fi%
    \fi%
  \fi}%
%% space used in items title
\newcommand\NJTECHspace{\protect\quad\protect\quad}
%% underline
\def\NJTECH@underline[#1]#2{%
  \CJKunderline{\hbox to #1{\hfill#2\hfill}}}
\def\NJTECHunderline{\@ifnextchar[\NJTECH@underline\CJKunderline}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%********************** chinese titlepage items **************************************
%% predefine all the items which will be used later
%%
%% ==============================================
%% header
\newcommand\classification[1]{\def\NJTECH@value@classification{#1}}
\newcommand\UDC[1]{\def\NJTECH@value@UDC{#1}}
\newcommand\UDCfootnote[1]{\def\NJTECH@value@UDCfootnote{#1}}
\newcommand\confidential[1]{\def\NJTECH@value@confidential{#1}}
%%
%% ==============================================
%% title & author
\newcommand\incoverthesis[1]{\def\NJTECH@value@incoverthesis{#1}}
\renewcommand\title[2][\NJTECH@value@title]{%
  \def\NJTECH@value@title{#2}
  \def\NJTECH@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\NJTECH@value@author{#1}}
\newcommand\titleUpp[1]{\def\NJTECH@value@titleUpp{#1}}
\newcommand\titleLow[1]{\def\NJTECH@value@titleLow{#1}}
%%
%% ==============================================
%% advisor & others
\newcommand\advisor[1]{\def\NJTECH@value@advisor{#1}}
\newcommand\advisortitle[1]{\def\NJTECH@value@advisortitle{#1}}
\newcommand\entcoadvisor[1]{\def\NJTECH@value@entcoadvisor{#1}}
\newcommand\entcoadvisortitle[1]{\def\NJTECH@value@entcoadvisortitle{#1}}
\newcommand\coadvisor[1]{\def\NJTECH@value@coadvisor{#1}}
\newcommand\coadvisortitle[1]{\def\NJTECH@value@coadvisortitle{#1}}
\newcommand\degree[1]{\def\NJTECH@value@degree{#1}}
\newcommand\major[1]{\def\NJTECH@value@major{#1}}
\newcommand\interest[1]{\def\NJTECH@value@interest{#1}}
%
\newcommand\school[1]{\def\NJTECH@value@school{#1}}
%
\newcommand\titleBackbone[1]{\def\NJTECH@value@titleBackbone{#1}}
\newcommand\schoolBackbone[1]{\def\NJTECH@value@schoolBackbone{#1}}
%
%
%% ==============================================
%% about date 
\newcommand\submitdate[1]{\def\NJTECH@value@submitdate{#1}}
\newcommand\incoverdate[1]{\def\NJTECH@value@incoverdate{#1}}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%**************************** make chinese titlepage ********************************
%% 1. cover page
\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
%% ==============================================
%% header
    \songti\zihao{5}
    	\NJTECH@label@classification~               %% header
	\NJTECHunderline[150pt]{\NJTECH@value@classification}
		\hfill
	\NJTECH@label@confidential~
	\NJTECHunderline[150pt]{\NJTECH@value@confidential}\hspace{1.4cm}
   \vskip 10pt
   	 \NJTECH@label@UDC~~
      	\NJTECHunderline[150pt]{\NJTECH@value@UDC}
            \hfill
      	\NJTECH@label@thesisid~\NJTECHunderline[150pt]{}\hspace{1.5cm}
    \vskip 10pt
%% ==============================================
%% logo
  \vskip 30pt
    \parbox[c][4cm][c]{\textwidth}{%
        \centering
        \includegraphics[width=14cm]{img/logo/njtech-logo-name.pdf}
    }%
%% ==============================================
%% title & author
    \vskip 30pt
    \vskip 10pt
        {\bf\heiti\zihao{-0}\NJTECH@label@thesis}      %% Thesis title
    \vskip \stretch{2}
      {\vskip 10pt 
      \bf\heiti\zihao{-1}\NJTECHunderline[400pt]{~\NJTECH@value@titleUpp~}
      \vskip 10pt
                                \bf\heiti\zihao{-2}\NJTECHunderline[400pt]{~\NJTECH@value@titleLow~}} \\
      \songti\zihao{-4}{\NJTECH@label@titleLab}
    \vskip \stretch{2}
      %%{\bf\kaishu\zihao{-2}\NJTECHunderline[180pt]{~\NJTECH@value@author~}} \\
      %%\hspace{0.15cm}\songti\zihao{-4}{\NJTECH@label@authorLab}
    \vskip \stretch{2}
%% ==============================================
%% advisor and others
\normalfont\songti\zihao{4}
\def\tabcolsep{1pt}
\def\arraystretch{1.25}
\begin{tabular}{cc}
      \bf \NJTECH@label@authorname &  \NJTECHunderline[299pt]{{\bf\kaishu\zihao{3}\NJTECH@value@author}} \\
      \bf\NJTECH@label@advisor   &  \NJTECHunderline[299pt]{{\bf\kaishu\zihao{3}\NJTECH@value@advisor} \hspace{4pt} {\kaishu\zihao{4}\NJTECH@value@advisortitle}}  \\
      \bf\NJTECH@label@entcoadvisor & \NJTECHunderline[299pt]{{\bf\kaishu\zihao{3}\NJTECH@value@entcoadvisor} \hspace{4pt} {\kaishu\zihao{4}\NJTECH@value@entcoadvisortitle}}  \\
      \bf\NJTECH@label@coadvisor & \NJTECHunderline[299pt]{{\bf\kaishu\zihao{3}\NJTECH@value@coadvisor} \hspace{4pt} {\kaishu\zihao{4}\NJTECH@value@coadvisortitle}}  \\
      \bf\NJTECH@label@degree    & \NJTECHunderline[299pt]{\bf\kaishu\zihao{3}\NJTECH@value@degree}  \\
      \bf\NJTECH@label@major    &  \NJTECHunderline[299pt]{\bf\kaishu\zihao{3}\NJTECH@value@major}  \\
      \bf\NJTECH@label@interest   & \NJTECHunderline[299pt]{\bf\kaishu\zihao{3}\NJTECH@value@interest}  \\
\end{tabular}
\end{center}
\vskip \stretch{2}
\begin{center}
\zihao{3}\NJTECH@value@submitdate
\end{center}
%% ==============================================
%% footnote
%%\vspace{2em}
%%\NJTECH@value@UDCfootnote
%%%%**************************** make backbone & github ********************************
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \begin{center}
          \kaishu\zihao{5}{\NJTECH@value@titleBackbone}
          \vskip  \stretch{8}
          \vfill
          \kaishu\zihao{5}{\NJTECH@value@schoolBackbone}
    \end{center}
    \ifNJTECH@typeinfo
      \vspace*{\stretch{1}}
      \begin{footnotesize}
        \noindent
        %Typeset by \LaTeXe{} at \CTEX@todayold \\
        %With package from https://github.com/jiec827/njtechThesis
        \end{footnotesize}
    \fi
    \cleardoublepage
  \fi
}
%%%%% ------------------------------------------------------------------------------------------
%% 2. page uncover
\newcommand\makeincovertitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
%% ================================================
%% incoverthesis
    \bf\songti\zihao{-2}\NJTECH@value@incoverthesis
    \\[2cm]
%% ================================================
%% title
    \bf\heiti\zihao{2}\NJTECH@value@title \\
    \bf\heiti\zihao{3}\NJTECH@value@titleLow
    \\[2cm]
%% ================================================
%% info
  \begin{tabular}{rl}
    \bf\kaishu\zihao{-2}\NJTECH@label@incoverauthor & \bf\kaishu\zihao{-2}\NJTECH@value@author 
    \\[25pt]
    \bf\kaishu\zihao{-2}\NJTECH@label@incoveradvisor & {\bf\kaishu\zihao{-2}\NJTECH@value@advisor\hspace{4pt}}{\kaishu\zihao{3}\NJTECH@value@advisortitle}
    \\
    \bf\kaishu\zihao{-2}\NJTECH@label@incovercoadvisor & {\bf\kaishu\zihao{-2}\NJTECH@value@coadvisor\hspace{4pt}}{\kaishu\zihao{3}\NJTECH@value@coadvisortitle}
  \end{tabular}
%% ================================================
%% school & date
  \vskip \stretch{2}
  \bf\songti\zihao{-2}\NJTECH@value@school
  \vskip 8pt
  \bf\songti\zihao{-2}\NJTECH@value@incoverdate
\end{center}
\clearpage
\if@twoside
  \thispagestyle{empty}
  \cleardoublepage
\fi
}
%%%%% ------------------------------------------------------------------------------------------
%%
\newcommand\englishtitle[1]{\def\NJTECH@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\NJTECH@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\NJTECH@value@englishadvisor{#1}}
\newcommand\englishadvisortitle[1]{\def\NJTECH@value@englishadvisortitle{#1}}
\newcommand\englishcoadvisor[1]{\def\NJTECH@value@englishcoadvisor{#1}}
\newcommand\englishentcoadvisor[1]{\def\NJTECH@value@englishentcoadvisor{#1}}
\newcommand\englishcoadvisortitle[1]{\def\NJTECH@value@englishcoadvisortitle{#1}}
\newcommand\englishentcoadvisortitle[1]{\def\NJTECH@value@englishentcoadvisortitle{#1}}
\newcommand\englishdegree[1]{\def\NJTECH@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\NJTECH@value@englishmajor{#1}}
\newcommand\englishinstitute[1]{\def\NJTECH@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\NJTECH@value@englishdate{#1}}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%*********************** make english titlepage **************************************
%%
\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    %%\vspace*{-18pt}
%% ================================================
%% degree
      %%\rmfamily\zihao{-2} \NJTECH@label@englishdegree\NJTECH@value@englishdegree
    %%\vskip 60pt
%% ================================================
  \vskip 120pt
%% title
      \rmfamily\bf\zihao{2} \NJTECH@value@englishtitle
    \vskip 30pt 
%% ================================================
      \normalfont\zihao{-2} \NJTECH@label@thesissubmitted \\
      \normalfont\zihao{-2} \NJTECH@value@englishinstitute \\
      \normalfont\zihao{-2} \NJTECH@label@fordegree \\
      \normalfont\zihao{-2} \NJTECH@value@englishmajor
    \vskip 60pt 
%% ================================================
%% author
      \normalfont\zihao{-2}\NJTECH@label@englishauthor
      \\
      \zihao{-2}\NJTECH@value@englishauthor
    \vskip 60pt 
%% ================================================
%% supervisor
    
      \normalfont\zihao{-2} \NJTECH@label@englishadvisor \\
      \normalfont\zihao{-2} \NJTECH@value@englishadvisor \\
      \normalfont\zihao{-2} \NJTECH@value@englishentcoadvisor \\
      \normalfont\zihao{-2} \NJTECH@label@wordand \\
      \normalfont\zihao{-2} \NJTECH@value@englishcoadvisor
    
    \vskip \stretch{2}
%% ================================================
%% institute & date
      %\normalfont\zihao{-2} \NJTECH@value@englishinstitute
    \vskip 12pt
      \normalfont\zihao{-2} \NJTECH@value@englishdate
  \end{center}
%% ================================================
%% degree
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
%%%%*********************** make statement titlepage *************************************
%% 1. statement
\cleardoublepage
\thispagestyle{empty}
\newcommand\statement[1]{%
  \vskip -5pt
    \parbox{\textwidth}{\centering\bf\songti\zihao{3}\NJTECH@label@statement}
  \vskip 13pt
    \parbox{\textwidth}{\normalfont\zihao{4}\renewcommand{\baselinestretch}{1.6}\zihao{4}#1}
  \vskip 1.8cm
    \parbox{\textwidth}{\noindent{}\zihao{4}\NJTECH@label@authorsign\hspace{3.5cm}\NJTECH@label@signdate}
  \vskip 4.45cm
}%
%% 2. accredit
\newcommand\accredit[1]{%
    \parbox{\textwidth}{\centering\bf\songti\zihao{3}\NJTECH@label@accredit}
  \vskip 1.6cm
    \parbox{\textwidth}{\normalfont\zihao{4}\renewcommand{\baselinestretch}{1.6}\zihao{4}#1}%
  \vskip 1.8cm
    \parbox{\textwidth}{\noindent{}\zihao{4}\NJTECH@label@authorsign\hspace{3.5cm}\NJTECH@label@advisorsign}
  \vskip 0.1cm
    \parbox{\textwidth}{\noindent{}\zihao{4}\NJTECH@label@signdate\hspace{4.1cm}\NJTECH@label@signdate}%
}%
\clearpage
\if@twoside
    \thispagestyle{empty}
\cleardoublepage
\fi
%%%%% ------------------------------------------------------------------------------------------
%% 
%%%%**************************** page setting **************************************
%% set page style by fancyhdr:
  %% The syntax is: \fancyhead[selectors]{output you want}
  %% E Even page
  %% O Odd page
  %% L Left field
  %% C Center field
  %% R Right field
  %% H Header
  %% F Footer
  %% so [CE,RO] will refer to the center of the even pages and to the right side of the odd pages.
%% configure fancy style
\newcommand\pageDegree[1]{\def\NJTECH@value@pageDegree{#1}}
%% change page NO to Roman only for frontmatter 
\renewcommand\frontmatter{\pagenumbering{Roman}}
%%
\fancypagestyle{plain}{%
  \fancyhf{}%
  %\fancyfoot[R]{\songti\zihao{-5} ~{\thepage}~}
  %\renewcommand{\headrulewidth}{0pt}%
  %\renewcommand{\footrulewidth}{0pt}%
  % ===
  %\fancyhead[LO]{\songti\zihao{-5}\NJTECH@value@pageDegree}
  %\fancyhead[RO]{\songti\zihao{-5}\NJTECH@value@titlemark}
  %\fancyhead[LE]{\songti\zihao{-5} \leftmark}%
  %\fancyhead[RE]{\songti\zihao{-5}\NJTECH@value@pageDegree}%
  \fancyhead[CO]{\kaishu\zihao{-5}\NJTECH@value@pageDegree}
  \fancyhead[CE]{\kaishu\zihao{-5} \leftmark}%
  % \fancyfoot[RO,LE]{\zihao{-5} ~\thepage~}
  \fancyfoot[CE,CO]{\zihao{-5} \thepage}
}
\pagestyle{fancy}
  \fancyhf{}
  \fancyhead{} % clear all fields
  % \fancyhead[LO]{\songti\zihao{-5}\NJTECH@value@pageDegree}
  % \fancyhead[RO]{\songti\zihao{-5}\NJTECH@value@titlemark}
  % \fancyhead[LE]{\songti\zihao{-5} \leftmark}%
  % \fancyhead[RE]{\songti\zihao{-5}\NJTECH@value@pageDegree}%
  \fancyhead[CO]{\kaishu\zihao{-5}\NJTECH@value@pageDegree}
  \fancyhead[CE]{\kaishu\zihao{-5} \leftmark}%
  \fancyfoot[CE,CO]{\zihao{-5} \thepage}
%%
%%%%% ------------------------------------------------------------------------------------------
%%  
%%%%**************************** make abstract & keywords *****************************
%% 1. CHN abstract
\newenvironment{abstract}
  {{\centering\Nchapter{\NJTECH@label@abstract}}}
  {}
%% 2. CHN kewords
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\bf\songti\zihao{4} \NJTECH@label@keywords} #1}
%% 3. Eng abstract
\newenvironment{englishabstract}
  {{\centering\Nchapter{\NJTECH@label@englishabstract}}}
  {}
%% 4. Eng keywords
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf\songti\zihao{4} \NJTECH@label@englishkeywords} #1}
%%
%% 5. other settings
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1mu\bm{\bm\cdot}\mkern 1mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi
}%
%%%%% ------------------------------------------------------------------------------------------
%%  
%%%%******************************** make contents **************************************
%% 
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    {\centering\chapter*{\contentsname}}%
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\addtocontents{toc}{\let\string\quad\relax}
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi
}
%%%%% ------------------------------------------------------------------------------------------
%%  
%%%%************************* make environments *********************************
%% 0. list of figures, tables and bibtex
%% seperately
\renewcommand*\listoffigures{%
  {\centering
  \chapter*{\listfigurename}%
  \@mkboth{\MakeUppercase\listfigurename}%
          {\MakeUppercase\listfigurename}%
  \@starttoc{lof}%% list of figures
  }
}
%%
\renewcommand*\listoftables{%
  {\centering
  \chapter*{\listtablename}%
  \@mkboth{\MakeUppercase\listtablename}%
          {\MakeUppercase\listtablename}%
  \@starttoc{lot}%% list of tables
  }
}
%% figure and table
\newcommand*\listoffiguresandtables{%
  {\centering
  \chapter*{\NUST@listfiguresandtablesname}%
  \@mkboth{\MakeUppercase\NUST@listfiguresandtablesname}%
          {\MakeUppercase\NUST@listfiguresandtablesname}%
  \@starttoc{lof}%% list of figures
  \bigskip       %% space
  \@starttoc{lot}%% list of tables
  }
}
%%

%% 1. symbol
\newenvironment{symbolname}
  {\Nchapter{\NJTECH@label@symbolname}}
  {}
%% 2. bibliography
\renewenvironment{thebibliography}[1]
     {\Nchapter{\centering\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
%% 3. publications
\newenvironment{publications}[1]
     {{\centering\Nchapter{\NJTECH@label@publications}}%
      \@mkboth{\MakeUppercase\NJTECH@label@publications}
              {\MakeUppercase\NJTECH@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \setlength{\itemsep}{5pt}
	   \setlength{\parsep}{0pt}
	   \setlength{\parskip}{0pt}
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}
%% 4. resume
\newenvironment{resume}
  {{\centering\Nchapter{\NJTECH@label@resume}}}
  {}
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
  {\endlist}
%% 5. resumelist
\newenvironment{resumelist}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 4\ccwd
           \itemindent -2\ccwd
           \listparindent\itemindent}
   \item\relax}
  {\endlist}
%% 6. thanks
\renewenvironment{thanks}
  {{\centering\Nchapter{\NJTECH@label@thanks}}}
  {}
%%
%%%%% ------------------------------------------------------------------------------------------
%%  
%%%%*************************** public vars for thesis ***********************************
%% 
\newcounter{nlgcounter} 
\newenvironment{nlglist}{%
\begin{list}{{(\arabic{nlgcounter})}} %
    {
     \usecounter{nlgcounter}
     \setlength{\leftmargin}{0cm}   
     \setlength{\parsep}{\parskip}    
     \setlength{\topsep}{1ex}        
     \setlength{\itemsep}{0.4ex plus 0.5ex}        
     \setlength{\labelsep}{0.3em}     
     \setlength{\itemindent}{46pt}    
     \setlength{\listparindent}{27pt} 
    }}
{\end{list}}  
\renewcommand{\labelenumi}{(\theenumi)}
 
\endinput
%%
%% End of file `njtechThesis.cls'.
