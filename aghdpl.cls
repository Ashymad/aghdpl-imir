%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% File:     aghdpl.cls           (LaTeX Document class option "aghdpl")
%
% Authors: Marcin Szpyrka     (mszpyrka@agh.edu.pl)
%          Grzegorz J. Nalepa (gjn@agh.edu.pl)
%          Paweł Kłeczek      (p.l.kleczek@gmail.com)
%          Szymon Mikulicz    (czilukim@o2.pl)
%          Marcel Piszak      (marcel.piszak@wp.pl)
%          Teresa Makuch      (tesiamakuch@gmail.com)
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
\RequirePackage{mfirstuc}
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

\def\shorttitlePL#1       {\gdef\@shorttitlePL{#1}}
\def\shorttitleEN#1       {\gdef\@shorttitleEN{#1}}
\def\shortauthor#1        {\gdef\@shortauthor{#1}}
\def\titlePL#1            {\gdef\@titlePL{#1}}
\def\titleEN#1            {\gdef\@titleEN{#1}}
\def\facultyPL#1          {\gdef\@facultyPL{#1}}
\def\facultyEN#1          {\gdef\@facultyEN{#1}}
\def\thesistypePL#1       {\gdef\@thesistypePL{#1}}
\def\thesistypeEN#1       {\gdef\@thesistypeEN{#1}}
\def\formPL#1			  {\gdef\@formPL{#1}}
\def\formEN#1			  {\gdef\@formEN{#1}}
\def\supervisor#1         {\gdef\@supervisor{#1}}
\def\reviewer#1           {\gdef\@reviewer{#1}}
\def\acknowledgements#1   {\gdef\@acknowledgements{#1}}
\def\department#1         {\gdef\@department{#1}}
\def\degreeprogrammePL#1  {\gdef\@degreeprogrammePL{#1}}
\def\degreeprogrammeEN#1  {\gdef\@degreeprogrammeEN{#1}}
\def\years#1              {\gdef\@years{#1}}
\def\albumnum#1           {\gdef\@albumnum{#1}}
\def\specialisationPL#1   {\gdef\@specialisationPL{#1}}
\def\specialisationEN#1   {\gdef\@specialisationEN{#1}}
\def\address#1            {\gdef\@address{#1}}
\def\graduationyear#1     {\gdef\@graduationyear{#1}}
\def\yearofstudy#1        {\gdef\@yearofstudy{#1}}
\def\summaryPL#1          {\gdef\@summaryPL{#1}}
\def\summaryEN#1          {\gdef\@summaryEN{#1}}
\def\sex#1                {\gdef\@sex{#1}}
\def\thesisplan#1         {\gdef\@thesisplan{#1}}
\def\agree#1              {\gdef\@agree{#1}}
\def\apprenticeship#1     {\gdef\@apprenticeship{#1}}

\newcommand{\ea}{\expandafter\ifstrequal\expandafter{\@sex}{m}{e}{a}}

\newcommand{\ya}{\expandafter\ifstrequal\expandafter{\@sex}{m}{y}{a}}

\newcommand{\yesno}{\expandafter\ifstrequal\expandafter{\@agree}{t}{TAK}{NIE}}

\renewcommand{\labelitemi}{--}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}

%------------------------------------------------------------------------------

\def\thesisheaders{
	\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitlePL}}
        \def\thesistitles{{\fontsize{20}{22}\textbf{\@titlePL}}}
}


\DeclareOption{en}{
	\def\thesisheaders{
		\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitleEN}}
	}
        \def\thesistitles{{\fontsize{20}{22}\textbf{\@titlePL}}\\\vspace*{2mm}
                          {\fontsize{20}{22}\textbf{\@titleEN}}}
}

\ProcessOptions

\newcommand{\titlepages}{%
	%--------------------------STRONA TYTUŁOWA--------------------------

	\newpage
	\titlepage

	\begin{center}{\singlespacing

		\includegraphics[scale=0.4]{agh}

		\vspace*{0.4cm}

        \fontsize{16}{20}{\textbf{\MakeUppercase{Akademia Górniczo-Hutnicza}}}\\
        \fontsize{14}{16}{\textbf{\MakeUppercase{Im. Stanisława Staszica w Krakowie}}}

        \vspace*{0.4cm}

        \fontsize{14}{16}{\textbf{\MakeUppercase{\@facultyPL}}}

		\vspace*{2cm}

        \fontsize{20}{22}{\textbf{\MakeUppercase{praca dyplomowa}}}

		\vspace*{0.3cm}

        \fontsize{20}{22}{\textbf{\@thesistypePL a}}

		\vspace*{0.8cm}

        \fontsize{18}{20}{\textbf{\@titlePL}}

		\vspace*{0.8cm}

        \fontsize{14}{16}{\textbf{\@titleEN}}

		\vspace{\fill}

        \fontsize{14}{16}{\begin{tabular}{l m{8cm} c}
            \textit{Autor:} & \fontsize{16}{18}{\textbf{\@author}} &\\
            \textit{Kierunek studiów:} & \@degreeprogrammePL &\\
            \textit{Opiekun pracy:} & \textbf{\@supervisor} &
            \makecell{\vspace{\fill}\\\dots\dots\dots\dots} \\
                                    & & \fontsize{11}{12}{\textit{podpis}}\\
        \end{tabular}}
    }\end{center}
	\noindent

	\vspace*{28pt}

	\centerline{\rmfamily\fontsize{14}{16}\selectfont Krak\'{o}w, rok \the\year}

	%--------------------------OŚWIADCZENIE O ODPOWIEDZIALNOŚCI KARNEJ,
	%SAMODZIELNYM WYKONANIU, JAWNOŚCI I ZGODZIE NA PUBLIKACJĘ W
	%INTERNECIE--------------------------

	\clearpage
	\thispagestyle{empty}

    {\small
      \begin{center}
        \MakeUppercase{\textbf{O{\'s}wiadczenia studenta}}
      \end{center}

      \begin{flushright}
        Krak\'{o}w, dnia \@date
      \end{flushright}

      {\singlespacing
        \noindent
        \begin{flushleft}
          \@author \\
          \textit{Imiona i nazwisko studenta} \\
          \vspace*{0.4cm}
          \@degreeprogrammePL, \@thesistypePL ie, \@formPL \\
          \textit{Kierunek, poziom, forma studi\'{o}w} \\
          \vspace*{0.4cm}
          \@facultyPL \\
          \textit{Nazwa wydzia\l{}u} \\
          \vspace*{0.4cm}
          \@supervisor \\
          \textit{Imiona i nazwisko opiekuna pracy dyplomowej} \\
        \end{flushleft}
        \vspace*{33pt}

        \noindent\underline{\textbf{Ja ni\.{z}ej podpisan\ya\ o\'{s}wiadczam, 
        \.{z}e:}} \\

        \noindent jako tw\'{o}rca/wsp\'{o}\l{}tw\'{o}rca\footnotemark[1] pracy 
        dyplomowej \@thesistypePL iej pt. \\
        \@titlePL

        \vspace*{0.4cm}

        \begin{enumerate}[leftmargin=.5cm, itemsep=0cm]
          \setlength{\parskip}{0cm}
        \item \textbf{uprzedzon\ya~o odpowiedzialno{\'s}ci karnej} na podstawie
          art. 115 ust 1~i~2 ustawy z~dnia 4~lutego 1994~r. o~prawie autorskim
          i~prawach
          pokrewnych (tj. Dz. U. z~2018~r. poz. 1991, z~p{\'o}{\'z}n. zm.): ,,Kto
          przyw{\l{}}aszcza sobie autorstwo albo wprowadza w~b{\l{}}{\k{a}}d co
          do autorstwa ca{\l{}}o{\'s}ci lub cz{\k{e}}{\'s}ci cudzego utworu albo
          artystycznego wykonania, podlega grzywnie, karze ograniczenia
          wolno{\'s}ci albo pozbawienia wolno{\'s}ci do lat~3. Tej samej karze
          podlega, kto rozpowszechnia bez podania nazwiska lub pseudonimu
          tw{\'o}rcy cudzy utw{\'o}r w~wersji oryginalnej albo w~postaci
          opracowania, artystyczne wykonanie albo publicznie zniekszta{\l{}}ca
          taki utw{\'o}r, artystyczne wykonanie, fonogram, wideogram lub
          nadanie'', \textbf{a tak{\.z}e uprzedzon\ya\ o~odpowiedzialno{\'s}ci
          dyscyplinarnej} na podstawie art. 307 ust.~1 ustawy z~dnia 20 lipca
          2018~r. Prawo o~szkolnictwie wy{\.z}szym i~nauce (tj. Dz. U. z~2018~r.
          poz.
          1668, z~p{\'o}{\'z}n. zm.) ,,Student podlega odpowiedzialno\'{s}ci
          dyscyplinarnej za naruszenie przepis\'{o}w obowi\k{a}zuj\k{a}cych
          w~uczelni oraz za czyn uchybiaj\k{a}cy godno\'{s}ci studenta.''
          \textbf{niniejsz{\k{a}} prac{\k{e}} dyplomow{\k{a}} wykona{\l{}}\ea m
            osobi{\'s}cie i~samodzielnie i~nie korzysta{\l{}}\ea m ze
          {\'z}r{\'o}de{\l{}} innych ni{\.z} wymienione w pracy;}

        \item praca dyplomowa jest wynikiem mojej tw\'{o}rczo\'{s}ci i~nie
          narusza praw autorskich innych os\'{o}b;

        \item wersja elektroniczna przed\l{}o\.{z}onej w~wersji papierowej pracy
          dyplomowej jest wersj\k{a} ostateczn\k{a}, kt\'{o}ra b\k{e}dzie
          przedstawiona komisji przeprowadzaj\k{a}cej egzamin dyplomowy;

        \item praca dyplomowa nie zawiera \.{z}adnych informacji
          podlegaj\k{a}cych ochronie na podstawie przepis\'{o}w o~ochronie
          informacji niejawnych ani nie jest prac\k{a} dyplomow\k{a}, kt\'{o}rej
          przedmiot jest obj\k{e}ty tajemnic\k{a} prawnie chronion\k{a};

        \item $[$\yesno$]$\footnotemark[7]~udzielam nieodp\l{}atnie Akademii
          G\'{o}rniczo-Hutniczej im. Stanis\l{}awa Staszica w~Krakowie licencji
          niewy\l{}\k{a}cznej, bez ogranicze\'{n} czasowych, terytorialnych
          i~ilo\'{s}ciowych na udost\k{e}pnienie mojej pracy dyplomowej w~sieci
          Internet za po\'{s}rednictwem Repozytorium AGH.
      \end{enumerate}
    }
	\vspace*{22pt}

	\begin{flushright}
		\begin{tabular}{c}
			\dots\dots\dots\dots\dots\dots\dots\dots\dots \\
			\textit{czytelny podpis studenta} \\
		\end{tabular}
	\end{flushright}

    
    \clearpage
    \thispagestyle{empty}
    {\singlespacing
     \noindent\underline{\textbf{Jednocze\'{s}nie uczelnia informuje, \.{z}e:}}
     
     \begin{enumerate}[leftmargin=.5cm, itemsep=0cm]
        \setlength{\parskip}{0cm}
        \item zgodnie z~art. 15a ww. ustawy o~prawie autorskim i~prawach 
         pokrewnych uczelni przys\l{}uguje pierwsze\'{n}stwo w~opublikowaniu 
         pracy dyplomowej studenta. Je\.{z}eli uczelnia nie opublikowa\l{}a 
         pracy dyplomowej w~terminie 6~miesięcy od dnia jej obrony, autor 
         mo\.{z}e j\k{a} opublikowa\'{c}, chyba \.{z}e praca jest 
         cz\k{e}\'{s}ci\k{a} utworu zbiorowego. Ponadto uczelnia jako podmiot, 
         o~kt\'{o}rym mowa w~art.~7 ust.~1 pkt.~1 ustawy z~dnia 20 lipca 
         2018~r. -- Prawo o~szkolnictwie wy\.{z}szym i~nauce (Dz.~U. z~2018~r. 
         poz. 1668, z~p\'{o}\'{z}n. zm.), mo\.{z}e korzysta\'{c} bez 
         wynagrodzenia i~bez konieczno\'{s}ci uzyskania zgody autora z~utworu 
         stworzonego przez studenta w~wyniku wykonywania obowi\k{a}zk\'{o}w 
         zwi\k{a}zanych z~odbywaniem studi\'{o}w, udost\k{e}pnia\'{c} utw\'{o}r 
         ministrowi w\l{}ła\'{s}ciwemu do spraw szkolnictwa wy\.{z}szego 
         i~nauki oraz korzysta\'{c} z utwor\'{o}w znajduj\k{a}cych si\k{e} 
         w~prowadzonych przez niego bazach danych, w~celu sprawdzania 
         z~wykorzystaniem Jednolitego Systemu Antyplagiatowego. Minister 
         w\l{}a\'{s}ciwy do spraw szkolnictwa wy\.{z}szego i~nauki mo\.{z}e 
         korzysta\'{c} z~prac dyplomowych znajduj\k{a}cych si\k{e} 
         w~prowadzonych przez niego bazach danych w~zakresie niezb\k{e}dnym do 
         zapewnienia prawid\l{}owego utrzymania i~rozwoju tych baz oraz 
         wsp\'{o}\l{}pracuj\k{a}cych z~nimi system\'{o}w informatycznych;
        \item w~\'{s}wietle art. 342 ust. 3 pkt. 5 i~art. 347 ust.~1 ustawy 
        Prawo o~szkolnictwie wy\.{z}szym i~nauce minister w\l{}a\'{s}ciwy do 
        spraw szkolnictwa wy\.{z}szego i~nauki prowadzi baz\k{e} danych 
        zwan\k{a} repozytorium pisemnych prac dyplomowych, kt\'{o}ra obejmuje: 
        tytu\l{} i~tre\'{s}\'{c} pracy dyplomowej; imiona i~nazwisko autora 
        pracy dyplomowej; numer PESEL autora pracy dyplomowej, a~w~przypadku 
        jego braku -- numer dokumentu potwierdzaj\k{a}cego 
        to\.{z}samo\'{s}\'{c} oraz nazw\k{e} pa\'{n}stwa, kt\'{o}re go 
        wyda\l{}o; imiona i~nazwisko promotora pracy dyplomowej, numer PESEL, 
        a~w~przypadku jego braku -- numer dokumentu potwierdzaj\k{a}cego 
        to\.{z}samo\'{s}\'{c} oraz nazw\k{e} pa\'{n}stwa, kt\'{o}re go 
        wyda\l{}o; imiona i~nazwisko recenzenta pracy dyplomowej, numer PESEL, 
        a~w~przypadku jego braku – numer dokumentu potwierdzaj\k{a}cego 
        to\.{z}samo\'{s}\'{c} oraz nazw\k{e} pa\'{n}stwa, kt\'{o}re go 
        wyda\l{}o; nazw\k{e} uczelni; dat\k{e} zdania egzaminu dyplomowego; 
        kierunek, poziom i~profil studi\'{o}w. Ponadto, zgodnie z~art. 347 ust. 
        2-5 ustawy Prawo o~szkolnictwie wy\.{z}szym i~nauce ww. dane 
        wprowadzaj\k{a} do Zintegrowanego Systemu Informacji o~Szkolnictwie 
        Wy\.{z}szym i~Nauce POL-on (System POL-on) rektorzy. Dost\k{e}p do 
        danych przys\l{}uguje promotorowi pracy dyplomowej oraz Polskiej 
        Komisji Akredytacyjnej, a~tak\.{z}e ministrowi w~zakresie 
        niezb\k{e}dnym do prawid\l{}owego utrzymania i~rozwoju repozytorium 
        oraz system\'{o}w informatycznych wsp\'{o}\l{}pracuj\k{a}cych z~tym 
        repozytorium. Rektor wprowadza tre\'{s}\'{c} pracy dyplomowej do 
        repozytorium niezw\l{}ocznie po zdaniu przez studenta egzaminu 
        dyplomowego. W~repozytorium nie zamieszcza si\k{e} prac 
        zawieraj\k{a}cych informacje podlegaj\k{a}ce ochronie na podstawie 
        przepis\'{o}w o ochronie informacji niejawnych.
    \end{enumerate}
    }

    } %\small

    \footnotetext[1]{~niepotrzebne skre\'{s}li\'{c}}
    \footnotetext[7]{~nale\.{z}y wpisa\'{c} TAK w~przypadku wyra\.{z}enia zgody
    na udost\k{e}pnienie pracy dyplomowej, NIE -- w~przypadku braku zgody;
    nieuzupe\l{}nione pole oznacza brak zgody na udost\k{e}pnienie pracy.}


	%--------------------------STRESZCZENIE--------------------------

    \clearpage
    \thispagestyle{empty}

    \begin{flushright}
        Krak\'{o}w, \@date
    \end{flushright}
    \vspace*{-55pt}

    \begin{flushleft}\singlespacing
      Akademia G{\'o}rniczo-Hutnicza im. Stanis{\l{}}awa Staszica \\
      {\bfseries\@facultyPL}
      \vspace*{0.2cm}

      Kierunek studiów: \@degreeprogrammePL
      \\\vspace*{0.2cm}
      Specjalność: \@specialisationPL
      \\\vspace*{0.2cm}
      \@author \\
      \textit{Imiona i nazwisko studenta}
      \\\vspace*{0.2cm}
      {\bfseries Praca dyplomowa \@thesistypePL a} \\
      \@titlePL
      \vspace*{-0.3cm}
      \begin{center} \textit{(tytuł pracy)}\end{center}
      \vspace*{0.2cm}
      Opiekun: \@supervisor \\
    \end{flushleft}
    \vspace*{0.0cm}

    \begin{center}
      \textbf{\MakeUppercase{Streszczenie}}
    \end{center}
    \onehalfspacing
    \@summaryPL

    %--------------------------SUMMARY--------------------------

    \clearpage
    \thispagestyle{empty}

    \begin{flushright}
      Krak\'{o}w, {\selectlanguage{english}\@date}
    \end{flushright}
    \vspace*{-55pt}

    \begin{flushleft}\singlespacing
      AGH University of Science and Technology \\
      {\bfseries\@facultyEN}
      \vspace*{0.2cm}

      Field of Study: \@degreeprogrammeEN
      \\\vspace*{0.2cm}
      Specialization: \@specialisationEN
      \\\vspace*{0.2cm}
      \@author \\
      \textit{(First name and family name of the student)}
      \\\vspace*{0.2cm}
      {\bfseries \emakefirstuc{\@thesistypeEN} Diploma Thesis}\\
      \@titleEN
      \vspace*{-0.3cm}
      \begin{center} \textit{(Thesis title)}\end{center}
      \vspace*{0.2cm}
      Supervisor: \@supervisor \\
    \end{flushleft}
    \vspace*{0.0cm}

    \begin{center}
      \textbf{\MakeUppercase{Summary}}
    \end{center}
    \onehalfspacing
    \@summaryEN



	%--------------------------PLAN PRACY--------------------------
	\clearpage
    \thispagestyle{empty}

    \singlespacing

    \begin{flushright}
      Krak\'{o}w, dnia \@date
    \end{flushright}

    \begin{flushleft}
      {\bfseries\MakeUppercase{Akademia G\'{o}rniczo-Hutnicza}}\\
      \indent{\bfseries\MakeUppercase{\@facultyPL}}
    \end{flushleft}
    \begin{center}

      \vspace*{6mm}

      {\bfseries TEMATYKA PRACY DYPLOMOWEJ} \\
      \vspace{5mm}

      {\bfseries\@author} \\
      {\itshape imi\k{e} i nazwisko studenta}\\
      \vspace*{5mm}
    \end{center}

    \onehalfspacing
    \noindent \textbf{Tytuł pracy dyplomowej:} \\ \@titlePL \\

    \noindent\begin{tabular}{p{35mm} p{75mm} c}
      Promotor pracy:  & \@supervisor & \\
      Recenzent pracy: & \@reviewer   & \\
                       &              & \\
                       &              & \dots\dots\dots\dots\dots \\
                       &              & \textit{Podpis dziekana} \\
    \end{tabular}

    \vspace*{10mm}
    \singlespacing
    \noindent PLAN PRACY DYPLOMOWEJ:\\
    \@thesisplan
    \vspace{0.6cm}
    Praktyka (dyplomowa): \vspace*{0.1cm}\\ \@apprenticeship \\
    \begin{flushright}
      \begin{tabular}{l c c}
        Krak\'ow, & \dots\dots\dots & \dots\dots\dots\dots\dots\dots \\
                  & {\itshape data} & {\itshape podpis dyplomanta} \\
                  &                 & \\
                  &                 & \dots\dots\dots\dots\dots\dots \\
                  &                 & {\itshape podpis promotora} \\
      \end{tabular}
    \end{flushright}
    \vspace{0.6cm}
    \centerline{{Termin oddania do dziekanatu:}\hspace{30mm}\dots\dots\dots\dots 20\dots r.}


	%--------------------------PODZIĘKOWANIA--------------------------

	\clearpage \titlepage

	\vspace*{15cm} \vfill
	\begin{flushright}
	\begin{minipage}[!h]{10cm}
	\begin{flushright}
	\Large\itshape \@acknowledgements
	\end{flushright}
	\end{minipage}
	\end{flushright}

	\clearpage

	\setcounter{page}{9}

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
