\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{TP}[15/09/2016 Classe pour les TP, V0.1]

% classe de base

\LoadClass[a4paper,12pt]{article}

% extensions
%\RequirePackageWithOptions{babel}
%\RequirePackage[frenchb,english]{babel}
\RequirePackage{lastpage}
%\RequirePackage{datetime}
\RequirePackage{hyperref}
\RequirePackage{ifthen}
\RequirePackage{amsthm}
\RequirePackage{color}
\RequirePackage[top=1 in, bottom=1 in, left=1 in, right=1 in]{geometry}
\RequirePackage{tcolorbox}
\RequirePackage{mdframed}
\RequirePackage{fontawesome}
\RequirePackage{pgffor}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{needspace}
\RequirePackage{fp}

\widowpenalty=1000 %dirty hack, as usual, avoid widows and orphans
\clubpenalty=10000
% \setlength{\parskip}{0.5cm plus4mm minus3mm} %espacement entre §
\setlength{\parindent}{0pt}

%mark label
\makeatletter
\newcommand{\myLabel}[2]{%
  \def\@currentlabel{#2}% Update label
  \label{#1}
}
\makeatother

%change date
\newcommand{\changedate}[3]
{
    \renewcommand{\day}{#1}
    \renewcommand{\month}{#2}
    \renewcommand{\year}{#3}
}

% lang
\def \langu {frenchb}
\newcommand{\langexam}[1]
{
    \def \langu {#1}
    %\selectlanguage{#1}
    %\ExecuteOptions{#1}
}

% corrige ou non

\newboolean{corrige}
\setboolean{corrige}{false}
\newcommand{\correction}[1]
{
    \ifthenelse {\boolean{#1}}
        {\setboolean{corrige}{true}}
        {\setboolean{corrige}{false}}
}

% name of exam

%author
\renewcommand{\author}[1]
{
    \hypersetup{
    pdfauthor={#1}
    }
    \pdfinfo{
    /Author (#1)
    }
}

% commandes personnelles

\definecolor{darkblue}{rgb}{0,0,0.5}
\definecolor{light-gray}{gray}{0.8}
\theoremstyle{definition}% questions pas en italique

\newtheorem{Q}[]{Question}[]
\newtheoremstyle{Q}{3pt}{3pt}{}{}{}{~:}{\newline}{}

\tcbuselibrary{breakable,skins}

\newcommand{\Question}[2]
{%
    \Needspace{5\baselineskip}%
	\begin{Q}\ %\rule{0pt}{0.1cm}%
    % \vspace*{-0.2cm}%
	\ifthenelse {\boolean{corrige}}
    {
        #1\par
        \paragraph{R\'eponse :}~\\ \color{darkblue} \small #2
        \color{black}
        \normalsize
    }
    {
        #1\par%
    }
	%\end{minipage}
    \end{Q}
}

\newcommand{\tptitle}[2]
{
    \begin{center}
    \begin{huge}
    \textbf{#1~\\
    \vspace{0.3em}
    #2
    \ifthenelse{\boolean{corrige}}{\\\vspace*{2mm}Corrig\'e}{}}
    \end{huge}
    \end{center}%
    ~\\
}


\newmdenv[
	topline=false,
	bottomline=false,
	rightline=false,
	skipabove=\topsep,
	skipbelow=\topsep,
	leftmargin=-10pt,
	rightmargin=-10pt,
	innertopmargin=-10pt,
	innerbottommargin=0pt,
    frametitle={\hspace{-30pt}\faLightbulbO},
    % innertopmargin=10pt,
    frametitlealignment=\flushleft
]{info}

\newmdenv[
	topline=false,
	bottomline=false,
	rightline=false,
	skipabove=\topsep,
	skipbelow=\topsep,
	leftmargin=-10pt,
	rightmargin=-10pt,
	innertopmargin=-10pt,
	innerbottommargin=0pt,
    frametitle={\hspace{-30pt}\faCogs},
    % innertopmargin=10pt,
    frametitlealignment=\flushleft
]{predet}
\newmdenv[
	topline=false,
	bottomline=false,
	rightline=false,
	skipabove=\topsep,
	skipbelow=\topsep,
	leftmargin=-10pt,
	rightmargin=-10pt,
	innertopmargin=-10pt,
	innerbottommargin=0pt,
    frametitle={\hspace{-30pt}\faFlask},
    % innertopmargin=10pt,
    frametitlealignment=\flushleft
]{manip}

\newenvironment{astuce}%
{%
	\begin{tcolorbox}[enhanced,
					colback=black!5!white,
					colframe=black,
					boxrule=0.5pt,
					attach boxed title to top left={yshift=-3mm,yshifttext=-1mm},
					boxed title size=copy,
					title={Astuce}]
}%
{\end{tcolorbox}}

