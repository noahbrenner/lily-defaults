%% This file is part of `lily-defaults` by Noah Brenner
%% https://github.com/noahbrenner/lily-defaults

\version "2.18.2"

\layout {
  %% Render glissandi using squiggly lines
  %%
  %% NOTE: This only affects glissandi displayed on a PianoStaff
  \override PianoStaff.Glissando.style = #'trill

  %% Allow systems to break in the middle of a glissando
  %% When a glissando is broken, also draw a gliss line for its ending system
  %%
  %% NOTE: This only affects glissandi displayed on a PianoStaff
  \override PianoStaff.Glissando.breakable = ##t
  \override PianoStaff.Glissando.after-line-breaking = ##t
}
