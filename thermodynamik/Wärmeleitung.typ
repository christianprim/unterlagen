#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Wärmeleitung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Wärmeleitung

== Das Gesetz
#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Das Gesetz zur Wärmeleitung beschreibt, welche Wärmemenge #text(fill: aqua)[$Delta Q$] durch ein Material der Dicke #text(fill: green)[$Delta x$] in der Zeitspanne $Delta t$ hindurchströmt, wenn die Querschnittsfläche des Materials #text(fill: red)[$A$] und die Temperaturdifferenz zwischen Hinter- und Vorderseite des Materials $Delta T$ ist:
    #v(.7em)
    $ 
    #text(fill: aqua)[$Delta Q$]/(Delta t)=-lambda (Delta T)/#text(fill: green)[$Delta x$] #text(fill: red)[$A$]
    $

  ],
  [
    #cetz.canvas({
      import cetz.draw: *
      
      set-style(stroke: .5pt)

      line((), (2, 0), (2, 2), (0,2))
      line((0, 0), (0, 2), (-.5, 3), (-.5, 1), close: true, fill: red.lighten(80%))
      line((-0.5, 1), (rel: (2, 0)), (2, 0), stroke: (dash: "dotted"))
      line((1.5, 1), (rel: (0, 2)), stroke: (dash: "dotted"))
      line((2, 2), (1.5, 3), (rel: (-2, 0)))
      line((-.5, 3.3), (rel: (2, 0)), stroke: green, mark: (symbol: "|"), name: "x")
      scope({
        translate(y: .2)
        line((1.75, .8), (rel: (-1, 0)), (rel: (0, -.4)), (rel: (-.5, .6)), (rel: (.5, .6)), (rel: (0, -.4)), (rel: (1, 0)), close: true, fill: aqua.lighten(50%), stroke: aqua)
      })
      on-layer(-1,line((.25, 1.2), (rel: (-.25, .5)), (rel: (.5, .6)), (rel: (.25, -.5)), fill: aqua.lighten(70%), stroke: aqua))
      line((1.75, 1.4), (rel: (-.25, .5)), (rel: (-.8, 0)), (0.75, 1.8), (rel: (0,-.4)), close: true, fill: aqua.lighten(20%), stroke: aqua)

      content((-.35, 2.3), [#std.rotate(60deg)[#skew(ax: 60deg)[#text(fill: red)[$A$]]]])
      content((-1, 1.5), [$T$])
      content((2.9, 1.5), [$T + qty("1", "K")$])
      content("x", text(fill: green)[$Delta x$], anchor: "south", padding: 1pt)
 
      content((1, 1.18), text(fill: aqua.darken(20%))[$Delta Q$])
    })
  ]
)

Die Materialkonstante $lambda$ heisst _Wärmeleitfähigkeit_ und nimmt einen grossen Wert an, wenn der Stoff wärmedurchlässig ist, sie ist bei einem Wärmeisolator klein. $[lambda]=qty("1", "Watt per meter per Kelvin")$

== Mehrere Schichten
Um die Wärmeleitung durch mehrere unterschiedliche Schichten zu berechnen, verwendet die Baubranche den sogenannten "k-Wert". Die _Wärmedurchgangszahl_ $k$ gibt die Wärmemenge an, die durch eine Schicht der Dicke #text(fill: green)[$x$] pro Quadratmeter Fläche und pro Sekunde hindurch strömt, wenn zwischen den beiden Flächen eine Temperaturdifferenz von $qty("1", "Kelvin")$ herrscht. Es gilt:

$
k=lambda/x#h(1cm) [k]=qty("1", "W/m^2/K")
$

Für mehrere Schichten gilt: (Index 1 bezeichnet jeweils die erste Schicht, Index 2 die zweite, etc.)

$
1/k=#text(fill: green)[$x_1$]/lambda_1 + #text(fill: green)[$x_2$]/lambda_2 + dots = sum #text(fill: green)[$x_i$]/lambda_i
$

== Aufgabe
Ein Einfamilienhaus habe eine $qty("30", "cm")$ dicke Backsteinmauer ($lambda=qty("0.7", "Watt per Meter per Kelvin")$).

+ Wie gross ist die Wärmedurchgangszahl $k$?

+ Wie viel Energie gibt das Haus an einem kalten Wintertag über die Wände ab, wenn die Fläche der Hauswand $qty("200", "m^2")$ und die Temperaturdifferenz zwischen Innenraum und dem Freien $qty("30", "Kelvin")$ beträgt?

+ Wie gross ist $k$ und die abgegebene Energie, wenn der Besitzer das Haus zusätzlich mit einer Isolationsschicht ($lambda=qty("0.03", "Watt per Meter per Kelvin")$) von $qty("10", "cm")$ Dicke versieht?
  #schreibpapier()
