\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myslides}[2013/01/01 Custom beamer class]

% Base document class
\LoadClassWithOptions{beamer}

% Set Mannheim theme
\usetheme{Mannheim}

% Setup listings
\RequirePackage{listings}
\lstset
{
	basicstyle=\ttfamily\small,
	breaklines=true,
	breakatwhitespace=false
}

% URL font
\renewcommand\UrlFont\em

\endinput