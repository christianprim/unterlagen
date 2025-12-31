#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Absoluter Nullpunkt]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

== Absoluter Nullpunkt

== Aufgabe
Bestimmen Sie die Celsiustemperatur des absoluten Nullpunkts mit Hilfe eines eingeschlossenen Gases.

== Theorie
Für ein ideales Gas gilt, dass das Gasvolumen proportional zur Kelvintemperatur ist, wenn der Druck konstant gehalten wird (isobar). Das Volumen eines eingeschlossenen Gases strebt also gegen Null, wenn die Temperatur sich dem absoluten Nullpunkt nähert. Durch die Bestimmung einiger Volumina, die ein eingeschlossenes Gas bei unterschiedlichen Temperaturen und konstantem Druck einnimmt, kann mittels Extrapolation auf den absoluten Nullpunkt geschlossen werden. 

#showbox("Beispiel einer Messung", haupt-farbe)[
  #align(center)[
    #cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      set-style(axes: (overshoot: 7pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)
  
      plot.plot(axis-style: "school-book", size: (13,5), x-tick-step: 100, y-tick-step: 20, y-min: 0, x-min: -300, x-max: 130, x-ticks: ((-263.5), ), x-label: [#text(fill: red)[$theta.alt$] in °C], y-label: [$V$ in ml], name: "xt", {
        plot.add(((23.4, 80), (29.6, 81.7), (36.3, 83.6), (41.6, 85.2), (48.2, 87), (53.8, 88.6), (59.4, 90.1), (64.4, 91.4), (69.3, 92.8), (75, 95.5)), style: (stroke: none), mark: "o", mark-style: (fill: red.lighten(50%), stroke: red), mark-size: 2pt)
        plot.add(y => (.2793*y+73.49), domain: (-300, 100))
      })
    })
  ]
]

Die sogenannte Regressionsgerade schneidet beim absoluten Nullpunkt die Temperaturachse. Beim Beispiel etwas zu tief bei $qty("-263.5", "Celsius")$.

== Experiment
Befolgen Sie die bereitgelegte Anleitung genau.

== Protokoll
Nebst den Messwerten ist das Volumen-Temperatur-Diagramm ganz zentral. Dieses zeichnen Sie mittels Tabellenkalkulation oder dem bereits installierten Programm #link("https://www.vernier.com/downloads/graphical-analysis/")[#text(fill: blue)[`graphical Analysis`]], wo Sie die Messwerte manuell erfassen können. Achten Sie darauf, dass die Regressionsgerade bei $V=0$ die Temperaturachse schneidet, damit ein Ablesen des absoluten Nullpunkts möglich ist.

