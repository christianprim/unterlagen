#import "../layout.typ": *

#let gebiet = "Elektrizität"
#let titel = [Der Generator]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Der Generator

== Ziel

- Sie wenden das Gesetz: $#text(fill: blue)[$U_"ind"$]=-N (Delta italic(Phi)) / (Delta t)$ an einem konkreten Beispiel an.
- Sie lernen dabei die Funktionsweise der Maschine zur Umsetzung von mechanischer in elektrischer Energie kennen. Schliesslich ist sie _die_ Maschine, die unser Leben am meisten prägt (wenn auch für viele unbewusst)!

== Grundlage
Sie wissen, dass eine Induktionsspannung #text(fill: blue)[$U_"ind"$] dann auftritt, wenn sich die _senkrecht_ zum Magnetfeld liegende Fläche #text(fill: red)[$A_s$] einer Leiterschleife mit der Zeit ändert. In der Stunde habe ich Ihnen gezeigt, dass dies durch das Einbringen der Schleife in ein Magnetfeld auftritt. Eine Flächenänderung kann aber auch dadurch hervorgerufen werden, dass eine Leiterschleife im Magnetfeld rotiert wird.

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))

== Aufgaben
- Überprüfen Sie meine Aussage, indem Sie die senkrecht zu den Magnetfeldlinien liegende Fläche #text(fill: red)[$A_s$] in der Abbildung mit einer Farbe einzeichnen!
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    align: center,
    row-gutter: .5em,
    [
      #cetz.canvas({
        import cetz.draw: *
  
        set-style(stroke: .5pt)
  
        for y in (0, .5, 1, 1.5, 2){
          line((0, y), (3.5, y), stroke: aqua, mark: (end: "barbed"))
        }

        scope({
          scale(.9)
          translate(y: .1)
          line((1, 1.25), (1.3, 1.15), (1.3, 0.5), (2.8, 0), (2.8, 1.5), (1.3, 2), (1.3, 1.35), (1, 1.45), stroke: 1pt)
          line((0.7,1.45), (rel: (2.4,-0.8)), stroke: (paint: blue, dash: "dash-dotted"))
          arc((3.35, .65), start: 0deg, stop: 270deg, radius: (.2, .25), mark: (end: "barbed", scale: 0.5), stroke: purple)
        })

        content((3.1, 1.25), text(fill: aqua)[$arrow(B)$])
        content((3, .25), text(fill: purple)[$omega$])
        content((2.32, 1.3), frame: "circle", text(baseline: -.02em, size: 8pt)[A])
        content((2.32, .35), frame: "circle", text(baseline: -.02em, size: 8pt, fill: white)[A])
        content((2.32, .35), text(baseline: -.02em, size: 8pt)[B])
      })
    ], 
    [
      #cetz.canvas({
        import cetz.draw: *
  
        set-style(stroke: .5pt)
  
        for y in (0, .5, 1, 1.5, 2){
          line((0, y), (3.5, y), stroke: aqua, mark: (end: "barbed"))
        }

        rect((1.7, 0.25), (rel: (.1, 1.5)), fill: gray.lighten(50%))
        circle((1.75, 1), radius: 1pt, fill: blue)

        content((3.1, 1.25), text(fill: aqua)[$arrow(B)$])
        content((2.1, 1.75), frame: "circle", text(baseline: -.02em, size: 8pt)[A])
        content((2.1, .25), frame: "circle", text(baseline: -.02em, size: 8pt, fill: white)[A])
        content((2.1, .25), text(baseline: -.02em, size: 8pt)[B])
      })
    ],
    [
      #cetz.canvas({
        import cetz.draw: *
  
        set-style(stroke: .5pt)
  
        for y in (0, .5, 1, 1.5, 2){
          line((0, y), (3.5, y), stroke: aqua, mark: (end: "barbed"))
        }

        scope({
          rotate(45deg, origin: (1.75, 1))
          rect((1.7, 0.25), (rel: (.1, 1.5)), fill: gray.lighten(50%))
        })
        
        circle((1.75, 1), radius: 1pt, fill: blue)

        line((1.75, 1), (rel: (0, .8)), stroke: (paint: black, dash: "dotted"), name: "lot")
        line((1.75, 1), (rel: (135deg, .8)), stroke: (dash: "dotted"), name: "spule")

        cetz.angle.angle((1.75, 1), "lot", "spule", label: text(baseline: -0.02em)[$alpha$], radius: .7, label-radius: .5)

        content((3.1, 1.25), text(fill: aqua)[$arrow(B)$])
        content((1.1, 1.75), frame: "circle", text(baseline: -.02em, size: 8pt)[A])
        content((2.4, .25), frame: "circle", text(baseline: -.02em, size: 8pt, fill: white)[A])
        content((2.4, .25), text(baseline: -.02em, size: 8pt)[B])
      })
    ],
    [
       #cetz.canvas({
        import cetz.draw: *
  
        set-style(stroke: .5pt)
  
        for y in (0, .5, 1, 1.5, 2){
          line((0, y), (3.5, y), stroke: aqua, mark: (end: "barbed"))
        }

        rect((1, 0.95), (rel: (1.5, .1)), fill: gray.lighten(50%))
        circle((1.75, 1), radius: 1pt, fill: blue)

        content((3.1, 1.25), text(fill: aqua)[$arrow(B)$])
        content((.8, 1.25), frame: "circle", text(baseline: -.02em, size: 8pt)[A])
        content((2.7, 1.25), frame: "circle", text(baseline: -.02em, size: 8pt, fill: white)[A])
        content((2.7, 1.25), text(baseline: -.02em, size: 8pt)[B])
      })
    ],
    [Perspektivisch], [Aufsicht]
  )

- Beschreiben Sie nun den zeitlichen Verlauf der Fläche #text(fill: red)[$A_s$] mathematisch:
  + Wie hängt $alpha$ von der Winkelgeschwindigkeit #text(fill: purple)[$omega$] ab? (Kreisbewegung!)

    $alpha=$

  + Wie gross ist die Fläche senkrecht zu den Feldlinien zu einem beliebigen Zeitpunkt $t$?

    $#text(fill: red)[$A_s$]=$
    
- Zeichnen Sie qualitativ den zeitlichen Verlauf der Fläche #text(fill: red)[$A_s$] ins Diagramm: ($T$ ist die Periodendauer)

  #align(center)[
    #cetz.canvas({
      import cetz-plot: *
      import cetz.draw: *

      set-style(axes: (stroke: 0.5pt, tick: (stroke: 0.5pt)))

      plot.plot(axis-style: "school-book", size: (14,7), x-tick-step: none, x-ticks: ((3, [$¼T$]), (6, [$½T$]), (9, [$¾T$]), (12, [$T$])), y-tick-step: none, x-label: [$t$], y-label: text(fill: red)[$A_s$], name: "yt", {
        plot.add(((0, 0), (14, 0)), style: (stroke: none))
      })
    })
  ]

- Zeichnen Sie ins Diagramm auf der Rückseite auch die zeitliche Änderung des magnetischen Flusses $(Delta italic(Phi))/(Delta t)$ ein.

  Die entspricht der Steigung im #text(fill: red)[$A_s$]-$t$-Diagramm, da sich in $italic(Phi)=#text(fill: red)[$A_s$] #text(fill: aqua)[$B$]$ nur #text(fill: red)[$A_s$] zeitlich ändert!
  
  _Vorgehen:_ Wann ist die Steigung 0? Zeichnen Sie zu diesem Zeitpunkt mit einer anderen Farbe einen Punkt auf der $x$-Achse (Wert = 0). Wann ist sie maximal? Zeichnen Sie auch diesen Punkt ein! (Sie dürfen den Wert selber bestimmen, wir bleiben qualitativ). Welche Kurve könnte die so gewonnen Punkte verbinden? Zeichnen Sie diese Kurve ein! Beschriften Sie mit derselben Farbe auch die $y$-Achse mit $(Delta italic(Phi)) / (Delta t)$.
  
- Welche Folgen hat das für die Induktionsspannung $#text(fill: blue)[$U_"ind"$]=-N (Delta italic(Phi)) / (Delta t)$?
  #schreibpapier(height: 3.21cm)
  
- Zeichnen Sie auch den Verlauf der Induktionsspannung mit einer anderen Farbe ein und beschriften Sie die $y$-Achse entsprechend!

Mit etwas Mathematik kann gezeigt werden, dass die Induktionsspannung eines Generators mit einer einzigen Leiterschleife wie folgt aussieht:

$
#text(fill: blue)[$U_"ind"$]=#text(fill: aqua)[$B$] #text(fill: red)[$A$] #text(fill: purple)[$omega$] sin(#text(fill: purple)[$omega$] t)
$

Was hier herauskommt, ist eine sogenannte _Wechselspannung_. Bisher haben Sie nur Gleichspannungen angetroffen (z.B. Batterie: konstantes #text(fill: blue)[$U$] zwischen dem Plus- und dem Minuspol). Die Wechselspannung hingegen ändert ihr Vorzeichen dauernd, und zwar mit der Frequenz $f=#text(fill: purple)[$omega$]/(2 pi)$. Was wir z.B. aus der Steckdose beziehen, ist eine Wechselspannung der Frequenz $f=qty("50", "Hertz")$.

Generatoren, wie sie in Kraftwerken oder im Dynamo vorkommen, haben natürlich nicht nur eine einzelne Leiterschleife. Meist wird eine Spule mit $N$ Windungen genommen. Die Induktionsspannung wird dadurch $N$ mal grösser, also:

$
#text(fill: blue)[$U_"ind"$]=N #text(fill: aqua)[$B$] #text(fill: red)[$A$] #text(fill: purple)[$omega$] sin(#text(fill: purple)[$omega$] t)
$

Der Generator ist eigentlich nichts anderes als die Umkehrung eines Elektromotors. Der Generator macht aus mechanischer elektrische Energie.

== Testfrage
Wieso leuchtet das Licht eines Fahrrads heller, wenn Sie schneller fahren?
#schreibpapier()
