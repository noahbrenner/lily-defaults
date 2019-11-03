%% This file is part of `lily-defaults` by Noah Brenner
%% https://github.com/noahbrenner/lily-defaults

\version "2.18.2"

\layout {
  \context {
    \Staff

    %% Align long instrument names to the right, against the first system
    \override InstrumentName.self-alignment-X = #RIGHT

    %% Add some padding so names aren't too close to the staff.
    \override InstrumentName.padding = #1
  }
}
