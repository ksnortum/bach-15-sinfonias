%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/sinfonia-no1-C-maj-parts.ily"
\include "includes/sinfonia-no2-C-min-parts.ily"
\include "includes/sinfonia-no3-D-maj-parts.ily"
\include "includes/sinfonia-no4-D-min-parts.ily"
\include "includes/sinfonia-no5-Eb-maj-parts.ily"
\include "includes/sinfonia-no6-E-maj-parts.ily"
\include "includes/sinfonia-no7-E-min-parts.ily"
\include "includes/sinfonia-no8-F-maj-parts.ily"
\include "includes/sinfonia-no9-F-min-parts.ily"
\include "includes/sinfonia-no10-G-maj-parts.ily"
\include "includes/sinfonia-no11-G-min-parts.ily"
\include "includes/sinfonia-no12-A-maj-parts.ily"
\include "includes/sinfonia-no13-A-min-parts.ily"
\include "includes/sinfonia-no14-Bb-maj-parts.ily"
\include "includes/sinfonia-no15-B-min-parts.ily"

% Title page and table of contents

\titlePage
\pageBreak

\paper {
  tocTitleMarkup = \markup { \fill-line { \center-column { 
    \line { \huge "Table of Contents" }
    \vspace #1
  } } }
  tocItemMarkup = \tocItemWithDotsMarkup
}

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% Book

\tocItem \markup "Sinfonia No. 1 in C major"
\sinfoniaOneMusic
\pageBreak

\tocItem \markup "Sinfonia No. 2 in C minor"
\sinfoniaTwoMusic
\pageBreak

\tocItem \markup "Sinfonia No. 3 in D major"
\sinfoniaThreeMusic
\pageBreak

\tocItem \markup "Sinfonia No. 4 in D minor"
\sinfoniaFourMusic
\pageBreak

\tocItem \markup \concat { 
  "Sinfonia No. 5 in E" \tiny \raise #0.75 \flat " major" 
}
\sinfoniaFiveMusic
\pageBreak

\tocItem \markup "Sinfonia No. 6 in E major"
\sinfoniaSixMusic
\pageBreak

\tocItem \markup "Sinfonia No. 7 in E minor"
\sinfoniaSevenMusic
\pageBreak

\tocItem \markup "Sinfonia No. 8 in F major"
\sinfoniaEightMusic
\pageBreak

\tocItem \markup "Sinfonia No. 9 in F minor"
\sinfoniaNineMusic
\pageBreak

\tocItem \markup "Sinfonia No. 10 in G major"
\sinfoniaTenMusic
\pageBreak

\tocItem \markup "Sinfonia No. 11 in G minor"
\sinfoniaElevenMusic
\pageBreak

\tocItem \markup "Sinfonia No. 12 in A major"
\sinfoniaTwelveMusic
\pageBreak

\tocItem \markup "Sinfonia No. 13 in A minor"
\sinfoniaThirteenMusic
\pageBreak

\tocItem \markup \concat { 
  "Sinfonia No. 14 in B" \tiny \raise #0.75 \flat " major" 
}
\sinfoniaFourteenMusic
\pageBreak

\tocItem \markup "Sinfonia No. 15 in B minor"
\sinfoniaFifteenMusic

% MIDI

\sinfoniaOneMidi
\sinfoniaTwoMidi
\sinfoniaThreeMidi
\sinfoniaFourMidi
\sinfoniaFiveMidi
\sinfoniaSixMidi
\sinfoniaSevenMidi
\sinfoniaEightMidi
\sinfoniaNineMidi
\sinfoniaTenMidi
\sinfoniaElevenMidi
\sinfoniaTwelveMidi
\sinfoniaThirteenMidi
\sinfoniaFourteenMidi
\sinfoniaFifteenMidi
