\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sobCV}[2015/09/08 Staffan björnsons CV class]
\LoadClass[11pt]{article}


%\RequirePackage[hmargin=1.25cm, vmargin=0.75cm]{geometry} % Specifies horizontal and vertical page margins
\RequirePackage[paperwidth=595pt,paperheight=841pt,top=2cm,right=2cm,bottom=2cm,left=2cm]{geometry}
\RequirePackage{hyperref} % Required for links
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{graphicx}
\RequirePackage{pgffor}
\RequirePackage{amssymb}
\RequirePackage[utf8]{inputenc}

\usepackage{ragged2e}

% :=-------------------------------------------------------------------------=:
% : COLORS
% :=-------------------------------------------------------------------------=:

%\RequirePackage[scaled=1]{carlito}
%\renewcommand*{\familydefault}{\sfdefault}

% :=-------------------------------------------------------------------------=:
% : COLORS
% :=-------------------------------------------------------------------------=:

\RequirePackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{highlight}{HTML}{0066cc}
\definecolor{descrete}{HTML}{808080}
\definecolor{darkGray}{rgb}{0.52, 0.52, 0.51}




\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{6A6A6A} % The color of the large sections
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

% :=-------------------------------------------------------------------------=:
% : TITLE NAME 
% :=-------------------------------------------------------------------------=:
\newcommand{\name}[2]{
  %\centerline{\fontsize{40}{60}\selectfont{#1 \color{highlight}#2}}
  \centerline{\Huge{#1 \color{highlight}#2}}
  \vspace{.5em}
}

% :=-------------------------------------------------------------------------=:
% : CONTACT INFORMATION
% :=-------------------------------------------------------------------------=:
\newcommand{\contact}[5]{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    {\Large} #4  {\Large} #5
}

\newcommand{\longcontact}[6]{
  {\raggedright
    \vspace{3pt}\noindent
    \begin{tabular}{
           p{\dimexpr.75\linewidth-2\tabcolsep-1.3333\arrayrulewidth}  % column 1
          r p{\dimexpr.20\linewidth-2\tabcolsep-1.3333\arrayrulewidth}  % column 2
        }
            \textbf{#1} & Date:  #4\\
            #2 & Phone: #5\\
            #3 & E-Mail #6\\


    \end{tabular}
  }
}


% :=-------------------------------------------------------------------------=:
% : LIFE QUORE
% :=-------------------------------------------------------------------------=:

\newcommand{\userquote}[2]{%
   \vspace{1em}
   \quote{
      \begin{center}
        {\Large One of my fuiding principles are:\\}
        \textit{{\Large "#1"}}
      \end{center}
  }
  \vspace{1em}
}

% :=-------------------------------------------------------------------------=:
% : EXPERIENCE NODE
% :=-------------------------------------------------------------------------=:

\newcommand{\experiencenode}[6]{
  \vspace{0pt} \noindent
    \begin{tabular}{
      p{\dimexpr.20\linewidth-2\tabcolsep-1.3333\arrayrulewidth}% column 1
      p{\dimexpr.80\linewidth-2\tabcolsep-1.3333\arrayrulewidth}% column 2
      }
      {{#3}

      \textit{\color{darkGray}#4}} &  
      {\raggedright\textbf{#1}

      \textit{\color{darkGray}#2}} 

      {\raggedright#6}

      \exList{#5} \\
    \end{tabular}
  \vspace{0pt}
}



% :=-------------------------------------------------------------------------=:
% : EDUCATION NODE
% :=-------------------------------------------------------------------------=:

\newcommand{\ednode}[3]{
  \vspace{3pt} \noindent
  \begin{tabular}{
    p{\dimexpr.20\linewidth-2\tabcolsep-1.3333\arrayrulewidth}
    p{\dimexpr.80\linewidth-2\tabcolsep-1.3333\arrayrulewidth}
    }
    {\centering#2} & {\raggedright\textbf{#1}1

    \textit{#3}} \\
  \end{tabular}
  \vspace{2pt}
}

% :=-------------------------------------------------------------------------=:
% : COURSE NODE
% :=-------------------------------------------------------------------------=:

\newcommand{\coursenode}[4]{
  \vspace{0pt} \noindent
  \begin{tabular}{
    p{\dimexpr.20\linewidth-2\tabcolsep-1.3333\arrayrulewidth}
    p{\dimexpr.80\linewidth-2\tabcolsep-1.3333\arrayrulewidth}
    }
    {#1 
     
    \textit{\color{darkGray}#2}} & \textbf{#3}


    \textit{#4} \\
  \end{tabular}
  \vspace{2pt}
}


\newcommand{\skills}[2]{
  \vspace{0pt} \noindent
  \begin{tabular}{
    p{\dimexpr.30\linewidth-2\tabcolsep-1.3333\arrayrulewidth}
    p{\dimexpr.70\linewidth-2\tabcolsep-1.3333\arrayrulewidth}
    }
    #1  & #2 \\
  \end{tabular}
  \vspace{2pt}
}

\newcommand{\exList}[1]{
  \vspace{1em} \noindent
  \foreach \n in {#1}{{
    \color{highlight}$\bigstar$} \n\par
  } 
  \vspace{1em}
}

\newcommand{\spokenLanguage}[1]{
  \hfill\begin{minipage}{
    \dimexpr\textwidth-3cm
  }
  \foreach \n in {#1}{{
    \indent\color{highlight}$\bigstar$} \n\par
  } 
  \xdef\tpd{\the\prevdepth}
\end{minipage}


}

\newcommand{\license}[1]{
  \hfill\begin{minipage}{
    \dimexpr\textwidth-3cm
  }
  \foreach \n in {#1}{{
    \indent\color{highlight}$\bigstar$} \n\par
  } 
  \xdef\tpd{\the\prevdepth}
\end{minipage}


}



% Modifying the section headers
\RequirePackage{titlesec}
\RequirePackage{abstract}
\RequirePackage{indentfirst}
\RequirePackage{changepage,lipsum,titlesec}

\titleformat{\section}          % Customise the \section command 
   {\color{highlight}\Large\raggedright\bf}      % Make the \section headers large (\Large),
   {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
   {}                           % Can be used to insert code before the heading

   




\titleformat{\subsection}
   {\large\raggedright}
   {}{0em}
   {}


\newcommand{\datedsection}[4]{%
  \section[#1]{#1 -- \small{\color{descrete}#2} \hfill #3}%
}


\newcommand{\datedsubsection}[4]{%
  \subsection[#1]{{\bf{#1}} \hfill #3 \\ \small{\bf\color{descrete}#2} \hfill \small{\color{descrete}#4}}%
}