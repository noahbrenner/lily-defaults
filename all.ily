%% This file is part of `lily-defaults` by Noah Brenner
%% https://github.com/noahbrenner/lily-defaults

\version "2.18.2"

#(define initial-value:relative-includes (ly:get-option 'relative-includes))
#(ly:set-option 'relative-includes #t)

\include "./core/arpeggios.ily"
\include "./core/beaming.ily"
\include "./core/glissandi.ily"
\include "./core/no-tagline.ily"
\include "./core/paper-size.ily"
\include "./core/time-signatures.ily"

\include "./other/instrument-names--align-right.ily"

#(ly:set-option 'relative-includes initial-value:relative-includes)
