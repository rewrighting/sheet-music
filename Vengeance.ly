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
	page-count = #2 % Limit the page size and system count here.
	system-count = #4
	paper-width = 11\in
    paper-height = 8.5\in
    top-margin = .7\in
    left-margin = .4\in
		bottom-margin = .7\in
	}

\header {
	title = \markup \bold \smaller
		"VENGEANCE." % TITLE    METER
	arranger = \markup \small
		"Rebecca Wright, 2024." % COMPOSER
	meter = \markup \small
		"E Minor     Micah 6:8–16." % KEY      POET
	tagline = \markup \small
		"" % Copyright info if applicable; leave blank otherwise.
}


global = {
  \key 	e				%KEY NOTE
  		%\major 	\sacredHarpHeads	%Uncomment the mode
  		\minor \set shapeNoteStyles = #'#(la mi fa #f la fa #f la)

  \numericTimeSignature	% The SH doesn't use Common/Cut Time symbols
  \time 4/4				%TIME SIGNATURE as n/n


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
\defineBarLine ";.." #'("" ";.." "")
%%%%%%% MUSIC %%%%%%%%%


%%%%%%% The A Section %%%%%%%%
trebleA = \relative c'' {
	% Treble A section
\autoBeamOff
	b4 b b e | d d d2 | b4 d8 c b4 b | a1
	e'2 e4 b | d( b) a a | b2( a) | g4 fis2.
	r1 r1 | b4 c b a | b2 b | b2. \bar "."
	r4 r1 r1 r1 r1
	r1 r1 r1 r1
	r1 r1 r1
	e2 b | d a | b2. r4
	r1 r2. b4 | b2 e4 d | e b d a | b4 b2. r2.
	b4 | d2 d4 a | b b2 r4 r1 r1
	\bar "." \break
    \time 2/4
\bar ";"
	b4 b | b d8[ c] | b4 a | b2
	e4 d | e e | g8 fis e e | d2
	b4 b | b d8[ c] | b4 a | b2

		\time 2/2
	e,2 fis | g b4 b | a1 | g2 fis | e4 e2.
	\bar ";"
\override Score.GraceSpacing.spacing-increment = #0.025	\grace s
	\bar ".."
}
altoA = \relative c'' {
	% Alto A section
\autoBeamOff
	g4 g8[ fis] e4 e | fis e d2 | d4 d8 e d4 fis | e1
	r1 r1 r1 r1
	g4 fis e e | fis d e e | e2 g | e d | e2.

	r4 r1 r1 r1 r1
	b'2 b4 a | g fis g d | e( g) fis8[ e] d4 | e4 e2.
	e2 fis | g b | a1
	r1 r1 r2.
	r4 | r1 r1 r2. e4 | e2 e4 fis | g e fis d | e4 e2.
	r1 r1 r1 r1
    \time 2/4

	g4 g | e b'8[ a] | g4 a | b2
	g4 fis | e e | d8 e d e | fis2
	g4 g | e b'8[ a] | g4 a | b2

		\time 2/2
	g2 fis | e e4 d | e1 | d2 d | e4 e2.
	\bar ";"
\override Score.GraceSpacing.spacing-increment = #0.025	\grace s
	\bar ".."
	}

tenorA = \relative c' {
	% Tenor A section
\autoBeamOff
	e4 e8[fis] g4 e | b' b a2 | b4 a8 g fis4 d | e1
	r1 r1 r1 r1
	r1 b'4 c b a | g a g fis | g2 fis | e2.

	b'4 | e2 d | e4 e2. | d4( c) b a | b b2.
	r1 r1 r1 r1
	r1 r1 r1
	e2 g | fis d | e2. r4

	r2. b4 | b2 e4 d | e b d a | b4 b2. r1 r1
	r1 r2. b4 | b( a) g fis | e e2.
    \time 2/4

	e'4 b | e g8[ fis] | e4 d e2
	b4 a | b b | d8 c b a | b2
	e4 b | e g8[ fis] | e4 d e2

	\time 2/2
	b2 b | b g4 fis | e1 | d2 fis | e4 e2.
	\bar ";"
\override Score.GraceSpacing.spacing-increment = #0.025	\grace s
	\bar ".."

	}

bassA = \relative c {
	% Bass A section
\autoBeamOff
	e4 g e e | b b d2 | g4 d8 e8 b4 b | e1
	r1 r1 r1 r1
	e4 fis g e | b b e e | g2 d | e b | e2.
	r4 r1 r1 r1 r1

	r1 r1 r1 r1
	g2 a | b b, | e1
	r1 r1 r2. \bar "." \break

	e4 | e2 e4 fis | g2 d | e b | e4 e2. r1 r1
	r1 r2. e4 | e2 b4 b | e e2.

    \time 2/4

	e4 e | g d | e b | e2
	e4 b | e g | g8 e d e | b2
	e4 e | g d | e b | e2

	\time 2/2
	e2 e | e b4 b | a1 | b2 b | e4 e2.
	\bar ";"
	\override Score.GraceSpacing.spacing-increment = #0.25	\grace s
	\bar ".."
	}


%%%%%%%% The B Section %%%%%%%%

trebleB = \relative c'' {
	% Treble B section


	}

altoB = \relative c' {
	% Alto B section


}
tenorB = \relative c'' {
	% Tenor B section

}

bassB = \relative c {
	% Bass B section



	}


%%%%%%% TEXT %%%%%%%%%

%%%%%%% The A Section %%%%%%%%

trebleTextA = \lyricmode {
	\teeny
He hath showed thee what is good,
And what the Lord re -- quires:
Do just -- ly, love mer -- cy, love mer -- cy,
And walk hum -- bly with thy God.

Shall I count them pure?

The rich men there -- of are full of vio -- lence;
Their tongue is de -- ceit -- ful.

Thou shalt sow but shalt not reap;
Thou shalt eat but not be sat -- is -- fied;
Thou shalt sow but shalt not reap;
Ye shall bear the re -- proach of my peo -- ple.
}


altoTextA = \lyricmode {
	\teeny
	\repeat unfold 13 {\skip 1}
	And walk hum -- bly, and walk hum -- bly,
	hum -- bly with thy God.

	Are there yet treas -- ures in the house of the wick -- ed?

	Shall I count them pure?

	The rich men there -- of are full of vio -- lence;
	}

tenorTextA = \lyricmode {
	\teeny
	\set stanza = "" % VERSE NUMBER (optional)
	He hath showed thee what is good,
	And what the Lord re -- quires:

	And walk hum -- bly, and walk hum -- bly
  with thy God.

	The Lord's voice cri -- eth un -- to the ci -- ty:

	Shall I count them pure?

	The rich men there -- of are full of vio -- lence;
	Their tongue is de -- ceit -- ful.

	Thou shalt sow but shalt not reap;
	Thou shalt eat but not be sat -- is -- fied;
	Thou shalt sow but shalt not reap;
	Ye shall bear the re -- proach of my peo -- ple.

}

bassTextA = \lyricmode {
	\teeny
	\repeat unfold 13 {\skip 1}
	And walk hum -- bly, and walk hum -- bly,
	hum -- bly with thy God.

	Shall I count them pure?
	The rich men there -- of are full of vio -- lence;

	}


trebleTextB = \lyricmode {
	\teeny


	}

altoTextB = \lyricmode {
	\teeny


	}

tenorTextB = \lyricmode {
	\teeny


	}

bassTextB = \lyricmode {
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
