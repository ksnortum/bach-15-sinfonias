%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

shapeTieA = \shape #'((0 . 0) (0 . -2) (0 . -2) (0 . 0)) \etc
shapeTieB = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc

global = {
  \time 4/4
  \key d \minor
  \accidentalStyle piano
}

rightHand = \relative d'' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Allegretto moderato"
  \voiceOne
  r16 d cs d  a8 f'~  f16 e d e  a,8 g'~ |
  g16 f e d a'4~  a16 gs fs gs  gs8. a16 | 
  a4~ a16 d, cs d  g4~ g16 cs, b cs |
  f4. a8 g4~ g16 f e f |
  d4  r16 bf'a bf  e,4~ e16 a g a |
  d,4~ d16 d e f  g4~ g16 f e d |
  c2~ c16 bf a bf  g d' c d |
  g,16 bf a bf~ bf c bf c  a4 r8 f'8~ |
   
  \barNumberCheck 9
  f16 e8. r8 g~ g16 f e f  c8 a'~ |
  a16 g f g  c,8 bf'~ bf16 a8.~ a4~ |
  a16 d, cs d  g4~ g16 f e g  f4~ |
  f16 e d e a,8 d~ d16 c b c  fs,8 b~ |
  b16 a gs a~ a16 gs fs gs  r16 a gs a e8 c'~ |
  c16 b a b e,8 d'~ d16 c b c ef4~ |
  ef16 d8. r8 fs g2~ |
  g16 fs bf a  fs4  g16 d c d  g,8 f'~ |
  
  \barNumberCheck 17
  f16 e d e  c8 bf'~ bf16 a g bf  a g f e |
  d4~ d16 f e d  cs4~ cs16 a d c |
  bf2~ bf16 a gs b  a g f g |
  f4~ f16 a g a  bf8 b c cs |
  d2~ d4. d8 |
  cs c b bf a4 gs8 g |
  fs8 f e4 d2 \fermataOverBarline |
  \bar "|."
}

middle = \relative a' {
  \global
  \voiceTwo
  R1 |
  \staffDown \clef treble r16 a gs a e8 \staffUp c'~ c16 b a b \staffDown
    e,8 \staffUp d'~ |
  d16 c b c  f4\shapeTieA ~ f16 b, a b  e4\shapeTieB ~ |
  e8 a,  d16 e d c  b8. cs16  cs4 |
  d16 d cs d \staffDown g,4~ g16 \staffUp c bf c \staffDown f,4~ |
  f16 \staffUp bf a c  bf4~ bf16 c bf a  bf a g f |
  e8 bf'~ bf16 a g a  f2~ |
  f4 e  r16 f e f c8 a'~ |
  
  \barNumberCheck 9
  a16 g f g  c,8 bf'~ bf16 a8. r8 f'~ |
  f16 e8. r8 g~ g16 f8.~ f16 e d c |
  bf4~ bf16 a bf g  cs4  d16 bf a bf |
  gs8 a fs f  e4 ds8 d |
  cs8 c b4 a r |
  r2 \staffDown r16 e' ds e a,8 \staffUp g'~ |
  g16 fs e fs d8 c'~ c16 bf a bf  c d c d |
  ef4~ ef16 d ef c  d r r8 r4 |
  
  \barNumberCheck 17
  r2 \staffDown r16 f, e f c8 \staffUp a'~ |
  a16 g f g \staffDown bf,8 \staffUp g'~ g16 f e f \staffDown a,8
    \staffUp f'~ |
  f16 e d f  ef d cs d  cs8 d e4~ |
  e8 a, d4~ d16 g f g  e bf' a g |
  a16 d, c'8~ c16 bf a bf  a g fs g d8 bf'~ |
  bf16 a g a  d,8 g~ g16 f e f  b,8 e~ |
  e16 d cs d~  d16 cs b cs  d2 |
}

leftHand = \relative c {
  \clef bass
  \global
  d8 e f d  a' b cs a |
  \voiceFour \clef treble d4~ d16 c b a  e'4 \clef bass e, |
  a,4 r r2 |
  \oneVoice r16 d cs d a8 f'~ f16 e d e a,8 g'~ |
  \voiceFour g16 f e d  bf'4~ bf16 e, d c  a'4~ |
  \oneVoice a16 d, c d  g,8 f'~ f16 e d e  c8 bf'~ |
  bf16 a g a  f8 ef'  d c bf a |
  bf8 g c c,  f, g a f |
  
  \barNumberCheck 9
  c'8 d e c  f g a f |
  c'8 d e c  f16 c bf c f,8 f'~ |
  f16 bf, a bf e,8 e'~ e16 a, g a  d,8 d'~ |
  d8 c~  c16 b a b  gs8 a~  a16 gs fs gs |
  a8 ds, e e,  a b c a |
  e' fs gs e  \voiceFour a4~  a16 g fs g
  \oneVoice d8 c bf a  g16 g' fs g  d8 bf'~ |
  bf16 a g a  d,8 c'~ c16 bf a bf c bf a g |
  
  \barNumberCheck 17
  c8 d e c  \voiceFour f,4 r8 f |
  bf8 a g bf  a g f d |
  g8 f g e  a b cs a |
  d16 d, cs d  a8 f'~  f16 e d e  a,8 g'~ |
  \oneVoice g16 fs e fs  d8 c' bf a  bf16 a g a |
  g fs e fs g f ef d  cs8 d~ d16 cs b cs |
  d8 gs, a4 d,2 \fermataUnderBarline |
}

sinfoniaFourMusic = \score { 
  \header {
    opus = "BWV 790"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 4"
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

sinfoniaFourMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no4-D-min"
  }
  \keepWithTag midi
  <<
    \new Staff = "upper" { \upperMidiInstrument \rightHand }
    \new Staff = "middle" { \middleMidiInstrument \middle }
    \new Staff = "lower" { \lowerMidiInstrument \leftHand }
  >>
  \midi {
    \tempo 4 = 84
  }
}
