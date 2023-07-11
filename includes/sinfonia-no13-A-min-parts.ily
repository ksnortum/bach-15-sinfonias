%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

moveRestA = \once \override Staff.MultiMeasureRest.Y-offset = -2
moveRestB = \once \override Staff.MultiMeasureRest.Y-offset = -3
moveRestC = \once \override Staff.MultiMeasureRest.Y-offset = -3
moveRestD = \once \override Staff.MultiMeasureRest.Y-offset = -5

moveBeamsA = \once \override Beam.positions = #'(-5 . -3.5)
moveBeamsB = \once \override Beam.positions = #'(-5 . -3.5)

global = {
  \time 3/8
  \key a \minor
  \accidentalStyle piano
}

rightHand = \relative a' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Allegretto"
  \voiceOne
  a4 b8 |
  c4 d8 |
  c8 b4 |
  a16 b c d e fs |
  \oneVoice g16 fs g a b c|
  b16 a g fs e ds |
  \voiceOne e16[ fs] ds8.\prall e16 |
  e4 g8~ |
  
  \barNumberCheck 9
  \oneVoice g16 bf a g f e |
  f4.~ |
  f16 f e d c b |
  \voiceOne c16 d c b a gs |
  a4.~ |
  a8. b16 c d |
  \oneVoice e16 f e d c b |
  \voiceOne c4. |
  
  \barNumberCheck 17
  b4. |
  a16 g a b c d |
  e16 f g a b c |
  f,16 a g f e d |
  e8 c d |
  e4 f8 |
  e8 d4 |
  c16 g a b c d |
  
  \barNumberCheck 25
  e4 f8 |
  g4 a8 |
  g8 f4 |
  e4.~ |
  e8 d e |
  f4 g8 |
  f8 e4 |
  d16 a b cs d e |
  
  \barNumberCheck 33
  f4 g8 |
  a4 bf8 |
  a8 g4 |
  f16 a32 g f16 a e a |
  f4.~ |
  f16 g32 f e16 g d g |
  e4.~ |
  e16 d32 c b16 d a d |
  
  \barNumberCheck 41
  b16 b d g8 fs16 |
  g16 d b g8 fs16 |
  g16 d e d e fs |
  g16 d' c b c d |
  b8 c d |
  g,8 a b |
  c4 b8~ |
  b16 a8 a gs16 |
  
  \barNumberCheck 49
  \oneVoice a16 c e a8 gs16 |
  a16 e c a8 gs16 |
  a c e a gs a |
  e8 a, b |
  \voiceOne c4 d8 |
  e4 f8 |
  e8 d4 |
  c8 e4~ |
  
  \barNumberCheck 57
  e8 d4~ |
  d16 e32 d c16 e b e |
  a,16 d32 c b16 d a d |
  gs,8 a b |
  c4 d8 |
  c8 b4~ |
  b8 \tempo 4. = 50 a' \tempo 4. = 40 gs |
  a4.\fermata |
  \bar "|."
}

middle = \relative e' {
  \global
  \voiceTwo
  R4. * 4 |
  \staffDown e4 fs8 |
  g4 a8 |
  \staffUp g8 fs4 |
  e16 fs g \staffDown \clef treble a b cs |
  
  \barNumberCheck 9
  d4.~ |
  d16 e d c b a |
  gs4. |
  a16 f e d c b |
  \staffUp c16 b c d e f |
  e16 d c \staffDown b a gs |
  a16 b gs4 |
  a8 \staffUp e' a~ |
  
  \barNumberCheck 17
  a8 d, g~ |
  g8 \parenthesize f16 g a b |
  c8 \staffDown e,16 f g a |
  b8 a b |
  \staffUp c8 e, f |
  g4 a8 |
  g8 f4 |
  e8 r r |
  
  \barNumberCheck 25
  r8 c' d |
  e4 f8 |
  e8 d4~ |
  d16 d c bf a g |
  f8 a4~ |
  a8 a cs |
  d4 cs8 |
  d8 r r |
  
  \barNumberCheck 33
  r8 d e |
  f4 g8 |
  f8 e4~ |
  e8 d cs |
  d16 d32 c b16 d a d |
  g,8 c b |
  c16 c32 b a16 c g c |
  fs,8 g fs |
  
  \barNumberCheck 41
  g4 r8 |
  \staffDown r8 g, a |
  b4 \staffUp c8 |
  b8\noBeam \staffDown a a~ |
  a16 g a g a b |
  \staffUp c g' f e f g |
  e8 d4 |
  c8 b b |
  
  \barNumberCheck 49
  \staffDown e,8 a b |
  c4 d8 |
  c8 b4~ |
  b16 e, fs gs a gs |
  a16 \staffUp c e a8 gs16 |
  a16 e \staffDown c a8 gs16 |
  a16 c \staffUp e a gs a |
  \staffDown a,16 \staffUp c'32 b a16 c g c |
  
  \barNumberCheck 57
  fs,16 b32 a gs16 b fs b |
  e,4.~ |
  e8 d4~ |
  d16 e32 d c16 e b e |
  \staffDown a,8 \staffUp a' gs |
  a8 d,4~ |
  \moveBeamsB d16 e'32 d c16 e b e |
  cs4. |
}

leftHand = \relative a, {
  \clef bass
  \global
  a8 a' gs |
  a8 e f |
  d8 e e, |
  a8\noBeam a'16 b c a |
  e'8 e, ds' |
  e8 b c |
  a8 b b, |
  e4 r8 |
  
  \barNumberCheck 9
  \moveRestA R4. |
  \moveRestB R4. |
  \moveRestC R4. |
  \moveRestD R4. |
  \clef bass a,4 b8 |
  \voiceFour c4 d8
  c8 b4 |
  a16 b c d e fs |
  
  \barNumberCheck 17
  g16 a b c d e |
  f8 \clef treble \oneVoice f4 |
  e8 \voiceFour e4 |
  d4. |
  \clef bass c,16 e g c8 b16 |
  c16 g e c8 b16 |
  c e g c b c |
  c,8 c' b |
  
  \barNumberCheck 25
  \clef treble \oneVoice a16 a' g f e d |
  c16 e g c8 b16 |
  c16 c, c' b a b |
  c8 c, cs |
  d16 g f e d cs |
  \clef bass d16 e d c bf a |
  g16 f g bf a g |
  f16 g f e d cs |
  
  \barNumberCheck 33
  d f a d8 cs16 |
  d a f d8 cs16 |
  d16 f a d cs d |
  d,8 f a |
  d,16 f32 e d16 f c f |
  b,8 c g' |
  c16 e32 d c16 e b e |
  a,8 b d |
  
  \barNumberCheck 41
  g,8 g, a |
  \voiceFour b4 c8 |
  b8 a4 |
  g8 g' fs |
  g4 f8 |
  e4 d8 |
  c16 e fs e fs gs |
  a16 e d c d e |
  
  \barNumberCheck 49
  c4 e8 |
  a8 g f |
  e4 d8 |
  c4 b8 |
  a4 b8 |
  c4 d8 |
  c8 b4 |
  a8 c a |
  
  \barNumberCheck 57
  \oneVoice d8 b a |
  gs8 a g |
  fs8 f f' |
  \voiceFour e4.~ |
  e16 e32 d c16 e b e |
  \oneVoice \moveBeamsA a,16 b'32 a gs16 b e, gs |
  c,8 d e |
  a,4.\fermata |
}

sinfoniaThirteenMusic = 
\score { 
  \header {
    opus = "BWV 799"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 13"
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

\include "articulate.ly"

sinfoniaThirteenMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no13-A-min"
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
    \tempo 4. = 60
  }
}
