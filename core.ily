%% This file is part of `lily-defaults` by Noah Brenner
%% https://github.com/noahbrenner/lily-defaults

\version "2.18.2"

#(define memo:relative-includes (ly:get-option 'relative-includes))
#(ly:set-option 'relative-includes #t)

\include "./core/arpeggios.ily"
\include "./core/beaming.ily"
\include "./core/glissandi.ily"
\include "./core/no-tagline.ily"
\include "./core/paper-size.ily"
\include "./core/time-signatures.ily"

#(ly:set-option 'relative-includes memo:relative-includes)
#(module-remove! (current-module) 'memo:relative-includes)
