%!TEX TS-program = lilypond
%!TEX encoding = UTF-8 Unicode

%%%%%% Sacred Harp Template 0.2 %%%%%%

% a template for easy engraving of shapenote tunes in the style of the
% 1991 edition of the Sacred Harp.
%
% Leland Paul Kusmer – lelandpaul@thypyramids.com – February 2011
%
% For more information, see thypyramids.com/fasola

\version "2.13.48"
\include "sacredHarpStyle.ly"
\include "english.ly"
#(set-global-staff-size 19)


\paper {
	page-count = #1 % Limit the page size and system count here.
	system-count = #2
	paper-width = 10\in
    paper-height = 7\in
    top-margin = .4\in
    left-margin = .5\in
    bottom-margin = .4\in

	}


\header {
	title = \markup   \bold \fontsize #-3
		"BALM IN GILEAD.   7,6."   % TITLE    METER
	arranger = \markup \bold \tiny
		"Arr. - Rebecca Wright, 2018." % COMPOSER
	meter = \markup \bold \tiny
		"F Minor    Meta Husser-Schweizer, 1837." % KEY      POET
	tagline = \markup \tiny
		"" % Copyright info if applicable; leave blank otherwise.
}

%\header {
%title =  \markup {  \fontsize #-7
%	\fill-line {
%        \concat { \fontsize #1 \medium "F Minor" \hspace #0.5 \fontsize #1 \medium "Meta Heusser-Schweitzer, 1837." }
%         \concat {  \fontsize #3 \sans "BALM IN GILEAD" \fontsize #3 \sans "." \hspace #0.5 \fontsize #3 \sans "7,6." }
%        \concat { \fontsize #1 \medium "arr. Rebecca Wright, 2012-18."
%        }
%       }
%}
%tagline = \markup \tiny
%		"" % Copyright info if applicable; leave blank otherwise.
%}


global = {
  \key 	f				%KEY NOTE
  		%\major 	\sacredHarpHeads	%Uncomment the mode
  		\minor \set shapeNoteStyles = #'#(la mi fa #f la fa #f la)

  \numericTimeSignature	% The SH don't use Common/Cut Time symbols
  \time 4/4				%TIME SIGNATURE as n/n
\transpose f fs'

%%%%%%%%% Don't Change %%%%%%%%%%
  \once \override Score.Breakalignment #'break-align-orders =
        #(make-vector 3 '(left-edge
                          clef
                          key-signature
                          time-signature
                          staff-bar
                          ))
  \override Staff.BarLine #'stencil = #with-shapenote-repeats
  \override Score.VoltaBracket #'stencil = ##f
	\autoBeamOff
}
\defineBarLine ";." #'("" ":" "")
%%%%%%% MUSIC %%%%%%%%%

%%%%%%% The a Section %%%%%%%%
treblea = \relative c'' {
	% Treble a section


		r2 c4( bf) | af4. af8 af4 af | c ef2 f4 | ef4. c8 bf4 af | f2
		af4( bf) | af4. af8 af4 af | c ef2 c4 | ef4. ef8 f4 ef | c2.

	}

altoa = \relative c'' {
	% alto a section


		r2 af4( f) | ef4. ef8 ef4 ef | f af2 af4 | bf4. af8 f4 ef | f2
		af4( f) | ef4. ef8 ef4 ef | f af2 af4 | bf4. af8 f4 ef | f2.

	}

tenora = \relative c' {
	% Tenor a section


		r2 ef4( f) | af4. af8 af4 ef | f af2 c4 | bf4. c8 bf4 af | c2
		ef,4( f) | af4. af8 af4 ef | f af2 c4 | bf4. c8 af4 ef | f2.

	}

bassa = \relative c' {
	% Bass a section


		r2 af4( f) | ef4. ef8 ef4 ef | f af2 af4 | bf4. af8 f4 ef | f2
		af4( f) | ef4. ef8 ef4 ef | f af2 f4 | ef4. c8 c4 c | f2.

	}


%%%%%%%% The B Section %%%%%%%%

trebleB = \relative c'' {
	% Treble B section

	\repeat volta 2{
		\bar ";"
		af4 | \break c2. c4 | c4 ef2 c4 | c4. af8  bf4 c | ef4.( bf8  c4)
		af  | c2. c4 | c4 ef2 c4 | ef4. ef8 f4 ef |
	}

	\alternative{
		{\partial 2. c2.^\markup {\tiny \halign #0.1 1 } \bar ";."}
		{c1^\markup {\tiny \halign #0.1 2 } \bar "|."}
		}

	}


altoB = \relative c' {
	% alto B section

	\repeat volta 2{
		\bar ";"
		af'4  | af2. af4 | af4 c2 bf4 | af4. af8  f4 af | \slurUp ef4.( f8  f4)
		af  | af2. af4 | af4 c2 af4 | bf4. af8 f4 ef |

	}

	\alternative{
		{\partial 2. f2.^\markup {\tiny \halign #0.1 1 } }
		{f1^\markup {\tiny \halign #0.1 2 } \bar "|."}
		}
}
tenorB = \relative c'' {
	% Tenor B section

	\repeat volta 2{
		\bar ";"
		af4  | f2. ef4 | f4 af2 c4 | ef4. ef8  f4 ef | c4.( bf8 af4)
		af  | f2. ef4 | f4 af2 c4 | bf4. c8 af4 ef |

	}

	\alternative{
		{\partial 2. f2.^\markup {\tiny \halign #0.1 1 } }
		{f1^\markup {\tiny \halign #0.1 2 } \bar "|."}
		}
}
bassB = \relative c' {
	% Bass B section

	\repeat volta 2{
		\bar ";"
		ef,4  | f2. c4 | f4 af2 bf4 | af4. af8  f4 ef | c4.( bf8 c4)
		ef  | f2. c4 | f4 af2 f4 | ef4. c8 c4 c |

	}

	\alternative{
		{\partial 2. f2.^\markup {\tiny \halign #0.1 1 } }
		{f1^\markup {\tiny \halign #0.1 2 } \bar "|."}
		}
}
%%%%%%% TEXT %%%%%%%%%

%%%%%%% The A Section %%%%%%%%

trebleTexta = \lyricmode {
	\teeny
	\set stanza = "1." % VERSE NUMBER (optional)
	Long hast thou wept and sor -- rowed,
	Poor mourn -- er, dry thy tears;
	Be -- hold, with light and com -- fort,
	The God of love ap -- pears.
		}

altoTexta = \lyricmode {
	\teeny
	\set stanza = "2." % VERSE NUMBER (optional)
	The storm may roar a -- bout you,
    Your heart may low be laid;
    But God is ev -- er near you, 
    And can you be dis -- mayed?		}

tenorTexta = \lyricmode {
	\teeny
	\set stanza = "3." % VERSE NUMBER (optional)
	The seed, be -- fore it flou -- rish,
	Must low in dark -- ness lie;
	And love, to live for -- ev -- er,
	Must for a sea -- son die.
	}

bassTexta = \lyricmode {
	\teeny
	\set stanza = "" % VERSE NUMBER (optional)
		}

altoTextaa = \lyricmode {
	\teeny
	\set stanza = ""
	}

trebleTextB = \lyricmode {
	\teeny
	There’s balm in Gil -- ead,
	To cure a sin -- sick soul;
	There’s balm in Gil -- ead,
	To make the wound -- ed whole. whole.
	}

altoTextB = \lyricmode {
	\teeny
	There’s balm in Gil -- ead,
	To cure a sin -- sick soul;
	There’s balm in Gil -- ead,
	To make the wound -- ed whole.  whole.
	}

%tenorTextB = \lyricmode {
%	\teeny
%	There's balm in Gil -- e -- ad,
%	To cure a sin -- sick soul;
%	There is balm in Gil -- e -- ad,
%	To make the wound -- ed whole.
%	}

bassTextB = \lyricmode {
	\teeny
	}

moveLyrics = {
	\override LyricText #'extra-offset =  #'(0 . .7)
	\override LyricHyphen #'extra-offset =  #'(0 . .7)
		}
%%%%%%%%% Don't edit the rt. %%%%%%%%%%%

\score {
	\new ChoirStaff <<

		\new Staff = treble <<
			\new Voice = "treble" {
				\global
        		\treblea
        		\trebleB
      			}
      		\addlyrics{\trebleTexta \trebleTextB}

    	>>

    	\new Staff = alto <<
    		\new Voice = "alto" {
				\global
				\altoa
				\altoB
    			}
    		\addlyrics{\altoTexta \altoTextB}
    		\addlyrics{\moveLyrics \altoTextaa}
    	>>

    	\new Staff = tenor <<
      		\new Voice = "tenor" {
				\global
				\tenora
				\tenorB
      			}
      		\addlyrics{\tenorTexta \trebleTextB}
    	>>

    	\new Staff = bass <<
    		\clef bass
    		\new Voice = "bass" {
				\global
				\bassa
				\bassB
    		}
    		\addlyrics{\bassTexta \bassTextB}

		>>
  >>
  \layout {
  	indent = 0\cm
    \context {
       \Score
       \remove "Bar_number_engraver"
    	}
	\context { \Score
			\override LyricText #'font-size = #1      %Default is -1.5. Adjust this to -1.75, -2, etc. if needed to squeeze output
			\override StanzaNumber #'font-size = #1    %Should match LyricTex #'font-size
			%	\override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 2)
			%	Determines which note is the primary unit for spacing; 4=quarter note, 2=half note, etc.
			%	Experiment with this setting to improve spacing, if possible.
			%	\override LyricHyphen #'minimum-distance = #0.5  %used to force hyphenation
		}
	\context{
       \Staff
       \override VerticalaxisGroup #'minimum-Y-extent = #'(-0 . 0)
       \override VerticalaxisGroup #'max-stretch = #'0
       \override BarLine #'extra-spacing-width = #'(-1 . 1)
    }
    \context{
    	\Lyrics
    	\override VerticalaxisGroup #'minimum-Y-extent = #'(-0 . 0)
    	\override VerticalaxisGroup #'max-stretch = #'0

    }
    \context { \Lyrics
% 		controls spacing between lyrics and staffs; uncomment to modify
%			\override VerticalAxisGroup #'nonstaff-nonstaff-spacing =  %spacing between verses
%				#'((basic-distance . 1)
%				  (stretchability . 0)
%				  (padding . 0.4)
%				  (minimum-distance . 0.5))
%			\override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = 	%spacing to staff above lyric
%				#'((basic-distance . 0)
%				  (stretchability . 0)
%				  (padding . 1)
%				  (minimum-distance . 1))
%			\override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing = %spacing to staff below lyric
%				#'((basic-distance . 0)
%				  (stretchability . 1000)
%				  (padding . 1)
%				  (minimum-distance . 1))
		}

  }
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 104 4) %Sets the metronome speed and value of the beat
		}
	}
}
