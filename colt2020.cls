\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{colt2020}[2020/02/01 v1.0 COLT 2019 Proceedings]
\newcommand{\todo}{\color{red}}

\@ifundefined{ifanonsubmission}{
  \newif\ifanonsubmission
  \anonsubmissionfalse
}{}

\@ifundefined{iffinalsubmission}{
  \newif\iffinalsubmission
  \finalsubmissionfalse
}{}

\DeclareOption{anon}{\anonsubmissiontrue}
\DeclareOption{final}{\finalsubmissiontrue}
\ProcessOptions\relax

\LoadClass[pmlr]{jmlr}

\jmlrvolume{vol 125}
\jmlryear{2020}
\jmlrproceedings{PMLR}{Manuscript}

\ifanonsubmission
 \newcommand{\coltauthor}[1]{}
 \author{author names withheld}
 \editor{Under Review for COLT 2020}
 \jmlrworkshop{Manuscript}
 \renewcommand{\acks}[1]{}
\else
 \newcommand{\coltauthor}[1]{\author{#1}}
 \iffinalsubmission
  \editors{}
  \jmlrworkshop{Manuscript}
 \fi
\fi



