%%%%%% Sacred Harp Template 0.2 %%%%%%

% A template for easy engraving of shapenote tunes in the style of the
% 1991 edition of the Sacred Harp.
%
% Leland Paul Kusmer – lelandpaul@thypyramids.com – February 2011
%
% For more information, see thypyramids.com/fasola

\version "2.13.48"
\include "sacredHarpStyle.ly"
#(set-global-staff-size 20)


\paper {
	page-count = #1 % Limit the page size and system count here.
	system-count = #3
	paper-width = 11\in
    paper-height = 8.5\in
    top-margin = 0.5\in
    left-margin = 0.5\in
		bottom-margin = 0.5\in
		  system-system-spacing.basic-distance = #18
	}

\header {
	title = \markup \bold \smaller
		"HOSANNAH. 12s & 11s." % TITLE    METER
	arranger = \markup \bold \tiny
		"Christian Melodist, 1828, arr. Rebecca Wright, 2020." % COMPOSER
	meter = \markup \bold \tiny
		"A Minor     Mercer's Cluster, 1829." % KEY      POET
	tagline = \markup \tiny
		"" % Copyright info if applicable; leave blank otherwise.
}


global = {
  \key 	a				%KEY NOTE
  		%\major 	\sacredHarpHeads	%Uncomment the mode
  		\minor \set shapeNoteStyles = #'#(la mi fa #f la fa #f la)

  \numericTimeSignature	% The SH doesn't use Common/Cut Time symbols
  \time 3/4				%TIME SIGNATURE as n/n


%%%%%%%%% Don't Change %%%%%%%%%%
  \once \override Score.BreakAlignment #'break-align-orders =
        #(make-vector 3 '(left-edge
                          clef
                          key-signature
                          time-signature
                          staff-bar
                          ))
  \override Staff.BarLine #'stencil = #with-shapenote-repeats
  \override Score.VoltaBracket #'stencil = ##f
}

%% Define a new grob for the combined time-signature/dotted bar
#(define ((time-signature-repeat a b) grob)
   (grob-interpret-markup grob
                          (markup #:override '(baseline-skip . 0.3) #:number
                                  (#:line ((#:column (#:musicglyph a #:musicglyph b))
                                           (markup #:override '(baseline-skip . 1) #:number
     											#:vcenter
     											#:line (
     											#:raise 1.3
     											#:column (#:filled-box '(-0.1 . 0.25) '(0 . 0.35) 0
      		  											 #:filled-box '(-0.1 . 0.25) '(0 . 0.35) 0
      		   											#:filled-box '(-0.1 . 0.25) '(0 . 0.35) 0
      		   											#:filled-box '(-0.1 . 0.25) '(0 . 0.35) 0  ))))))))

\defineBarLine ";." #'("" ":" "")
\defineBarLine ";" #'("" ";" "")
%%%%%%% MUSIC %%%%%%%%%


%%%%%%% The A Section %%%%%%%%
trebleA = \relative c'' {
	% Treble A section

	r2 a4 | e' e e8[ d] | c4 a b8[ c] | d4 d b8[ a] | g4 a b | c c c8[ d] | e4 e g | e8[ d] c4 a | b2 \bar "" \break
	a4 | c8[ b] a4 g | a a b | c8[ d] e4 d | e e g | d d e8[ d] | c8[ b] a4 c | d e e | e2 \bar ";" \break

	}

tenorA = \relative c' {
	% Tenor A section

  r2 e4 | a a a8[ g] | a4 a c | d b g8[ f] | e4 e e | a a a8[ g] | a4 a c | e8[ d] c4 d | e2 \bar "" \break
	e4 | e8[ d] c4 e | f d g | e c b8[ a] | g[ a] b4 c8[ b] | a4 a c8[ d] | e[ d] c4 e | d c b | a2 \bar ";" \break

	}

bassA = \relative c' {
	% Bass A section

	r2 a4 | a a a8[ g] | e4 e e | g g c,8[ d] | e4 e e | a a c8[ b] | a4 a e | c8[ d] e4 e | e2 \bar "" \break
	a4 | g e c | d d e | a a g8[ a] | b8[ a] g4 e | a a c8[ b] | a4 a a | g e e | <a a,>2 \bar ";" \break

	}


%%%%%%%% The B Section %%%%%%%%

trebleB = \relative c'' {
	% Treble B section

	\repeat volta 2{
		\bar ";" e4 | g e c | a a b | c8[ d] e4 d | e2\fermata g4 | d d \autoBeamOff e8 d | c4 a b8 c | d4 e e |

		}

		\alternative{
		{\partial 2 e2^\markup {\tiny \halign #0.1 1 } \bar ";."}
		{e2.^\markup {\tiny \halign #0.1 2 } }
		}
	}


tenorB = \relative c' {
	% Tenor B section

	\repeat volta 2{

		\bar ";" e'4 | e8[ d] c4 e | f d g | e c b8[ a] | g( a b4\fermata) c8 b | a4 a \autoBeamOff c8 d | e4 c e8 e | d4 c b |

		}
		\alternative{
		{\partial 2 a2^\markup {\tiny \halign #0.1 1 } \bar ";."}
		{a2.^\markup {\tiny \halign #0.1 2 } \bar "|."}
		}
	}

bassB = \relative c {
	% Bass B section

	\repeat volta 2{

		\bar ";" e4 | c8[ d] e4 c | d d e | a a g8[ a] | b( a g4\fermata) e | a a \autoBeamOff c8 b | a4 a e8 f | g4 e e |
	}

\alternative{
		{\partial 2 <a a,>2 ^\markup {\tiny \halign #0.1 1 } \bar ";."}
		{<a a,>2. ^\markup {\tiny \halign #0.1 2 } \bar "|."}
		}

	}


%%%%%%% TEXT %%%%%%%%%

%%%%%%% The A Section %%%%%%%%

trebleTextA = \lyricmode {
	\teeny
	\set stanza = "1." % VERSE NUMBER (optional)
Ho -- san -- nah to \skip 1 Je -- sus, I'm \skip 1 filled with his \skip 1 prai -- ses,
Come O my dear \skip 1 breth -- ren and help \skip 1 me to sing;
No theme \skip 1 is so charm -- ing, no love \skip 1 is so warm -- ing,
It gives joy and \skip 1 glad -- \skip 1 ness and com -- fort with -- in.

}


tenorTextA = \lyricmode {
	\teeny
	\set stanza = "2." % VERSE NUMBER (optional)
Ho -- san -- nah is \skip 1 ring -- ing, O how I love \skip 1 sing -- ing,
There's no -- thing so \skip 1 sweet as the sound \skip 1 of His name;
The an -- \skip 1 gels in glo -- ry re -- peat the glad \skip 1 sto -- \skip 1 ry
Of \skip 1 love which in \skip 1 Je -- \skip 1 sus is made known to men.
}

bassTextA = \lyricmode {
	\teeny
	}


trebleTextB = \lyricmode {
	\teeny
Ho -- san -- nah, ho -- san -- nah, ho -- san -- \skip 1 nah we'll raise;
Ho -- san -- nah, hal -- le -- lu -- jah to the Lamb for free grace. grace.
	}


tenorTextB = \lyricmode {
	\teeny
	Ho -- san -- \skip 1 nah, ho -- san -- nah, ho -- san -- nah we'll \skip 1 raise;
	Ho -- \skip 1 san -- nah, hal -- le -- lu -- jah to the Lamb for free grace. grace.

	}

bassTextB = \lyricmode {
	\teeny


	}

trebleTextBB = \lyricmode {
	\teeny
			}

altoTextBB = \lyricmode {
	\teeny

		}
tenorTextBB = \lyricmode {
	\teeny


		}
bassTextBB = \lyricmode {
	\teeny

		}

moveLyrics = {
	\override LyricText #'extra-offset =  #'(0 . .7)
	\override LyricHyphen #'extra-offset =  #'(0 . .7)
		}
%%%%%%%%% Don't edit the rest. %%%%%%%%%%%

\score {
	\new ChoirStaff <<

		\new Staff = treble <<
			\new Voice = "treble" {
				\global
        		\trebleA
        		\trebleB
      			}
      		\addlyrics{\trebleTextA \trebleTextB}

    	>>


    	\new Staff = tenor <<
      		\new Voice = "tenor" {
				\global
				\tenorA
				\tenorB
      			}
      		\addlyrics{\tenorTextA \tenorTextB}

    	>>

    	\new Staff = bass <<
    		\clef bass
    		\new Voice = "bass" {
				\global
				\bassA
				\bassB
    		}
    		\addlyrics{\bassTextA \bassTextB}


		>>
  >>
  \layout {
  	indent = 0\cm
    \context {
       \Score
       \remove "Bar_number_engraver"
    	}
	\context{
       \Staff
       \override VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
       \override VerticalAxisGroup #'max-stretch = #'0
       \override BarLine #'extra-spacing-width = #'(-1 . 1)
    }
    \context{
    	\Lyrics
    	\override VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
    	\override VerticalAxisGroup #'max-stretch = #'0

    }
  }
}
