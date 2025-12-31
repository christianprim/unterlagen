#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Das 2\. #smallcaps[Newton]sche Axiom]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.checkmark], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Das Aktionsprinzip

== Vorüberlegungen

Wir wissen, dass eine Kraft die Ursache für eine Beschleunigung ist. Im Experiment versuchen wir nun, den physikalischen Zusammenhang herauszufinden.

== Das Experiment

#grid(
  columns: (auto, 7cm), 
  gutter: 2em,

  [Auf einer reibungsarmen Fahrbahn ist ein Wagen der Masse $m$ aufgelegt. Dieser Wagen wird nun mit konstanter Kraft #text(fill: red)[$arrow(F)$] (die der Gewichtskraft #text(fill: red)[$arrow(F)_G$] des Gewichtsteins der Masse $M$ entspricht) gezogen. Um die Beschleunigung #text(fill: red)[$a$] des Wagens zu berechnen, messen wir die zurückgelegte Strecke #text(fill: green)[$s$] mit einem berührungslosen Längenmessgerät.],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: 0.5pt)

      scope({
        rotate(45deg)
        rect((0, -0.05), (0.5, 0.05))
      })
      circle((45deg, 0.5), radius: 0.2, fill: white, name: "umlenkrolle")
      rect((-6, -0.15), (0.05, 0.05), fill: gray.lighten(50%))

      line("umlenkrolle.east", (rel: (0,-1.5)), name: "vertical")
      rect("vertical.end", (rel: (0.5, 0.5)), anchor: "north-east", fill: haupt-farbe.lighten(80%), name: "M", stroke: haupt-farbe)
      line("M.center", (rel: (0, -1)), stroke: red, mark: (end: "barbed"), name: "F_G")
      line("umlenkrolle.north", (rel: (-5, 0)), name: "horizontal")
      rect("horizontal.end", (rel: (2, 0.6)), anchor: "north-east", fill: haupt-farbe.lighten(50%), stroke: haupt-farbe, name: "m")
      line("m.east", (rel: (1, 0)), stroke: red, mark: (end: "barbed"), name: "F")
      circle((-4, 0.15), radius: 0.1, fill: black)
      circle((-5.31, 0.15), radius: 0.1, fill: black)
      line("m.south", (rel: (0, -0.2)), mark: (end: (scale: 0.6, symbol: "barbed")), stroke: 1pt)
      line((-6, -0.5), (-4.65, -0.5), mark: (symbol: "|"), stroke: green, name: "DeltaS")
      
      content("M", [$M$], anchor: "west", padding: 10pt)
      content("m", [$m$])
      content("F_G.60%", text(fill: red)[$arrow(F)_G$], anchor: "west", padding: 3pt)
      content("F", text(fill: red)[$arrow(F)$], anchor: "south", padding: 3pt)
      content("DeltaS", text(fill: green)[$Delta s$], anchor: "north", padding: 2pt)
    })
  ]
)

== Berechnung der Beschleunigung
Der Computer kann aus der Distanzmessung auch die Geschwindigkeit angeben, indem er sie aus den Wegunterschieden #text(fill: green)[$Delta s$] zwischen zwei Messungen errechnet. Die Beschleunigung berechnen wir anschliessend über die Geradensteigung im Geschwindigkeit-Zeit-Diagramm.

Muss die Steigung noch umgerechnet werden, um die Beschleunigung zu erhalten?
#schreibpapier(height: 1.61cm)

== Messung

+ Abhängigkeit der Beschleunigung von der Wagenmasse $m$:

  $M=$ #h(2cm) kg

  #grid(
    columns: 2, gutter: 2em,
    [
      #table(
        columns: (2.5cm, 2.5cm),
        align: (center, center),
        stroke: 0.5pt + haupt-farbe,
        [$m$ in kg], [#text(fill: red)[$a$] in $unit("m/s^2")$],
        [#v(1em) ], [],
        [#v(1em) ], [],
        [#v(1em) ], []
      )
    ], [Folgerung: \ \ $#text(fill: red)[$a$] prop$]
  )

+ Abhängigkeit der Beschleunigung von der beschleunigenden Kraft (bestimmt durch $M$):

  $m=$ #h(2cm) kg

  #grid(
    columns: 2, gutter: 2em,
    [
      #table(
        columns: (2.5cm, 2.5cm),
        align: (center, center),
        stroke: 0.5pt + haupt-farbe,
        [$M$ in kg], [#text(fill: red)[$a$] in $unit("m/s^2")$],
        [#v(1em) ], [],
        [#v(1em) ], [],
        [#v(1em) ], []
      )
    ], [Folgerung: \ \ $#text(fill: red)[$a$] prop$]
  )

Zusammengefasst:

#cbox(color: haupt-farbe)[$#text(fill: red)[$F_"res"$]=#h(3cm)$]
