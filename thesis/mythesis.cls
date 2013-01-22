\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mythesis}[2013/01/01 Custom thesis class]

% Base document class
\LoadClassWithOptions{scrreprt}

% Required by classicthesis
\KOMAoptions{headinclude=true,footinclude=true}

% Classic Thesis
\PassOptionsToPackage{pdfspacing,dottedtoc,eulerchapternumbers,beramono,eulermath}{classicthesis}
\RequirePackage{classicthesis}

% Modified Classic Thesis
\RequirePackage{arsclassica}

% Setup listings
\RequirePackage{listings}
\lstset
{
	basicstyle=\ttfamily\small,
	breaklines=true,
	frame=single,
	frameround=ftff,
}

% Inline-listings font
% \makeatletter
% \lst@AddToHook{TextStyle}{\let\lst@basicstyle\em}
% \makeatother

% Setup captions
\RequirePackage{caption}
\captionsetup
{
	labelfont={small,rm},
	textfont={small,rm},
	justification=raggedright,
	format=hang
}

% URL font
\renewcommand\UrlFont\em

% Hide links
\hypersetup{hidelinks}

\endinput