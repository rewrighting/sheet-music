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
#(set-global-staff-size 17)


\paper {
	page-count = #1 % Limit the page size and system count here.
	system-count = #3
	paper-width = 11\in
    paper-height = 8.5\in
    top-margin = .4\in
    left-margin = .5\in
    bottom-margin = .4\in

	}

\header {
	title = \markup   \bold \fontsize #-1
		"DURHAM.   11s."   % TITLE    METER
	subtitle = \markup \italic \medium \tiny
		"Star of Columbia."
	arranger = \markup \bold \tiny
		"Matilda T. Durham, arr. Rebecca Wright, 2019." % COMPOSER
	meter = \markup \bold \tiny
		"A Minor    	Maria DeFleury, 1791." % KEY      POET
	tagline = \markup \tiny
		"" % Copyright info if applicable; leave blank otherwise.
}

global = {
  \key 	a				%KEY NOTE
  		%\major 	\sacredHarpHeads	%Uncomment the mode
  		\minor \set shapeNoteStyles = #'#(la mi fa #f la fa #f la)

  \numericTimeSignature	% The SH don't use Common/Cut Time symbols
  \time 2/4				%TIME SIGNATURE as n/n


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

%%%%%%% MUSIC %%%%%%%%%

%%%%%%% The a Section %%%%%%%%
treblea = \relative c'' {
	% Treble a section


		r4 e8[ d] | c4 c8 d | e[ d] e e | g4 g8 e | d4
		c8[ d] | e8.[ d16] e8 f | g[ e] d e | g4 g8 a | g4
		e8[ d] | c4 c8 d | e8.[ d16] e8 e | g4 g8 e | d4
		c8[ b] | a8.[ b16] c8 d | e[ d] g e | a4 e8 d | e2 \bar "."

	}

altoa = \relative c' {
	% alto a section

		r4 e4 | a a8 g | a4 b8 a | g4 g8 e | g4
		e  | e8.[ d16] e8 e | g8[ e] d e | g4 g8 a | g4
		c8[ b] | a4 a8 g | a4 b8 a | g4 g8 e | g4
		a | c8.[ b16] a8 a | g4 g8 e | a4 a8 g | a2 \bar "."

	}

tenora = \relative c'' {
	% Tenor a section


		r4 c8[ b] | a4 a8 b | a[ g] e e | c'8.[ d16] e8 c | d4
		e8[ g] | a8.[ g16] e8 d | c[ a] g e | g4 g8 a | g4
		e8[ g] | a4 a8 b | a[ g] e e| c'8.[ d16] e8 c | d4
		e8[ g] | a8.[ g16] e8 d | c[ a] g e | a4 a8 b | a2 \bar "."

	}

bassa = \relative c' {
	% Bass a section


		r4 a4 | a a8 g | a4 e8 e | c8.[ d16] e8 e | g4
		e  | a8.[ g16] e8 e | c4 d8 e | g4 g8 a | g4
		a | a c8 b | a4 e8 e | c8.[ d16] e8 e | g4
		e | a8.[ g16] e8 e | c4 d8 e | a4 e8 e | <a a,>2 \bar "."

	}


%%%%%%%% The B Section %%%%%%%%

trebleB = \relative c'' {
	% Treble B section

	\repeat volta 2{
		r4 c8[ d] | e8.[ d16] c8 b | a8.[ b16] c8 d | e4 e8 c | d4
		c8[ d] | e8.[ d16] e8 f | g[ e] d e | g4 g8 a | g4
		e8[ d] | c4 c8 d | e8.[ d16] e8 e | g4 g8 e | d4
		c8[ b] | a8.[ b16] c8 d | e[ d] g e | a4 e8 d | e2 \bar "|."
	}


}

altoB = \relative c' {
	% alto B section
	\repeat volta 2{
		r4 e4 | e8.[ d16] e8 g | a8.[ b16] c8 a | a4 a8 c | d4
		c | a8.[ g16] a8 a | g[ e] d8 e | g4 g8 a | g4
		c8[ b] | a4 a8 g | a4 b8 a | g4 g8 e | g4
		a | c8.[ b16] a8 a | g4 g8 e | a4 a8 g | a2 \bar "|."
	}

}
tenorB = \relative c'' {
	% Tenor B section

	\repeat volta 2{
		r4 e8[ g] | a8.[ g16] e8 d | c8.[ d16] e8 f | g8.[ e16] g8 a | g4
		e8[ g] | a8.[ g16] e8 d | c[ a] g e | g4 g8 a | g4
		e8[ g] | a4 a8 b | a[ g] e e| c'8.[ d16] e8 c | d4
		e8[ g] | a8.[ g16] e8 d | c[ a] g e | a4 a8 b | a2 \bar "|."

	}

}
bassB = \relative c' {
	% Bass B section

	\repeat volta 2{

		r4 a4 | a8.[ g16] a8 b | c8.[ a16] g8 a | c4 c8 a | g4
		e  | a8.[ g16] e8 e | c4 d8 e | g4 g8 a | g4
		a | a c8 b | a4 e8 e | c8.[ d16] e8 e | g4
		e | a8.[ g16] e8 e | c4 d8 e | a4 e8 e | <a a,>2 \bar "|."
	}

	}
%%%%%%% TEXT %%%%%%%%%

%%%%%%% The A Section %%%%%%%%

trebleTexta = \lyricmode {
	\teeny
	\set stanza = "1." % VERSE NUMBER (optional)
	Thou sweet glid -- ing Ke -- dron, by thy sil -- ver stream
    Our Sav -- ior at mid -- night, when moon -- light's pale beam
    Shone bright on thy wa -- ters, would fre -- quent -- ly stray,
    And lose in thy mur -- murs the toils of the day.
		}

altoTexta = \lyricmode {
	\teeny
	\set stanza = "" % VERSE NUMBER (optional)
	 		}

tenorTexta = \lyricmode {
	\teeny
	\set stanza = "2." % VERSE NUMBER (optional)
	O gar -- den of Ol -- i -- vet, dear hon -- ored spot!
    The fame of thy won -- der shall ne'er be for -- got;
    The theme most trans -- port -- ing to ser -- aphs a -- bove,
    The tri -- umph of sor -- row, the tri -- umph of love.
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
	How damp were the va -- pors that fell on his head!
    How hard was his pil -- low! how hum -- ble his bed!
    The an -- gels, a -- ston -- ished, grew sad at the sight,
    And fol -- lowed their Mas -- ter with sol -- emn de -- light.

	}

altoTextB = \lyricmode {
	\teeny

	}

tenorTextB = \lyricmode {
	\teeny
	Come, saints and a -- dore him; come, bow at his feet!
    Oh, give him the glo -- ry, the praise that is meet;
    Let joy -- ful ho -- san -- nas un -- ceas -- ing -- ly rise,
    And join the full cho -- rus that glad -- dens the skies.
	}

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
      		\addlyrics{\tenorTexta \tenorTextB}
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
%			\override LyricText #'font-size = #1      %Default is -1.5. Adjust this to -1.75, -2, etc. if needed to squeeze output
%			\override StanzaNumber #'font-size = #1    %Should match LyricTex #'font-size
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
