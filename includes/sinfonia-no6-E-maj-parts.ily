%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

global = {
  \time 9/8
  \key e \major
  \accidentalStyle piano
}

rightHand = \relative b' {
  \global
  \set Score.tempoHideNote = ##t
  \voiceOne
  R1*9/8 |
  b8 cs ds  e fs gs  fs gs e |
  ds4. cs2. |
  b2. a4.~ |
  a4. gs2. |
  cs2. ds4. |
  e2. ds4.~ |
  ds4. cs2. |
  
  \barNumberCheck 9
  bs4. cs2.~ |
  cs8 ds e  fs gs a  gs a fs |
  e8 gs ds  e gs bs, cs e4~ |
  e4. r4 r8 e4.~ |
  e4. ds2.~ |
  ds4. cs b~ |
  b4. as cs~ |
  cs2. r4 r8 |
  
  \barNumberCheck 17
  b'8 as gs  fs e ds  e cs ds |
  b4. r4 r8 r4 r8 |
  R1*9/8 |
  fs8 gs a  b cs d  cs d b |
  a b cs  d e fs  e fs d |
  cs8 ds e  fs gs a  gs a fs |
  e2.~ e4.~ |
  e8 e ds  cs b a  b a cs |
  
  \barNumberCheck 25
  ds4.~ ds8 e fs  gs fs a |
  b,2.~ b4. |
  a2. gs4.~ |
  gs4. fs2. ~ |
  fs4. e \clef bass ds~ |
  ds2.~ ds4.~ |
  ds8 cs ds  \clef treble e fs gs  fs gs e |
  a2.~ a4.~ |
  
  \barNumberCheck 33
  a8 fs gs  a b cs  b cs a |
  \tempo 4. = 40
  \appoggiatura { e'8 } ds4.\fermata \tempo 4. = 84 r4 r8 r4 r8 |
  \oneVoice e ds cs  b a gs  a gs b |
  e4. r4 r8 r4 r8 |
  b'8 a gs  fs e ds  e ds fs~ |
  fs16 e ds cs gs'8~  gs16 fs e ds a'8~  a16 gs fs e b'8~
  b8 b, cs  ds e fs  e fs ds |
  \voiceOne e4. r4 r8 fs,4 a8 |
  
  \barNumberCheck 41
  \oneVoice gs2. r4 r8 \fermataOverBarline |
  \bar "|."
}

middle = \relative e' {
  \global
  \voiceTwo
  \parenthesize e8 fs gs  a b cs  b cs a |
  \staffDown gs2. as4. |
  \staffUp b2. a4.~ |
  a4. gs2. |
  fs2. e4.~ |
  e8 fs gs  a b cs  b cs a |
  gs4. fs2. |
  e2. ds4.~ |
  
  \barNumberCheck 9
  ds8 e fs  gs a b  a b gs |
  fs4. \staffDown bs,2. |
  cs4. \staffUp r4 r8 r4 gs'8 |
  as8 cs gs  as cs \staffDown es, \staffUp fs as4~ |
  as4. b fs |
  e2. ds4. |
  e2.~ e4.~ |
  e8 fs gs  as b cs  b cs as |
  
  \barNumberCheck 17
  b2. as4. |
  b4. r4 r8 r4 r8 |
  b,8 cs ds  e fs gs  fs gs e |
  \staffDown ds4. es2. |
  fs2. \staffUp gs4. |
  a4. r4 r8 r4 r8 |
  cs8 b a  \staffDown gs fs e  \staffUp fs e gs |
  a2.~ a4.~ |
  
  \barNumberCheck 25
  a2.~ a4.~ |
  a8 gs fs  e \staffDown d cs  d b cs |
  \staffUp cs8 ds e  ds e cs  b cs ds |
  cs8 ds b  a b cs  b cs a |
  gs2. \clef bass fs4.~ |
  fs8 ds e  fs gs a  gs a fs |
  e4.  \clef treble cs'2.~ |
  cs8 a b  \staffDown cs \staffUp ds e  ds e cs |
    
  \barNumberCheck 33
  b4. fs'2.~ |
  fs4. r4 r8 r4 r8 |
  \staffDown e,8 fs gs  a b cs  b cs a |
  g4. r4 r8 r4 r8 |
  r8 fs gs  a b cs  b cs a |
  gs4. a b |
  cs8 ds e  fs gs a  gs a fs |
  \staffUp gs4. \tempo 4. = 74 r4 r8 \tempo 4. = 64 cs, ds4 |
  e2. s4. |
}

leftHand = \relative e' {
  \clef bass
  \global
  \voiceFour
  e2. ds4. |
  e4. cs fs |
  b,8 cs ds  e fs gs  fs gs e |
  ds8 e fs  e fs ds  cs ds e | 
  ds8 e cs  b cs ds  cs ds b |
  a4. fs b |
  e,8 fs gs  a b cs  b cs a |
  gs8 a b  a b gs  fs gs a |
  
  \barNumberCheck 9
  gs4. e fs |
  ds2. gs4.
  cs,4. r4 r8 e4. |
  fs4. r4 r8 r4 cs'8 |
  \oneVoice ds8 fs cs  ds fs as,  b ds fs, |
  gs8 b fs  gs b ds,  e gs b, |
  cs8 e b  cs e gs,  as cs es, |
  fs4. e'!4. r4 r8 |
  
  \barNumberCheck 17
  ds4. e fs |
  b,8 cs ds  e fs gs  fs gs e |
  \voiceFour ds8 e fs  gs fs e  a4.~ |
  a4. gs cs |
  fs,4. b2. |
  \oneVoice a8 gs fs  e ds cs  bs cs ds |
  cs4. r4 r8 r4 r8 |
  fs4. r4 r8 r4 r8 |
  
  \barNumberCheck 25
  b8 a gs  fs e ds  e ds fs |
  \voiceFour gs2.~ gs4.~ |
  gs4. fs2. |
  \oneVoice e2. ds4. |
  e8 ds cs  b a gs  a gs b |
  bs,4. r4 r8 r4 r8 |
  cs4. r4 r8 r4 r8 |
  fs4. r4 r8 r4 r8 |
    
  \barNumberCheck 33
  ds4. r4 r8 r4 r8 |
  a'4.\fermata r4 r8 r4 r8 |
  \voiceFour gs4. r4 r8 r4 r8 |
  as8 cs ds  e fs g  fs g e |
  ds4. r4 r8 r4 r8 |
  e4. fs gs |
  a4. \oneVoice r4 r8 r4 r8 |
  r8 b fs  gs ds e  as, b b, |
  
  \barNumberCheck 41
  e2. r4 r8 \fermataUnderBarline |
}

sinfoniaSixMusic = 
\score { 
  \header {
    opus = "BWV 792"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 6"
    \override Tie.minimum-length = 3
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

sinfoniaSixMidi = 
\score {
  \header {
    midiOutputFile = "sinfonia-no6-E-maj"
  }
  \articulate <<
    <<
      \new Staff = "upper" << \rightHand \middle >>
      \new Staff = "lower" \leftHand
    >>
  >>
  \midi {
    \tempo 4. = 84
  }
}
