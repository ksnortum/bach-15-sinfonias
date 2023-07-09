%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

moveRestA = \once \override MultiMeasureRest.Y-offset = -4
moveRestB = \once \override MultiMeasureRest.Y-offset = -4
moveRestC = \once \override MultiMeasureRest.Y-offset = -4
moveRestD = \once \override MultiMeasureRest.Y-offset = -4
moveRestE = \once \override MultiMeasureRest.Y-offset = -6
moveRestF = \once \override MultiMeasureRest.Y-offset = -5
moveRestG = \once \override MultiMeasureRest.Y-offset = -4

global = {
  \time 9/16
  \key b \minor
  \accidentalStyle piano
  \mergeDifferentlyDottedOn
}

rightHand = \relative b' {
  \global
  \set Score.tempoHideNote = ##t
  \voiceOne
  b16 fs fs  g fs fs  b fs fs |
  cs'16 fs, fs  g fs fs  cs' fs, fs |
  d'32 b d fs b fs  d fs d b fs b  fs b fs d fs d |
  \parenthesize b16 r r  r b' cs  d cs b |
  as8.~ as16 b cs  b cs as |
  b32 fs b d fs d  b d b fs b fs  d fs d b d b |
  d'4.~ d8.~ |
  d16 b b  cs b b  e b b |
  
  \barNumberCheck 9
  cs4.~ cs8.~ |
  cs16 a a  b a a  cs a a |
  b32 d b g b g  e8.  e'32 g e cs e cs |
  a32 cs a fs a fs  d8.  d'32 fs d b d b |
  g32 b g e g e  cs e cs a cs a  a'16 fs g |
  fs8. r r |
  R1*9/16 |
  R1*9/16 |
  
  \barNumberCheck 17
  a16 e e  fs e e  a e e |
  b' e, e  fs e e  b' e, e |
  cs'32 a cs e a e  ds fs ds b ds b  fs b fs ds fs ds |
  e8. r g~ |
  g16 e e  fs e e  a e e |
  fs4.~ fs8.~ |
  fs16 d d  e d d  g d d |
  e4.~ e8.~ |
  
  \barNumberCheck 25
  e16 cs cs  d cs cs  fs cs cs |
  d32 b d fs d fs  b fs b d b d  g8. |
  cs,,32 a cs e cs e  a e a cs a cs  fs8. |
  b,,32 g b d b d  g d g b g b  e8.~ |
  e16 fs, fs  g fs fs  e' fs, fs |
  d'4.~ d8.~ |
  d16 b b  c b b  g' b, b |
  as8. \tempo 8. = 60 fs'4.~\fermata |
  
  \barNumberCheck 33
  \tempo 8. = 112 fs32 b, d fs b fs  d fs d b d b  fs b fs d fs d |
  d'4.~ d8.~ |
  d16 cs cs  gs' cs, cs  d cs cs |
  e16 cs cs  as' cs, d  e d cs |
  fs16 g e  \tempo 8. = 102 d8. \tempo 8. = 92 cs8\prall b16 |
  b2.*3/4\fermata |
  \bar "|."
}

middle = \relative b' {
  \global
  \voiceTwo
  \moveRestA R1*9/16 |
  \moveRestB R1*9/16 |
  R1*9/16 |
  R1*9/16 |
  R1*9/16 |
  \moveRestC R1*9/16 |
  b16 fs fs  g fs fs  b fs fs |
  gs4.~ gs8. |
  
  \barNumberCheck 9
  a16 e e  fs e e  a e e |
  fs4.~ fs8. |
  g16 r r r8. r |
  \moveRestD R1*9/16 |
  \moveRestE R1*9/16 |
  d16 a a  b a a  d a a |
  e'16 a, a  b a a  e' a, a |
  fs'32 d fs a d b  gs b gs e gs e  b e b gs b gs |
  
  \barNumberCheck 17
  \staffDown e8.  r16 a b  cs b a |
  gs8.~ gs16 a b  a b gs |
  a8.~ a16 b c  b c a |
  \staffUp e'16 b b  c b b  e b b |
  cs4.~ cs8.~ |
  cs16 a a  b a a  d a a |
  b4.~ b8.~ |
  b16 gs gs  a gs gs  cs gs gs |
  
  \barNumberCheck 25
  as4.~ as8. |
  b16 r r  r8. r |
  R1*9/16 |
  \moveRestF R1*9/16 |
  \moveRestG R1*9/16 |
  fs'16 \staffDown b, b  \staffUp d \staffDown b b  \staffUp fs' 
    \staffDown b, b |
  \staffUp g'4.~ g8. |
  fs8. as4.\fermata |
  
  \barNumberCheck 33
  R1*9/16 |
  b4.~ b8.~ |
  b4.~ b8. |
  as8.  r16 as b cs b as |
  b4. as8. |
  b2.*3/4 |
}

leftHand = \relative b, {
  \clef bass
  \global
  b8. r16 b' cs  d cs b |
  as8.~ as16 b cs  b cs as |
  b8. r r |
  b16 fs fs  g fs fs  b fs fs |
  cs'16 fs, fs  g fs fs  cs' fs, fs |
  \clef treble d'32 b d fs b fs  d fs d b d b  \clef bass fs b fs d fs d |
  b8. r16 b' cs  d cs b |
  e8. r16 e, fs  gs fs e |
  
  \barNumberCheck 9
  a8. r16 a, b  cs b a |
  d8. r16 d, e  fs e d |
  g8.  g'32 b g e g e  cs e cs a cs a |
  fs8.  fs'32 a fs d fs d  b d b g b g |
  e8.  e'32 g e cs e cs  a cs a fs a fs |
  d8.  r16 d e  fs e d |
  cs8.  r16 a' b  cs b a |
  d8.~ d16 e fs  e fs d |
  
  \barNumberCheck 17
  \voiceFour cs8. r r |
  e8. r r |
  a,8. fs'4. |
  \oneVoice g8.  r16 e fs  g fs e |
  a8.  r16 a, b  cs b a |
  d8.  r16 d e  fs e d |
  g8.  r16 g fs  e fs g |
  cs,8.  r16 cs b  as b cs |
  
  \barNumberCheck 25
  fs,8.  r16 fs' e  d e fs |
  b,8.  d32 b d fs d fs  b g b e b e |
  a8.  cs,,32 a cs e cs e  a fs a d a d |
  \clef treble g32 b g \parenthesize d g \parenthesize d  
    \clef bass b \parenthesize d b g b g  e g e cs e cs |
  as8.~ as16 b cs  fs, b as |
  \voiceFour b8. r b |
  e4.~ e8.~
  e8.~ e4.\fermata |
  
  \barNumberCheck 33
  \oneVoice d8 r16 r8. r |
  b'32 g b d g d  b d b g b g  d g d b d b |
  es,8. r r |
  fs8.  r16 e' fs g fs e |
  d8 e16 fs8 e16 fs8 fs,16 |
  b2.*3/4\fermata |
}

forceBreaks = {
  
}

sinfoniaFifteenMusic = 
\score { 
  \header {
    opus = "BWV 801"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 15"
  }
  \keepWithTag layout
  <<
    \new Staff = "upper" << 
      \new Voice \rightHand 
      \new Voice \middle 
    >>
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

sinfoniaFifteenMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no15-B-min"
  }
  \keepWithTag midi
  \articulate <<
    <<
      \new Staff = "upper" << \rightHand \middle >>
      \new Staff = "lower" \leftHand
    >>
  >>
  \midi {
    \tempo 8. = 112
  }
}
