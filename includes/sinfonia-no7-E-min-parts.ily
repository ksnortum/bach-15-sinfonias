%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

moveRestA = \once \override Staff.MultiMeasureRest.Y-offset = -6

global = {
  \time 3/4
  \key e \minor
  \accidentalStyle piano
}

rightHand = \relative b' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Lento moderato"
  \voiceOne
  r8 b e fs g4~ |
  g8 fs a g fs e |
  ds16 cs b cs  d8 e fs4~ |
  fs8 e g fs e d |
  cs8 cs fs g a4~ |
  a8 fs a g fs e |
  ds8 fs g a b g |
  e4~ e8 e fs g |
  
  \barNumberCheck 9
  a4 g2~ |
  g8 e g fs e d |
  cs4. d8 e fs |
  g4 fs8 e d4~ |
  d8 cs e d cs\prall b |
  b4 r r |
  R2. |
  r8 fs b cs d4~ |
  
  \barNumberCheck 17
  d8 cs e d cs b |
  as16 fs' e d  cs fs cs b  as cs as gs |
  fs4 r fs'~ |
  fs16 b g fs  e g e d  cs g' cs, b |
  a4 r e'~ |
  e16 a fs e  d fs d cs  b fs' b, a |
  g2.~ |
  g2. |
  
  \barNumberCheck 25
  fs8 a d e fs4~ |
  fs8 e g fs e d |
  cs16 e a g  fs a fs e  d a' d, cs |
  b16 d g fs  e g e d  cs g' cs, b |
  a2~ a16 a g fs |
  g e as b  cs fs, cs' d  e fs g e |
  \oneVoice fs16 g fs e  d fs d cs  b f' b, a |
  gs16 fs gs a  b gs b c  d gs, d' e |
  
  \barNumberCheck 33
  f16 b e, d  c e c b  a e' a, g |
  fs16 e fs g  a fs a b  c fs, c' d |
  ef16 a ef d  c ef c bf  a c a g |
  fs16 e! ds e  fs ds fs g  a ds, a' b |
  \voiceOne c8 b e fs g4~ |
  g8 fs a g fs e |
  ds4 d2~ |
  d8 gs, a b c4~ |
  
  \barNumberCheck 41
  c8 e a b c4~ |
  c16 b a g  fs a ds, e  fs4~ |
  fs16 b ds, e \tempo 4 = 78 e4 \tempo 4 = 68 ds |
  e2. \fermataOverBarline |
  \bar "|."
}

middle = \relative fs' {
  \global
  \voiceTwo
  R2. |
  R2. |
  r8 \staffDown fs \staffUp b cs d4~ |
  d8 cs e d cs b |
  as16 gs fs gs  a8 b c4~ |
  c8 a c b a g |
  fs4 r8 b e d |
  cs4~ cs8 cs ds e |
  
  \barNumberCheck 9
  fs4. b,8 e d |
  cs4. d8 cs b |
  as4. b8 cs d |
  e8 d cs4. fs,8 |
  b2 as4 |
  b8 b, e fs g4~ |
  g8 fs a g fs e |
  ds4 r8 fs b16 a g fs |
  
  \barNumberCheck 17
  e4. fs8 g e |
  cs8 \staffDown fs, cs' d e4~ |
  e16 \staffUp g fs e  d fs d cs  \staffDown b \staffUp fs' \staffDown b, a |
  g4 \staffUp r4 g'4~ |
  g16 g e d  cs e cs b  \staffDown a \staffUp e' \staffDown a, g |
  fs4 \staffUp r fs'~ |
  fs8 e16 d  cs e cs b  a8 b |
  cs8 a16 b  cs8 e a, cs |
  
  \barNumberCheck 25
  d8 \staffDown d,16 e  fs d fs g  a d, a' b |
  cs16 a cs d  \clef treble e a, e' fs  g a b g |
  \staffUp a2. |
  g2.~ |
  g16 g fs e  d fs d cs b4~ |
  b8 r r4 r |
  \staffDown r8 fs b cs d4~ |
  d8 b d c b a |
  
  \barNumberCheck 33
  gs8 e a b c4~ |
  c8 a c b a g |
  fs4. g8 a4~ |
  a8 g c b a g |
  fs4 r \staffUp r8 b' |
  e8 d c b a g |
  fs8 c' b a gs b |
  e,4 fs8 gs a e |
  
  \barNumberCheck 41
  a8 b c e a g |
  fs4 r  r16 c b a |
  g4 fs8 g a4 |
  gs2. |
}

leftHand = \relative e {
  \clef bass
  \global
  e8 e, r8 b'' e d |
  c4. b8 a c |
  \voiceFour b4. a8 g fs |
  \oneVoice e4. fs8 g e |
  fs4~ fs16 g a g  fs e ds e |
  ds4 r8 e c a |
  b8 b' e fs g4~ |
  g8 fs a g fs e |
  
  \barNumberCheck 9
  ds8 b e d cs b |
  as4. b8 cs d |
  e16 d e fs g8 fs e d |
  cs8 b as fs b a |
  g8 e fs4 fs, |
  b16 fs' b a  g b g fs  e b' e, d |
  c16 g' e d  c e c b  a b c a |
  b16 g' fs e  d fs d cs  b fs' b, a |
  
  \barNumberCheck 17
  g16 d' b a  g b g fs  e fs g e |
  \voiceFour fs8 fs' as b cs fs, |
  b4 r8 b, cs d |
  e4 r8 fs e d |
  cs4 r8 a b cs |
  d4 r8 e d cs |
  b16 b' g fs  e g e d  cs g' cs, b |
  a16 e' cs b  a cs a g  fs cs' fs, e |
  
  \barNumberCheck 25
  d8 r r4 r |
  \moveRestA R2. |
  \oneVoice r8 \clef bass a' d e fs4~ |
  fs8 e g fs e d |
  cs8 fs, b cs d4~ |
  d8 cs e d cs b |
  \voiceFour as4 b r8 d |
  e8 d f e d c |
  
  \barNumberCheck 33
  b8 gs a4 r8 c |
  d8 c e d c a |
  d8 a d e fs4~ |
  fs8 e a g fs e |
  ds4 r8 b e d |
  \oneVoice c2.~ |
  c16 c' b a  gs b gs fs  e b' e, d |
  c16 f e d  c e c b  a e' a, g |
  
  \barNumberCheck 41
  fs!16 d' c b  a c a g  fs c' fs, e |
  ds4 r r |
  e4 b'2 |
  e,2. \fermataUnderBarline |
}

forceBreaks = {
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
}

sinfoniaSevenMusic = 
\score { 
  \header {
    opus = "BWV 793"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 7"
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

sinfoniaSevenMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no7-E-min"
  }
  \keepWithTag midi
  \articulate <<
    <<
      \new Staff = "upper" { \upperMidiInstrument \rightHand }
      \new Staff = "middle" { \middleMidiInstrument \middle }
      \new Staff = "lower" { \lowerMidiInstrument \leftHand }
    >>
  >>
  \midi {
    \tempo 4 = 88
  }
}
