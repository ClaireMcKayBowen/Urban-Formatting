% Urban Institute Short Report Formatting for LaTeX
%
% Based on the Urban Institute's formatting standards for short reports.
%
% Future projects will include declaring options to create other Urban
% styles such as long reports, briefs, and white paper.
%
% ==============================
% Copyright 2021 Claire McKay Bowen, Ph.D.
%
% This work consists of the files:
% INCLUDE FULL LIST ONCE MADE!
%
% ==============================

% Notes -----------------------------------
% \newcommand defines a new command, and makes an error if it is already defined.
% \renewcommand redefines a predefined command, and makes an error if it is not yet defined.
% \providecommand defines a new command if it isn't already defined.

% \newcommand{<name>}[<args>]{ <code> }
% \fontsize{10}{12}\selectfont (the first number is the pt size of the font, the second number the space in pts between lines: this becomes the value of \baselineskip

%%%%%%%%%%%%%%%%%% Meta Data and Defaults %%%%%%%%%%%%%%%%%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{urban-formatting}
\LoadClass{article} 
\usepackage[top=1.13in, left = 1.13in, bottom = 1.2in, right = 1.13in, paperheight = 11in, paperwidth = 8.5in]{geometry}

% Packages -----------------------------------
\RequirePackage{% Default
    color, % Color text
    graphicx, % Figure package
    lato, % Lato Font Family
    multicol, % Create Multi-columns
    pdfpages, % Insert pdfs
    titlesec, % Change Formatting
    xcolor % Defining new colors
}

% Absolute positioning of images (e.g., title page footer image)
\RequirePackage[absolute]{textpos}
% Color Box for footers, headers, etc.
\RequirePackage[most]{tcolorbox}

% Urban Colors -----------------------------------
\definecolor{urban-cyan}{HTML}{00aeef}
\definecolor{urban-gray}{HTML}{9d9fa2}
\definecolor{urban-darkgray}{HTML}{5c5859}
\definecolor{urban-lightgray}{HTML}{d9d9d9}

% General Formatting -----------------------------------
\renewcommand{\baselinestretch}{1} % Single spacing
\raggedright % Left justified
\setlength{\parindent}{0.25in} % Paragraph indents
\setlength{\parskip}{9pt} % Paragraph spacing

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Special Styling %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Urban Gray Bar
\tcbset{
    frame code = {}
    center title,
    left = 0pt,
    right = 0pt,
    top = 7.5pt,
    bottom = 7.5pt,
    colback = urban-lightgray,
    colframe = white,
    width=\dimexpr\textwidth\relax,
    enlarge left by=0mm,
    boxsep = 5pt,
    arc=0pt,outer arc=0pt,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\familydefault}{\sfdefault} % Family Font as Lato

% To be filled
\newcommand{\tbf}{\textcolor{red}}%

% Defining set fonts
\def\normalsize{\fontsize{10}{18}}%

% Part Formatting
\titleformat{\part}[display]{\color{urban-cyan}}{\thepart}{}{\fontsize{28}{36}\selectfont}%
\titlespacing*{\part}{0pt}{0pt}{0pt}%
% Section Formatting
\titleformat{\section}[display]{}{}{}{\fontsize{18}{24}\selectfont}%
\titlespacing*{\section}{0pt}{32pt}{6pt}%
% Subsection Formatting
\titleformat{\subsection}[display]{\bfseries}{}{}{\fontsize{12}{18}\selectfont}%
\titlespacing*{\subsection}{0pt}{28pt}{6pt}%
% Subsubsection Formatting
\titleformat{\subsubsection}[display]{\bfseries\color{urban-gray}}{}{0em}{\fontsize{10}{18}\selectfont}%
\titlespacing*{\subsubsection}{0pt}{18pt}{0pt}%

% Policy Center Formatting
\newcommand\policycenter[1]{%
    \fontsize{8}{0}%
    \selectfont%
    \noindent\textcolor{urban-darkgray}{\MakeUppercase{#1}}%
}%

% Title Report Formatting
\newcommand\titlereport[1]{%
    \fontsize{30}{38}%
    \selectfont%
    \noindent#1
}%

% Report Subtitle Formatting
\newcommand\reportsubtitle[1]{%
    \fontsize{14}{18}%
    \selectfont%
    \noindent\textcolor{urban-cyan}{\textbf{#1}}%
}%

% Author Name Formatting
\newcommand\authorfont[1]{%
    \fontsize{11.5}{14}%
    \selectfont%
    \noindent\textit{#1}%
}%

% Author Affiliation Formatting
\newcommand\affiliationfont[1]{%
    \fontsize{7.5}{10}%
    \selectfont%
    \noindent\MakeUppercase{#1}%
}%

% Date Formatting
\newcommand\datefont[1]{%
    \fontsize{11.5}{11}%
    \selectfont%
    \noindent\textcolor{urban-darkgray}{\textit{#1}}%
}%

% About Urban Formatting
\newcommand\about[1]{%
    \fontsize{10}{18}%
    \selectfont%
    \noindent\textcolor{urban-cyan}{\MakeUppercase{\textbf{#1}}}%
}%

% Boiler Plate Formatting
\newcommand*{\boilerplate}[1]{%
    {\fontsize{9}{12}%
    \selectfont%
    \noindent#1}%
}%

% Chapter Intro Para Formatting
\newcommand{\intropara}[1]{%
    {\fontsize{11.5}{19}%
    \selectfont%
    \noindent%
    \textbf{#1}}%
}%