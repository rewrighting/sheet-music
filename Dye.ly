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
	system-count = #2
	paper-width = 11\in
    paper-height = 8.5\in
    top-margin = .8\in
    left-margin = .5\in
    right-margin = .5\in
    system-system-spacing.basic-distance = #20
  
	}

\header {
	title = \markup \bold \smaller
		"DETERMINATION. 8,8,8,6." % TITLE    METER
	subtitle = \markup \bold \tiny
		""
	arranger = \markup \bold \tiny
		"Rebecca Wright, 2025." % COMPOSER
	meter = \markup \bold \tiny
		"G Minor    Rebecca Wright, 2025." % KEY      POET
	tagline = \markup \tiny
		"" % Copyright info if applicable; leave blank otherwise.
}


global = {
  \key 	g				%KEY NOTE
  		%\major 	\sacredHarpHeads	%Uncomment the mode
  		\minor \set shapeNoteStyles = #'#(la mi fa #f la fa #f la)

  \numericTimeSignature	% The SH doesn't use Common/Cut Time symbols
  \time 6/4				%TIME SIGNATURE as n/n


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
\defineBarLine ";|" #'("" ":" "")
\defineBarLine ";" #'("" ";" "")
%%%%%%% MUSIC %%%%%%%%%

%%%%%%% The A Section %%%%%%%%
trebleA = \relative c'' {
	% Treble A section
r2. d2. | d2 c4 d2 d4 | c2 d4 f2 f4 | g( f) d f2 c4 | d2 bes4 a2
g4 | d'2 c4 d2 d4 | c2 d4 f2 f4 | d4( c) bes c2 f4 | d1.


	}


altoA = \relative c'' {
	% Alto A section
r2. g2. | g2 a4 bes2 g4 | a2 g4 f2 f4 | g2 g4 f2 f4 | g2 d4 f2 
d4 g2 a4 bes2 g4 | a2 g4 f2 f4 | g2 g4 f( g) a | g1.


	}

tenorA = \relative c'' {
	% Tenor A section

r2. g2. | bes2 a4 g2 d'4 | f2 d4 c2 c4 | d( c) bes c( bes) a | g2 f4 d2 
g4 | bes2 a4 g2 d'4 | f2 d4 c2 d4 | g( f) d c( bes) a | g1. \bar "." \override Score.GraceSpacing.spacing-increment = #0.025	\break \grace s 


	}

bassA = \relative c' {
	% Bass A section
r2. g2. | d2 d4 g2 g4 | f2 d4 f2 f4 | bes,( c) d f2 f4 | g2 d4 d2
g4 | d2 d4 g2 g4 | f2 d4 f2 g4 | bes( a) g f2 d4 | <g g,>1.
	

	}


%%%%%%%% The B Section %%%%%%%%

trebleB = \relative c'' {
	% Treble B section
	d2. d | d2 f4 d2. | c a | f2 g4 a2. 
	d2. d | d2 f4 g2 f4 | d4( c) bes c2 f4 | d1. 
	}

altoB = \relative c'' {
	% Alto B section
	bes2. g | g2 f4 d2. | f f | a2 g4 f( g a) | 
	bes2. g | g2 f4 d2 f4 | g2 g4 f( g) a | g1. 

	}

tenorB = \relative c'' {
	% Tenor B section
\bar ";"
	d2. d | d2 bes8[ a] g2. | c2. c | c2 a8[ g] f2. |
	d'2. d | d2 bes8[ a] g2 d'4 | g( f) d c( bes) a | g1.

		\bar  ";" \override Score.GraceSpacing.spacing-increment = #0.025	\grace s \bar".."
	}

bassB = \relative c' {
	% Bass B section
	g2. g | d2 d4 d2. | f f | f2 d4 c2. 
	g'2. g | d2 d4 d2 g4 | bes( a) g f2 d4 | <g g,>1. 
	\override Score.GraceSpacing.spacing-increment = #0.025	\grace s

	}


%%%%%%% TEXT %%%%%%%%%

%%%%%%% The A Section %%%%%%%%

trebleTextA = \lyricmode {
	\teeny
	\set stanza = "1." % VERSE NUMBER (optional)

While trav' -- ling through this world be -- low,
I must be well pre -- pared to go,
To find where streams of mer -- cy flow,
And build my -- self a home.

	}
trebleTextAA = \lyricmode {
		\teeny
		\set stanza = "2."
		When dark -- ness and when foes sur -- round,
	I'll seek those plains where joy is found,
	Where peace -- ful wa -- ters do a -- bound,
	And build my -- self a home.

		
		}

altoTextA = \lyricmode {
	\teeny
	\set stanza = "" % VERSE NUMBER (optional)

	}

tenorTextA = \lyricmode {
	\teeny
	\set stanza = "3." % VERSE NUMBER (optional)
	When sun -- set paints a rain -- bow sky,
O’er val -- leys low and moun -- tains high,
I’ll lay my trav'  -- ling ar -- mor by,
And build my -- self a home.


	}

	tenorTextAA = \lyricmode {
		\teeny
		\set stanza = "4."
		And at the dawn when I a -- wake,
I’ll to the paths and high -- ways take,
And stran -- gers in -- to com -- rades make,
And build my -- self a home.

		
		}

		tenorTextAAA = \lyricmode {
			\teeny
			\set stanza = ""
			
			}

bassTextA = \lyricmode {
	\teeny
	\set stanza = "" % VERSE NUMBER (optional)
	}

trebleTextB = \lyricmode {
	\teeny
		I will jour -- ney forth,
	I will jour -- ney forth,
	I will jour -- ney forth,
	And build my -- self a home.
	
	}

altoTextB = \lyricmode {
	\teeny
	}

tenorTextB = \lyricmode {
	\teeny
	I will jour -- ney  \skip 1 forth,
	I will jour -- ney  \skip 1 forth,
	I will jour -- ney \skip 1 forth,
	And build my -- self a home.
	}

bassTextB = \lyricmode {
	\teeny
	\skip 1
	}

moveLyrics = {
	%\override LyricText #'extra-offset =  #'(0 . .9)
	%\override LyricHyphen #'extra-offset =  #'(0 . .9)
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
		\addlyrics{\moveLyrics \trebleTextAA}


    	>>

    	\new Staff = alto <<
    		\new Voice = "alto" {
				\global
				\altoA
				\altoB
    			}
    		\addlyrics{\altoTextA \altoTextB}

    	>>

    	\new Staff = tenor <<
      		\new Voice = "tenor" {
				\global
				\tenorA
				\tenorB
      			}
						\addlyrics{\tenorTextA \tenorTextB}
						\addlyrics{\moveLyrics \tenorTextAA}
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
     %  \override VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
    %   \override VerticalAxisGroup #'max-stretch = #'0
     %  \override BarLine #'extra-spacing-width = #'(-1 . 1)
    }
    \context{
    	\Lyrics
    	%\override VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
    	%\override VerticalAxisGroup #'max-stretch = #'0

    }
  }
}
