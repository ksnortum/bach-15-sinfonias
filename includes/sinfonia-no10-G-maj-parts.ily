%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

moveRestA = \once \override Staff.MultiMeasureRest.Y-offset = -4
moveRestB = \once \override Staff.MultiMeasureRest.Y-offset = -4

tieShapeA = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 0)) \etc
tieShapeB = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 0)) \etc
tieShapeC = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 0)) \etc
tieShapeD = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 0)) \etc
tieShapeE = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 0)) \etc
tieShapeF = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 0)) \etc
tieShapeG = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 0)) \etc

global = {
  \time 3/4
  \key g \major
  \accidentalStyle piano
}

rightHand = \relative g' {
  \global
  \set Score.tempoHideNote = ##t
  r8 g~[ g16 fs g a]  \voiceOne b c d b |
  e16 d c b  a g fs e  d c' b a |
  b4~ b16 a b cs  d4~ |
  d2 cs4 |
  d4~ d16 cs d e  fs g a fs |
  b16 a g fs  e d c b  a g' fs e |
  d4~ d16 d e fs g4~ |
  g8 e c a fs'4~ |
  
  \barNumberCheck 9
  fs8 d b g e'4~ |
  e8 c a fs ds'4 |
  e4 r e~ |
  e4 d8 c d4~ |
  d16 d c b  a gs a b  c d e c |
  \oneVoice f16 e d c  b a gs fs  e d' c b |
  a16 gs a b  c d e fs  g a b g |
  c b a g  fs e ds cs  b a' g fs |
  
  \barNumberCheck 17
  b16 a g fs  e d cs b  a g' fs e |
  a16 g fs e  d cs b a  g fs' e d |
  g16 fs e d  cs b as gs  fs e' d cs |
  fs16 e d cs \voiceOne b2~ |
  b2 as4 |
  b4~ b8 e d c |
  b8 f' e d c b |
  c4~ c8 d c b |
  
  \barNumberCheck 25
  a8 e' d c b a |
  b4 r g'~ |
  g4~ g16 b a g  fs4 |
  f4~ f16 a g f  e4~ |
  e4~ e16 g fs e  d4~ |
  d4~ d16 f e d  c4~ |
  c16 c b a  g fs g a  b c d b |
  e16 d c b  \tempo 4 = 90 a g fs e  \tempo 4 = 80 d c' b a |
  b2. \fermataOverBarline |
  \bar "|."
}

middle = \relative d' {
  \global
  \voiceTwo
  R2. |
  \moveRestA R2. |
  r8 d8~[ d16 \staffDown cs d \staffUp e]  fs g a fs |
  b16 a g fs  e \staffDown d cs b  a \staffUp g' fs e |
  fs16 \staffDown a, b cs  \clef treble d e fs g  a b c a |
  d8 b g e c'4~ |
  c16 \staffUp c b a  b4~ b16 a b g |
  c2\tieShapeA ~ c16 e d c |
  
  \barNumberCheck 9
  b2\tieShapeB ~ b16 d c b |
  a2\tieShapeC ~ a16 c b a |
  g16 a g fs  e ds e fs  g a b g |
  c16 b a g  fs e \staffDown d c  b \staffUp a' gs fs |
  \staffDown e2. |
  d2. |
  c8 b a c b e~ |
  e8 c a fs ds'4~ |
  
  \barNumberCheck 17
  ds8 b g e cs'4~ |
  cs8 a fs d b'4~ |
  b8 g e cs as'4 |
  b4~ b16 as b cs  \staffUp d e fs d |
  g16 fs e d  \staffDown cs b as gs  fs \staffUp e' d cs |
  d16 fs gs as b8 c b a |
  gs2. |
  r16 e fs gs  a8 b a g |
  
  \barNumberCheck 25
  fs2. |
  r16 d e fs  g fs g a  b c d b |
  e16 d c b  \staffDown a g fs e  d \staffUp c' b a |
  d16 c b a  \staffDown g f e d  c \staffUp b' a g |
  c16 b a g  \staffDown fs e d c  b \staffUp a' g fs |
  b16 a g fs  \staffDown e d c b  a \staffUp g' fs e |
  d4 r g~ |
  g2 fs4 |
  g2. |
}

leftHand = \relative g, {
  \clef bass
  \global
  g4 b g |
  c4 d d, |
  g4 \voiceFour g' fs |
  g4 a a, |
  d4 r r |
  \moveRestB R2. |
  r8 \clef bass \oneVoice g8~[ g16 fs g a]  b c d b |
  e16 d c b  a g fs e  d c' b a |
  
  \barNumberCheck 9
  d16 c b a  g fs e d  c b' a g |
  c16 b a g  fs e ds cs  b a' g fs |
  e8. ds16  e16 fs g a  b8 e, |
  \voiceFour a8 fs b4. a8 |
  gs8 a16 b  c8 b a c~ |
  c8 b16 a  gs8 b gs e |
  fs8 gs a ds, e g |
  a2\tieShapeD ~ a16 c b a |
  
  \barNumberCheck 17
  g2\tieShapeE ~ g16 b a g |
  fs2\tieShapeF ~ fs16 a g fs |
  e2\tieShapeG ~ e16 g fs e |
  d4 g fs |
  e4 fs fs, |
  \oneVoice b4~ b16 a b c  d e f c |
  d16 e d c  b a gs fs  e d' c b |
  a4~ a16 gs a b  c d e b |
  
  \barNumberCheck 25
  c16 d c b  a g fs e  d c' b a |
  g8[ b] d fs g b |
  c8 a \clef treble \voiceFour d4~ d16 e d c |
  \oneVoice b8 g \voiceFour c4~ c16 e c b |
  \oneVoice a8 fs! \voiceFour b4~ \clef bass b16 c b a |
  g8 e a4~ a16 b a g |
  \oneVoice fs16 e d c  b a g fs  g a b g |
  c16 a b c  d8 c d d, |
  g2. \fermataUnderBarline |
}

sinfoniaTenMusic = 
\score { 
  \header {
    opus = "BWV 796"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 10"
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 11)
         (padding . 2))
  }  
  <<
    \new Staff = "upper" << 
      \new Voice \rightHand 
      \new Voice \middle 
    >>
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

sinfoniaTenMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no10-G-maj"
  }
  <<
    \new Staff = "upper" << \rightHand \middle >>
    \new Staff = "lower" \leftHand
  >>
  \midi {
    \tempo 4 = 100
  }
}
