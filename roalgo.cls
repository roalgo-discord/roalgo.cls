\RequirePackage{expl3}
\RequirePackage{xargs}
\RequirePackage{tikz}
\usetikzlibrary{positioning,calc}
\PassOptionsToPackage{dvipsnames,svgnames}{xcolor}

\ProvidesExplClass{roalgo}{2023-12-25}{0.2.0}{RoAlgo LaTeX class}
\LoadClass[a4paper,fontsize=14pt]{scrbook}

% For subimporting and articles
\RequirePackage{import}
\RequirePackage{standalone}

% Geometry
\RequirePackage{geometry}

% Language
\RequirePackage{polyglossia}
\setmainlanguage{romanian}
\setotherlanguages{english}

% Quote styles
\RequirePackage[autostyle=true,autopunct]{csquotes}

% Interline spacing (configured at 1.414, \sqrt{2} is nice (: )
\RequirePackage{setspace}
\setstretch{1.414}

% Graphics (images + PDFs)
\RequirePackage{graphicx}
\graphicspath{{./images/}{./resources/}}

% Creative Commons icons
\RequirePackage{ccicons}

% Math bits
\RequirePackage{mathtools}
\RequirePackage[warnings-off={mathtools-colon,mathtools-overbracket}]{unicode-math}
\RequirePackage{amsmath}
\RequirePackage{amsthm}

\newtheorem{definition}{Definiția}[section]
\newtheorem{theorem}{Teorema}[section]

\theoremstyle{remark}
\newtheorem*{observation}{Observație}

\NewDocumentCommand{\bigO}{m}{\ensuremath{\mathcal{O}\left(#1\right)}}
\DeclarePairedDelimiter\abs{\lvert}{\rvert}

\newcommand{\cmmdc}{\textsc{cmmdc}}
\newcommand{\cmmmc}{\textsc{cmmmc}}
\newcommand{\cmod}{\mathbin{\%}}
\newcommand{\equals}[2]{#1 = #2}

% Fonts
\RequirePackage{fontspec}
\RequirePackage[lining]{ebgaramond}
\usepackage{unicode-math}
\setmathfont{Garamond Math}[Scale=MatchUppercase]
\setmonofont{inconsolata}
\RequirePackage{indentfirst}
\setlength{\parindent}{1cm}

% Table-related packages
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{calc} % For calculating the width of a text; used in copyright.tex
\setcounter{MaxMatrixCols}{20} % Fixes a fundamental \LaTeX limitation on the
% no. of columns

% For displaying the author name in the table of contents
\RequirePackage{tocdata}
\NewDocumentCommand{\ChapterWithAuthor}{m m}{%
	\tocdata{toc}{#2}%
	\chapter{#1}%
}
\renewcommand{\tocdataformat}[1]{%
	\normalfont\textit{\small #1}%
}

% For code formatting
\RequirePackage{minted}
\usemintedstyle{borland}
\setminted{fontsize=\small}
\setminted[cpp]{
	tabsize=4
}
\NewDocumentCommand{\cpp}{m}{%
	\inputminted{cpp}{#1}%
}
\NewDocumentCommand{\cppinline}{m}{%
	\mintinline{cpp}{#1}%
}

% Todos
\definecolor{Plum}{HTML}{92268F}
\usepackage[colorinlistoftodos,prependcaption,textsize=small]{todonotes}
\newcommandx{\unsure}[2][1=]{\todo[linecolor=red,backgroundcolor=red!25,bordercolor=red,#1]{#2}}
\newcommandx{\change}[2][1=]{\todo[linecolor=blue,backgroundcolor=blue!25,bordercolor=blue,#1]{#2}}
\newcommandx{\info}[2][1=]{\todo[linecolor=OliveGreen,backgroundcolor=OliveGreen!25,bordercolor=OliveGreen,#1]{#2}}
\newcommandx{\improvement}[2][1=]{\todo[linecolor=Plum,backgroundcolor=Plum!25,bordercolor=Plum,#1]{#2}}

% Hyperlinks and table of contents
\RequirePackage[colorlinks,allcolors=blue]{hyperref}

\endinput
