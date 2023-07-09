%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

tieShapeA = \shape #'((0 . 0) (0 . -1) (0 . -1.5) (0 . 0)) \etc

global = {
  \time 3/4
  \key ef \major
  \accidentalStyle piano
}

rightHand = \relative bf' {
  \global
  % \set Score.tempoHideNote = ##t
  \voiceOne
  r4 r8 r16 bf[ ef8.\mordent f16 ]|
  \appoggiatura { ef8 } d4~ d8.[ c16 df8. ef16 ]|
  \appoggiatura { df8 } c4~ c8.[ c16 f8.\mordent g16] |
  \appoggiatura { f8 } ef4~ ef8.[ d16 ef8. f16] |
  \appoggiatura { ef8 } d4~ d8.[ d16 g8. g16] |
  c,4~ c8.[ c16 f8. f16] |
  bf,4 ef2~ |
  ef4 d2 |
  
  \barNumberCheck 9
  \appoggiatura { d8 } ef4~ ef8. r16 r4 |
  r4 r8 r16 af[ d,8. d16] |
  d4~ d8. ef16 f4~ |
  f8. ef16 ef4 d8.\prall c16 |
  c4 r r  |
  r4 r8 r16 c16[ f8.\mordent g16] |
  \appoggiatura { ef8 } d4~ d8.[ ef16 f8. g16] |
  ef8. d16 d4 c8.\prall bf16 |
  
  \barNumberCheck 17
  bf4 r8 r16 bf'16[ af8.\mordent bf16] |
  g4~ g8. af16 bf4~ |
  bf8.[ g16 e8. f16] g4~ |
  g8.[ f16 df8. c16 f8. g16] |
  \appoggiatura { f8 } e4~ e8.[ e16 af8. af16] |
  af4 g8.[ f16 bf8. bf16] |
  bf4 e,8.[ e16 f8. e16] |
  f8. g16 f4 e8.\prall f16 |
  
  \barNumberCheck 25
  f4 r r |
  r4 r8 r16 f16[ bf8. af16] |
  \appoggiatura { af8 } g4~ g8. af16 df,4~ |
  df8. c16 c4 bf8.\prall af16 |
  af4~ af8.[ ef16 af8.\mordent bf16] |
  \appoggiatura { af8 } g4~ g8.[ f16 g8. af16] |
  bf4~ bf8.[ f16 bf8.\mordent c16] |
  \appoggiatura { bf8 } af4~8.[ g16 af8. bf16] |
  
  \barNumberCheck 33
  \appoggiatura { af8 } g4~ g8.[ g16 c8. c16] |
  c4 bf2~ |
  bf4 af2~ |
  af4~ af8.[ g16 c8. c16] |
  f,4~ f8.[ f16 bf8.\mordent c16] |
  g2. \fermataOverBarline |
  \bar "|."
}

middle = \relative f' {
  \global
  \voiceTwo
  R2. |
  r4 r8 r16 f[ bf8.\mordent c16] |
  \appoggiatura { bf8 } af4~ af8.[ g16 af8. bf16 ]|
  \appoggiatura { af8 } g4~ g8.[ g16 c8. d16] |
  \appoggiatura { c8 } bf2.~ |
  bf4 af2~ |
  af4~ af8.[ g16 c8. c16] |
  f,4~ f8.[ f16 bf8.\mordent c16] |
  
  \barNumberCheck 9
  \appoggiatura { af8 } g4~ g8.[ g'16 c,8. c16] |
  \tag layout { c2.~\turn | }
  \tag midi   { \tuplet 3/2 { d16 c bf } c8~ c2~ | }
  c4 b8. c16 d4~ |
  d8. c16 c4 b |
  c4 r8 r16 g16[ c8.\mordent d16] |
  \appoggiatura { bf8 } a4~ a8. bf16 c4~ |
  c4 bf8.[ c16 d8. ef16] |
  c8. bf16 bf4 a |
  
  \barNumberCheck 17
  bf4 r r |
  r4 r8 r16 ef16[ df8.\prall ef16] |
  c4~ c8.[ df16 bf8. c16] |
  af4~ af8.[ g16 af8. bf16] |
  \appoggiatura { d8 } c4~ c8.[ c16 f8. ef16] |
  df2.~ |
  df4 c8.[ bf16 af8. g16] |
  af8. bf16 af4 g8. af16 |
  
  \barNumberCheck 25
  af4~ af8.[ c16 f8. ef16] |
  \appoggiatura { ef8 } df2.~ |
  df4~ df8. c16 bf4~ |
  bf8. af16 af4 g |
  af4 r r |
  r4 r8 r16 bf,16[ ef8.\mordent f16] |
  \appoggiatura { ef8 } d4~ d8.[ c16 df8. ef16] |
  \appoggiatura { df8 } c4~ c8.[ c16 f8.\mordent g16] |
  
  \barNumberCheck 33
  \appoggiatura { f8 } ef4 ~ ef8.[ d16 ef8. f16] |
  \appoggiatura { ef8 } d4~ d8.[ d16 g8. g16] |
  c,4~ c8.[ c16 f8. f16] |
  bf,4 ef2~ |
  ef4 d2 |
  ef2. |
}

leftHand = \relative ef {
  \clef bass
  \global
  r16 ef g bf ef4 c |
  r16 bf, d f bf4 g |
  r16 af, c ef af4 f |
  r16 c ef g  c4 a |
  r16 bf, d f bf4 ef, |
  r16 af, c ef af4 d, |
  r16 g, bf d g4 af |
  r16 bf, f' af bf4 bf, |
  
  \barNumberCheck 9
  r16 ef, g bf ef4 c |
  r16 af c ef af4 f |
  r16 f af c f4 r16 b, a g |
  c16 g af f g4 g, |
  r16 c, ef g c4 ef, |
  r16 f a c f4 a, |
  r16 bf d f bf4 g |
  r16 g a bf f4 f, |
  
  \barNumberCheck 17
  r16 bf d f bf4 d, |
  r16 ef g bf ef4 g, |
  r16 af, c ef af4 e |
  r16 f, af c f4 df |
  r16 c e g c4 af |
  r16 bf, df f bf4 g |
  r16 c,, e g c4 df |
  r16 df c bf c4 c, |
  
  \barNumberCheck 25
  r16 f af c f4 af, |
  r16 bf df f bf4 df, |
  r16 ef g bf ef4 r16 g, f ef |
  af16 ef f df ef4 ef, |
  r16 af c ef af4 f |
  r16 ef, g bf ef4 c |
  r16 bf d f bf4 g |
  r16 af, c ef af4 f |
  
  \barNumberCheck 33
  r16 c ef g c4 a |
  r16 bf, d f bf4 ef, |
  r16 af, c ef af4 d, |
  r16 g, bf d g4 af |
  r16 bf, f' af bf4 bf, |
  ef,2. \fermataUnderBarline |
}

forceBreaks = {
  \repeat unfold 2 { s2.\noBreak } s2.\break
  \grace { s8 } \repeat unfold 3 { s2.\noBreak } s2.\break
  \repeat unfold 3 { s2.\noBreak } s2.\break
  \repeat unfold 3 { s2.\noBreak } s2.\break
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
}

sinfoniaFiveMusic = 
\score { 
  \header {
    opus = "BWV 791"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 5"
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

sinfoniaFiveMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no5-Eb-maj"
  }
  \keepWithTag midi
  \articulate <<
    <<
      \new Staff = "upper" << \rightHand \middle >>
      \new Staff = "lower" \leftHand
    >>
  >>
  \midi {
    \tempo 4 = 96
  }
}
