%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

global = {
  \time 4/4
  \key d \major
  \accidentalStyle piano
  \mergeDifferentlyDottedOn
}

rightHand = \relative fs'' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Allegretto grazioso"
  \voiceOne
  r8 fs16 g a8 c,  b e16 fs g8 b, |
  a8 d16 e fs8 a,  g16 fs' e d  cs b' a g |
  fs16 e d e  fs e fs gs a4 e~ |
  e4 d2 cs4~ |
  cs16 e d cs  b8 gs' a2~ |
  a16 cs, d e  fs g fs e  ds b cs ds  e fs e d |
  cs16 a b cs  d e d cs  b4 e~ |
  e8 a, d8. e16  cs b a b  cs b cs ds |
  
  \barNumberCheck 9
  e8 b e8. fs16  d cs b cs  d cs d e |
  \oneVoice fs16 e d e fs8 a,  gs cs16 d e8 g, |
  fs8 b16 cs d8 fs,  e16 d' cs b  as g' fs e |
  d16 cs b cs  d b cs d  es, gs a b  \voiceOne cs4~ |
  cs16 fs, gs a  b4~ b16 es, fs gs  a4~ |
  a16 a gs fs  es4 fs8 fs'16 g a8 c, |
  b4 fs'~ fs16 g fs e  ds c' b a |
  g16 a g fs  e fs g e  cs8 e16 fs g8 b, |
  
  \barNumberCheck 17
  a2~ a16 g fs g  a g a b |
  c16 b c d  e d c b  a g a b  c b c d |
  b16 a g a  b c d8~ d4 c~ |
  c4 b~  b8 g' a, fs' |
  g16 d e fs  g b a g  fs e d e  fs g fs e |
  ds16 b cs ds  e fs e d  cs a b cs  d e d cs |
  b16 a g fs e8 cs'  d fs16 g a8 c, |
  b8 e16 fs g8 b,  a d16 e fs8 a, |
  g16 fs'e d  cs4 d2 \fermata |
  \bar "|."
}

middle = \relative cs'' {
  \global
  \voiceTwo
  R1 |
  R1 | 
  r2 r8 cs16 d e8 g, |
  fs8 b16 cs d8 fs,  e a16 b cs8 e, |
  d16 cs' b a  gs fs' e d  cs b a b  cs a b cs |
  d4 a2 g4~ |
  g4 fs~ fs16 a g fs  e d' cs b |
  a16 g fs g  a gs a b  e,2~ |
  
  \barNumberCheck 9
  e8 g16 a  b a b cs  fs,4 \staffDown b,~ |
  b16 as b cs  d e d cs  b gs as b  cs d cs b |
  as16 fs gs as  b4~  b16 b cs d  e8 as, |
  b8 a gs fs  gs4~ gs16 \staffUp gs' fs e |
  ds4~ ds16 fs e d  cs4~ cs16 e d cs |
  b4~ b16 d cs b  a8 r r4 |
  r8 fs'16 g a8 \staffDown c, b2~ |
  b8 e16 fs g8 b, a4 e'~ |
  
  \barNumberCheck 17
  e16 \staffUp fs e d  cs b' a g  fs8 r r4 |
  r8 a16 b c8 e,  fs16 g8.~ g8 fs |
  g4 r16 c b a  gs e fs gs  a b a g |
  fs16 d e fs  g a g fs  e8 r r4 |
  r2 r8 \staffDown fs16 g \staffUp a8 \staffDown c, |
  b8 e16 fs \staffUp g8 \staffDown b,  a d16 e \staffUp fs8 \staffDown a, |
  g16 \staffUp fs' e d  cs b' a g  fs8 a~ a4~ |
  a4 g2 fs4~ |
  fs16 a g fs  e b' a g  fs2 |
}

leftHand = \relative d' {
  \clef bass
  \global
  d4 r8 fs, g4 r8 e |
  fs4 r8 d  b' g a a, |
  d8 d' cs b  a16 gs a b  cs d cs b |
  as16 fs gs as  b cs b a  gs e fs gs  a b a g |
  fs8 d e e,  a16 b cs d  e fs g e |
  fs16 e fs g a8 c,  b e16 fs g8 b, |
  a8 d16 e fs8 a,  g16 fs' e d  cs b' a g |
  fs16 e d e  fs e fs gs  a8 e a8. b16 |
  
  \barNumberCheck 9
  g16 fs e fs  g fs g a b8 a \voiceFour g4 |
  fs2. e4~ |
  e4  r16 d e fs  g4 fs |
  b,2~ b4 a4~ |
  \oneVoice a4~ a16 a' gs fs  es cs ds es  fs8 b,16 cs |
  d8 b cs cs, fs r r fs'16 g |
  \voiceFour a16 g a b  c fs, g a  ds,8 fs16 g a8 ds, |
  e4 r8 e16 fs  g fs g a  b e, fs g |
  
  \barNumberCheck 17
  cs,8 e16 fs g8 cs,  \oneVoice d a16 b c8 e, |
  d1 |
  g8 b'16 c d8 f,  e a16 b c8 e, |
  d8 g16 a b8 d,  c16 b' a g  fs e' d c |
  b16 a g a  b a b cs \voiceFour d4 a~ |
  a4 g2 fs4~ |
  fs16 e fs g  a g fs e  d cs d e  fs g fs e |
  \oneVoice ds16 b cs ds  e fs e d  cs a b cs  d e d cs |
  b8 g' a a, d,2 \fermata |
}

sinfoniaThreeMusic = 
\score { 
  \header {
    opus = "BWV 789"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 3"
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

sinfoniaThreeMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no3-D-maj"
  }
  \keepWithTag midi
  <<
    \new Staff = "upper" { \upperMidiInstrument \rightHand }
    \new Staff = "middle" { \middleMidiInstrument \middle }
    \new Staff = "lower" { \lowerMidiInstrument \leftHand }
  >>
  \midi {
    \tempo 4 = 92
  }
}
