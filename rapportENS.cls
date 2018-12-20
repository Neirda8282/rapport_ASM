\LoadClass[a4paper,12pt]{article}

\RequirePackage[frenchb]{babel}%langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage{lastpage}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage{fancyhdr}
\csname @addtoreset\endcsname{section}{part}

\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2.5cm]{geometry} %Configuration de la page

%-------------------- Informations sur le rapport ----------------------

\newcommand{\Departement}[1]{\renewcommand{\Departement}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\annee}[1]{\renewcommand{\annee}{#1}}



\newcommand{\fairemarges}[1]{
\makenomenclature
\pagestyle{fancy}
\setlength{\unitlength}{1mm}
\addtolength{\headheight}{1.5\baselineskip}
\renewcommand{\headrulewidth}{0.6pt}
\renewcommand{\footrulewidth}{0.5pt}
\fancyfoot{}
\lhead{\includegraphics[width=0.8cm]{ENS.png} \hspace{1cm} \today}
%\chead{\today }
\rfoot{\thepage  / \pageref{LastPage}}
\lfoot{#1}
\cfoot{\titre}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

\ThisLRCornerWallPaper{0.6}{SteinECL.jpg}
	\centering %Centraliser le contenu
	\includegraphics[width=1\textwidth]{ENSnom.png}\par\vspace{1cm} %Insertion du logo
	%{\scshape\LARGE École Normale Supérieure de Rennes \par}
	\vspace{0.5cm} 
	{\scshape \Large \Departement \hspace{1cm} \annee \par} %Nom de l'université
	\vspace{1cm}%Espace de 1cm
	{\scshape\Large \sujet \par} %sous-titre
	\vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titre \par}
    \rule{\linewidth}{0.2 mm} \\[1 cm]
	\vspace{0.5cm}%Espace de 0.5cm
    
	\begin{minipage}{0.5\textwidth} %Minipage pour faire deux colonnes
		\begin{flushleft} \large %Envoyer à gauche
		\emph{\textbf{Élèves :}}\\ %Pour le titre au dessus des noms à gauche
        \eleves\\
		\end{flushleft}
	\end{minipage}
	~
	\begin{minipage}{0.4\textwidth}
		\begin{flushright} \large
		\emph{\textbf{Enseignants encadrants :}} \\
		 \enseignant\\
		\end{flushright}
	\end{minipage}\\[2cm]
    
	\vfill
	{\large \today\par} %Affichage de la date

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[h!]
\centering
\includegraphics[weight=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}