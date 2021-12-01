\version "2.22.0"

\include "../definitions.ly"
\include "score_settings/full-score.ly"

\book {
  \bookpart {
    \section "Placare Christe servulis"
    \addTocEntry
    \paper { indent = 3\cm }
    \score {
      <<
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = "Cornetto"
            \Cornetto
          }
          \new Staff {
            \set Staff.instrumentName = "Fagotto"
            \Fagotto
          }
        >>
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "Trombone"
            \new Staff {
              \set Staff.instrumentName = "I"
              \TromboneI
            }
            \new Staff {
              \set Staff.instrumentName = "II"
              \TromboneII
            }
          >>
        >>
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "Violino"
            \new Staff {
              \set Staff.instrumentName = "I"
              \ViolinoI
            }
            \new Staff {
              \set Staff.instrumentName = "II"
              \ViolinoII
            }
          >>
        >>
        \new ChoirStaff <<
          \new Staff {
            \incipitSoprano
            \new Voice = "Soprano" { \dynamicUp \Soprano }
          }
          \new Lyrics \lyricsto Soprano \SopranoLyrics

          \new Staff {
            \incipitAlto
            \new Voice = "Alto" { \dynamicUp \Alto }
          }
          \new Lyrics \lyricsto Alto \AltoLyrics

          \new Staff {
            \incipitTenore
            \new Voice = "Tenore" { \dynamicUp \Tenore }
          }
          \new Lyrics \lyricsto Tenore \TenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "Basso"
            \new Voice = "Basso" { \dynamicUp \Basso }
          }
          \new Lyrics \lyricsto Basso \BassoLyrics
        >>
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "Organo" "e Bassi" }
            % \transpose c c,
            \Organo
          }
        >>
        \new FiguredBass { \BassFigures }
      >>
      \layout { }
      \midi { \tempo 4 = 80 }
    }
  }
}
