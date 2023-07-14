%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

moveRestA = {
  \once \override Staff.MultiMeasureRest.X-offset = -1.5
  \once \override Staff.MultiMeasureRest.Y-offset = -5
}
moveRestB = \once \override Rest.extra-offset = #'(0 . -1)
moveRestC = \once \override Rest.extra-offset = #'(0 . 3)
moveRestD = \once \override Rest.extra-offset = #'(0 . -1)

beamPositionsA = \once \override Staff.Beam.positions = #'(6 . 5)
beamPositionsB = \once \override Staff.Beam.positions = #'(-5 . -5.5)

global = {
  \time 12/8
  \key c \minor
  \accidentalStyle piano
}

rightHand = \relative c'' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Allegro vivace"
  \voiceOne
  c8 g ef'  ef c g'  g4. g, |
  c8 d ef  f g af  b, af' g  f ef d |
  ef4. c~ c8 b c  d ef f |
  ef8 f ef  d ef c  g'2.~ |
  g4 g8  c,4 ef8  f,4 r8 \moveRestB r4 r8 |
  r4 f'8  bf,4 d8  ef,4 r8 r4 r8 |
  \tag layout { ef'2.~\startTrillSpan ef~ | }
  \tag midi   { \repeat unfold 12 { ef16 f } }
  ef4\stopTrillSpan f8 d4.~ d8 g16 f ef d  c d c bf a g |
  
  \barNumberCheck 9
  \oneVoice fs8 a'16 g fs e  d ef d c bf a  \voiceOne bf2. |
  a4. fs' g r4 r8 |
  r2. g,8 d bf'  bf g d' |
  d4. d, g8 a bf  c d ef |
  fs,8 ef' d  c bf a  bf4 r8 r4 r8 |
  r16 g a bf c d  ef f ef d c bf  a4 r8 r4 r8 |
  r16 f g a bf c  d ef d c bf a  g4 r8 r r g |
  f4 r8 r4 g8 ef4 r8 r4 f8 |
  
  \barNumberCheck 17
  d4 d'8 bf4.~ bf4 ef8 c4.~ |
  c4. bf~ bf8 a g  fs4. |
  g8 d bf'  bf g df'  df2.~ |
  df8 bf e  e c g'  af2.~ |
  af4.~ af16 bf af g f ef  d ef d c bf c  d ef f g af bf |
  c16 bf af g f ef  f g af c bf af  g2.~ |
  g4 g8  g ef c'  f,2.~ |
  f4 f8  f d b'  ef,2.~ |
  
  \barNumberCheck 25
  ef8 af16 g f ef  d ef d c b a  b4. c |
  f2.~ f4 ef8~ ef d f |
  b,4. c d4 c8~ c4 b8 |
  c4 g'8 c,4 ef8 af,4 r8 \moveRestD r4 r8 |
  r8 r f' bf,4 d8  g,16 bf c d ef f  g af g f ef d |
  \tag layout { c2.~\startTrillSpan c~ | c4. b8\stopTrillSpan c d  g,2.~ | }
  \tag midi { \repeat unfold 15 { c16 d } b8 c d  g,2.~ }
  g16 b c d ef f  g8 \tempo 4. = 90 c, \tempo 4. = 80 b \tempo 4. = 70 
    c2. \fermataOverBarline |
  \bar "|."
}

middle = \relative c' {
  \global
  \voiceTwo
  R1. |
  R1. |
  \staffDown c8 g ef'  ef c g'  g4. g, \clef treble|
  c8 d ef  f g af  b, af' g  f ef d \clef bass |
  ef4 \staffUp r8 r4 r8 \staffDown r16 c d ef \staffUp f g  af bf af g f ef |
  \staffDown d4 \staffUp r8 r4 r8 \staffDown r16 bf c d \staffUp ef f
    g af g f ef \staffDown d |
  c4 \staffUp r8 r4 c'8 bf4.~ bf4 c8 |
  af4.~ af4 bf8 g4 r8 r4 r8 |
  
  \barNumberCheck 9
  r2. r4 r8 g4. |
  fs8 e d  c' bf a  bf c bf  a bf g |
  d'8 c bf  a g fs  g4 r8 d4 r8 |
  a'4 r8 fs4 \moveRestC r8 g4 r8 r4 r8 |
  r2. g8 d bf'  bf g d' |
  ef,4 r8 r4 r8  f c a' a f c' |
  d,4 r8 r4 r8  ef bf g'  g ef bf' |
  d,8 bf f'  f d bf'  c, d ef  f g a |
  
  \barNumberCheck 17
  bf,4 r8 r4 g'8 ef4.~ ef4 a8 |
  fs8 d'16 c bf a  g a g f ef d  ef4.~ ef8 a, c |
  bf4 r8 r4 r8 r4 bf'8 g4 bf8 |
  e,4 r8 r4 r8  r16 f' ef df c \staffDown \clef treble bf  af bf af g f ef |
  d8 bf f'  f d af' af2.~ |
  af8 f d'  d bf \staffUp d  ef2.~ |
  ef8 c4~ c ef8 d2.~ |
  d8 b4~ b d8 c2.~ |
  
  \barNumberCheck 25
  c4 r8 r4 r8 r g16 f ef d  \staffDown \beamPositionsA c \staffUp d c 
    \staffDown bf af g |
  af4 \staffUp af'8~ af f b~ b g c  af4.~ |
  af8 g f  ef d c  f4 ef8 d4. |
  ef4 r8 r4 r8  r16 c d ef f g  af bf af g f ef |
  d8 \staffDown f, d'  d bf f'  \clef treble ef bf g'  g ef bf' |
  \staffUp af4. r4 af8 g4.~ g4 af8 |
  f2.~ \beamPositionsB f16 \staffDown g, a b \staffUp c d  ef d c d ef f |
  g4 r8 r ef d e2. |
}

leftHand = \relative c {
  \clef bass
  \global
  c4. c' b8 a g  f' ef d |
  ef4 c8  af4 f8  g4 a8  b4 g8 |
  \voiceFour c4 \oneVoice r8 r4 r8 r2. \voiceFour |
  \moveRestA R1. |
  c8 g ef'  ef c g'  af,4. \oneVoice r4 r8 \voiceFour |
  bf8 f d'  d bf f'  g,4. \oneVoice r4 r8 |
  af8 ef c' c af ef'  g, ef bf' bf g ef' |
  f,8 g af  bf c d  ef,4. ef' |
  
  \barNumberCheck 9
  d4. fs,  g8 d bf'  bf g d' |
  d4. d, g8 a bf  c d ef |
  fs,8 ef' d  c bf a  bf4. g~ |
  g8 fs g  a bf c  bf c bf  a bf g |
  d'8 c bf  a g fs  g4 d'8 g,4 bf8 |
  c,4 r8 r4 r8 r4 c'8 f,4 a8 |
  bf,4 r8 r4 r8 
    \tag layout { bf2.~\startTrillSpan | bf2.~ bf4. a~\stopTrillSpan | }
    \tag midi   { \repeat unfold 15 { bf16 c } a4.~ }
  
  \barNumberCheck 17
  a8 d16 c bf a  g a g f ef d  c8 ef'16 d c bf  a bf a g fs e |
  d4. r8 r16 g a bf  c bf c d ef c  d ef d c bf a |
  g4 r8 r4 r8 r bf'16 af g f  e f e d c bf |
  af16 f' e d c bf  af bf af g f e  f4 \voiceFour r8 r4 r8 |
  r2. r4  g''8 f4 ef8 |
  d4 af'8 g4 f8 \clef bass ef16 g, af bf c d  ef f ef d c bf |
  \oneVoice af2.~  af16 f g a b c  d ef d c b a |
  g2.~  g16 ef f g a b  c d c bf af g |
  
  \barNumberCheck 25
  f2.~ f4. \voiceFour ef~ |
  ef16 g f ef d c  \oneVoice b c b a g f  ef4. f |
  g4. a  b8 g c  af f g |
  c8 g ef'  ef c g'  f c af'  af f c' |
  bf4 r8 r4 r8 r2. |
  \clef bass f8 c af'  af f c'  ef, c g'  g ef c' |
  d,8 ef f  g a b  \voiceFour ef,2.~ |
  \oneVoice ef16 g f ef d c  g'4 g,8 c,2. \fermataUnderBarline |
}

sinfoniaTwoMusic = 
\score { 
  \header {
    opus = "BWV 788"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 2"
  } 
  \keepWithTag layout  
  <<
    \new Staff = "upper" << 
      \new Voice \rightHand 
      \new Voice \middle 
    >>
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

sinfoniaTwoMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no2-C-min"
  }
  \keepWithTag midi
  <<
    \new Staff = "upper" { \upperMidiInstrument \rightHand }
    \new Staff = "middle" { \middleMidiInstrument \middle }
    \new Staff = "lower" { \lowerMidiInstrument \leftHand }
  >>
  \midi {
    \tempo 4. = 100
  }
}
