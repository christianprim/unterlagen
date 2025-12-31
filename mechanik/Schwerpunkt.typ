#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Der Schwerpunkt]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Der Schwerpunkt

== Geometrisch einfache Körper

- Zeichnen Sie in folgenden Körpern den Schwerpunkt ein!

  #grid(
    columns: (1fr, 1fr),
    align: (center, center + horizon),
    inset: (y: 0.5em),
    [#cetz.canvas({
      import cetz.draw: *

      set-style(stroke: 0.5pt)

      circle((), radius: 2.3)
    })],
    [#cetz.canvas({
      import cetz.draw: *

      set-style(stroke: 0.5pt)

      rect((), (3.5, 3.5))
      line((0, 0), (1.7, 0.7), (5.2, 0.7), stroke: (dash: "dotted"))
      line((1.7, 0.7), (rel: (0, 3.5)), stroke: (dash: "dotted"))
      line((0, 3.5), (1.7, 4.2), (5.2, 4.2), (5.2, 0.7), (3.5, 0))
      line((3.5, 3.5), (5.2, 4.2))
    })],
    [Kreisscheibe],
    [Würfel#v(1cm)],
    
    grid.cell(colspan: 2)[#cetz.canvas({
      import cetz.draw: *

      set-style(stroke: 0.5pt)

      rect((), (7.8, 1.2))
    })],
    grid.cell(colspan: 2)[Kartonscheibe]
  )

- Erklären Sie, weshalb der Schwerpunkt im Dreieck der Schnittpunkt der 	Seitenhalbierenden ist!

  #grid(
    columns: (1fr, 1fr),
    gutter: 1cm,
    [#cetz.canvas({
      import cetz.draw: *

      set-style(stroke: 0.5pt)

      let A = (0, 0)
      let B = (8, 0)
      let C = (5.3, 3.3)

      line(A, B, C, close: true)
      hide(line(A, C, name: "b"))
      hide(line(B, C, name: "a"))
      
      for y in range(10){
        let yc = y + 1
        hide(line((0, yc*0.3), (8, yc*0.3), name: "p"))
        intersections("l", "b", "p")
        intersections("r", "a", "p")
        line("l.0", (rel: (0, -0.3)), stroke: haupt-farbe)
        line("l.0", "r.0", stroke: haupt-farbe)
        line("r.0", (rel: (0, -0.3)), stroke: haupt-farbe)
      }
    })], 
    [Das Dreieck wurde in einfache Teile zerlegt, bei denen Sie den Schwerpunkt direkt angeben können.
  
    Mithilfe dieser Zeichnung sollte Ihnen die Beantwortung der Frage leichter fallen!]
  )
  
  #schreibpapier(height: 3.21cm)

- Muss der Schwerpunkt immer innerhalb des Körpers liegen? Wo liegt er zum Beispiel bei der WC-Rolle?
  #schreibpapier()

== Berechnung der Koordinaten des Schwerpunktes

Nachstehend sind zwei Bälle der Massen $m_1$ und $m_2$ über eine masselose Stange verbunden.

Wo liegt der Schwerpunkt dieser beiden Bälle?

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    set-style(stroke: 0.5pt)

    line((), (10, 0), stroke: gray)
    circle((0, 0), radius: 1.5pt,stroke: blue, fill:blue, name: "DA")
    circle((2.5, 0), radius: .8, stroke: haupt-farbe, fill: gradient.radial(haupt-farbe.lighten(80%), haupt-farbe, center: (25%, 25%)), name: "m_1")
    circle((7.5, 0), radius: .2, stroke: haupt-farbe, fill: gradient.radial(haupt-farbe.lighten(80%), haupt-farbe, center: (25%, 25%)), name: "m_2")
    circle((4, 0), radius: 1.5pt,stroke: green, fill:green, name: "S")
    line((2.5, 0), (rel: (0, -2.5)), stroke: red + 1pt, mark: (end: "barbed"), name: "F_1")
    line((7.5, 0), (rel: (0, -.75)), stroke: red + 1pt, mark: (end: "barbed"), name: "F_2")
    line((4, 0), (rel: (0, 3.25)), stroke: red + 1pt, mark: (end: "barbed"), name: "F_S")
    line((0, -.5), (7.5, -.5), stroke: green, mark: (symbol: "|"), name: "x_2")
    line((0, .5), (2.5, .5), stroke: green, mark: (symbol: "|"), name: "x_1")
    line((0, 1.2), (4, 1.2), stroke: green, mark: (symbol: "|"), name: "x_S")

    content("x_1", frame: "rect", text(fill: green)[$x_1$], fill: white, stroke: none, padding: 3pt)
    content("x_2", frame: "rect", text(fill: green)[$x_2$], fill: white, stroke: none, padding: 3pt)
    content("x_S", frame: "rect", text(fill: green)[$x_S$], fill: white, stroke: none, padding: 3pt)
    content("DA", text(fill: blue)[DA], anchor: "east", padding: 2pt)
    content("S", text(fill: green)[S], anchor: "south-east", padding: 2pt)
    content("F_1", [$#text(fill: red)[$arrow(F)_1$] = m_1#text(fill: red)[$arrow(g)$]$], anchor: "west", padding: 3pt)
    content("F_2", [$#text(fill: red)[$arrow(F)_2$] = m_2#text(fill: red)[$arrow(g)$]$], anchor: "west", padding: 3pt)
    content("F_S", text(fill: red)[$arrow(F)_S$], anchor: "west", padding: 3pt)
    content("m_1", [$m_1$], anchor: "south")
    content("m_2", [$m_2$], anchor: "south", padding: 7pt)
  })
]

- Überlegen Sie sich zuerst, wie gross der Betrag der Kraft #text(fill: red)[$arrow(F)_S$] ist!
  #schreibpapier(height: 1.61cm)

- Um den Ort des Schwerpunktes zu bestimmen, berechnen Sie anschliessend das Drehmoment aller beteiligten Kräfte bezüglich der gezeichneten Drehachse (#text(fill: blue)[DA]):
  
  #text(fill: red)[
  $M_1=$

  $M_2=$
  
  $M_S=$
  ]
- Was muss für die Drehmomente gelten, wenn die beiden Bälle im Gleichgewicht sind?
  #schreibpapier(height: 1.21cm)
  
- Lösen die erhaltene Gleichung nach #text(fill: green)[$x_S$] auf!

  #text(fill: green)[$x_S=$]

- Wie ändert sich obige Gleichung für 3 oder mehr Körper? Allgemein lässt sich die $x$-Koordinate des Schwerpunktes nach folgender Formel bestimmen:

  #text(fill: green)[$x_S=$]

Durch ähnliche Überlegungen lassen sich die weiteren Koordinaten des Schwerpunkts berechnen.

== Testfrage
Wo liegt der Schwerpunkt von Erde und Mond, vom Mittelpunkt der Erde aus gemessen?

$m_"Erde" = qty("5.98e24", "kg")$; $m_"Mond" = qty("7.35e22", "kg")$; Abstand zwischen den Mittelpunkten $d = qty("384400", "km")$
#schreibpapier()
