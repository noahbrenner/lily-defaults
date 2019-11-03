%% This file is part of `lily-defaults` by Noah Brenner
%% https://github.com/noahbrenner/lily-defaults

\version "2.18.2"

\layout {
  %% When an \arpeggio is defined on the same beat in both staves of
  %% a PianoStaff, draw a single arpeggio line that spans both staves
  \set PianoStaff.connectArpeggios = ##t
}
