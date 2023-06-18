\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsibook}[2023/06/03 nsibook]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}

% Common
\input{common.tex}

% Title and section formatting
\RequirePackage{titlesec}


\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{
    {\color{UGLiOrange!25!white}\arabic{section}.}\arabic{subsection}.
}

\titleformat{\part}[block]
{\Huge\titlefont\color{UGLiBlue}\exhyphenpenalty=10000} % Format for section title
{\LARGE Partie \thepart\\} % Label
{0em} % Separation between label and title
{} % Code preceding the title

\titleformat{\chapter}[block]
{\bigtitlefont\scriptsize\color{UGLiBlue}} % Format for section title
{\Large\titlefont Chapitre \thechapter \\} % Label
{0em} % Separation between label and title
{} % Code preceding the title

\titleformat{\section}
{\Large\titlefont\color{UGLiBlue}} % Format for section title
{\thesection} % Label
{0em} % Separation between label and title
{.~} % Code preceding the title

\titleformat{\subsection}
{\large\titlefont\color{UGLiOrange}} % Format for section title
{\thesubsection} % Label
{0em} % Separation between label and title
{} % Code preceding the title

\titleformat{\subsubsection}
{\titlefont\color{UGLiGreen}} % Format for section title
{\thesubsubsection} % Label
{0em} % Separation between label and title
{} % Code preceding the title

% Specific
\usepackage{float}
\usepackage{caption}
\captionsetup{font=scriptsize}
\newcommand{\introduction}[1] 
{\begin{flushright}\small
\color{UGLiBlue}\textit{« #1 »}
\end{flushright}}


