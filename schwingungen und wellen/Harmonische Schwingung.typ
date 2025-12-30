#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Schwingungen und Wellen"
#let titel = [Harmonische Schwingung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#let differenzieren = false

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Mathematische Beschreibung einer harmonischen Schwingung

== Situation
Sie haben in der Stunde festgestellt, dass sich eine harmonische Schwingung als Projektion einer Kreisbewegung darstellen lässt. In der folgenden Abbildung ist die Situation noch einmal grafisch dargestellt:

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    set-style(stroke: .5pt)
    set-style(axes: (overshoot: .5cm, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    let yy = calc.sin(calc.pi/4)

    circle((0, 0), radius: 2, stroke: gray, name: "c")
    line("c.135deg", (5, 2*yy), stroke: (dash: "dotted"))
    line("c.225deg", (5, -2*yy), stroke: (dash: "dotted"))
    line("c.90deg", (5, 2), stroke: (dash: "dotted"))
    line("c.270deg", (5, -2), stroke: (dash: "dotted"))
    line((-2, 0), (5, 0), stroke: (dash: "dotted"))

    line((0, 0), (2.6, 0), mark: (end: "barbed"), name: "x-achse")
    line((0, 0), (0, 2.6), mark: (end: "barbed"), name: "y-achse")

    line((0, 0), (45deg, 2), stroke: red, name: "r")

    cetz.angle.angle((0, 0), "x-achse", "r", radius: 0.9, label: text(baseline: -0.02em)[$phi$], label-radius: 0.6)

    for i in range(8) {
      let a = i*45
      circle("c."+str(a)+"deg", radius: .25, fill: gradient.radial(white, haupt-farbe, center: (25%, 25%)), stroke: haupt-farbe)
      content((i*45deg, 2), [#i])
    }

    cetz.decorations.coil(line((3.5, .25), (3.5, 2.75)), amplitude: 0.3, segments: 20)
    rect((3, 2.75), (4, 3), stroke: none, fill: gradient.linear(gray, white, angle: -90deg))
    line((3, 2.75), (4, 2.75), stroke: 1pt)
    
    
    circle((3.5, 0), radius: .25, fill: gradient.radial(white, haupt-farbe, center: (25%, 25%)), stroke: haupt-farbe, name: "0")
    circle((3.5, 2*yy), radius: .25, fill: gradient.radial(white, haupt-farbe, center: (25%, 25%)), stroke: haupt-farbe, name: "1")
    circle((3.5, 2), radius: .25, fill: gradient.radial(white, haupt-farbe, center: (25%, 25%)), stroke: haupt-farbe, name: "2")

    scope({
      translate(x: 5, y: -2)
      plot.plot(axis-style: "school-book", size: (8,4), x-tick-step: 1, y-tick-step: none, x-label: [$t$], y-label: text(fill: green)[$y$], name: "yt", {
        plot.add(y => (calc.sin(y*calc.pi/4)), domain: (0, 8), style: (stroke: green))
        plot.add(((2, 0), (2, 1)), style: (stroke: (paint: black, dash: "dotted")))
        plot.add(((0, 1), (2, 1)), style: (stroke: (paint: black, dash: "dotted")))
        plot.add(((1, 0), (1, yy)), style: (stroke: (paint: black, dash: "dotted")))
        plot.add(((3, 0), (3, yy)), style: (stroke: (paint: black, dash: "dotted")))
        plot.add(((0, yy), (3, yy)), style: (stroke: (paint: black, dash: "dotted")))
        plot.add(((6, 0), (6, -1)), style: (stroke: (paint: black, dash: "dotted")))
        plot.add(((0, -1), (6, -1)), style: (stroke: (paint: black, dash: "dotted")))
        plot.add(((5, 0), (5, -yy)), style: (stroke: (paint: black, dash: "dotted")))
        plot.add(((7, 0), (7, -yy)), style: (stroke: (paint: black, dash: "dotted")))
        plot.add(((0, -yy), (7, -yy)), style: (stroke: (paint: black, dash: "dotted")))
      })
    })
    content("r", text(fill: red)[$r$], anchor: "south-east")
    content("0", [0])
    content("1", [1])
    content("2", [2])
    content("x-achse.end", [$x$], anchor: "south", padding: 2pt)
    content("y-achse.end", text(fill: green)[$y$], anchor: "east", padding: 2pt)
    content((0, -3), align(center)[gleichförmige \ Kreisbewegung])
    content((3.5, -3), [Federpendel])
    content((9.5, -3), [Elongation-Zeit-Diagramm der Schwingung])
  })
]

== Ihre Aufgabe
- Bestimmen Sie zuerst die Abhängigkeit des Winkels $phi$ von der Zeit (Kreisbewegung):

  $phi=$

- Eine Schwingung ist nichts anderes als die Projektion der Kreisbewegung auf die #text(fill: green)[$y$]-Achse:

  $#text(fill: green)[$y$]=$

- Überlegen Sie sich, welcher Grösse der Kreisradius #text(fill: red)[$r$] entspricht und ersetzen Sie ihn in der vorher erhaltenen Formel:

  $#text(fill: green)[$y$]=$

#if differenzieren {[
- Mithilfe der Ableitung können Sie sowohl die Geschwindigkeit $#text(fill: blue)[$v$]= (dif #text(fill: green)[$y$]) / (dif t)$ als auch die Beschleunigung $#text(fill: red)[$a$]=(dif^2#text(fill: green)[$y$]) / (dif t^2)$ eines schwingenden Körpers bestimmen:

  $#text(fill: blue)[$v$]=$
  
  $#text(fill: red)[$a$]=$
]} else {[
- Die Steigung im #text(fill: green)[$y$]-$t$-Diagramm entspricht der Geschwindigkeit. Zeichnen Sie qualitativ korrekt die Steigungsgeraden zu den geraden Zeiten im obigen Diagramm mit blauer Farbe ein. Überprüfen Sie, dass die Gleichung für die Geschwindigkeit die Steigung Ihrer blauen Geraden gut beschreibt:

  $#text(fill: blue)[$v$]=#text(fill: purple)[$omega$] #text(fill: green)[$hat(y)$] cos(#text(fill: purple)[$omega$] t)$

- Ähnliche Überlegungen führen zum zeitlichen Verlauf der Beschleunigung:

  $#text(fill: red)[$a$]=-#text(fill: purple)[$omega$]^2 #text(fill: green)[$hat(y)$] sin(#text(fill: purple)[$omega$] t)$
]}

- Welche Bedeutung hat das negative Vorzeichen bei der Beschleunigung? Wie muss somit die Kraft gerichtet sein, die diese Beschleunigung hervorruft?
  #schreibpapier()
