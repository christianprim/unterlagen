#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Der Schweredruck]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Der Schweredruck

== Das Experiment

#grid(
  columns: 2,
  gutter: 2em,
  [#align(horizon)[
    #cetz.canvas({
      import cetz.draw: *
  
      set-style(stroke: 0.5pt)

      rect((0.8, 0), (2.2, 5.5), stroke: none, fill: aqua.lighten(50%))
      
      line((-0.3, 0), (6, 0), stroke: 1pt)
      line((0.8, 0), (rel: (0, 6)))
      line((2.2, 0), (2.2, 0.7), (2.3, 0.7))
      line((2.3, 0.8), (rel: (180deg, 0.1)), (rel: (90deg, 1.5)), (rel: (0deg, 0.1)))
      
      line((2.3, 2.4), (rel: (180deg, 0.1)), (rel: (90deg,1.5)), (rel: (0deg, 0.1)))
      
      line((2.3, 4), (rel: (180deg, 0.1)), (rel: (90deg, 2)))
      line((0.8,5.5), (2.2,5.5), stroke: purple, name: "A")

      line((0.45, 5.45), (0.45, 3.95), stroke: green, mark: (symbol: "|"), name: "h_1")
      line((0, 5.45), (0, 0.75), stroke: green, mark: (symbol: "|"), name: "h_2")

      content("h_1", text(fill: green)[$h_1$], frame: "rect", fill: white, stroke: none, padding: 3pt)
      content("h_2", text(fill: green)[$h_2$], frame: "rect", fill: white, stroke: none, padding: 3pt)
      content("A", text(fill: purple)[$A$], anchor: "south", padding: 2pt)
    })
  ]
  ],
  [Ein zylinderförmiges Gefäss weist auf verschiedenen Höhen Bohrungen auf. Es wird fortlaufend mit Wasser aufgefüllt.
  - Wo spritzt das Wasser am Weitesten hinaus? In der Höhe #text(fill: green)[$h_1$] oder #text(fill: green)[$h_2$]? Zeichnen Sie die einzelnen Wasserstrahlen ein.
    #schreibpapier(height: 2.01cm)

  - Weshalb beobachtet man dieses Verhalten?
    #schreibpapier(height: 2.01cm)
  ]
)

 == Die Auswertung
Wir vermuten, dass die Gewichtskraft der Wassersäule über der Bohrung den Druck und somit die Auslaufgeschwindigkeit des Wassers durch das Loch bestimmt:

$ #text(fill: blue)[$p$]=#text(fill: red)[$F_G$]/#text(fill: purple)[$A$] $

Um die Gewichtskraft der Wassersäule zu berechnen, brauchen wir die Masse des Wassers, die über der Bohrung liegt. Da wir die Dichte des Wassers kennen, benötigen wir nur noch das Volumen der Wassersäule, das sich aus der Querschnittsfläche #text(fill: purple)[$A$] des Zylindergefässes und der Tiefe #text(fill: green)[$h$] bestimmen lässt:

#h(1cm)$V =$

Daraus folgt für die Wassermasse (Dichte bei $qty("20", "Celsius")$: $qty("998", "kg/m^3")$):

#h(1cm)$m =$

Somit gilt für die Gewichtskraft:

#h(1cm)$#text(fill: red)[$F_G$] = m #text(fill: red)[$g$] = $

und für den Schweredruck:

#h(1cm)$#text(fill: blue)[$p$] =$

Wir stellen also fest:

- Der Schweredruck ist ................................................ zur Tiefe!

== Wichtig!
Um den Gesamtdruck in der Tiefe #text(fill: green)[$h$] zu berechnen, muss der Luftdruck #text(fill: blue)[$p_0$] dazu gezählt werden!
