%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% File:     aghdpl.cls           (LaTeX Document class option "aghdpl")
%          
% Author:  Marcin Szpyrka     (mszpyrka@agh.edu.pl)
%          Grzegorz J. Nalepa (gjn@agh.edu.pl)
%          Paweł Kłeczek      (p.l.kleczek@gmail.com)
%          AGH University of Science and Technology, Kraków, POLAND
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\message{*** [aghdpl.cls] ---  (MSz, GJN, PK)  v3.1.0 <16.02.2016>  ***}       

\newif\ifpdflatex\pdflatexfalse
\NeedsTeXFormat{LaTeX2e} % 
\ProvidesClass{aghdpl} 
\DeclareOption{pdflatex}{\pdflatextrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}} 
\ProcessOptions\LoadClass[a4paper,oneside,openright]{report} 

\RequirePackage{newtxtext}
\RequirePackage{anyfontsize}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{setspace}

\RequirePackage[font=small, labelfont=bf, labelsep=period]{caption}
\RequirePackage{subcaption}
\RequirePackage{siunitx}
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage[all,defaultlines=2]{nowidow} % Kontrola sierot i wdów - działa lepiej niż \widowpenalty i \clubpenalty

\geometry{lmargin=35mm, rmargin=25mm, tmargin=25mm, bmargin=25mm, foot=10mm, head=10mm}
\definecolor{Green}{rgb}{0.1,0.5,0.1}
\setlength{\parindent}{10mm}

\def\shorttitlePL#1   {\gdef\@shorttitlePL{#1}}
\def\shorttitleEN#1   {\gdef\@shorttitleEN{#1}}
\def\shortauthor#1    {\gdef\@shortauthor{#1}}
\def\titlePL#1        {\gdef\@titlePL{#1}}
\def\titleEN#1        {\gdef\@titleEN{#1}}
\def\faculty#1      {\gdef\@faculty{#1}}
\def\thesistype#1   {\gdef\@thesistype{#1}}
\def\supervisor#1   {\gdef\@supervisor{#1}}
\def\acknowledgements#1   {\gdef\@acknowledgements{#1}}
\def\department#1   {\gdef\@department{#1}}
\def\degreeprogramme#1 {\gdef\@degreeprogramme{#1}}

\singlespacing
\renewcommand{\labelitemi}{--}

%------------------------------------------------------------------------------


\def\thesisheaders{
\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitlePL}}
}

\DeclareOption{en}{
\def\thesisheaders{
\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitleEN}}
}
}

\ProcessOptions

\newcommand{\titlepages}{%

\newpage \titlepage 

\begin{center}
\vspace*{1.5cm}

\begin{tabular}{m{20mm} m{110mm}}
  
  \includegraphics[scale=0.3]{agh}
  & \Large\bfseries\begin{minipage}[c]{0.7\columnwidth}\centering%
    \MakeUppercase{Akademia G\'{o}rniczo-Hutnicza}\\\vspace{3mm}
    im. Stanis\l{}awa Staszica w Krakowie\\\vspace{3mm}
    \MakeUppercase{\@faculty}
  \end{minipage}\vspace{3mm}\\\hline
\end{tabular}


\vspace*{36pt}

{\fontsize{28}{30}\textbf{Praca dyplomowa}}
\vspace*{2mm}

{\fontsize{24}{26}\textbf{\@thesistype}}
\vspace*{42pt}

{\fontsize{22}{24}\textbf{\@author}}
\vspace*{1mm}

{\fontsize{14}{16}\textit{Imi\k{e} i nazwisko}}
\vspace*{5mm}

{\fontsize{14}{16}\textbf{\@degreeprogramme}}
\vspace*{1mm}

{\fontsize{14}{16}\textit{Kierunek studi\'{o}w}}
\vspace*{10mm}

{\fontsize{20}{22}\textbf{\@titlePL}}
\vspace*{1mm}

{\fontsize{14}{16}\textit{Temat pracy dyplomowej}}
\vspace*{5mm}

\vspace{\fill}
\end{center}

\fontsize{14}{16}
\begin{tabular}{m{80mm} m{20mm} m{30mm}}

	\centering\textbf{\@supervisor} &  & \dots\dots\dots\dots \\ 
	
	\centering\textit{Promotor Pracy} &  & \textit{Ocena} \\
\end{tabular}
\noindent

\vspace*{28pt}

\centerline{\rmfamily\fontsize{14}{16}\selectfont Krak\'{o}w, rok \@date}

\clearpage 
\thispagestyle{empty} 

{~~}\vspace{20mm}

{\large\itshape Uprzedzony o~odpowiedzialno\'sci karnej na~podstawie art.~115 ust.~1~i~2 ustawy z~dnia 4~lutego 1994~r. o~prawie autorskim i~prawach pokrewnych (t.j. Dz.U. z~2006~r. Nr~90, poz.~631 z~p{\'o}{\'z}n. zm.): ,,Kto przyw\l{}aszcza sobie autorstwo albo~wprowadza w~b\l{}\k{a}d co~do~autorstwa ca\l{}o\'sci lub cz\k{e}\'sci cudzego utworu albo~artystycznego wykonania, podlega grzywnie, karze ograniczenia wolno\'sci albo~pozbawienia wolno\'sci do~lat~3. Tej~samej karze podlega, kto~rozpowszechnia bez~podania nazwiska lub~pseudonimu tw\'orcy cudzy utw\'or w~wersji oryginalnej albo~w~postaci opracowania, artystycznego wykonania albo~publicznie zniekszta\l{}ca taki utw\'or, artystyczne wykonanie, fonogram, wideogram lub nadanie.'', a~tak\.ze uprzedzony o~odpowiedzialno\'sci dyscyplinarnej na~podstawie art.~211 ust.~1 ustawy z~dnia 27~lipca 2005~r. Prawo o~szkolnictwie wy\.zszym (t.j. Dz.~U. z~2012~r. poz.~572, z~p\'o\'zn. zm.): ,,Za~naruszenie przepis\'ow obowi\k{a}zuj\k{a}cych w~uczelni oraz~za~czyny uchybiaj\k{a}ce godno\'sci studenta student ponosi odpowiedzialno\'s\'c dyscyplinarn\k{a} przed komisj\k{a} dyscyplinarn\k{a} albo~przed s\k{a}dem kole\.ze\'nskim samorz\k{a}du studenckiego, zwanym dalej <<s\k{a}dem kole\.ze\'nskim>>.'', o\'swiadczam, \.ze~niniejsz\k{a} prac\k{e} dyplomow\k{a} wykona\l{}em(-am) osobi\'scie i~samodzielnie i~\.ze~nie~korzysta\l{}em(-am) ze~\'zr\'ode\l{} innych ni\.z~wymienione w pracy. }


\clearpage \titlepage

\vspace*{15cm} \vfill
\begin{flushright} 
\begin{minipage}[!h]{10cm}
{\Large\itshape \@acknowledgements}
\end{minipage}
\end{flushright}

\clearpage
\thispagestyle{empty}
\vspace*{15cm} \vfill
\clearpage

\setcounter{page}{5}

}


\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\fancyhf{}
\fancyhead{}
%\fancyhead[L]{\slshape{\small \rightmark}}
\fancyhead[RE,LO]{\slshape{\small \rightmark}}
%\fancyhead[R]{\bfseries \thepage}
\fancyhead[RO,LE]{\bfseries \thepage}

\thesisheaders

\frenchspacing
\sloppy 
\flushbottom


%---------------------------------------------------------------------------
% Ustawienia parametrów tytułów rozdziałów, podrozdziałów, itd.
%---------------------------------------------------------------------------

\titleformat{\chapter}[block]
{\bfseries\LARGE}{\filright \LARGE\thechapter. }{0ex}{}
%odstępy: lewy, góra, dół
\titlespacing{\chapter}{0pt}{17mm}{19mm}
\titleformat{\section}[block]
{\bfseries\Large}{\filright \Large\thesection. }{0ex}{}
\titlespacing{\section}{7mm}{8mm plus 0mm minus 1mm}{4mm plus 0mm minus 1mm}
\titleformat{\subsection}[block]
{\bfseries\large}{\filright \large\thesubsection. }{0ex}{}
\titlespacing{\subsection}{7mm}{6mm}{2.5mm}
\titleformat{\subsubsection}[block]
{\bfseries\normalsize}{\filright \normalsize\thesubsubsection. }{0ex}{}
\titlespacing{\subsubsection}{7mm}{3mm}{1.5mm}


%---------------------------------------------------------------------------
% Ustawienia parametrów generowania spisu treści i spisu rysunków
%---------------------------------------------------------------------------

\renewcommand{\cfttoctitlefont}{\bfseries\Large}
\renewcommand{\cftbeforetoctitleskip}{20mm}
\renewcommand{\cftaftertoctitleskip}{19mm}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}
\setlength{\cftparskip}{2pt}
\setlength{\cftbeforechapskip}{0mm}
\renewcommand{\cftchappagefont}{\normalsize}


%---------------------------------------------------------------------------
% Ustawienia wyświetlania liczb (zgodne z polskimi zwyczajami typograficznymi)
%---------------------------------------------------------------------------

\sisetup{
	output-decimal-marker = {,},
	%	round-mode=places,
	%	round-precision=4,
	group-separator={~},
}

%---------------------------------------------------------------------------
% Ustawienia wyświetlania URL-i
%---------------------------------------------------------------------------

% Zmiana kroju czcionki URL-i z czcionki o stałej szerokości na szeryfową z kursywą.
\renewcommand\UrlFont{\rmfamily\itshape}


%---------------------------------------------------------------------------
% Ustawienia podpisów pod ilustracjami
%---------------------------------------------------------------------------

\captionsetup[subfigure]{labelfont=md}
\captionsetup{%
	% Użyj okrągłych nawiasów wokół odwołań do "podilustracji".
	subrefformat=parens,
	% Margines z obu stron podpisu.
	margin=2cm,
	% W przypadku podpisów mieszczących się w jednej linii nie stosuj justowania, tylko wyśrodkuj cały podpis.
	singlelinecheck=on,
}


%---------------------------------------------------------------------------
% Środowisko do tworzenia opisów symboli użytych w równaniu.
%---------------------------------------------------------------------------

\SetLabelAlign{parright}{\parbox[t]{\labelwidth}{\raggedleft#1}}
\setlist[description]{style=multiline, topsep=10pt, align=parright}

% Odstęp po obu stronach półpauzy.
\newlength{\descriptiondashgap}
\setlength{\descriptiondashgap}{0.5em}

% Element na liście symboli matematycznych użytych w równaniu (symbol wyrównany do prawej, oddzielony półpauzą od definicji)
\renewcommand*\descriptionlabel[1]{\hspace \labelsep \normalfont \bfseries #1 \mdseries\hspace{\descriptiondashgap}--\hspace{\descriptiondashgap}}

% Odległość półpauzy od lewego marginesu.
\newlength{\eqwheremargin}
\setlength{\eqwheremargin}{2cm}

\newenvironment{eqwhere}[1][]
{%
\setlength{\eqwheremargin}{#1}%
\begin{description}[leftmargin=\eqwheremargin, itemsep=0cm, labelsep=0cm]
}
{\end{description}}
%%% Local Variables: 
%%% mode: latex
%%% TeX-master: "praca"
%%% End: 