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
\def\years#1		{\gdef\@years{#1}}
\def\albumnum#1		{\gdef\@albumnum{#1}}
\def\specialization#1	{\gdef\@specialization{#1}}
\def\address#1		{\gdef\@address{#1}}
\def\graduationyear#1	{\gdef\@graduationyear{#1}}

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

	%--------------------------STRONA TYTUŁOWA--------------------------

	\newpage 
	\titlepage 

	\begin{center}
		\vspace*{1cm}

		\begin{tabular}{m{20mm} m{110mm}}
		
		\includegraphics[scale=0.3]{agh}
		& \singlespacing\Large\bfseries\begin{minipage}[c]{0.7\columnwidth}\centering%
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

		\vspace{\fill}

		\fontsize{14}{16}
		\begin{tabular}{c m{30mm} c}

			\textbf{\@supervisor} &  & \dots\dots\dots\dots \\ 
			
			\textit{Promotor Pracy} &  & \textit{Ocena} \\
		\end{tabular}
	\end{center}
	\noindent

	\vspace*{28pt}

	\centerline{\rmfamily\fontsize{14}{16}\selectfont Krak\'{o}w, rok \@years}

	%--------------------------OŚWIADCZENIE O WYKONANIU--------------------------

	\clearpage 
	\thispagestyle{empty} 

	\begin{flushright}
		Krak\'{o}w, \@date
	\end{flushright}
	
	\noindent
	\begin{tabular}{m{31mm} l}
		Imi\k{e} i nazwisko: & \@author \\
		Nr. albumu: & \@albumnum \\
		Kierunek studi\'{o}w: & \@degreeprogramme \\
		Specjalno{\'s}{\'c}: & \@specialization \\
	\end{tabular}
	\vspace*{28pt}

	\begin{center}
		\MakeUppercase{\textbf{O{\'s}wiadczenie}}
	\end{center}
	\vspace*{16pt}

	\setstretch{1.5}{
		{\'S}wiadomy/a odpowiedzialno{\'s}ci karnej za po{\'s}wiadczanie nieprawdy o{\'s}wiadczam, {\.z}e niniejsz{\k{a}} in{\.z}yniersk{\k{a}} prac{\k{e}} dyplomow{\k{a}} wykona{\l{}}em/{\l{}}am osobi{\'s}cie i samodzielnie oraz nie korzysta{\l{}}em/{\l{}}am ze {\'z}r{\'o}de{\l{}} innych ni{\.z} wymienione w pracy.

		Jednocze{\'s}nie o{\'s}wiadczam, {\.z}e dokumentacja pracy nie narusza praw autorskich w rozumieniu ustawy z dnia 4 lutego 1994 roku o prawie autorskim i prawach pokrewnych (Dz. U. z 2006 r. Nr 90 poz. 631 z p{\'o}{\'z}niejszymi zmianami) oraz d{\'o}br osobistych chronionych prawem cywilnym. Nie zawiera ona r{\'o}wnie{\.z} danych i informacji, kt{\'o}re uzyska{\l{}}em/{\l{}}am w spos{\'o}b niedozwolony. Wersja dokumentacji do{\l{}}{\k{a}}czona przeze mnie na no{\'s}niku elektronicznym jest w pe{\l{}}ni zgodna z wydrukiem przedstawionym do recenzji.

		Za{\'s}wiadczam tak{\.z}e, {\.z}e niniejsza in{\.z}ynierska praca dyplomowa nie by{\l{}}a wcze{\'s}niej podstaw{\k{a}} {\.z}adnej innej urz{\k{e}}dowej procedury zwi{\k{a}}zanej z nadawaniem dyplom{\'o}w wy{\.z}szej uczelni lub tytu{\l{}}{\'o}w zawodowych.
	}
	\vspace*{28pt}

	\begin{flushright}
		\begin{tabular}{c}
			\dots\dots\dots\dots\dots\dots\dots\dots\dots \\
			\textit{podpis dyplomanta} \\
		\end{tabular}
	\end{flushright}

	%--------------------------OŚWIADCZENIE O PRZEKAZANIU PRAW AUTORSKICH--------------------------

	\clearpage 
	\thispagestyle{empty}

	\begin{flushright}
		Krak\'{o}w, \@date
	\end{flushright}

	\noindent\begin{tabular}{l p{77mm}}
		Imi\k{e} i nazwisko: & \@author \\
		Adres korespondencyjny: & \@address \\
		Temat pracy dyplomowej in{\.z}ynierskiej: & \@titlePL \\
		Rok uko{\'n}czenia: & \@graduationyear \\
		Nr. albumu: & \@albumnum \\
		Kierunek studi\'{o}w: & \@degreeprogramme \\
		Specjalno{\'s}{\'c}: & \@specialization \\
	\end{tabular}
	\vspace*{28pt}

	\begin{center}
		\MakeUppercase{\textbf{O{\'s}wiadczenie}}
	\end{center}
	\vspace*{16pt}

	\setstretch{1.5}{
		Niniejszym o{\'s}wiadczam, {\.z}e zachowuj{\k{a}}c moje prawa autorskie, udzielam Akademii G{\'o}rniczo-Hutniczej im. S. Staszica w Krakowie nieograniczonej w czasie nieodp{\l{}}atnej licencji niewy{\l{}}{\k{a}}cznej do korzystania z przedstawionej dokumentacji in{\.z}ynierskiej pracy dyplomowej, w zakresie publicznego udost{\k{e}}pniania i rozpowszechniania w wersji drukowanej i elektronicznej.\footnotemark
	}
	\vspace*{28pt}
	
	\begin{flushright}
		\begin{tabular}{c c}
			Krak{\'o}w, & \dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots \\
			&\textit{data oraz podpis dyplomanta} \\
		\end{tabular}
	\end{flushright}

	\footnotetext{Na podstawie Ustawy z dnia 27 lipca 2005 r. Prawo o szkolnictwie wy{\.z}szym (Dz.U. 2005 nr 164 poz. 1365) Art. 239. oraz Ustawy z dnia 4 lutego 1994 r. o prawie autorskim i prawach pokrewnych (Dz.U. z 2000 r. Nr 80, poz. 904, z p{\'o}{\'z}n. zm.) Art. 15a. "Uczelni w rozumieniu przepis{\'o}w o szkolnictwie wy{\.z}szym przys{\l{}}uguje pierwsze{\'n}stwo w opublikowaniu pracy dyplomowej studenta. Je{\.z}eli uczelnia nie opublikowa{\l{}}a pracy dyplomowej w ci{\k{a}}gu 6 miesi{\k{e}}cy od jej obrony, student, kt{\'o}ry j{\k{e}} przygotowa{\l{}}, mo{\.z}e j{\k{a}} opublikowa{\'c}, chyba {\.z}e praca dyplomowa jest cz{\k{e}}{\'s}ci{\k{a}} utworu zbiorowego."}

	%--------------------------PLAN PRACY--------------------------

	%--------------------------STRESZCZENIE--------------------------

	%--------------------------SUMMARY--------------------------

	%--------------------------PODZIĘKOWANIA--------------------------

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
\onehalfspacing

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