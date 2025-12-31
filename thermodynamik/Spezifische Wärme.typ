#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Spezifische Wärmekapazität]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Experiment zur spezifischen Wärmekapazität von Kupfer

== Fragestellung
Um wie viel erwärmt sich Kupfer, wenn ich durch Reibungsarbeit seine innere Energie um einen bestimmten Betrag erhöhe?

Wie gross ist somit seine spezifische Wärmekapazität #text(fill: maroon)[$c_"Cu"$]?

#grid(
  columns: (1fr, auto),
  align: (left, center),
  gutter: .5cm,
  [
    == Das Experiment
    Um eine Kupfertrommel der Masse $m_Z=qty("0.74", "kg")$ ist ein Metallband gewickelt, an dem ein Gewichtsstein der Masse $m_G=qty("5.0", "kg")$ gehängt ist. Die Trommel (Radius $#text(fill: green)[$r$]=qty("23.25", "mm")$) wird mittels einer Kurbel gerade so schnell gedreht, dass die Reibungskraft #text(fill: red)[$arrow(F)_R$], die zwischen der Trommel und dem Band entsteht, der Gewichtskraft entspricht (das Newtonmeter ist vollkommen entspannt). Durch diese einfache Anordnung können wir die Reibungsarbeit relativ einfach berechnen. Ein Thermometer, welches in der Trommelmitte steckt, zeigt uns den Temperaturanstieg zwischen Beginn und Ende des Versuchs.
  ],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      // Band
      let a = (calc.cos(-60deg)*.8, calc.sin(-60deg)*.8)
      for x in (1, 2, 3){
        merge-path(fill: orange, stroke: none, {
          arc(cetz.vector.add(a, (calc.cos(30deg)*.4*x, calc.sin(30deg)*.4*x)), start: -60deg, stop: 120deg, radius: .8)
          line((), (rel: (210deg, .1)))
          arc((), start: 120deg, stop: -60deg, radius: .8)
        })
      }
      let a = (calc.cos(120deg)*.8, calc.sin(120deg)*.8)
      merge-path(fill: orange, stroke: none, {
          arc(cetz.vector.add(a, (calc.cos(30deg)*1.6, calc.sin(30deg)*1.6)), start: 120deg, stop: 90deg, radius: .8)
          line((), (rel: (1.5, 0)), (rel: (30deg, -0.1)), (rel: (-1.5, 0)))
          arc((), start: 90deg, stop: 120deg, radius: 0.8)
      })
      merge-path(fill: orange, stroke: none, {
          line(cetz.vector.add((-.8, 0), (calc.cos(30deg)*.4, calc.sin(30deg)*.4)), (rel: (0, -1.5)), (rel: (30deg, 0.1)), (rel: ( 0, 1.5)))
      })
      
      // Zylinder Front
      circle((0, 0), radius: .8, fill: yellow.lighten(30%), stroke: gray)
      circle((), radius: 1pt, fill: black)
      
      // Thermometer
      merge-path(fill: white, {
        line((-60deg, .04), (rel: (-150deg, 0.05)), (rel: (-105deg, 0.8485mm)), (rel: (-150deg, 1.5)))
        arc((), start: 300deg, stop: 210deg, radius: 0.5mm)
        line((),(rel: (120deg, 1mm)))
        arc((), start: 210deg, stop: 120deg, radius: 0.5mm)
        line((), (rel: (30deg, 1.5)), (rel: (-15deg, 0.8485mm)), (rel: (30deg, 0.05)))
      })
      for i in range(10){
        line((-150deg, 3mm+i*1mm), (rel: (120deg, 1mm)))
      }
      line((0, 0), (-150deg, 1), stroke: (thickness: 1pt, paint: red, cap: "round"))
      scope({
        translate(y: 0.5pt)
        rotate(-150deg)
        rect((0,0), (1.5,1pt), stroke: 0.25pt, radius: 0.5pt)
      })

      // Zylinder Körper
      on-layer(-1, 
        merge-path(stroke: gray, fill: gradient.linear(yellow, yellow.lighten(10%), yellow.lighten(50%), yellow.lighten(10%), yellow, yellow, yellow, angle: 60deg), {
         line((-60deg, .8), (rel: (30deg, 2)))
         arc((), start: -60deg, stop: 120deg, radius: .8)
         line((), (rel: (-150deg, 2)))
        })
      )

      // Gewicht mit Ring und Hacken
      circle((-.4, -1.46), radius: (0.1, .2), stroke: 1.5pt)
      merge-path(stroke: 1pt, {
        arc((-.45, -1.69), start: 180deg, stop: -90deg, radius: 0.05)
        line((), (-.4, -1.8))
      })
      on-layer(-1, 
        circle((), radius: (.3, .05), fill: gradient.radial(white.darken(20%), gray.darken(20%)))
      )
      merge-path(fill: gradient.linear(white, black, angle: 20deg), {
        arc((-.7, -1.8), start: -180deg, stop: 0deg, radius: (.3, .05))
        line((-.1, -1.8), (rel: (-.1, -.3)), (rel: (.4, -1.1)))
        arc((), start: 0deg, stop: -180deg, radius: (0.6, .1))
        line((), (rel: (.4, 1.1)), (rel: (-.1, .3)))
      })
      merge-path(fill: gradient.linear(white, black, angle: -20deg), {
        line((.2, -3.2), (rel: (-.1, -.3)))
        arc((), start: 0deg, stop: -180deg, radius: (.5, .0833333))
        line((), (rel: (-.1, .3)))
        arc((), start: -180deg, stop: 0deg, radius: (0.6, .1))
      })
      
      // Newtonmeter
      circle((3.0, 1.57), radius: (0.2, .05), stroke: 1pt)
      merge-path(stroke: .75pt, {
        arc((3.22, 1.52), start: 270deg, stop: 0deg, radius: 0.05)
        line((), (3.5, 1.57)) // statt: (3.5,1.62)
      })
      merge-path({
        line((4, 1.72), (rel: (-.45, 0)))
        arc((), start: 90deg, stop: 270deg, radius: (.05, .15))
        line((), (rel: (.45, 0)))
      })
      merge-path(fill: blue, {
        line((4.3, 1.73), (rel: (-.29, 0)))
        arc((), start: 90deg, stop: 270deg, radius: (.05, .16))
        line((), (rel: (.29, 0)))
      })
      merge-path(fill: red, {
        arc((3.75, 1.72), start: 90deg, stop: 270deg, radius: (.05, 0.15))
        line((), (rel: (.2, 0)))
        arc((), start: 270deg, stop: 90deg, radius: (.05, .15))
        line((), (3.75, 1.72))
      })

      // Kurbel
      line((3.05, -.27), (rel: (30deg, 1)), stroke: (thickness: 5pt, cap: "round"))
      let a = (calc.cos(-35deg)*.8, calc.sin(-35deg)*.8)
      merge-path(fill: gray, {
        line(cetz.vector.add(a, (calc.cos(30deg)*2, calc.sin(30deg)*2)), (rel: (-45deg, 1)))
        arc((), start: 45deg, stop: -135deg, radius: .1396)
        line((), (rel: (135deg, 1)))
        arc((), start: -55deg, stop: -35deg, radius: .8)
      })
      let a = (calc.cos(-55deg)*.8, calc.sin(-55deg)*.8)
      let b = cetz.vector.add(a, (calc.cos(30deg)*2, calc.sin(30deg)*2))
      arc(cetz.vector.add(b, (calc.cos(-45deg)*.6, calc.sin(-45deg)*.6)), start: -45deg, stop: -90deg, radius: 1.4, mark: (end: "barbed"), stroke: purple, name: "omega")

      // Beschriftung
      line((0, 0), (120deg, .8), stroke: green, mark: (end: "barbed"), name: "r")
      content("r", text(fill: green)[$r$], anchor: "south-west", padding: 1pt)
      content("omega.50%", text(fill: purple)[$omega$], anchor: "north")
      content((-.4, -3), text(fill: white)[$m_G$])
      content((.3, -.3), [$m_Z$])
    })
  ]
)

== Auswertung
Die Hauptschwierigkeit bei der Auswertung ist die Berechnung der Reibungsarbeit. Doch diese können Sie Schritt für Schritt mit dieser Anleitung selbständig erarbeiten.
+ Erinnern Sie sich noch an die allgemeine Definition der mechanischen Arbeit? Ansonsten schlagen Sie in der Formelsammlung nach!

  $#text(fill: aqua)[$W$]=$

+ Wie gross ist die Kraft in unserem Beispiel?

  $#text(fill: red)[$F$]=$

+ Wie gross ist die Strecke, entlang welcher die Kraft wirkt, bei 100 Umdrehungen?

  $#text(fill: green)[$s$]=$

+ Welche Reibungsenergie wird also dem Kupferzylinder zugefügt?

  $#text(fill: aqua)[$Delta E$]=$

  _Wer als erstes damit fertig ist, soll sich melden. Er oder sie darf das Experiment durchführen!_

+ Um wie viel hat die Temperatur des Kupferzylinders zugenommen?

  $theta.alt_"Anfang"=#h(3cm) theta_"Ende"=#h(3cm) Delta T=Delta theta.alt=$

+ Wie gross ist somit die spezifische Wärmekapazität #text(fill: maroon)[$c_"Cu"$]?

  $#text(fill: maroon)[$c_"Cu"$]=$

+ Vergleichen Sie sie mit der von Wasser! Was stellen Sie fest?
  #schreibpapier()
