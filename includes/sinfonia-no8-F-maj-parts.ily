%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

global = {
  \time 4/4
  \key f \major
  \accidentalStyle piano
}

rightHand = \relative f'' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Allegro moderato"
  \voiceOne
  R1 |
  r8 f16 e a8 g f\prall e16 d  g a f g |
  e16 f d e  f2 e4 |
  f8 c16 a d4 r8 d16 b e4 |
  r8 e16 c f4~ f16 e f g  e8. e16 |
  a16 f g a d,4~ d8 c16 b c4~ 
  c4 b c8\noBeam g'16 e a8 g |
  f8\prall e16 d  g a f g  e d e c  f8 e |
  
  \barNumberCheck 9
  d8\prall cs16 b  e f d e  cs8 a'16 f  bf8 a |
  g8\prall f16 e  a bf g a  fs8 d g4~ |
  g4 fs g2~ |
  g8 g f4~ f8 ef d4~ |
  d8 d cs e  a,16 g a f  bf8 a |
  g8\prall f16 e  a bf g a  f2~ |
  f16 f e g  cs,8. d16 d4 r8 f16 d |
  g4. g16 e a8 c16 a f'4~ |
  
  \barNumberCheck 17
  f8 d16 bf  ef4~ ef8 d16 bf ef8 d |
  \oneVoice c8\prall bf16 a  d ef c d  bf8 f'16 d  g8 f |
  ef8\prall d16 c  f g ef f  d4 \voiceOne r8 d16 bf |
  e4 r8 e16 c f4 r8 f16 d |
  g4~ g16 e f8~ f4~ f16 d e g |
  c,16 bf c a  d8 c  bf\prall a16 g  c d bf c |
  \tempo 4 = 82 a8. bf16 \tempo 4 = 72 g8. f16 f2 \fermataOverBarline |
  \bar "|."
}

middle = \relative c'' {
  \global
  \voiceTwo
  r8 c16 a  d8 c  bf\prall a16 g  c d bf c |
  a16 bf c8~ c2 b4 |
  c8 bf  a16 bf c d  g,2 |
  f4 r8 a16 f b4 r8 b16 g |
  c4 r8 c16 a d4~ d16 b c8~ |
  c4~ c16 a b d  g, f g e  a8 g |
  f8\prall e16 d  g16 a f g  e8 r r4 |
  R1 |
  
  \barNumberCheck 9
  R1 |
  r2 r8 d'16 bf  ef8 d |
  c8\prall bf16 a  d ef c d  bf a bf g  c d bf c |
  a4. a8 g4. f8 |
  e2~ e8 d16 cs d4~ |
  d4 cs r16 d c a  b cs d a |
  g2~ g8 f16 \staffDown d  \staffUp bf'4~ |
  bf8 bf16 g  c2 r8 a'16 f |
  
  \barNumberCheck 17
  bf4 r8 c16 a f \staffDown ef f d  g8 f |
  ef8 d16 c  f g ef f  d2~ |
  d4 \clef bass c bf8 \staffUp f'16 d  g4~ |
  g8 g16 e a4 r8 a16 f bf4~ |
  bf16 a bf c  a8. a16  d16 bf c d  g,4~ |
  g8 f16 e  f2 e8 g~ |
  g8 f~ f e f2 |
}

leftHand = \relative f, {
  \clef bass
  \global
  f4 f'2 e4 |
  f8 a16 g  f8 e  d g16 f  g8 g, |
  c8\noBeam c'16 a  d8 c  bf\prall a16 g  c d bf c |
  a8 g f16 e f d  g8 g,  g'16 f g e |
  a8 a, a'16 g a f  b8 g16 e  a8 g |
  f8\prall e16 d  g a f g  e8 a16 g  f8 e |
  d8 g16 f g8 g, c c, r c''16 a |
  d8 c  b\prall a16 g  c d bf c  a g a f | 
  
  \barNumberCheck 9
  bf8 a  g\prall f16 e  a bf g a  d,8 d'16 b |
  e8 d  cs\prall b16 a  d c bf a  g a bf g |
  a8 d16 c  d8 d,  g d16 bf  ef8 d |
  c8\prall bf16 a  d ef c d  bf8 g'16 f  bf8 a |
  g8\prall f16 e  a bf g a  f e f d  g8 f |
  e8 a16 g  a8 a,  bf a16 f  g8 f16 d |
  bf'16 a bf g a8 a \voiceFour d,4 r8 d' |
  \oneVoice e16 d e f  e d e c  f8 f, r f'16 d |
  
  \barNumberCheck 17
  g16 f g a  g bf a c  \clef treble \voiceFour bf2~ |
  bf2~ bf16 c bf a  g a bf g |
  c8 bf \clef bass a\prall g16 f  bf16 c a c  bf a bf g |
  \oneVoice c8 c, c'16 bf c a  d8 d,  d'16 c d bf |
  e8 c16 a  d8 c  bf\prall a16 g  c d bf c |
  a8 d16 c  bf c a bf  g8 a16 bf  c8 e, |
  f8 d16 bf  c8 c, f2 \fermataUnderBarline |
}

forceBreaks = {
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
}

sinfoniaEightMusic = 
\score { 
  \header {
    opus = "BWV 794"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 8"
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

sinfoniaEightMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no8-F-maj"
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
    \tempo 4 = 92
  }
}
