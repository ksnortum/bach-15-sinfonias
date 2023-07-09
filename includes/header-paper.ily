%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\header { 
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/6/61/IMSLP00894-15_three_part_inventions.pdf"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/f/f6/IMSLP544068-PMLP3268-Bach_invenzioni_a_3_voci_Jacopo_Tore.pdf"
  copyright = \markup { 
    \center-column {
      "Copyright © 2023 Knute Snortum. This work is licensed under the" 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "Creative Commons Attribution-ShareAlike 4.0 International License."
    }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  % These settings are scaled to paper-size
  top-margin = 5\mm % default 5
  bottom-margin = 6\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
  
  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
  \context {
    \Staff
    \remove Dot_column_engraver
  }
  \context {
    \Voice
    \consists Dot_column_engraver
  }
  \context {
    \PianoStaff
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
         (padding . 2))
  }
}

\midi {
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
  \context {
    \Score
    midiMinimumVolume = #0.20
    midiMaximumVolume = #0.99
  }
}
