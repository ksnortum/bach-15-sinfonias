%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

moveDottedNoteA = 
  \tweak NoteColumn.force-hshift -1.5
  \tweak Dots.Y-offset 0.25 
  \etc

global = {
  \time 3/8
  \key g \minor
  \accidentalStyle piano
  \mergeDifferentlyDottedOn
}

rightHand = \relative d'' {
  \global
  \set Score.tempoHideNote = ##t
  \voiceOne
  r16 d bf g g'8 |
  f4. |
  ef4. |
  d4. |
  c4 d8 |
  bf8. bf16 ef8 |
  \moveDottedNoteA a,8. bf16 c8 |
  bf4. |
  
  \barNumberCheck 9
  \tag layout { b4~\trill b16 a32 b | }
  \tag midi   { \repeat unfold 5 { c32 b } a b }
  c8. d16 ef8~ |
  ef16 d b g f'8 |
  ef4.~ |
  ef8. d16 c8~ |
  c16 f d bf bf'8 |
  d,8. ef16 c8 |
  bf4. |
  
  \barNumberCheck 17
  \oneVoice bf'4.~ |
  bf16 g ef c bf'8 |
  a4.~ |
  a16 f d bf bf'8 |
  g4.~ |
  g16 e cs a f'8~ |
  f16 d bf g e'8~ |
  e16 g, bf e f, d'~ |
  
  \barNumberCheck 25
  d16 cs e g d f~ |
  f16 e g bf d, a'~ |
  a16 cs, e g b, f'~ |
  f16 a, cs e gs, d' |
  cs16 e cs a g'8 |
  \voiceOne f4. |
  ef4. |
  d4.~ |
  
  \barNumberCheck 33
  d16 cs e g bf8 |
  a8. e16 f8 |
  d8. e16 cs8 |
  d4 f8 |
  f4.~ |
  f8. d16 ef8 |
  ef4.~ |
  ef8. c16 d8~ |
  
  \barNumberCheck 41
  d16 bf' g ef c'8~ |
  c16 a f d bf'8~ |
  bf16 g ef c a'8 |
  fs4 g8 |
  ef8. d16 c8 |
  d8. bf16 a c |
  bf16 d c ef d a' |
  bf,4.~ |
  
  \barNumberCheck 49
  bf16 g ef c bf'8 |
  a4.~ |
  a16 f d bf af'8 |
  g4.~ |
  g16 bf a c fs, a~ |
  a16 a g bf e, g~ |
  g16 g fs a c8~ |
  c16 bf a c ef8~ |
  
  \barNumberCheck 57
  ef16 d c bf a g |
  c16 bf a g fs e |
  \oneVoice d16 fs a c g bf~ |
  bf16 a c ef g, d'~ |
  d16 fs, a c e, bf'~ |
  bf16 d, fs a cs, g' |
  fs4~ fs16 fs |
  a16 c ef4~ |
  
  \barNumberCheck 65
  \voiceOne ef16 d bf g g'8 |
  f4. |
  ef4. |
  d4. |
  c4 d8 |
  bf8. \tempo 4. = 50 bf16 ef8 |
  bf8. \tempo 4. = 40 c16 a8 |
  g4. \fermataOverBarline |
  \bar "|."
}

middle = \relative a' {
  \global
  \voiceTwo
  R4. |
  r16 a f \staffDown d \staffUp d'8~ |
  d8. bf16 c8~ |
  c8. a16 bf8 |
  a4.~ |
  a16 fs g4~ |
  g4 fs8 |
  g4. |
  
  \barNumberCheck 9
  r16 \staffDown d16 b g \staffUp g'8~ |
  g4. |
  f4 \staffDown d8 |
  \staffUp r16 \staffDown g ef c \staffUp bf'8 |
  a4. |
  \staffDown f8. \staffUp bf~ |
  bf4 a8 |
  bf4.
  
  
  \barNumberCheck 17
  \staffDown r16 d, bf g f'8 |
  ef4.~ |
  ef16 ef c a f'8 |
  d4.~ |
  d16 d bf g e'8 |
  cs8 a d~ |
  d8 cs d |
  cs4 d8 |
  
  \barNumberCheck 25
  e4 f8 |
  g4 f8 |
  e4 d8 |
  cs4 b8 |
  a4.~ |
  a16 \staffUp a' f \staffDown d \staffUp d'8~ |
  d8. bf16 c8~ |
  c8. a16 bf8 |
  
  \barNumberCheck 33
  g4 \staffDown f8~ |
  f16 e cs a d8 |
  \staffUp f8. g16 e8 |
  d4 r8 |
  r8 r16 d'16 b8 |
  g8. b16 c8 |
  c4.~ |
  c8. a16 bf8~ |
  
  \barNumberCheck 41
  bf8. \staffDown bf16 \staffUp ef8~
  ef8. \staffDown a,16 \staffUp d8~ |
  d8. \staffDown g,16 \staffUp c8~ |
  c16 \staffDown fs, a \staffUp c bf8~ |
  bf16 \staffDown ef, g \staffUp bf af8 ~ |
  af16 fs g4~ |
  g4 \staffDown fs8 |
  \staffUp g4. |
  
  \barNumberCheck 49
  \staffDown c,8 bf \staffUp c |
  f4. |
  \staffDown bf,8 af \staffUp bf |
  ef4.~ |
  ef4. |
  d4. |
  c4 r8 |
  R4. |
  
  \barNumberCheck 57
  r8 \staffDown d,8 e |
  fs4 g8 |
  a4 bf8 |
  c4 bf8 |
  a4 g8 |
  fs4 e8 |
  r16 d fs a d8~ |
  d8 r r |
  
  \barNumberCheck 65
  \staffUp R4. |
  r16 a' f \staffDown d \staffUp d'8~ |
  d8. bf16 c8~ |
  c8. a16 bf8 |
  a4.~
  a16 fs g4~ |
  g4 fs8 |
  g4. |
}

leftHand = \relative g {
  \clef bass
  \global
  g4 ef8 |
  d4 bf'8 |
  g4 a8 |
  bf16 d bf g g'8~ |
  g8. e16 fs8 |
  g4 c,8 |
  d4 d,8 |
  g16 d bf g g'8 |
  
  \barNumberCheck 9
  f4. |
  ef16 g ef c c'8~ |
  c4 b8 |
  \voiceFour c4.~ |
  c16 c a f ef'8 |
  d8. g16 ef8 |
  f4 f,8 |
  bf16 f d bf a'8 |
  
  \barNumberCheck 17
  g4. |
  c8 bf c |
  f,4. |
  bf8 a bf |
  e,4. |
  f4. |
  g8 a bf |
  a4.~ |
  
  \barNumberCheck 25
  a4.~ |
  a4.~ |
  a4.~ |
  a4.~ |
  a8. g16 f e |
  d4 bf8 |
  \oneVoice g4 a8 |
  bf16 d bf g g'8 |
  
  \barNumberCheck 33
  \voiceFour e8. e'16 d8 |
  cs4 d8 |
  \oneVoice bf8 g a |
  d,16 d, f a d c |
  b16 g b d g f |
  ef16 c ef g c bf |
  a16 f a c f ef |
  \clef treble d16 bf d f bf a |
  
  \barNumberCheck 41
  \voiceFour g4. |
  f4. |
  ef4. |
  d4. |
  c4. |
  \clef bass bf8. d16 c8 |
  d8. c16 d8 |
  g,16 d bf g f'!8 |
  
  \barNumberCheck 49
  ef4.~ |
  ef16 c a f f'8 |
  d4.~ |
  \oneVoice d16 bf g ef g bf |
  c4. |
  bf4. |
  a8. fs16 g8 |
  fs8. a16 c8 |
  
  \barNumberCheck 57
  d,\noBeam \voiceFour d'4~ |
  d4.~ |
  d4.~ |
  d4.~ |
  d4.~ |
  d4.~ |
  d4.~ |
  d8. c'16 bf a |
  
  \barNumberCheck 65
  \oneVoice g4 ef8 |
  d4 bf'8 |
  g4 a8 |
  bf16 d bf g g'8~ |
  g8. e16 fs8 |
  g4 c,8 |
  d4 d,8 |
  g,4. \fermataUnderBarline |
}

sinfoniaElevenMusic = 
\score { 
  \header {
    opus = "BWV 797"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 11"
  } 
  \keepWithTag layout  
  <<
    \new Staff = "upper" << 
      \new Voice \rightHand 
      \new Voice \middle 
    >>
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

sinfoniaElevenMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no11-G-min"
  }
  \keepWithTag midi
  <<
    \new Staff = "upper" << \rightHand \middle >>
    \new Staff = "lower" \leftHand
  >>
  \midi {
    \tempo 4. = 60
  }
}
