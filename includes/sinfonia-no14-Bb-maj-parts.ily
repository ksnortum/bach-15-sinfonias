%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

moveRestA = \once \override Rest.Y-offset = -3
slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (-1 . -1)) \etc
tieShapeA = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc

global = {
  \time 4/4
  \key bf \major
  \accidentalStyle piano
}

rightHand = \relative f'' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Andante con moto"
  \voiceOne
  R1 |
  r8 f8~ f16 ef d c  bf8 d  a16 bf c8 |
  f,16 f' d bf  ef8 g~ g16 ef c a\slurShapeA _( c8) f |
  d4 e f8 bf,4 a8~ |
  a8 g~ g f~ f ef~ ef d~ |
  d16 g ef c  a'8 c~  c16 f, bf d  c8 ef~ |
  ef8 d4 c8 d r r4 |
  r8 g~ g16 g f ef  d8 f  b,16 c d8 |
  
  \barNumberCheck 9
  g,8 b c2 b4 |
  c1\tieShapeA ~ |
  c4. f8~ f16 e d e  e8. f16 |
  f8 a~ a16 a g f  e8 g cs,16 d e8 |
  a,8. b16  c b c d  b a b cs  d4~ |
  d4 cs d8 f~ f16 ef d c |
  b8 d  g,16 a b8 ef,4 ef'~ |
  ef8 d16 c  bf8 a  d8. ef16  d c bf af |
  
  \barNumberCheck 17
  g8. af16 bf8 f  g g'~ g16 f ef d |
  c8 f  bf,16 c d8  g, ef'~ ef16 d c bf |
  a8 d  g,16 a bf8  ef,8 c'~ c16 bf a g |
  f4 r r8 f'~ f16 ef d c |
  bf8 d  a16 bf c8~ c16 f, bf d c8 ef~ |
  ef16 a, bf d  f4~ f16 bf, c ef  g4 |
  bf16 a g f  bf a32 g f ef d c  bf4~ bf16 bf8 a16 |
  bf1\fermata |
  \bar "|."
}

middle = \relative bf' {
  \global
  \voiceTwo
  bf4~ bf16 bf a g  f8 g  d16 ef f8 |
  \staffDown bf,16 f bf d  c8 ef~ ef8 d16 e \tag layout { e8.\prall d32 e | }
                                            \tag midi   { f32 e f e f e d e }
  \staffUp f4 g8 bf \staffDown ef,8 g \staffUp a c~ |
  c16 f, bf d  g,8 bf  a d,16 ef  f g ef f |
  d16 f bf, c  d ef c d  bf d g, a  bf c af bf |
  g4 \staffDown f8 r \staffUp \moveRestA r2 |
  bf'4~ bf16 bf a g  fs8 g  d16 ef f8 |
  \staffDown b,4 c~ c8 \staffUp af'  d,16 ef f8 |
  
  \barNumberCheck 9
  \staffDown b,8 \staffUp d  g16 bf af g  f8 af  d,16 ef f8~ |
  f16 f e d  e8 bf'~ bf16 a g f  g a bf g |
  e16 g e c  f8 a g2 |
  a4 bf~ bf16 a \staffDown g f  e8 \staffUp g |
  \staffDown cs,16 d e8  a,8 \staffUp a'~ a g~ g16 f g a |
  bf16 g a bf  e, bf' a g  f4 r |
  r2 r8 c'~ c16 bf a g |
  f8 a  \staffDown d,16 \staffUp ef f8  \staffDown bf, \staffUp f'~ f4~ |
  
  \barNumberCheck 17
  f16 d ef4 d8  ef r c'8. \staffDown bf16 |
  a16 g f8 \staffUp g8 bf  ef,16 f g8  \staffDown c, \staffUp f~ |
  f16 ef d \staffDown c  \staffUp bf8 d  \staffDown a16 \staffUp bf c8
    \staffDown f,4~ |
  f8 \staffUp bf'~ bf16 bf a g  f8 a  \staffDown d,16 ef f8 |
  bf,16 a bf d  \staffUp c8 ef~ ef d  r16 bf' a g |
  f4  r16 d' bf af  g4  r16 ef' c bf |
  f'4 r  r32 a, g f g16 ef  d8 c |
  d1 |
}

leftHand = \relative bf {
  \clef bass
  \global
  bf8 d c bf  a g f ef |
  \voiceFour d4 f g c |
  d4~ d16 d bf f  c'8 ef~ ef16 c a f |
  \oneVoice bf4~ bf16 bf a g  f8 g  d16 ef f8 |
  bf,8 ef  bf16 c d8  g, c  g16 a bf8 |
  \voiceFour ef,8 ef'~  ef16 c' a f  d8 g  ef16 c f a |
  \oneVoice bf,16 bf' g f \tag layout { ef4\trill } 
                          \tag midi   { f32 e f e f e f e }  
                          d16 c' bf a  g bf af g |
  \voiceFour f16 af g f  ef8 c  f16 ef f g  af g f ef |
  
  \barNumberCheck 9
  f16 af g f  ef d c bf  af c f af  g8 g, |
  \oneVoice c8 c'~ c16 bf a g  f8 a  e16 f g8 |
  a,4~ a16 a' f d  bf d bf g  c8 c, |
  f16 g' f e  d8 e16 f  \voiceFour g2~ |
  g16 bf a g  fs d e fs  g fs g a  bf8 a |
  \oneVoice g16 e f g  a8 a,  d16 a' f d  d'8 f~ |
  f16 ef d c  b8 g  c16 g ef c  c' d c b |
  a16 g f ef  f8. g16  af bf af g  f ef d c |
  
  \barNumberCheck 17
  bf8 c  g16 af bf8  ef,4 r8 \clef treble \voiceFour ef''~ |
  ef8 d~ d16 d c bf  \clef bass c d c bf  a bf a g |
  f8 bf,  ef16 d c bf  c bf a g  a g f ef |
  d16 ef' d c  bf g' f ef  d ef' d c  bf8. a16 |
  g8 f~ f16 ef d c  bf8 d  a16 bf c8 |
  \oneVoice d,8 d' bf d  ef, ef' c ef~ |
  ef8 ef' d bf  g ef \tempo 4= 56 f \tempo 4 = 46 f, |
  bf1\fermata |
}

forceBreaks = {
  \repeat unfold 4 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\pageBreak
}

sinfoniaFourteenMusic = 
\score { 
  \header {
    opus = "BWV 800"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 14"
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

sinfoniaFourteenMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no14-Bb-maj"
  }
  \keepWithTag midi
  <<
    \new Staff = "upper" { \upperMidiInstrument \rightHand }
    \new Staff = "middle" { \middleMidiInstrument \middle }
    \new Staff = "lower" { \lowerMidiInstrument \leftHand }
  >>
  \midi {
    \tempo 4 = 66
  }
}
