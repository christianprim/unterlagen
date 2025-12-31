#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Hauptsätze der Wärmelehre]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Hauptsätze der Wärmelehre

== Beobachtung
#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Berühren sich zwei Körper unterschiedlicher Temperatur (warmer Körper mit Temperatur #text(fill: red)[$T_1$], kalter Körper mit Temperatur #text(fill: blue)[$T_2$], d.h. $#text(fill: red)[$T_1$]>#text(fill: blue)[$T_2$]$), so zeigt das Experiment, dass sich die Temperaturen der beiden Körper ausgleichen. Beide Körper nehmen eine Temperatur #text(fill: purple)[$T$] an, für die gilt, dass $#text(fill: red)[$T_1$]>#text(fill: purple)[$T$]>#text(fill: blue)[$T_2$]$.
  ],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      rect((), (1, 1), stroke: red, fill: red.lighten(80%), name: "T_1")
      rect((1.015, 0), (rel: (1, 1)), stroke: blue, fill: blue.lighten(80%), name: "T_2")

      rect((4, 0), (rel: (1, 1)), stroke: purple, fill: purple.lighten(80%), name: "T_l")
      rect((5.015, 0), (rel: (1, 1)), stroke: purple, fill: purple.lighten(80%), name: "T_r")

      content((1, 1.5), [Zu Beginn:])
      content((5, 1.5), [Nach einiger Zeit:])
      content((1, -.5), [$#text(fill: red)[$T_1$]>#text(fill: blue)[$T_2$]$])
      content((5, -.5), [$#text(fill: red)[$T_1$]>#text(fill: purple)[$T$]>#text(fill: blue)[$T_2$]$])
      content("T_1", text(fill: red)[$T_1$])
      content("T_2", text(fill: blue)[$T_2$])
      content("T_l", text(fill: purple)[$T$])
      content("T_r", text(fill: purple)[$T$])
    })
  ]
)

Bei der Berührung eines heissen mit einem kalten Körper fliesst somit Energie von selbst vom warmen zum kalten Körper über, bis beide Körper die gleiche Temperatur aufweisen. Dieser Energiefluss nennt man Wärme und bezeichnet ihn mit $Q$.
#v(1em)

== Beschreibung
#v(1em)

#showybox(
  title-style: (
    boxed-style: (
      anchor: (
        x: left,
        y: horizon
      ),
      radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
    )
  ),
  frame: (
    title-color: haupt-farbe.darken(30%),
    body-color: haupt-farbe.lighten(90%),
    border-color: haupt-farbe.darken(30%),
    radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt)
  ),
  title: "1. Hauptsatz",
)[
  Die innere Energie $U$ eines Körpers kann durch Zufuhr von Arbeit $W$ und/oder durch Zufuhr von Wärme $Q$ erhöht werden:

  $ Delta U=W+Q $
]
#v(1em)

#showybox(
  title-style: (
    boxed-style: (
      anchor: (
        x: left,
        y: horizon
      ),
      radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
    )
  ),
  frame: (
    title-color: haupt-farbe.darken(30%),
    body-color: haupt-farbe.lighten(90%),
    border-color: haupt-farbe.darken(30%),
    radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt)
  ),
  title: "2. Hauptsatz",
)[
  Wärme fliesst von selbst nur von einem Körper höherer Temperatur auf einen Körper tieferer Temperatur.

  #align(center)[
    #cetz.canvas({
      import cetz.draw: *
  
      set-style(stroke: .5pt)
  
      rect((), (1, 1), stroke: red, fill: red.lighten(80%), name: "T_1")
      rect((3, 0), (rel: (1,1)), stroke: blue, fill: blue.lighten(80%), name: "T_2")

      line((1.2, 0.5), (2.8, .5), stroke: 1pt, mark: (end: "barbed", scale: 1.5), name: "Q")

      content((.5, -.5), [warm])
      content((3.5, -.5), [kalt])
      content("Q", [$Q$], anchor: "north", padding: 4pt)
      content("T_1", text(fill: red)[$T_1$])
      content("T_2", text(fill: blue)[$T_2$])
    })
  ]
]
