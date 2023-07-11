%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

turnOverBeam = \tweak outside-staff-priority 0 \etc
turnUnderBeam = \tweak outside-staff-priority 0 \etc

tieShapeA = \shape #'((0 . 0) (0 . -1) (0 . -1.5) (0 . 0)) \etc

arpeggioLengthA = \once \override Staff.Arpeggio.positions = #'(1.5 . 3.5)

global = {
  \time 3/4
  \key ef \major
  \accidentalStyle piano
  \omit TupletBracket
  \omit TupletNumber
}

rightHand = \relative bf' {
  \global
  % \set Score.tempoHideNote = ##t
  \voiceOne
  r4 r8 r16 bf \tag layout { \after 8 \turnOverBeam \turn ef8.\mordent f16 | }
               \tag midi   { ef64 d ef32 \tuplet 3/2 { f32 ef d } ef16 f | }
  \appoggiatura { ef8 } d4~ d8. c16 df8. ef16 |
  \appoggiatura { df8 } c4~ c8. c16 \appoggiatura { c8 } f8. g16 |
  \appoggiatura { f8 } ef4~ ef8. d16 \appoggiatura { d8 } ef8. f16 |
  \appoggiatura { ef8 } d4~ d8. d16 \appoggiatura { d8 } g8. g16 |
  \appoggiatura { g8 } c,4~ c8. c16 \appoggiatura { c8 } f8. f16 |
  \appoggiatura { f8 } bf,4 ef2~\mordent |
  ef4 d2\mordent |
  
  \barNumberCheck 9
  \appoggiatura { d8 } ef4~ ef8. r16 r4 |
  r4 r8 r32 af f c d8.\mordent d16 |
  d4~\turn d8. ef16 \appoggiatura { ef8 } f4~ |
  f8. ef16 ef4 \grace { f32[ ef d c d] } d8.\downprall c16 |
  c4 r r  |
  r4 r8 r16 c16 \after 8 \turnOverBeam \turn f8.\mordent g16 |
  \appoggiatura { ef8 } d4~ d8. ef16 \appoggiatura { ef8 } f8. g16 |
  \appoggiatura { f8 } ef8. d16 d4 \grace { c16[ bf a bf ef c] } 
    c8.\downprall bf16 |
  
  \barNumberCheck 17
  bf4\mordent r8 r16 bf'16 af8.\downprall bf16 |
  \appoggiatura { af8 } g4~ g8. af16 bf4~ |
  bf8.g16 \appoggiatura { f8 } e8.\prall f16 g4~ |
  g8. f16 \appoggiatura { ef8 } df8. c16 \appoggiatura { c8 } f8. g16 |
  \appoggiatura { f8 } e4~ e8. e16 \arpeggioLengthA af8.\arpeggio af16 |
  af4 g8.\prall \tuplet 3/2 { f32 e f } \appoggiatura { f8*1/32 } bf8. bf16 |
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
  r4 r8 r16 f \after 8 \turnOverBeam \turn bf8.\mordent c16 |
  \appoggiatura { bf8 } af4~ af8. g16 \appoggiatura { g8 } af8. bf16 |
  \appoggiatura { af8 } g4~ g8. g16 c8. d16 |
  \appoggiatura { c8 } bf2.~ |
  bf4 af2~\turn |
  af4~ af8. g16 \appoggiatura { g8 } c8. c16 |
  \appoggiatura { c8 } f,4~ f8. f16 \after 8 \turnUnderBeam \turn bf8.\mordent c16 |
  
  \barNumberCheck 9
  \appoggiatura { af8 } g4~ g8. \tuplet 3/2 { g'32 ef b } c8.\mordent c16 |
  \tag layout { c2.~\turn | }
  \tag midi   { \tuplet 3/2 { d16 c bf } c8~ c2~ | }
  c4 \appoggiatura { c8 } b8. c16 \appoggiatura { c8 } d4~\mordent |
  d8. c16 c4 b |
  c4 r8 r16 g16 \after 8 \turnUnderBeam \turn c8.\mordent d16 |
  \appoggiatura { bf8 } a4~ a8. bf16 c4~ |
  c4 bf8. c16 \appoggiatura { c8 } d8. ef16 |
  \appoggiatura { d8 } c8. bf16 bf4 a |
  
  \barNumberCheck 17
  bf4 r r |
  r4 r8 r16 ef16 df8.\downprall ef16 |
  c4~ c8. df16 \appoggiatura { c8 } bf8. c16 |
  \appoggiatura { bf8 } af4~ af8. g16 \appoggiatura { g8 } af8. bf16 |
  c4~ c8. c16 f8.\arpeggio ef16 |
  df2.~\turn |
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
  \appoggiatura { ef } d4~ d8.[ d16 g8. g16] |
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
  
}

sinfoniaFiveAltMusic = \score { 
  \header {
    opus = "BWV 791"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 5"
    \override StaffGrouper.staff-staff-spacing.padding = 2
  } 
  \keepWithTag layout  
  <<
    \new Staff = "upper" \with { 
      \consists Span_arpeggio_engraver
      connectArpeggios = ##t
    } << \rightHand \middle >>
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

% \include "articulate.ly"

sinfoniaFiveAltMidi = \book {
  \bookOutputName "sinfonia-no1-Eb-maj-alt"
  \score {
    \keepWithTag midi
    % \articulate <<
      <<
	\new Staff = "upper" { \upperMidiInstrument \rightHand }
	\new Staff = "middle" { \middleMidiInstrument \middle }
	\new Staff = "lower" { \lowerMidiInstrument \leftHand }
      >>
    % >>
    \midi {
      \tempo 4 = 96
    }
  }
}
