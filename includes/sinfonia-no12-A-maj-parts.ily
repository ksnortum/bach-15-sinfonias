%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

tieShapeA = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc
tieShapeB = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc

global = {
  \time 4/4
  \key a \major
  \accidentalStyle piano
  \mergeDifferentlyDottedOn
}

rightHand = \relative a' {
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Allegro"
  \voiceOne
  a8 gs16 a  b8 a16 gs  a4~ a16 b gs a |
  b16 e, cs' e,  d' e, e'8  cs16 b a b  cs ds e fs |
  \oneVoice gs16 a b8~ b16 a gs fs  e ds cs b  \voiceOne e4~ |
  e4 ds e8 d16 cs  d e fs gs |
  a8. a16 gs8. g16 fs8. fs16 e8. e16 |
  d8 cs b4 a8 cs fs4~ |
  fs8 b, e4~ e8 ds16 e  fs8 e16 ds |
  e4~ e16 fs ds e  fs b, gs' b, a' b, b'8 |
  
  \barNumberCheck 9
  gs16 a b a  gs fs e d  cs2~ |
  cs8 cs16 d  e8 d16 cs  b2~ |
  b8 b16 cs  d8 cs16 b  a2~ |
  a8 a16 b  cs8 b16 a  gs2~ |
  gs8 gs16 a  b8 a16 gs  a8 as16 bs  cs8 bs16 as |
  bs8 bs16 cs  ds8 cs16 bs  cs8 gs16 a  b8 a16 gs |
  a16 fs gs a  b cs d e  d8. d16 cs8. cs16 |
  b8 a gs4 fs8 cs' fs4~ |
  
  \barNumberCheck 17
  fs8 b, gs'4~ gs8 cs, a'4~ |
  a8 ds, b' a  gs gs16 a  b8 a16 gs |
  a4 gs fs a~ |
  a8 gs16 a  b a gs fs  e d cs b  a cs e gs |
  fs2~ fs8 d16 e  fs8 e16 d |
  e2~ e8 cs16 d  e8 d16 cs |
  d2~ d8 b16 cs  d8 cs16 b |
  cs16 a fs'8~ fs16 ds e8~ e16 cs d8~ d16 b cs8 |
  
  \barNumberCheck 25
  gs8 a4 gs8 a8 gs16 a  b8 a16 gs |
  a4~ a16 b gs a  b e, cs' e,  d' e, e'8 |
  cs16 b a b  cs d e fs  b, a gs a  b cs d e |
  a,16 gs fs gs  \oneVoice a b cs d  gs, b gs e  e'4~ |
  e16 e cs a a'4~ a16 b, d fs gs4~ |
  gs16 a, cs e fs4~ fs16 e ds e \voiceOne fs8 r |
  \tempo 4 = 102 cs8. d16 \tempo 4 = 92 b8. a16 a2\fermata |
  \bar "|."
}

middle = \relative e' {
  \global
  \voiceTwo
  R1 * 2 |
  \staffDown e8 ds16 e  fs8 e16 ds e4~ e16 \staffUp fs \staffDown ds e |
  \clef treble fs16 b, gs' b,  a' b, b'8  gs16 a b a  gs fs e d |
  \clef bass cs16 \staffUp cs' fs8~ fs16 ds e8~ e16 cs d8~ d16 b cs8 |
  gs8 a4 gs8 a4. a8 |
  gs4. gs8 fs2 |
  r16 ds' cs b  a \staffDown gs fs e  ds8 e4 ds8 |
  
  \barNumberCheck 9
  e4 \staffUp r r8 gs16 a  b8 a16 gs |
  a2~ a8 fs16 gs  a8 gs16 fs |
  gs2~ gs8 es16 fs  gs8 fs16 es |
  fs2~ fs8 ds16 es  fs8 es16 ds |
  es8 es16 fs  gs8 fs16 es  fs4 e |
  ds4 fs2 es4 |
  fs16 r r8 r4 r16 cs'16 b8~ b16 b a8 |
  es8 fs4 es8 fs4. a8 |
  
  \barNumberCheck 17
  d4\tieShapeA ~ d8 b e4~ e8 cs |
  fs2\tieShapeB ~ fs8 b,16 cs  d8 cs16 b |
  cs8 cs16 ds  e8 ds16 cs  ds8 ds16 e  fs8 e16 ds |
  e2 r |
  r8 a,16 b cs8 b16 a gs2~ |
  gs8 gs16 a  b8 a16 gs  fs2~ |
  fs8 fs16 gs  a8 gs16 fs  e2~ |
  e8 r16 a gs8. gs16 fs8. fs16 e8. e16 |
  
  \barNumberCheck 25
  d8 cs b4  e16 cs d8~ d16 b cs8~ |
  cs16 \staffDown a b gs  a4~ a16 gs a4 gs8 |
  a8 \staffUp cs fs4~ fs8 b, e4~ |
  e8 \staffDown a, d4~ d8 b16 cs  d8 cs16 b |
  cs8 a16 b  cs8 b16 a  b8 gs16 a  b8 a16 gs |
  a8 fs16 gs  a8 gs16 fs gs8 r \staffUp a' r |
  a8. b16 gs4 a2 |
}

leftHand = \relative a {
  \clef bass
  \global
  a8 r gs r fs r cs r |
  d8 r e r a,\noBeam a' gs fs |
  e8 r \voiceFour ds' r cs r gs r |
  \clef treble a8 r b r e r r4 |
  \clef bass a,8 gs16 a  b8 a16 gs  a4~ a16 b gs a |
  b16 e, cs' e,  d' e, e'8  cs16 b a b  cs ds e fs |
  b,16 a gs a  b cs ds e  a, gs fs gs  a gs a b |
  gs8 a16 b cs4~ cs16 b a gs  fs8 b |
  
  \barNumberCheck 9
  e,4 r16 a gs fs  es cs fs cs  gs' cs, es cs |
  \oneVoice fs16 cs gs' cs,  fs cs e cs  ds b e b  fs' b, ds b |
  e16 b fs' b,  e b d b cs a d a  e' a, cs a |
  d16 a e' a,  d a cs a  bs gs cs gs  ds' gs, bs gs |
  cs1~ |
  cs2 r16 d' cs b  cs a b cs |
  fs,8 es16 fs  gs8 fs16 es  fs4~ fs16 gs es fs |
  gs16 cs, a' cs,  b' cs, cs' b  a b cs b  a gs fs e |
  
  \barNumberCheck 17
  b'16 cs d cs  b a gs fs  cs' d e d  cs b a gs |
  ds'16 e fs e  ds cs b a  e'2~ |
  e1~ |
  e16 cs b a  gs fs e d  cs a' d, a'  e a cs, a' |
  d,16 a' e a  d, a' cs, a'  b, gs' cs, gs'  d gs b, gs' |
  cs,16 gs' d gs  cs, gs' b, gs'  as, fs' b, fs'  cs fs as, fs' |
  b,16 fs' cs fs  b, fs' a, fs'  gs, e' e, e'  fs, e' gs, e' |
  a,8 gs16 a  b8 a16 gs  a4~ a16 b gs a |
  
  \barNumberCheck 25
  b16 e, cs' e,  d' e, e'8  cs8 fs4 es8 |
  \voiceFour fs4. e8  d cs b e |
  a,4 r8 a' gs4. gs8 |
  fs4. fs8 e2~ |
  e1~ |
  e2~ e16 e gs b  c gs a ds, |
  \oneVoice e8 r e, r a2\fermata |
}

forceBreaks = {
  \repeat unfold 4 { s1\noBreak s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\noBreak s1\pageBreak
}

sinfoniaTwelveMusic = 
\score { 
  \header {
    opus = "BWV 798"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 12"
  } 
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

sinfoniaTwelveMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no12-A-maj"
  }
  <<
    \new Staff = "upper" << \rightHand \middle >>
    \new Staff = "lower" \leftHand
  >>
  \midi {
    \tempo 4 = 112
  }
}
