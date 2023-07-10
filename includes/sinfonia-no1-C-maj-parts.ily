%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

tieShapeA = \shape #'((0 . 0) (0 . -1) (0 . -1.5) (0 . 0)) \etc

global = {
  \time 4/4
  \key c \major
  \accidentalStyle piano
}

rightHand = \relative g' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Allegro moderato"
  \voiceOne
  r16 g a b  c d e f  g f g a  f a g f |
  e2. fs4 |
  g8 f e4 d8 e16 f d4~ |
  d8 g16 f e4. e8 d4~ |
  d4. c8~ c8 b16 a  b c d b |
  g4~ g16 c d e  a, b a b  \tag layout { b8.\trill a32 b | }
                           \tag midi   { c32 b c b c b a b | }
  c8 g c4~ c8 \tag layout { b16\prall }
              \tag midi   { \tuplet 3/2 { b32 c b } }
              a16 d4~ |
  d16 b c d e4~ e8 a4 g8~ |
  
  \barNumberCheck 9
  g8 fs16 e  fs g a fs  d4~ d16 g a b |
  \oneVoice e,16 fs e fs \tag layout { fs8.\trill e32 fs }
                         \tag midi   { g32 fs g fs g fs e fs }
                         g16 a g fs  e d c b |
  \voiceOne a16 b a g  a fs g a  b4~ b16 g a bf |
  a16 e f g  a b cs d  \oneVoice e d e f  e bf' a g |
  \voiceOne f16 g f e  d cs d e  f4 fs |
  g4 f~ f8 \tag layout { e16\prall }
           \tag midi   { \tuplet 3/2 { e32 f e } }
           d16 e4~ |
  e8 d4 c8~ c \tag layout { b16\prall }
              \tag midi   { \tuplet 3/2 { b32 c b } }
              a16 b8 d |
  g4~ g16 a f g  a4 b |
  
  \barNumberCheck 17
  c4 bf a r16 e d c |
  b16 d e f  g2~ g16 c, f e |
  f4 e d2~ |
  d16 f e d  c2 \tempo 4 = 86 b4 |
  \tempo 4 = 76 c1 \fermataOverBarline |
  \bar "|."
}

middle = \relative c' {
  \global
  \voiceTwo
  R1 |
  \staffDown r16 c d e  f \staffUp g a b  c b c d  c e d c |
  b8 d~ d c~ c4 b~ |
  b4 r16 d c b a4. a8 |
  g8 f e4 d2~ |
  d16 f e \staffDown d  c b a g  f g f e  f d e f |
  e4 \staffUp r8 e' fs4  r16 c' b a |
  g4~ g16 g c b  c4 b |
  
  \barNumberCheck 9
  a2~ a16 c b a  \staffDown g fs e d |
  c16 d c b  c a b c  b4~ b16 b a g |
  fs8 r r4  \staffUp r16 d' e f  e4~ |
  e8 r r4  \staffDown r8 a, b cs |
  d16 d e f  g a \staffUp b cs  d cs d e c ef d c |
  bf16 a bf c  a c bf a  g4. g8 |
  f4 e8 r r2 |
  \staffDown r16 f g a  b c \staffUp d e  f e f g  f a g f |
  
  \barNumberCheck 17
  e8 a4 g8~ g16 c, d e  f4 \tieShapeA ~ |
  f4  r16 f e d  c d c bf  a4~ |
  a8 d4 c8~ c8 b16 a  b c d b |
  g4 r16 bf a g  f g f e  f d e f |
  e1 |
}

leftHand = \relative c {
  \clef bass
  \global
  c4 r8 c' b g a b |
  c4 r8 b a g a d, |
  g,16 g' a b  c d e f  g f g a  f a g f |
  e16 f e d  c b a g  f g f e  f d e f |
  e16 g, a b  c d e f  g f g a  f a g f |
  e2. d4 |
  \voiceFour c16 d c b  \oneVoice a g fs e  d e' d c  b a g fs |
  e16 f'! e d  c b a g  fs d e fs  g a b c |
  
  \barNumberCheck 9
  d16 c d e  c e d c  b4 \voiceFour b'~ |
  b4 a e8 d c4 |
  d16 g fs e  d c b a  \oneVoice g a g f  g e f g |
  cs,8 d' cs b   \voiceFour a g' f e |
  d8 r r4 \oneVoice r16 g' f e  d c bf a |
  g16 c, d e  f g a bf  c bf c d  bf d c bf |
  a16 g a b  \clef treble c d e f  g f g a  f a g f |
  \voiceFour e4 r \oneVoice r16 c' b a  g f e d \clef bass |
  
  \barNumberCheck 17
  c16 d c bf  c a bf c  f, g f e  d c b a |
  g16 a' g f  e d c bf  a bf' a g  f e d c |
  b16 g a b  c d e f  g f g a  f a g f |
  e8 f16 g a8 c, d e16 f g8 g, |
  c1 \fermataUnderBarline |
}

forceBreaks = {
  \repeat unfold 4 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\pageBreak
}

sinfoniaOneMusic = 
\score { 
  \header {
    opus = "BWV 787"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 1"
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

sinfoniaOneMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no1-C-maj"
  }
  \keepWithTag midi
  <<
    \new Staff = "upper" << \rightHand \middle >>
    \new Staff = "lower" \leftHand
  >>
  \midi {
    \tempo 4 = 96
  }
}
