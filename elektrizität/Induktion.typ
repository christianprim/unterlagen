#import "../layout.typ": *

#let gebiet = "Elektrizität"
#let titel = [Elektromagnetische Induktion]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Übungsblatt

== 1. Theorie auffrischen
+ Wann wird eine Spannung induziert? Beschreiben Sie möglichst genau.
+ Wovon hängt die Grösse der induzierten Spannung ab?

== 2. Diagramm interpretieren
+ Zeichnen Sie im folgenden Magnetischer-Fluss – Zeit – Diagramm die induzierte Spannung qualitativ korrekt ein.

  #align(center)[
    #cetz.canvas({
      import cetz-plot: *
      import cetz.draw: *

      set-style(axes: (shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt)))

      plot.plot(axis-style: "school-book", size: (10,5), x-tick-step: none, y-tick-step: none, x-label: [$t$], y-label: text(haupt-farbe)[$italic(Phi)$], name: "yt", {
        plot.add(((0,0), (1.5,2.5), (3,2.5), (4,-1.5),(5.5,-1.5), (8,0), (9.8,0)), style: (stroke: haupt-farbe))
      })
    })
  ]

- Überlegen Sie sich auch, wie der gezeichnete Verlauf des magnetischen Flusses zustande kommen könnte. Beschreiben Sie eine Möglichkeit ausführlich.

== 3. Eine Spule wird durch das Magnetfeld gezogen
Durch ein Magnetfeld konstanter Flussdichte ($#text(fill: aqua)[$B$]=qty("5e-5", "Tesla")$) wird eine Rechteckspule (1000 Windungen, alle Seiten $qty("20", "cm")$} lang) mit konstanter Geschwindigkeit $#text(fill: blue)[$v$]=qty("10", "cm/s")$ gezogen. Zu Beginn befindet sich die Spule vollständig ausserhalb des Magnetfeldes (Abbildung 1). Am Schluss verlässt sie das Magnetfeld wieder vollständig (Abbildung 3).
#grid(
  columns: (1fr, 1fr, 1fr),
  align: center,
  row-gutter: 1em,
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      for x in (0, .5, 1, 1.5, 2, 2.5){
        for y in (0, .5, 1, 1.5){
          content((x, y), text(fill: aqua, baseline: -0.02em)[$times.o$])
        }
      }

      rect((-1.75, .25), (rel: (1, 1)), stroke: 1pt + orange)
      line((-.75, .75), (rel: (1, 0)), stroke: 1pt + blue, mark: (end: "barbed"), name: "v")

      content((1.25, 2), text(fill: aqua)[$arrow(B)$])
      content("v.40%", text(fill: blue)[$arrow(v)$], anchor: "south", padding: 2pt)
    })
  ],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      for x in (0, .5, 1, 1.5, 2, 2.5){
        for y in (0, .5, 1, 1.5){
          content((x, y), text(fill: aqua, baseline: -0.02em)[$times.o$])
        }
      }

      rect((.75, .25), (rel: (1, 1)), stroke: 1pt + orange)
      line((1.75, .75), (rel: (1, 0)), stroke: 1pt + blue, mark: (end: "barbed"), name: "v")

      content((1.25, 2), text(fill: aqua)[$arrow(B)$])
      content("v", text(fill: blue)[$arrow(v)$], anchor: "south", padding: 2pt)
    })
  ],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      for x in (0, .5, 1, 1.5, 2, 2.5){
        for y in (0, .5, 1, 1.5){
          content((x, y), text(fill: aqua, baseline: -0.02em)[$times.o$])
        }
      }

      rect((3.25, .25), (rel: (1, 1)), stroke: 1pt + orange)
      line((4.25, .75), (rel: (1, 0)), stroke: 1pt + blue, mark: (end: "barbed"), name: "v")

      content((1.25, 2), text(fill: aqua)[$arrow(B)$])
      content("v", text(fill: blue)[$arrow(v)$], anchor: "south", padding: 2pt)
    })
  ],
  [Abbildung 1], [Abbildung 2], [Abbildung 3]
)

+ Zeichnen Sie qualitativ korrekt den Verlauf der induzierten Spannung in einem $#text(fill: blue)[$U_"ind"$]$ – $t$ – Diagramm.

+ Berechnen Sie anschliessend die induzierte Spannung für den in a) gezeichneten Verlauf.

+ Was würde sich ändern, wenn anstelle der Rechteckspule eine Dreieckspule durch das Magnetfeld gezogen würde? Beschreiben Sie Ihre Erwartungen möglichst genau.

#grid(
  columns: (1fr, 1fr),
  align: center,
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      for x in (0, .5, 1, 1.5, 2, 2.5){
        for y in (0, .5, 1, 1.5){
          content((x, y), text(fill: aqua, baseline: -0.02em)[$times.o$])
        }
      }

      line((-1.75, .25), (rel: (1, 1)), (rel: (0, -1)), close: true, stroke: 1pt + orange)
      line((-.75, .75), (rel: (1, 0)), stroke: 1pt + blue, mark: (end: "barbed"), name: "v")

      content((1.25, 2), text(fill: aqua)[$arrow(B)$])
      content("v.40%", text(fill: blue)[$arrow(v)$], anchor: "south", padding: 2pt)
    })
  ],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      for x in (0, .5, 1, 1.5, 2, 2.5){
        for y in (0, .5, 1, 1.5){
          content((x, y), text(fill: aqua, baseline: -0.02em)[$times.o$])
        }
      }

      line((-1.75, .25), (rel: (1, 0)), (rel: (-1, 1)), close: true, stroke: 1pt + orange)
      line((-1.25, .75), (rel: (1, 0)), stroke: 1pt + blue, mark: (end: "barbed"), name: "v")

      content((1.25, 2), text(fill: aqua)[$arrow(B)$])
      content("v", text(fill: blue)[$arrow(v)$], anchor: "south", padding: 2pt)
    })
  ]
)
