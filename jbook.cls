%%
%% This is file `jbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% jclasses.dtx  (with options: `book,yoko')
%% 
%% Copyright (c) 2010 ASCII MEDIA WORKS
%% Copyright (c) 2016-2019 Japanese TeX Development Community
%% 
%% This file is part of the pLaTeX2e system (community edition).
%% -------------------------------------------------------------
%% 
%% File: jclasses.dtx
\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{jbook}
  [2020/09/30 v1.8f
 Standard pLaTeX class]
\newcounter{@paper}
\newif\if@landscape \@landscapefalse
\newcommand{\@ptsize}{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\newif\if@openleft
\newif\if@mainmatter \@mainmattertrue
\hour\time \divide\hour by 60\relax
\@tempcnta\hour \multiply\@tempcnta 60\relax
\minute\time \advance\minute-\@tempcnta
\newif\if@stysize \@stysizefalse
\newif\if@enablejfam \@enablejfamtrue
\newif\if@mathrmmc \@mathrmmcfalse
\DeclareOption{a4paper}{\setcounter{@paper}{1}%
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}{\setcounter{@paper}{2}%
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4paper}{\setcounter{@paper}{3}%
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5paper}{\setcounter{@paper}{4}%
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\DeclareOption{a4j}{\setcounter{@paper}{1}\@stysizetrue
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5j}{\setcounter{@paper}{2}\@stysizetrue
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4j}{\setcounter{@paper}{3}\@stysizetrue
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5j}{\setcounter{@paper}{4}\@stysizetrue
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\DeclareOption{a4p}{\setcounter{@paper}{1}\@stysizetrue
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5p}{\setcounter{@paper}{2}\@stysizetrue
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4p}{\setcounter{@paper}{3}\@stysizetrue
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5p}{\setcounter{@paper}{4}\@stysizetrue
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\if@compatibility
  \renewcommand{\@ptsize}{0}
\else
  \DeclareOption{10pt}{\renewcommand{\@ptsize}{0}}
\fi
\DeclareOption{11pt}{\renewcommand{\@ptsize}{1}}
\DeclareOption{12pt}{\renewcommand{\@ptsize}{2}}
\DeclareOption{landscape}{\@landscapetrue
  \setlength\@tempdima{\paperheight}%
  \setlength\paperheight{\paperwidth}%
  \setlength\paperwidth{\@tempdima}}
\DeclareOption{tombow}{%
  \tombowtrue \tombowdatetrue
  \setlength{\@tombowwidth}{.1\p@}%
  \@bannertoken{%
     \jobname\space(\number\year-\two@digits\month-\two@digits\day
     \space\two@digits\hour:\two@digits\minute)}%
  \maketombowbox}
\DeclareOption{tombo}{%
  \tombowtrue \tombowdatefalse
  \setlength{\@tombowwidth}{.1\p@}%
  \maketombowbox}
\DeclareOption{mentuke}{%
  \tombowtrue \tombowdatefalse
  \setlength{\@tombowwidth}{\z@}%
  \maketombowbox}
\DeclareOption{tate}{%
  \AtBeginDocument{\tate\message{$B!T=DAH%b!<%I!U(B}%
                   \adjustbaseline}%
}
\DeclareOption{oneside}{\@twosidefalse}
\DeclareOption{twoside}{\@twosidetrue}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\if@compatibility
\@openrighttrue
\else
\DeclareOption{openright}{\@openrighttrue\@openleftfalse}
\DeclareOption{openleft}{\@openlefttrue\@openrightfalse}
\DeclareOption{openany}{\@openrightfalse\@openleftfalse}
\fi
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}}
\if@compatibility
  \@mathrmmctrue
\else
  \DeclareOption{disablejfam}{\@enablejfamfalse}
  \DeclareOption{mathrmmc}{\@mathrmmctrue}
\fi
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\ExecuteOptions{a4paper,10pt,twoside,onecolumn,final,openright}
\ProcessOptions\relax
\input{jbk1\@ptsize.clo}
\def\Cjascale{0.962216}
\if@stysize
  \setlength\columnsep{2\Cwd}
\else
  \setlength\columnsep{10\p@}
\fi
\setlength\columnseprule{0\p@}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand{\baselinestretch}{}
\setlength\parskip{0\p@ \@plus \p@}
\setlength\parindent{1\Cwd}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{1}
\setcounter{totalnumber}{3}
\setcounter{dbltopnumber}{2}
\renewcommand{\topfraction}{.7}
\renewcommand{\bottomfraction}{.3}
\renewcommand{\textfraction}{.2}
\renewcommand{\floatpagefraction}{.5}
\renewcommand{\dbltopfraction}{.7}
\renewcommand{\dblfloatpagefraction}{.5}
\def\pltx@cleartorightpage{\clearpage\if@twoside
  \ifodd\c@page
    \iftdir
      \hbox{}\thispagestyle{empty}\newpage
      \if@twocolumn\hbox{}\newpage\fi
    \fi
  \else
    \ifydir
      \hbox{}\thispagestyle{empty}\newpage
      \if@twocolumn\hbox{}\newpage\fi
    \fi
  \fi\fi}
\def\pltx@cleartoleftpage{\clearpage\if@twoside
  \ifodd\c@page
    \ifydir
      \hbox{}\thispagestyle{empty}\newpage
      \if@twocolumn\hbox{}\newpage\fi
    \fi
  \else
    \iftdir
      \hbox{}\thispagestyle{empty}\newpage
      \if@twocolumn\hbox{}\newpage\fi
    \fi
  \fi\fi}
\def\pltx@cleartooddpage{\clearpage\if@twoside
  \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage
    \if@twocolumn\hbox{}\newpage\fi
  \fi\fi}
\def\pltx@cleartoevenpage{\clearpage\if@twoside
  \ifodd\c@page
    \hbox{}\thispagestyle{empty}\newpage
    \if@twocolumn\hbox{}\newpage\fi
  \fi\fi}
\if@openleft
  \let\cleardoublepage\pltx@cleartoleftpage
\else\if@openright
  \let\cleardoublepage\pltx@cleartorightpage
\fi\fi
\def\ps@plain{\let\@mkboth\@gobbletwo
   \let\ps@jpl@in\ps@plain
   \let\@oddhead\@empty
   \def\@oddfoot{\reset@font\hfil\thepage\hfil}%
   \let\@evenhead\@empty
   \let\@evenfoot\@oddfoot}
\let\ps@jpl@in\ps@plain
\def\ps@headnombre{\let\@mkboth\@gobbletwo
    \let\ps@jpl@in\ps@headnombre
  \def\@evenhead{\thepage\hfil}%
  \def\@oddhead{\hfil\thepage}%
  \let\@oddfoot\@empty\let\@evenfoot\@empty}
\def\ps@footnombre{\let\@mkboth\@gobbletwo
    \let\ps@jpl@in\ps@footnombre
  \def\@evenfoot{\thepage\hfil}%
  \def\@oddfoot{\hfil\thepage}%
  \let\@oddhead\@empty\let\@evenhead\@empty}
\if@twoside
  \def\ps@headings{\let\ps@jpl@in\ps@headnombre
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\leftmark}%
    \def\@oddhead{{\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
  \def\chaptermark##1{\markboth{%
     \ifnum \c@secnumdepth >\m@ne
       \if@mainmatter
         \@chapapp\thechapter\@chappos\hskip1zw
       \fi
     \fi
     ##1}{}}%
  \def\sectionmark##1{\markright{%
     \ifnum \c@secnumdepth >\z@ \thesection.\hskip1zw\fi
     ##1}}%
  }
\else % if not twoside
  \def\ps@headings{\let\ps@jpl@in\ps@headnombre
    \let\@oddfoot\@empty
    \def\@oddhead{{\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
\def\chaptermark##1{\markright{%
   \ifnum \c@secnumdepth >\m@ne
     \if@mainmatter
       \@chapapp\thechapter\@chappos\hskip1zw
     \fi
   \fi
   ##1}}%
  }
\fi
\if@twoside
  \def\ps@bothstyle{\let\ps@jpl@in\ps@footnombre
    \def\@evenhead{\leftmark\hfil}% right page
    \def\@evenfoot{\thepage\hfil}% right page
    \def\@oddhead{\hfil\rightmark}% left page
    \def\@oddfoot{\hfil\thepage}% left page
  \let\@mkboth\markboth
\def\chaptermark##1{\markboth{%
     \ifnum \c@secnumdepth >\m@ne
       \if@mainmatter
         \@chapapp\thechapter\@chappos\hskip1zw
       \fi
     \fi
     ##1}{}}%
  \def\sectionmark##1{\markright{%
     \ifnum \c@secnumdepth >\z@ \thesection.\hskip1zw\fi
     ##1}}%
  }
\else % if one column
  \def\ps@bothstyle{\let\ps@jpl@in\ps@footnombre
    \def\@oddhead{\hfil\rightmark}%
    \def\@oddfoot{\hfil\thepage}%
    \let\@mkboth\markboth
  \def\chaptermark##1{\markright{%
     \ifnum \c@secnumdepth >\m@ne
       \if@mainmatter
         \@chapapp\thechapter\@chappos\hskip1zw
       \fi
     \fi
     ##1}}%
  }
\fi
\def\ps@myheadings{\let\ps@jpl@in\ps@plain%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
  \def\@evenhead{\thepage\hfil\leftmark}%
  \def\@oddhead{{\rightmark}\hfil\thepage}%
  \let\@mkboth\@gobbletwo
  \let\chaptermark\@gobble
  \let\sectionmark\@gobble
}
\if@compatibility
\newenvironment{titlepage}
    {%
     \cleardoublepage
     \if@twocolumn\@restonecoltrue\onecolumn
     \else\@restonecolfalse\newpage\fi
     \thispagestyle{empty}%
     \setcounter{page}\z@
    }%
    {\if@restonecol\twocolumn\else\newpage\fi
    }
\else
\newenvironment{titlepage}
    {%
      \pltx@cleartooddpage %% 2017/02/15
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \ifodd\c@page\setcounter{page}\@ne\else\setcounter{page}\z@\fi %% 2017/02/15
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi
\def\p@thanks#1{\footnotemark
  \protected@xdef\@thanks{\@thanks
    \protect{\noindent\hbox{\yoko$\m@th^\thefootnote$}#1\protect\par}}}
\if@titlepage
  \newcommand{\maketitle}{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let\footnote\thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\Large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks\vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\p@thanks\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  }%
\else
  \newcommand{\maketitle}{\par
  \begingroup
    \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
    \def\@makefnmark{\hbox{\ifydir $\m@th^{\@thefnmark}$
      \else\hbox{\yoko$\m@th^{\@thefnmark}$}\fi}}%
     \long\def\@makefntext##1{\parindent 1em\noindent
       \hb@xt@1.8em{\hss$\m@th^{\@thefnmark}$}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne \@maketitle
      \else \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
     \thispagestyle{jpl@in}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\p@thanks\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  }
  \def\@maketitle{%
  \newpage\null
  \vskip 2em%
  \begin{center}%
  \let\footnote\thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par\vskip 1.5em}
\fi
\newcommand*{\chaptermark}[1]{}
\setcounter{secnumdepth}{2}
\newcounter{part}
\newcounter{chapter}
\newcounter{section}[chapter]
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\renewcommand{\thepart}{\@Roman\c@part}
\renewcommand{\thechapter}{\@arabic\c@chapter}
\renewcommand{\thesection}{\thechapter.\@arabic\c@section}
\renewcommand{\thesubsection}{\thesection.\@arabic\c@subsection}
\renewcommand{\thesubsubsection}{%
   \thesubsection.\@arabic\c@subsubsection}
\renewcommand{\theparagraph}{%
   \thesubsubsection.\@arabic\c@paragraph}
\renewcommand{\thesubparagraph}{%
   \theparagraph.\@arabic\c@subparagraph}
\newcommand{\@chapapp}{\prechaptername}
\newcommand{\@chappos}{\postchaptername}
\newcommand{\frontmatter}{%
  \pltx@cleartooddpage
  \@mainmatterfalse\pagenumbering{roman}}
\newcommand{\mainmatter}{%
  \pltx@cleartooddpage
  \@mainmattertrue\pagenumbering{arabic}}
\newcommand{\backmatter}{%
  \if@openleft \cleardoublepage \else
  \if@openright \cleardoublepage \else \clearpage \fi \fi
  \@mainmatterfalse}
\newcommand{\part}{%
  \if@openleft \cleardoublepage \else
  \if@openright \cleardoublepage \else \clearpage \fi \fi
  \thispagestyle{empty}%
  \if@twocolumn\onecolumn\@tempswatrue\else\@tempswafalse\fi
  \null\vfil
  \secdef\@part\@spart}
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax
    \refstepcounter{part}%
    \addcontentsline{toc}{part}{%
       \prepartname\thepart\postpartname\hspace{1em}#1}%
  \else
    \addcontentsline{toc}{part}{#1}%
  \fi
  \markboth{}{}%
  {\centering
   \interlinepenalty\@M\normalfont
   \ifnum \c@secnumdepth >-2\relax
     \huge\bfseries\prepartname\thepart\postpartname
     \par\vskip20\p@
   \fi
   \Huge\bfseries#2\par}%
   \@endpart}
\def\@spart#1{{%
  \centering
  \interlinepenalty\@M\normalfont
  \Huge\bfseries#1\par}%
  \@endpart}
\def\@endpart{\vfil\newpage
   \if@twoside
    \if@openleft %% \if@openleft added (2017/02/15)
     \null\thispagestyle{empty}\newpage
    \else\if@openright %% \if@openright added (2016/12/18)
     \null\thispagestyle{empty}\newpage
    \fi\fi %% added (2016/12/18, 2017/02/15)
   \fi
   \if@tempswa\twocolumn\fi}
\newcommand{\chapter}{%
  \if@openleft \cleardoublepage \else
  \if@openright \cleardoublepage \else \clearpage \fi \fi
  \thispagestyle{jpl@in}%
  \global\@topnum\z@
  \@afterindenttrue
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
    \refstepcounter{chapter}%
    \typeout{\@chapapp\space\thechapter\space\@chappos}%
    \addcontentsline{toc}{chapter}%
      {\protect\numberline{\@chapapp\thechapter\@chappos}#1}%
    \else\addcontentsline{toc}{chapter}{#1}\fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \@makechapterhead{#2}\@afterheading}
\def\@makechapterhead#1{\hbox{}%
  \vskip2\Cvs
  {\parindent\z@
   \raggedright
   \normalfont\huge\bfseries
   \leavevmode
   \ifnum \c@secnumdepth >\m@ne
     \setlength\@tempdima{\linewidth}%
    \if@mainmatter
     \setbox\z@\hbox{\@chapapp\thechapter\@chappos\hskip1zw}%
     \addtolength\@tempdima{-\wd\z@}%
     \unhbox\z@\nobreak
    \fi
     \vtop{\hsize\@tempdima#1}%
   \else
     #1\relax
   \fi}\nobreak\vskip3\Cvs}
\def\@schapter#1{%
  \@makeschapterhead{#1}\@afterheading
}
\def\@makeschapterhead#1{\hbox{}%
  \vskip2\Cvs
  {\parindent\z@
   \raggedright
   \normalfont\huge\bfseries
   \leavevmode
   \setlength\@tempdima{\linewidth}%
   \vtop{\hsize\@tempdima#1}}\vskip3\Cvs}
\newcommand{\section}{\@startsection{section}{1}{\z@}%
   {1.5\Cvs \@plus.5\Cvs \@minus.2\Cvs}%
   {.5\Cvs \@plus.3\Cvs}%
   {\normalfont\Large\bfseries}}
\newcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
   {1.5\Cvs \@plus.5\Cvs \@minus.2\Cvs}%
   {.5\Cvs \@plus.3\Cvs}%
   {\normalfont\large\bfseries}}
\newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
   {1.5\Cvs \@plus.5\Cvs \@minus.2\Cvs}%
   {.5\Cvs \@plus.3\Cvs}%
   {\normalfont\normalsize\bfseries}}
\newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
   {3.25ex \@plus 1ex \@minus .2ex}%
   {-1em}%
   {\normalfont\normalsize\bfseries}}
\newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\z@}%
   {3.25ex \@plus 1ex \@minus .2ex}%
   {-1em}%
   {\normalfont\normalsize\bfseries}}
\newcommand{\appendix}{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
  \renewcommand{\@chappos}\space%
  \renewcommand{\thechapter}{\@Alph\c@chapter}}
\if@twocolumn
  \setlength\leftmargini {2em}
\else
  \setlength\leftmargini {2.5em}
\fi
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv {.5em}
  \setlength\leftmarginvi{.5em}
\else
  \setlength\leftmarginv {1em}
  \setlength\leftmarginvi{1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand{\theenumi}{\@arabic\c@enumi}
\renewcommand{\theenumii}{\@alph\c@enumii}
\renewcommand{\theenumiii}{\@roman\c@enumiii}
\renewcommand{\theenumiv}{\@Alph\c@enumiv}
\newcommand{\labelenumi}{\theenumi.}
\newcommand{\labelenumii}{(\theenumii)}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}
\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi(\theenumii)}
\renewcommand{\p@enumiv}{\p@enumiii\theenumiii}
\renewenvironment{enumerate}
  {\ifnum \@enumdepth >\thr@@\@toodeep\else
   \advance\@enumdepth\@ne
   \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
   \expandafter \list \csname label\@enumctr\endcsname{%
      \iftdir
         \ifnum \@listdepth=\@ne \topsep.5\normalbaselineskip
           \else\topsep\z@\fi
         \parskip\z@ \itemsep\z@ \parsep\z@
         \labelwidth1zw \labelsep.3zw
         \ifnum \@enumdepth=\@ne \leftmargin1zw\relax
           \else\leftmargin\leftskip\fi
         \advance\leftmargin 1zw
      \fi
         \usecounter{\@enumctr}%
         \def\makelabel##1{\hss\llap{##1}}}%
   \fi}{\endlist}
\newcommand{\labelitemi}{\labelitemfont \textbullet}
\newcommand{\labelitemii}{%
  \iftdir
     {\labelitemfont \textcircled{~}}
  \else
     {\labelitemfont \bfseries\textendash}
  \fi
}
\newcommand{\labelitemiii}{\labelitemfont \textasteriskcentered}
\newcommand{\labelitemiv}{\labelitemfont \textperiodcentered}
\newcommand\labelitemfont{\normalfont}
\renewenvironment{itemize}
  {\ifnum \@itemdepth >\thr@@\@toodeep\else
   \advance\@itemdepth\@ne
   \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
   \expandafter \list \csname \@itemitem\endcsname{%
      \iftdir
         \ifnum \@listdepth=\@ne \topsep.5\normalbaselineskip
           \else\topsep\z@\fi
         \parskip\z@ \itemsep\z@ \parsep\z@
         \labelwidth1zw \labelsep.3zw
         \ifnum \@itemdepth =\@ne \leftmargin1zw\relax
           \else\leftmargin\leftskip\fi
         \advance\leftmargin 1zw
      \fi
         \def\makelabel##1{\hss\llap{##1}}}%
   \fi}{\endlist}
\newenvironment{description}
  {\list{}{\labelwidth\z@ \itemindent-\leftmargin
   \iftdir
     \leftmargin\leftskip \advance\leftmargin3\Cwd
     \rightmargin\rightskip
     \labelsep=1zw \itemsep\z@
     \listparindent\z@ \topskip\z@ \parskip\z@ \partopsep\z@
   \fi
           \let\makelabel\descriptionlabel}}{\endlist}
\newcommand{\descriptionlabel}[1]{%
   \hspace\labelsep\normalfont\bfseries #1}
\newenvironment{verse}
  {\let\\\@centercr
   \list{}{\itemsep\z@ \itemindent -1.5em%
           \listparindent\itemindent
           \rightmargin\leftmargin \advance\leftmargin 1.5em}%
           \item\relax}{\endlist}
\newenvironment{quotation}
  {\list{}{\listparindent 1.5em%
           \itemindent\listparindent
           \rightmargin\leftmargin
           \parsep\z@ \@plus\p@}%
           \item\relax}{\endlist}
\newenvironment{quote}
  {\list{}{\rightmargin\leftmargin}%
           \item\relax}{\endlist}
\newcounter{figure}[chapter]
\renewcommand{\thefigure}{%
  \ifnum\c@chapter>\z@\thechapter.\fi\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand{\thetable}{%
  \ifnum\c@chapter>\z@\thechapter.\fi\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \iftdir\sbox\@tempboxa{#1\hskip1zw#2}%
    \else\sbox\@tempboxa{#1: #2}%
  \fi
  \ifdim \wd\@tempboxa >\hsize
    \iftdir #1\hskip1zw#2\relax\par
      \else #1: #2\relax\par\fi
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset{equation}{chapter}
\renewcommand{\theequation}{%
  \ifnum\c@chapter>\z@\thechapter.\fi \@arabic\c@equation}
\if@enablejfam
  \if@compatibility\else
    \DeclareSymbolFont{mincho}{JY1}{mc}{m}{n}
    \DeclareSymbolFontAlphabet{\mathmc}{mincho}
    \SetSymbolFont{mincho}{bold}{JY1}{gt}{m}{n}
    \jfam\symmincho
    \DeclareMathAlphabet{\mathgt}{JY1}{gt}{m}{n}
  \fi
  \if@mathrmmc
    \AtBeginDocument{%
    \reDeclareMathAlphabet{\mathrm}{\mathrm}{\mathmc}
    \reDeclareMathAlphabet{\mathbf}{\mathbf}{\mathgt}
  }%
  \fi
\else
  \DeclareRobustCommand{\mathmc}{%
    \@latex@error{Command \noexpand\mathmc invalid with\space
       `disablejfam' class option.}\@eha
  }
  \DeclareRobustCommand{\mathgt}{%
    \@latex@error{Command \noexpand\mathgt invalid with\space
       `disablejfam' class option.}\@eha
  }
\fi
\DeclareOldFontCommand{\mc}{\normalfont\mcfamily}{\mathmc}
\DeclareOldFontCommand{\gt}{\normalfont\gtfamily}{\mathgt}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*{\mit}{\@fontswitch\relax\mathnormal}
\setcounter{tocdepth}{2}
\newcommand{\@pnumwidth}{1.55em}
\newcommand{\@tocrmarg}{2.55em}
\newcommand{\@dotsep}{4.5}
\newdimen\toclineskip
\setlength\toclineskip{\z@}
\newdimen\@lnumwidth
\def\numberline#1{\hb@xt@\@lnumwidth{#1\hfil}}
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip\toclineskip \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@lnumwidth #3\relax
     \advance\leftskip \@lnumwidth \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern \@dotsep mu$}%
     \hfill\nobreak
     \hb@xt@\@pnumwidth{\hss\normalfont \normalcolor #5}%
     \par}%
  \fi}
\newcommand{\tableofcontents}{%
  \if@twocolumn\@restonecoltrue\onecolumn
  \else\@restonecolfalse\fi
  \chapter*{\contentsname
    \@mkboth{\contentsname}{\contentsname}%
  }\@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}
\newcommand*{\l@part}[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
    \parindent\z@\rightskip\@pnumwidth
    \parfillskip-\@pnumwidth
    {\leavevmode\large\bfseries
     \setlength\@lnumwidth{4zw}%
     #1\hfil\nobreak
     \hb@xt@\@pnumwidth{\hss#2}}\par
    \nobreak
    \global\@nobreaktrue
    \everypar{\global\@nobreakfalse\everypar{}}%
     \endgroup
  \fi}
\newcommand*{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \addvspace{1.0em \@plus\p@}%
    \begingroup
      \parindent\z@ \rightskip\@pnumwidth \parfillskip-\rightskip
      \leavevmode\bfseries
      \setlength\@lnumwidth{4zw}%
      \advance\leftskip\@lnumwidth \hskip-\leftskip
      #1\nobreak\hfil\nobreak\hb@xt@\@pnumwidth{\hss#2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*{\l@section}{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*{\l@subsection}   {\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*{\l@subsubsection}{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*{\l@paragraph}    {\@dottedtocline{4}{10em}{5em}}
\newcommand*{\l@subparagraph} {\@dottedtocline{5}{12em}{6em}}
\newcommand{\listoffigures}{%
  \if@twocolumn\@restonecoltrue\onecolumn
  \else\@restonecolfalse\fi
  \chapter*{\listfigurename}%
  \@mkboth{\listfigurename}{\listfigurename}%
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi
}
\newcommand*{\l@figure}{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand{\listoftables}{%
  \if@twocolumn\@restonecoltrue\onecolumn
  \else\@restonecolfalse\fi
  \chapter*{\listtablename}%
  \@mkboth{\listtablename}{\listtablename}%
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi
}
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newcommand{\newblock}{\hskip .11em\@plus.33em\@minus.07em}
\newenvironment{thebibliography}[1]
{\chapter*{\bibname}\@mkboth{\bibname}{\bibname}%
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
   \@clubpenalty\clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
  {\def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}
\let\@openbib@code\@empty
\newenvironment{theindex}
  {\if@twocolumn\@restonecolfalse\else\@restonecoltrue\fi
   \twocolumn[\@makeschapterhead{\indexname}]%
   \@mkboth{\indexname}{\indexname}%
   \thispagestyle{jpl@in}\parindent\z@
   \parskip\z@ \@plus .3\p@\relax
   \columnseprule\z@ \columnsep 35\p@
   \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand{\@idxitem}{\par\hangindent 40\p@}
\newcommand{\subitem}{\@idxitem \hspace*{20\p@}}
\newcommand{\subsubitem}{\@idxitem \hspace*{30\p@}}
\newcommand{\indexspace}{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand{\footnoterule}{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{\parindent 1em
  \noindent\hb@xt@ 1.8em{\hss\@makefnmark}#1}
\newif\if$B@>Nq(B \$B@>Nq(Btrue
\def\$B@>Nq(B{\$B@>Nq(Btrue}
\def\$BOBNq(B{\$B@>Nq(Bfalse}
\newcount\heisei \heisei\year \advance\heisei-1988\relax
\def\pltx@today@year@#1{%
  \ifnum\numexpr\year-#1=1 $B85(B\else
    \ifnum1=\iftdir\ifmdir0\else1\fi\else0\fi
      \kansuji\number\numexpr\year-#1\relax
    \else
      \number\numexpr\year-#1\relax\nobreak
    \fi
  \fi $BG/(B
}
\def\pltx@today@year{%
  \ifnum\numexpr\year*10000+\month*100+\day<19890108
    $B><OB(B\pltx@today@year@{1925}%
  \else\ifnum\numexpr\year*10000+\month*100+\day<20190501
    $BJ?@.(B\pltx@today@year@{1988}%
  \else
    $BNaOB(B\pltx@today@year@{2018}%
  \fi\fi}
\def\today{{%
  \if$B@>Nq(B
    \ifnum1=\iftdir\ifmdir0\else1\fi\else0\fi\kansuji\number\year
    \else\number\year\nobreak\fi $BG/(B
  \else
    \pltx@today@year
  \fi
  \ifnum1=\iftdir\ifmdir0\else1\fi\else0\fi
    \kansuji\number\month $B7n(B
    \kansuji\number\day $BF|(B
  \else
    \number\month\nobreak $B7n(B
    \number\day\nobreak $BF|(B
  \fi}}
\newcommand{\prepartname}{$BBh(B}
\newcommand{\postpartname}{$BIt(B}
\newcommand{\prechaptername}{$BBh(B}
\newcommand{\postchaptername}{$B>O(B}
\newcommand{\contentsname}{$BL\(B $B<!(B}
\newcommand{\listfigurename}{$B?^(B $BL\(B $B<!(B}
\newcommand{\listtablename}{$BI=(B $BL\(B $B<!(B}
\newcommand{\bibname}{$B4XO"?^=q(B}
\newcommand{\indexname}{$B:w(B $B0z(B}
\newcommand{\figurename}{$B?^(B}
\newcommand{\tablename}{$BI=(B}
\newcommand{\appendixname}{$BIU(B $BO?(B}
\pagestyle{headings}
\pagenumbering{arabic}
\raggedbottom
\if@twocolumn
  \twocolumn
  \sloppy
\else
  \onecolumn
\fi
\if@twoside
  \@mparswitchtrue
\else
  \@mparswitchfalse
\fi
\endinput
%%
%% End of file `jbook.cls'.
