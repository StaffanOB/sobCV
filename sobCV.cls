\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sobCV}[2015/09/08 Staffan björnsons CV class]
\LoadClass{article}


\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links

% :=-------------------------------------------------------------------------=:
% : COLORS
% :=-------------------------------------------------------------------------=:

%\RequirePackage[usenames,dvipsnames]{xcolor}
\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{highlight}{HTML}{3399FF}
\definecolor{descrete}{HTML}{808080}
\definecolor{darkGray}{rgb}{1,0.5,0}




\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{6A6A6A} % The color of the large sections
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

% :=-------------------------------------------------------------------------=:
% : NAME 
% :=-------------------------------------------------------------------------=:
\newcommand{\name}[2]{
  \centerline{\Huge{#1 \color{highlight}#2}}
}


\newcommand{\contact}[5]{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    {\Large} #4  {\Large} #5
}

\newcommand{\longcontact}[6]{
  \begin{tabular}{ l X }
    \textbf{#1} & #2 \\
    #3 & #4 \\
    #5 & \href{mailto:#6}{#6} \\
  \end{tabular}
}

% Modifying the section headers
\RequirePackage{titlesec}
\RequirePackage{abstract}
\usepackage{indentfirst}
\usepackage{changepage,lipsum,titlesec}

\titleformat{\section}          % Customise the \section command 
   {\Large\raggedright\bf}      % Make the \section headers large (\Large),
   {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
   {}                           % Can be used to insert code before the heading
   




\titleformat{\subsection}
   {\large\raggedright}
   {}{0em}
   {}




\newcommand{\userquote}[2]{%
   \quote{\Large\it\centering#1\\--#2}
}

\newcommand{\datedsection}[4]{%
  \section[#1]{#1 -- \small{\color{descrete}#2} \hfill #3}%
}


\newcommand{\datedsubsection}[4]{%
  \subsection[#1]{{\bf{#1}} \hfill #3 \\ \small{\bf\color{descrete}#2} \hfill \small{\color{descrete}#4}}%
}