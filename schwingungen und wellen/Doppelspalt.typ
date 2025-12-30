#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Schwingungen und Wellen"
#let titel = [Der Doppelspalt]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)1)")
//#set math.equation(numbering: "(1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Der Doppelspalt

== Was Sie bereits wissen
Sie haben erfahren, unter welchen Umständen konstruktive und destruktive Interferenz zustande kommen.

Die Bedingung für ein Interferenzmaximum lautet:

$
sin alpha_"max"=(n lambda)/#text(fill: green)[$d$]
$

== Was Sie jetzt tun
Sie leiten selbständig die Formel her, um aus dem Interferenzmuster des Doppelspaltes auf den Abstand #text(fill: green)[$d$] der beiden Spalten zu schliessen.

Dazu betrachten Sie das Interferenzmuster von Laserlicht, welches an einem Doppelspalt gebeugt wird (siehe Abbildung). Das Interferenzmuster, welches auf einen Schirm projiziert wird, weist vom Doppelspalt eine Entfernung #text(fill: blue)[$l$] auf. Der Abstand zwischen den ersten beiden (und auch den darauf folgenden) Helligkeits-Maxima sei #text(fill: red)[$s$].

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    set-style(stroke: 0.5pt)

    rect((-4, .3), (rel: (1.2, .5)), fill: black, name: "laser-box")
    rect("laser-box.east", (rel: (0.3, 0.1)), anchor: "north", name: "strahl", fill: black)
    
    line((0, -1), (0, .3), stroke: 2pt)
    line((0, .35), (0, 0.7), stroke: 2pt)
    line((0, .75), (0, 2.1), stroke: 2pt)

    line("strahl", (0, .55), stroke: red)
    line((-0.25, .325), (-0.25, .725), stroke: green, mark: (symbol: "|"), name: "d")
    line((6, -1.5), (6, 2.6), name: "schirm")
    line((0, -0.125), (6, -0.125), stroke: blue, mark: (symbol: "|"), name: "l")

    for y in (-.45, 0, .45, .9, 1.35){
      line((6, y), (rel: (0, .2)), stroke: red + 1pt)
    }

    line((6.25, .55), (6.25, 1), stroke: red, mark: (symbol: "|"), name: "s")

    line((0, .55), (6, .55), stroke: (paint: gray, dash: "dash-dotted"), name: "lot")
    on-layer(-1,line((0, .55), (6, 1), stroke: (paint: red, dash: "dotted"), name: "rot"))

    cetz.angle.angle("rot.start", "lot", "rot", radius: 3, label-radius: 2.8, label: box(baseline: -0.2em)[$alpha$])
    
    content("d.end", text(fill: green)[$d$], anchor: "east", padding: 3pt) 
    content("l", text(fill: blue)[$l$], anchor: "north", padding: 1pt)
    content("s.60%", text(fill: red)[$s$], anchor: "west", padding: 2pt)
    content((0, 2.4), [Doppelspalt])
    content("laser-box", text(fill: white)[Laser])
    //content("schirm.96.5%", [Schirm], anchor: "west", padding: 2pt)
  })
]

== Wie Sie vorgehen

+ Stellen Sie eine Gleichung mithilfe von #text(fill: red)[$s$] und #text(fill: blue)[$l$] für den Winkel $alpha_"max"$ auf, wie er in der Abbildung eingezeichnet ist.
  #schreibpapier(height: 2.01cm)
  
+ Aus der Mathematik wissen Sie, dass bei kleinen Winkeln der Sinus und der Tangens eines Winkels durch den Winkel selber angenähert werden kann: 
  
  $sin alpha approx tan alpha approx alpha$.

  Vereinfachen Sie beide Gleichungen und setzen Sie gleich.
  #schreibpapier(height: 2.01cm)

+ Wie gross ist der Abstand #text(fill: green)[$d$]?
  #schreibpapier()
