#import "../layout.typ": *

#let gebiet = "Elektrizität"
#let titel = [Drehstrom]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Drehstrom

In einem Drehstromgenerator sind drei Spulen (oder ein Vielfaches davon) in einer regelmässigen, kreisförmigen Anordnung positioniert. 

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    // Magnet
    scope({
      rotate(45deg)
      rect((-1, -.25), (rel: (1, .5)), stroke: green, fill: green.lighten(80%))
      content((-.7, 0), [#std.rotate(-45deg)[#text(fill: green)[S]]])
      rect((0, -.25), (rel: (1, .5)), stroke: red, fill: red.lighten(80%))
      content((.7, 0), [#std.rotate(-45deg)[#text(fill: red)[N]]])
    })
    circle((), radius: 1pt, stroke: blue, fill: blue)

    // L1
    cetz.decorations.coil(line((-180deg, 1.5), (rel: (-180deg, 1.5))), stroke: brown, name: "L1")
    line("L1.end", (rel: (0, 1)), stroke: brown, mark: (end: "barbed"), name: "L1_p")

    // L2
    cetz.decorations.coil(line((60deg, 1.5), (rel: (60deg, 1.5))), stroke: black, name: "L2")
    line("L2.end", (rel: (-30deg, 1)), stroke: black, mark: (end: "barbed"), name: "L2_p")

    // L3
    cetz.decorations.coil(line((-60deg, 1.5), (rel: (-60deg, 1.5))), stroke: gray, name: "L3")
    line("L3.end", (rel: (-150deg, 1)), stroke: gray, mark: (end: "barbed"), name: "L3_p")

    // Neutralleiter
    arc((-180deg, 1.5), start: 180deg, delta: -270deg, radius: 1.5, stroke: blue, mark: (end: "barbed"), name: "N")

    // Beschriftungen
    content("L1_p.end", text(fill: brown)[$L_1$], anchor: "south", padding: 2pt)
    content("L2_p.end", text(fill: black)[$L_2$], anchor: "north-west", padding: 2pt)
    content("L3_p.end", text(fill: gray)[$L_3$], anchor: "east", padding: 2pt)
    content("N.end", text(fill: blue)[$N$], anchor: "east", padding: 2pt)

    // Diagramm
    scope({
      translate(x: 5, y: -2.5)
      set-style(axes: (overshoot: 15pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

      plot.plot(axis-style: "school-book", size: (7,5), x-tick-step: none, y-tick-step: none, x-label: [$t$], y-label: [$U$], x-ticks: ((2*calc.pi, [$T$]), ), y-ticks: ((1, [$hat(U)$]), ), name: "yt", {
        plot.add(y => (calc.sin(y)), domain: (0, 2.5*calc.pi), style: (stroke: brown))
        plot.add(y => (calc.sin(y - 2*calc.pi/3)), domain: (0, 2.5*calc.pi), style: (stroke: black))
        plot.add(y => (calc.sin(y - 4*calc.pi/3)), domain: (0, 2.5*calc.pi), style: (stroke: gray))
        plot.add(((0, 0), (2.5*calc.pi, 0)), style: (stroke: blue))
      })
      content((7.2, 5), text(fill: brown)[$L_1$])
      content((7.2, 0.75), text(fill: black)[$L_2$])
      content((7.2, 1.75), text(fill: gray)[$L_3$])
      content((7.2, 2.75), text(fill: blue)[$N$])
    })
  })
]

Ein Ende jeder Induktionsspule wird zu einem gemeinsamen Neutralleiter (#text(fill: blue)[$N$]) zusammengeführt. Die anderen Ausgänge bilden die drei Aussenleiter (auch Phasen genannt) und werden mit #text(fill: brown)[$L_1$], #text(fill: black)[$L_2$] und #text(fill: gray)[$L_3$] bezeichnet.

== Sternschaltung

#grid(
  columns: (auto, 1fr),
  gutter: .5cm,
  [
    #circuit({
      import zap: *

      set-style(scale: (x: .5, y: .5))
      
      node("sternpunkt", (0, 0), stroke: blue, fill: false, label: (content: text(fill: blue)[$N$], anchor: "east"))
      node("l1", (-180deg, 2), stroke: brown, fill: false, label: (content: text(fill: brown)[$L_1$], anchor: "west"))
      node("l2", (60deg, 2), stroke: black, fill: false, label: (content: text(fill: black)[$L_2$], anchor: "north-east"))
      node("l3", (-60deg, 2), stroke: gray, fill: false, label: (content: text(fill: gray)[$L_3$], anchor: "south-east"))
      
      resistor("r1", "sternpunkt", "l1", u: (content: text(fill: blue)[$qty("230", "V")$], label-distance: 6pt))
      resistor("r2", "sternpunkt", "l2", u: (content: text(fill: blue)[#rotate(-60deg)[$qty("230", "V")$]], label-distance: 6pt))
      resistor("r3", "sternpunkt", "l3", u: (content: text(fill: blue)[#rotate(60deg)[$qty("230", "V")$]], label-distance: 6pt))
    })
  ],
  [
    In einer _Sternschaltung_ werden die einzelnen Lasten jeweils zwischen einem Aussenleiter und dem Neutralleiter #text(fill: blue)[$N$] angeschlossen. Dabei liegt an jeder Last eine effektive Spannung von $#text(fill: blue)[$U$]=qty("230", "V")$ an. Sind die Lasten gleichmässig auf die drei Aussenleiter verteilt (symmetrische Belastung), ist die Summe der Ströme Null, und im Neutralleiter fliesst kein Strom:

    $
    #text(fill: brown)[$L_1$] + #text(fill: black)[$L_2$] + #text(fill: gray)[$L_3$] = 0
    $

    Dies lässt sich am zeitlichen Verlauf der Spannungen im Diagramm oben nachvollziehen.
  ]
)

== Dreieckschaltung
In einer _Dreieckschaltung_ werden die Lasten direkt zwischen zwei Aussenleitern angeschlossen. Dadurch wird eine höhere effektive Spannung von $#text(fill: blue)[$U$]=qty("400", "V")$ erreicht. Das Diagramm verdeutlicht dies durch die Darstellung der Spannungsdifferenz zwischen zwei Aussenleitern (hier: $#text(fill: black)[$L_2$] - #text(fill: brown)[$L_1$]$).

#align(center)[
  #circuit({
    import zap: *
    import cetz-plot: *

    set-style(scale: (x: .5, y: .5))

    // Schaltschema
      node("l1", (-180deg, 2), stroke: brown, fill: false, label: (content: text(fill: brown)[$L_1$], anchor: "west"))
      node("l2", (60deg, 2), stroke: black, fill: false, label: (content: text(fill: black)[$L_2$], anchor: "north-east"))
      node("l3", (-60deg, 2), stroke: gray, fill: false, label: (content: text(fill: gray)[$L_3$], anchor: "south-east"))
      
      resistor("r1", "l1", "l2", u: (content: text(fill: blue)[#rotate(-30deg)[$qty("400", "V")$]], label-distance: 6pt))
      resistor("r2", "l2", "l3", u: (content: text(fill: blue)[#rotate(-90deg)[$qty("400", "V")$]], label-distance: 6pt))
      resistor("r3", "l3", "l1", u: (content: text(fill: blue)[#rotate(30deg)[$qty("400", "V")$]], label-distance: 6pt))


    // Diagramm
    cetz.draw.scope({
      cetz.draw.translate(x: 5.35, y: -2.5)
      cetz.draw.set-style(axes: (overshoot: 15pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

      plot.plot(axis-style: "school-book", size: (7,5), x-tick-step: none, y-tick-step: none, x-label: [$t$], y-label: [$U$], x-ticks: ((2*calc.pi, [$T$]), ), y-ticks: ((1, [$hat(U)$]), (calc.sqrt(2.99), text(fill: green)[$hat(U)$])), name: "yt", {
        plot.add(y => (calc.sin(y)), domain: (0, 2.5*calc.pi), style: (stroke: brown))
        plot.add(y => (calc.sin(y - 2*calc.pi/3)), domain: (0, 2.5*calc.pi), style: (stroke: black))
        plot.add-fill-between(y => (calc.sin(y)), y => (calc.sin(y - 2*calc.pi/3)), domain: (0, 2.5*calc.pi), style: (stroke: none, fill: haupt-farbe.transparentize(80%)))
        plot.add(y => (calc.sin(y - 2*calc.pi/3)-calc.sin(y)), domain: (0, 2.5*calc.pi), style: (stroke: haupt-farbe))
      })
      cetz.draw.content((7.2, 4), text(fill: brown)[$L_1$])
      cetz.draw.content((7.2, 1.75), text(fill: black)[$L_2$])
      cetz.draw.content((6.77, 0.75), [$L_2-#text(fill: brown)[$L_1$]$])
    })
  })
]
