% Urban Institute Short Report Formatting for LaTeX
%
% Based on the Urban Institute's formating standards for short reports.
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
\usepackage[top=1in, left = 1in, bottom = 1in, right = 1in, paperheight = 11in, paperwidth = 8.5in]{geometry}

% Packages -----------------------------------
\RequirePackage{
    color, % Color text
    lato, % Lato Font Family
    pdfpages, % Insert pdfs
    titlesec, % Change Formatting
    xcolor % Defining new colors
}

% Urban Colors -----------------------------------
\definecolor{urban-cyan}{HTML}{00aeef}
\definecolor{urban-gray}{HTML}{9d9fa2}

% General Formatting -----------------------------------
\renewcommand{\baselinestretch}{1} % Single spacing
\raggedright % Left justified
\setlength{\parindent}{0.25in} % Paragraph indents
\setlength{\parskip}{9pt} % Paragraph spacing

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\familydefault}{\sfdefault} % Family Font as Lato

% Defining set fonts
\def\normalsize{\fontsize{10}{18}}%

\titleformat{\part}[display]{\color{urban-cyan}}{\thepart}{0em}{\fontsize{28}{36}\selectfont}%
\titlespacing*{\part}{0pt}{0pt}{0pt}%

\titleformat{\section}[display]{}{}{0em}{\fontsize{18}{24}\selectfont}%
\titlespacing*{\section}{0pt}{32pt}{6pt}%

\titleformat{\section}[display]{}{}{0em}{\fontsize{18}{24}\selectfont}%
\titlespacing*{\section}{0pt}{32pt}{6pt}%

\newcommand\tbf{\textcolor{red}}%
\newcommand\about[1]{\noindent\textcolor{urban-cyan}{\MakeUppercase{\textbf{#1}}}}%

\newcommand{\boilerplate}[1]{%
    \fontsize{9}{12}%
    \selectfont%
    \linespread{1}%
    \noindent%
    #1%
}

% \def\abstractfont{\fontsize{9}{10}\selectfont\leftskip1pc\rightskip5pc}%


% \def\subsectionfont{\fontsize{11}{13}\selectfont\bfseries\itshape\raggedright\boldmath}%
% \def\subsubsectionfont{\fontsize{11}{13}\selectfont\itshape\raggedright}%


% \def\affilfont{\fontsize{10}{12}\selectfont\raggedright}%
% \def\articletypefont{\fontsize{12}{14}\selectfont\MakeUppercase}%
% \def\authorfont{\fontsize{11}{13}\selectfont\raggedright}%
% \def\extractfont{\fontsize{10}{12}\selectfont\leftskip12pt\rightskip12pt}%
% \def\figcaptionfont{\fontsize{8}{10}\selectfont}%
% \def\fignumfont{\fontsize{8}{10}\selectfont\bfseries}%
% \def\historyfont{\fontsize{9}{10}\selectfont\leftskip1pc\rightskip5pc plus1fill}%
% \def\keywordfont{\fontsize{9}{10}\selectfont\leftskip1pc\rightskip5pc plus1fill}%
% \def\receivedfont{\fontsize{9}{12}\selectfont\leftskip1pc\rightskip5pc}%

% \def\paragraphfont{\fontsize{11}{13}\selectfont\bfseries\boldmath}%
% \def\tablecaptionfont{\fontsize{8}{10}\selectfont\leftskip\tabledim\rightskip\tabledim}%
% \def\tablefont{\fontsize{8}{9}\selectfont}%
% \def\tablenumfont{\fontsize{8}{10}\selectfont\bfseries}%
% \def\tabnotefont{\fontsize{8}{9}\selectfont}%
% \def\thanksfont{\fontsize{8}{10}\selectfont}%
% \def\titlefont{\fontsize{13}{16}\selectfont\bfseries\raggedright\boldmath}%
