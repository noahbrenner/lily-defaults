%% This file is part of `lily-defaults` by Noah Brenner
%% https://github.com/noahbrenner/lily-defaults

\version "2.18.2"

\layout {
  %% Don't beam across beats in meters with numerators divisible by 3
  \set Timing.beamHalfMeasure = ##f

  %% Default to beaming only *within* beats (no time signature BeamExceptions)
  %%
  %% Parameters for \overrideTimeSignatureSettings:
  %%   TimeSignature, BaseMoment, BeatStructure, BeamExceptions
  %%
  %% To selectively revert to LilyPond's default beaming (e.g. for 4/4 time):
  %%
  %%     \layout {
  %%       \revertTimeSignatureSettings 4/4
  %%     }
  \overrideTimeSignatureSettings 3/4 1/4 #'() #'()
  \overrideTimeSignatureSettings 4/4 1/4 #'() #'()
  \overrideTimeSignatureSettings 5/8 1/8 #'() #'()
  \overrideTimeSignatureSettings 8/8 1/8 #'() #'()
}
