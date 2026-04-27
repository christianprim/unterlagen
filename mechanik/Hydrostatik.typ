#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Hydrostatik]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

#set heading(numbering: "Posten 1:")

= Plastik-Handschuh
Stecken Sie eine Hand in den bereitgelegten Plastikhandschuh. Tauchen Sie nun diese Hand in das Wasserbecken, ohne dass das Wasser in den Handschuh läuft.

Was beobachten Sie?

_Schauen Sie genau hin. Wo wird das Plastik stärker an Ihre Haut gedrückt? Fühlen Sie einen Unterschied, wenn Sie tiefer eintauchen? Hat Druck eine Richtung?_

#schreibpapier(height: 8cm)

= Gefäss mit Löchern

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
      line((0.8,5.5), (2.2,5.5), stroke: aqua, name: "A")

      line((0.45, 5.45), (0.45, 3.95), stroke: green, mark: (symbol: "|"), name: "h_1")
      line((0, 5.45), (0, 0.75), stroke: green, mark: (symbol: "|"), name: "h_2")

      content("h_1", text(fill: green)[$h_1$], frame: "rect", fill: white, stroke: none, padding: 3pt)
      content("h_2", text(fill: green)[$h_2$], frame: "rect", fill: white, stroke: none, padding: 3pt)
    })
  ]
  ],
  [Das zylinderförmiger Gefäss weist auf verschiedenen Höhen Bohrungen auf. Schütten Sie mit dem Krug vorsichtig Wasser in dieses Gefäss ein.

  - Wo spritzt das Wasser am Weitesten hinaus? In der Höhe #text(fill: green)[$h_1$] oder #text(fill: green)[$h_2$]? Zeichnen Sie die einzelnen Wasserstrahlen ein.
    #schreibpapier(height: 2cm)

  - Weshalb beobachtet man dieses Verhalten? _Versuchen Sie, eine Aussage über den Druck in unterschiedlichen Tiefen zu machen._
    #schreibpapier(height: 2cm)
  ]
)

#pagebreak()

= Springbrunnen

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Drücken Sie die mit Wasser gefüllte Laborflasche.

    Was beobachten Sie?

    _Variieren Sie den Druck auf die Flasche. In welche Richtung pressen Sie die Flasche zusammen? Ist die Spritzrichtung des Wassers davon abhängig?_
  ],
  [
    #image("../bilder/springbrunnen.jpg", width: 2cm)
  ]
)
#schreibpapier(height: 6cm)

= Saugnapf

#figure(
  image("../bilder/saugnapf.jpg", width: 5cm)
)
Befestigen Sie den Saugnapf an die Wandtafel.

Was beobachten Sie?

_Versuchen Sie ihn von der Wandtafel zu lösen. Was hält ihn so stark? Spielt die Oberfläche der Wand eine Rolle?_

#schreibpapier()
#pagebreak()

= Nagelbrett

Pressen Sie einen einzelnen Finger auf einen einzelnen Nagel. Wiederholen Sie den Versuch, indem Sie mit der flachen Hand auf das Nagelbrett drücken.

Was beobachten Sie?

_Was unterscheidet die beiden Experimente voneinander? Finden Sie heraus, wovon der Druck abhängig ist._
#schreibpapier(height: 6cm)

= Last tragen

#figure(
  image("../bilder/stein.jpg", width: 5cm)
)
Heben Sie den Stein mit der Packschnur. Tauschen Sie die Schnur gegen das bereit gelegte Band aus und heben Sie den Stein erneut auf.

Was beobachten Sie?

_Der Stein bleibt immer gleich schwer. Wieso ist das eine angenehmer beim Tragen? Leiten Sie daraus eine Eigenschaft des Druckes her._

#schreibpapier()
