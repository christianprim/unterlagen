#import "../layout.typ": *

#let gebiet = "Schwingungen und Wellen"
#let titel = [Interferenz an Banknoten]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Interferenz an Banknoten

== Theorie

#grid(
  columns: (1fr, 3cm),
  align: (left, right + horizon),
  [
    Auf Banknoten sind zahlreiche Sicherheitsmerkmale vorhanden. Eines davon ist das gestanzte Schweizer Kreuz. Beachten Sie die schematische Darstellung nebenan. Es besteht aus kleinen kreisförmigen Löchern, die in #text(fill: green)[$x$]- und #text(fill: green)[$y$]-Richtung gleich weit entfernt sind. Die Abstände #text(fill: green)[$d_x$] und #text(fill: green)[$d_y$] zwischen den Löchern lassen sich vielleicht noch knapp messen bzw. schätzen. Hingegen lässt sich die Lochgrösse nicht durch direktes Messen bestimmen. Sie ist viel zu klein.
  ],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt + haupt-farbe)

      let a = 2

      for y in (0, .1, .2, .3, .4, .5, .6, .7, .8, .9, 1, 1.1) {
        for x in (.4, .5, .6, .7 ) {
          circle((a*x, a*y), radius: 0.5pt)
        }
      }
      for y in (.4, .5, .6, .7) {
        for x in (0, .1, .2, .3, .8, .9, 1.0, 1.1) {
          circle((a*x, a*y), radius: 0.5pt)
        }
      }
    })
  ]
)




== Aufgabe
Am Interferenzmuster sollen sowohl die Abstände #text(fill: green)[$d_x$] und #text(fill: green)[$d_y$] als auch der Lochdurchmesser #text(fill: green)[$d$] bestimmt werden. Dazu wird das gestanzte Schweizer Kreuz mit Laserlicht der Wellenlänge $lambda$ beleuchtet. Auf dem Schirm, der sich weit entfernt im Abstand #text(fill: blue)[$l$] befindet, entsteht das Muster. Die Distanzen auf dem Schirm werden mit #text(fill: red)[$s_x$], #text(fill: red)[$s_y$] und #text(fill: red)[$s$] bezeichnet.

+ Überlegen Sie sich zuerst, wie das Interferenzbild aussehen müsste. Zeichnen Sie Ihre Lösung ins linke Kästchen ein.

  _Tipp: Denken Sie an Folgendes:_

  - Kleine Strecken im realen Raum werden zu grosse Stecken im Interferenzbild und umgekehrt. Bei der Banknote sind die Abstände zwischen den Löchern (#text(fill: green)[$d_x$] und #text(fill: green)[$d_y$]) etwa 10 Mal grösser als der Lochdurchmesser.
  - Überlegen Sie sich zuerst, wie das Interferenzmuster eines Gitters aussehen würde, das die Gitterabstände #text(fill: green)[$d_x$] und #text(fill: green)[$d_y$] hätte.
  - Welches Interferenzmuster würde ein einzelnes Loch erzeugen?
  - In einem nächsten Schritt überlegen Sie sich, wie die beiden Interferenzmuster im _Grössenverhältnis_ zueinander stehen müssen. Wird die Grobstruktur durch das Loch oder das Gitter bestimmt?
  - Kombinieren Sie nun beide Muster zum erwarteten Interferenzbild.

  #grid(
    columns: (1fr, 1fr),
    align: center,
    [
      #rect(height: 5.5cm, width: 5.5cm, stroke: .5pt + haupt-farbe)
    ], 
    [
      #rect(height: 5.5cm, width: 5.5cm, stroke: .5pt + haupt-farbe)[
        #align(center + horizon)[
          #rotate(-45deg)[#text(fill: haupt-farbe)[
              Leer lassen!
            ]
          ]
        ]
      ]
    ]
  )

+ Vergleichen Sie Ihre Vermutung mit der ausgeteilten Lösung. Wo lagen Sie richtig? Wo waren Ihre Überlegungen falsch? Lernen Sie aus Ihren Fehlern!

+ Werten Sie das Experiment aus und bestimmen Sie die gesuchten Grössen.

  $#text(fill: red)[$s_x$] =$ #h(2.4cm) $#text(fill: red)[$s_y$]=$ #h(2.4cm) $#text(fill: red)[$s$]=$ #h(2.4cm) $lambda=$ #h(2.4cm) $#text(fill: blue)[$l$]=$ 
  
  daraus folgt:
  
  $#text(fill: green)[$d_x$]=$ #h(2.35cm) $#text(fill: green)[$d_y$]=$ #h(2.35cm) $#text(fill: green)[$d$]=$
