\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{echologie}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}

\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage{mathrsfs}
\RequirePackage{ulsy}
\RequirePackage{txfonts}
\RequirePackage{pxfonts}
\RequirePackage{array}

\def\ks#1{
	\raise-1.5mm
	\hbox{
		\begin{tikzpicture}
			\draw[dashed] (0,0) circle (0.25);
			\node at (0,0) {$#1$};
		\end{tikzpicture}
	}
}
\def\pyramide{
	\begin{tikzpicture}
		\draw(0:0)--++(60:1.5)--+(-60:1.5)--cycle;
		\draw(60:0.5)--++(60:0.5)--++(0:0.5)--++(-60:0.5)--cycle;
		\node at (0.75,0.2){$+$};
		\node at (0.75,0.65){$\times$};
		\node at (0.75,1.05){$\wedge$};
		\draw[->] (0,0.3)--node[left]{exp}(0,1.2);
		\draw[->] (1.5,1.2)--node[right]{log}(1.5,0.3);
	\end{tikzpicture}
}
\def\coeur[#1]{
	\draw [#1] (0,0)
	 .. controls +(0,2)  and +(0,2)  .. (3,0)
	 .. controls +(0,-2) and +(0,2)  .. (0,-4)
	 .. controls +(0,2)  and +(0,-2) .. (-3,0)
	 .. controls +(0,2)  and +(0,2)  .. (0,0);
}
