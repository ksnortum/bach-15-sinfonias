%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

moveRestA = \once \override Staff.MultiMeasureRest.Y-offset = 3

global = {
  \time 4/4
  \key f \minor
  \accidentalStyle piano
}

rightHand = \relative c'' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Andante espressivo"
  \voiceOne
  R1 |
  \moveRestA R1 |
  r8 c ef d r d f e |
  r8 f b c~ c bf16 af g8 f
  ef8 g af g f4~ f16 gf e f |
  e4 r16 c' f, ef  df4~ df16 g c, bf |
  af4 f' e ef |
  d4 df c8 f4 e8 |
  
  \barNumberCheck 9
  f8 ef4 df16 c df4 d |
  ef8\noBeam ef cf' bf r bf, ff' ef~ |
  ef16 bf c af  f8\noBeam d'16 ef32 f  f16 d ef8  r ef16 c |
  a16 g af8 r bf16 c32 df  c8. bf16  g4\prall |
  af8 ef gf f r f af g |
  r8 af d ef~  ef d16 c  bf8 af |
  g8 bf df c r c ef d |
  r8 d f e~ e c f4 | 
  
  \barNumberCheck 17
  e4 g f af |
  g4 c, b bf |
  a4 af g8 c4 b8 |
  c8 bf4 af16 g af4 a |
  bf8 bf gf' f r f, cf' bf~ |
  bf8 af4 gf16 f gf4 g |
  af8 af ff' ef r ef, bff' af~ |
  af8 af df4 c cf |
  
  \barNumberCheck 25
  bf4 bff af8 df4 c8 |
  df8 af cf bf r bf df c |
  r8 df g! af~ af g16 f ef8 df |
  c4 ef d f |
  ef4 gf f8 bf, df c |
  r8 c ef d r d f e~ |
  e8 f, af g r g bf a |
  r8 bf e f~ f ef16 df c8 bf |
  
  \barNumberCheck 33
  af4  r8 bf16 c32 df  df16 b c8  r c'16 a |
  gf16 e f8  r g,16 af32 bf  \tempo 4 = 59 af8. g16 \tempo 4 = 49 e8. f16 |
  f1 \fermataOverBarline |
  \bar "|."
}

middle = \relative f' {
  \global
  \voiceTwo
  r8 f af g r g bf a |
  r8 bf e f~ f8 ef16 d  c8 bf |
  af4 c b bf |
  a4 \staffDown af g8 \staffUp c4 b8 |
  c4 r8 c df c \staffDown bf4~ |
  bf16 c a bf a4  bf16 gf e f e4 |
  \staffUp f4 r8 bf16 c32 df  df16 b c8 r c16 a |
  gf16 e f8  r g16 af32 bf  af8. bf16 af8 g |
  
  \barNumberCheck 9
  f8 \staffDown c \staffUp gf' f r f cf' bf~ |
  bf8 \staffDown af4 gf16 f gf4 \staffUp g |
  af8\noBeam \staffDown \clef bass af,8 c bf r bf df c |
  r8 df \staffUp g af~ af g16 f ef8 df |
  c4 ef d df |
  c \staffDown cf bf8 \staffUp ef4 d8 |
  ef4 bf' a c |
  bf4 df c8 f, af g |
  
  \barNumberCheck 17
  r8 g bf a r a c b |
  r8 \staffDown c, \staffUp ef d r d f e |
  r8 f b c~ c bf16 af g8 f |
  ef4 e f8 ef4 d16 c |
  d8 g a4 bf8 af4 g16 f |
  g8 f16 ef d4 ef8 df4 c16 bf |
  c8 f g4 af8 gf4 f16 ef |
  f4  r8 g16 af32 bf  bf16 g af8 r af16 f |
  
  \barNumberCheck 25
  d16 c df8 r ef16 f32 gf f8. gf16 f8 ef |
  df4 af' g gf |
  f \staffDown ff ef8 \staffUp af4 g8 |
  af8 ef gf f r f af g |
  r8 g bf a~ a f bf4 |
  a4 c bf df |
  c4 f, e ef |
  d \staffDown df c8 \staffUp f4 e8 |
  
  \barNumberCheck 33
  f8 \staffDown f, af g r g bf a |
  r8 bf \staffUp e f~ f8 ef16 df c8 bf |
  af1 |
}

leftHand = \relative f, {
  \clef bass
  \global
  f4 f' e ef |
  d df c8 bf c c, |
  f4 r8 f'16 g32 a  a16 fs g8  r \clef treble g'16 e |
  df16 b c8  \voiceFour r d16 ef32 f  ef8 f g g, |
  \stemUp c4 r r2 |
  R1 |
  \clef bass \oneVoice r8 f, af g r g bf a |
  r8 bf e f~ f ef16 df c8 bf |
  
  \barNumberCheck 9
  af4 a bf8 af4 g16 f |
  \voiceFour g8 \clef treble c d4 ef8 df4 c16 bf |
  c4 \clef bass af4 g gf | 
  f4 ff ef8[ df] \oneVoice ef ef, |
  af4  r8 a'16 bf32 c  c16 a bf8  r bf16 g |
  e16 d ef8  r8 f16 g32 af  g8 af bf bf, |
  ef4 r8 ef gf f r f |
  af8 g r g bf af r bf |
  
  \barNumberCheck 17
  df,8 c  r c' ef, d r d' |
  f,8 ef r f,16 g32 af af16 fs g8 r g'16 e |
  df16 b c8  r8 d16 ef32 f  ef8 f g g, |
  c8\noBeam c, df' c r c gf' f~ |
  f8 ef4 df16 c df4 d |
  ef8\noBeam bf cf' bf r bf, ff' ef~ |
  ef8 df4 cf16 bf cf4 c |
  df8\noBeam df f ef r ef gf f |
  
  \barNumberCheck 25
  r8 gf c df~ df c16 bf af8 gf |
  f4 r8 d16 ef32 f f16 d ef8 r ef16 c |
  a16 g af8 r bf'16 c32 df c8 df ef ef, |
  af4 r8 af cf bf r bf |
  df8 c r c ef df r ef |
  gf,8 f r f' af, g r g' |
  bf,8 af  r bf16 c32 df  df16 b c8  r c16 a |
  gf16 e f8  r g16 af32 bf  af8 bf c c, |
  
  \barNumberCheck 33
  \voiceFour f,4 f' e ef | d df \oneVoice c8 bf c c, |
  f1 \fermataUnderBarline |
}

sinfoniaNineMusic = 
\score { 
  \header {
    opus = "BWV 795"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 9"
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

sinfoniaNineMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no9-F-min"
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
    \tempo 4 = 69
  }
}
