#import "../layout.typ": *

#let gebiet = "Elektrizität"
#let titel = [3 elektromagnetische Geräte]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Drei elektromagnetische Geräte

== Ziel
Sie besitzen ein grosses theoretisches Wissen über Magnetismus. Doch wie Sie das Schwimmen nur im Wasser und nicht vor dem Schreibtisch lernen können, brauchen auch Sie in Magnetismus etwas mehr Praxis.

Im Alltag treffen Sie immer wieder elektromagnetische Geräte an. Drei davon habe ich mit in die Stunde genommen. Wäre es nicht ein Reiz, herauszufinden, wie diese einzelnen Geräte eigentlich funktionieren?

Das Ziel dieser Lektion ist es, dass Sie die Funktionsweise dieser Geräte verstehen und dieselben Überlegungsschritte auch auf andere Geräte anwenden können (z.B. in einer Prüfung).

== Ihr Auftrag
+ Lesen Sie auf der nächsten Seite die kurze Beschreibung zu Ihrem Gerät durch.

+ Vervollständigen Sie die Skizze zu Ihrem Gerät. Die Permanentmagnete sind bereits eingezeichnet. Sie brauchen nur noch den elektromagnetischen Teil (also die Spulen) schematisch einzuzeichnen. Schauen Sie sich die Geräte vorne ruhig an!

+ Erklären Sie mithilfe der Lorentzkraft und Ihrer Skizze die Funktionsweise der Geräte.

+ Bereiten Sie sich darauf vor, Ihr Resultat in einem 5’ Vortrag der Klasse vorzustellen.

== Massstab
Sie haben Ihre Aufgabe gut erfüllt, wenn die Skizze alle Elemente enthält, die zur Bestimmung der Lorentzkraft notwendig sind. Sie brauchen insbesondere die verschiedenen Richtungen.

Bei der Präsentation verwenden Sie die Dreifinger-Regel, um die Bewegungsrichtung der Spule anzugeben. Sie erklären zudem anschaulich, welche weiteren Bauelemente für den Betrieb Ihres Gerätes notwendig sind und welche Aufgabe sie übernehmen.

== Zeit
Sie haben bis zum Ende dieser Lektion die Zeit, die Aufgaben a) – d) vorzubereiten. Zu Beginn der nächsten Stunde finden die kleinen Vorträge statt.

#pagebreak()

== Der Lautsprecher
Beim Lautsprecher werden die Schallwellen (z.B. Musik) durch eine schwingende Membran erzeugt. Diese Schwingungen werden durch eine Spule erzeugt, die an der Membran befestigt ist und im Spalt des sog. Topfmagneten (siehe Skizze) hoch- und runterschwingt.
Erklären Sie, warum sich die Membran bewegt. Welche Aufgabe übernimmt der Frequenzgenerator?

=== Skizze (Querschnitt des Topfmagneten)

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    set-style(stroke: .5pt)

    scope({
      scale(1.5)
      rect((0, .3), (rel: (1.5, 1.2)), stroke: none, fill: red.lighten(80%))
      rect((3.5, .3), (rel: (1.5, 1.2)), stroke: none, fill: red.lighten(80%))
      rect((2, .3), (rel: (1, 1.2)), stroke: none, fill: green.lighten(80%))
      rect((0, 0), (rel: (5, .3)), stroke: none, fill: gray.lighten(80%))
      line((0,0), (5,0), (5,1.5), (3.5,1.5), (3.5,0.3),(3,0.3), (3,1.5), (2,1.5), (2,0.3), (1.5,0.3), (1.5,1.5), (0,1.5), close: true)
      
      content((.75, .85), text(font: "TeX Gyre Heros", size: 30pt, fill: red)[N])
      content((2.5, .85), text(font: "TeX Gyre Heros", size: 30pt, fill: green)[S])
      content((4.25, .85), text(font: "TeX Gyre Heros", size: 30pt, fill: red)[N])
      line((0, 2), (1, 2.5), stroke: white)
    })   
  })
]

== Der Elektromotor
Zwischen den Polen eines Magneten befindet sich eine drehbar gelagerte Spule. Die Enden des Spulendrahtes werden über Schleifkontakte mit Strom versorgt. Erklären Sie, weshalb sich die Spule zu drehen beginnt, wenn Strom fliesst. Stellen Sie Ihre Überlegungen bei horizontaler Stellung der Spulen an. Was muss zusätzlich erfüllt sein, damit sich der Motor ständig dreht? Untersuchen Sie dazu auch die Schleifkontakte etwas genauer.

=== Skizze

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    set-style(stroke: .5pt)

    scope({
      scale(0.8)
      merge-path(stroke: none, fill: red.lighten(80%), {
        line((0, 1), (1.5, 1), (1.5, 1.25))
        arc((), start: -150deg, stop: -210deg, radius: 3.5)
        line((), (1.5, 5), (0, 5))
      })
      merge-path(stroke: none, fill: green.lighten(80%), {
        line((6,1), (6, 5), (4.5, 5), (4.5, 4.75))
        arc((), start: 30deg, stop: -30deg, radius: 3.5)
      line((), (4.5,1))
      })
      rect((0, 0), (rel: (6, 1)), stroke: none, fill: gray.lighten(80%))
      line((0,0), (6,0), (6,5), (4.5,5), (4.5,4.75))
      arc((), start: 30deg, stop: -30deg, radius: 3.5)
      line((), (4.5,1), (1.5,1), (1.5,1.25))
      arc((), start: -150deg, stop: -210deg, radius: 3.5)
      line((), (1.5,5), (0,5), (0,0))
      
      content((.5, 3), text(font: "TeX Gyre Heros", size: 30pt, fill: red)[N])
      content((5.5, 3), text(font: "TeX Gyre Heros", size: 30pt, fill: green)[S])      
    })   
  })
]

== Das Drehspulinstrument
Mit einem Drehspulinstrument werden Stromstärken gemessen. Zwischen den Polen eines Magneten befindet sich eine drehbare Spule. An der Spule sind ein Zeiger und eine spiralförmige Feder befestigt. Der zu messende Strom fliesst durch die Spule. Erklären Sie die Funktionsweise dieses Instruments. Was würde ohne Feder passieren, wenn ein Strom fliesst?

=== Skizze

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    set-style(stroke: .5pt)

    scope({
      scale(0.8)
      merge-path(stroke: none, fill: red.lighten(80%), {
        line((0, 1), (1.5, 1), (1.5, 1.25))
        arc((), start: -150deg, stop: -210deg, radius: 3.5)
        line((), (1.5, 5), (0, 5))
      })
      merge-path(stroke: none, fill: green.lighten(80%), {
        line((6,1), (6, 5), (4.5, 5), (4.5, 4.75))
        arc((), start: 30deg, stop: -30deg, radius: 3.5)
      line((), (4.5,1))
      })
      rect((0, 0), (rel: (6, 1)), stroke: none, fill: gray.lighten(80%))
      line((0,0), (6,0), (6,5), (4.5,5), (4.5,4.75))
      arc((), start: 30deg, stop: -30deg, radius: 3.5)
      line((), (4.5,1), (1.5,1), (1.5,1.25))
      arc((), start: -150deg, stop: -210deg, radius: 3.5)
      line((), (1.5,5), (0,5), (0,0))
      
      content((.5, 3), text(font: "TeX Gyre Heros", size: 30pt, fill: red)[N])
      content((5.5, 3), text(font: "TeX Gyre Heros", size: 30pt, fill: green)[S])      
    })   
  })
]

