% Andrew Raim
% 10/16/2012
% Simple class for a formula sheet
% Adapted from http://adam.gomaa.us/blog/three-column-latex-layout/
%
% TBD: There's too much formatting in the example. Should try to move some
% of it here

\ProvidesClass{formula-sheet}

\LoadClass[a4paper,10pt]{article}

\setlength{\hoffset}{-.9in}
\setlength{\voffset}{-.25in}
\setlength{\oddsidemargin}{0pt}
\setlength{\topmargin}{0pt}
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\textheight}{10.9in}
\setlength{\textwidth}{10in}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
\setlength{\footskip}{0pt}
\setlength{\marginparpush}{0pt}

\setlength{\topskip}{0pt}
\setlength{\topsep}{0pt}
\setlength{\partopsep}{0pt}
\setlength{\parskip}{0pt}
\setlength{\parsep}{0pt}

\usepackage{lscape}
\usepackage{mdwlist}
\usepackage[compact]{titlesec}

% Turn off page numbering
\pagestyle{empty}

