#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Gleichmässig beschleunigte Bewegung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Gleichmässig beschleunigte Bewegung

== Ziel und Vorgehen
In dieser Lernaufgabe leiten Sie die Bewegungsgesetze für eine gleichmässig beschleunigte Bewegung her. Sie werden dies mittels Diagrammen tun. Ich setze bei Ihnen voraus, dass Sie mit dem Ort-Zeit-Diagramm (#text(fill: green)[$x$]-$t$-Diagramm) bereits umgehen können.

== Aufgabe 1: Das Geschwindigkeits-Zeit-Diagramm (#text(fill: blue)[v]-t-Diagramm)

Als erstes überlegen Sie sich, wie das #text(fill: blue)[$v$]-$t$-Diagramm der nachstehenden gleichförmigen Bewegung aussieht (nur Grössenordnung, _qualitativ_): 

#grid(
  columns: (1fr, 1fr),
  align: center,
  [#cetz.canvas({
    import cetz-plot: *
    import cetz.draw: *
    
    set-style(axes: (overshoot: 7pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "school-book", size: (7,4), x-tick-step: none, y-tick-step: none, x-label: [$t$], y-label: text(fill: green)[$x$], y-min: 0, y-ticks: ((0.2, [#text(fill: green)[$x_0$]]), ), name: "xt", {
      plot.add(((0,0.2), (1.1, 1)), style: (stroke: green))
     })
  })], 

  [#cetz.canvas({
    import cetz-plot: *
    import cetz.draw: *
    
    set-style(axes: (overshoot: 7pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "school-book", size: (7, 4), x-tick-step: none, y-tick-step: none, x-label: [$t$], y-label: text(fill: blue)[$v$], y-min: 0, name: "vt", {
      plot.add(((0, 0), (0.5, 1)), style: (stroke: none))
    })
  })],
  [Ort-Zeit-Diagramm], [Geschwindigkeit-Zeit-Diagramm]
)

Kann #text(fill: green)[$x_0$] im #text(fill: blue)[$v$]-$t$-Diagramm berücksichtigt werden?
#schreibpapier(height: .82cm)

== Aufgabe 2: Anwendung der einfachen Bewegungsgleichung

Sie haben in einer der vorangehenden Stunden gelernt, dass sich die zurückgelegte Strecke bei einer gleichförmigen Bewegung aus der benötigten Zeit errechnen lässt (Bewegungsgleichung):

$
#text(fill: green)[$Delta x$] = #text(fill: blue)[$v$] Delta t
$

Aus der Mathematik kennen Sie sicher den Flächeninhalt $A$ eines Rechteckes mit den Seitenlängen $a$ und $b$:

$
A = a b
$

Sehen Sie die formale Ähnlichkeit mit dem einfachen Bewegungsgesetz? Die Fläche $A$ entspricht der zurückgelegten Strecke #text(fill: green)[$Delta x$]. Die Geschwindigkeit #text(fill: blue)[$v$] und die Zeitspanne $Delta t$ entsprechen den Seitenlängen. Zeichnen Sie im #text(fill: blue)[$v$]-$t$-Diagramm die zurückgelegte Strecke #text(fill: green)[$Delta x$] ein. Bestimmen Sie das Zeitintervall $Delta t$ selber!

_Merksatz: Die zurückgelegte Strecke entspricht im #text(fill: blue)[$v$]-$t$-Diagramm der . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ._

== Aufgabe 3: Mit der Beschleunigung ist es ähnlich!

Definition der Beschleunigung:

#cbox(color: haupt-farbe)[$ "Beschleunigung "#text(fill: red)[$a$]=("Geschwindigkeitsänderung " #text(fill: blue)[$Delta v$]) / ("Zeitspanne " Delta t) $]

Wie gross ist die Geschwindigkeitsänderung in der Zeitspanne $Delta t$? Formen Sie obige Gleichung um!
$
#text(fill: blue)[$Delta v$]=#h(3cm)
$

_Merksatz: Bei einer gleichmässig beschleunigten Bewegung bleibt die Beschleunigung #text(fill: red)[$a$] gleich (konstant). Sehen Sie dazu auch das nachstehende #text(fill: red)[$a$]-$t$-Diagramm._
 
Zeichnen Sie das dazugehörige #text(fill: blue)[$v$]-$t$-Diagramm, falls der Körper zum Zeitpunkt $t=0$ bereits die Geschwindigkeit #text(fill: blue)[$v_0$] hatte. Was stellen Sie fest, wenn Sie das #text(fill: blue)[$v$]-$t$-Diagramm der gleichmässig beschleunigten Bewegung mit dem #text(fill: green)[$x$]-$t$-Diagramm der gleichförmigen Bewegung vergleichen?
#schreibpapier(height: 1.21cm)

Zeichnen Sie auch die Geschwindigkeitsänderung #text(fill: blue)[$Delta v$] ins #text(fill: red)[$a$]-$t$-Diagramm ein. Das sollte Ihnen auch irgendwie bekannt vorkommen.

#grid(
  columns: (1fr, 1fr),
  align: center,
  [#cetz.canvas({
    import cetz-plot: *
    import cetz.draw: *
    
    set-style(axes: (overshoot: 10pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "left", size: (7,4), x-tick-step: none, y-tick-step: none, x-label: [$t$], y-label: text(fill: red)[$a$], y-ticks: ((0.8, [#text(fill: red)[$a$]]), ), name: "at", {
      plot.add(((0,0.8), (1, 0.8)), style: (stroke: red))
    })
  })],
  [#cetz.canvas({
    import cetz-plot: *
    import cetz.draw: *
    
    set-style(axes: (overshoot: 7pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "left", size: (7, 4), x-tick-step: none, y-tick-step: none, x-label: [$t$], y-label: text(fill: blue)[$v$], y-min: 0, y-ticks: ((0.3, [#text(fill: blue)[$v_0$]]), ), name: "vt", {
      plot.add(((0,0.3), (1.1, 1)), style: (stroke: none))
    })
  })],
  [Beschleunigung-Zeit-Diagramm], [Geschwindigkeit-Zeit-Diagramm]
)
_Merksatz: Die Geschwindigkeitsänderung entspricht im #text(fill: red)[$a$]-$t$-Diagramm der . . . . . . . . . . . . . . . . . . . . . . . . . . . . _

== Aufgabe 4: Der letzte Schritt!
Unter Verwendung des Merksatzes in Aufgabe 2 sollten Sie nun in der Lage sein, die zurückgelegte Strecke bei der gleichförmig beschleunigten Bewegung herzuleiten:

- Wählen Sie für $Delta t$ eine Zeitspanne, die bei $t=0$ beginnt (macht das Ganze einfacher!).

- Teilen Sie die Fläche unter der Kurve so auf, dass einfache Flächen (Rechtecke, Dreiecke) entstehen. Berechnen Sie diese Flächen!

- Benutzen Sie den Merksatz, um die zurückgelegte Strecke zu bestimmen:
  
  #text(fill: green)[$Delta x =$] 
  
- Drücken Sie das #text(fill: blue)[$Delta v$] durch die Beschleunigung #text(fill: red)[$a$] aus. Oben eingesetzt, ergibt sich:

  #text(fill: green)[$Delta x =$]

- Schreiben Sie das vollständige Bewegungsgesetz (Ort-Zeit-Gesetz) für eine gleichmässig beschleunigte Bewegung nieder: ($#text(fill: green)[$x$]=#text(fill: green)[$x_0$]+#text(fill: green)[$Delta x$]$, die Zeitspannen beginnen dadurch bei $t=0$, so dass $Delta t$ durch $t$ ersetzt werden kann)

  #cbox(color: haupt-farbe)[$ #text(fill: green)[$x$] = #text(fill: green)[$x_0$] + #h(5cm) $]

- Schreiben Sie auch das entsprechende Geschwindigkeit-Zeit-Gesetz auf:

  #cbox(color: haupt-farbe)[$ #text(fill: blue)[$v$] = #text(fill: blue)[$v_0$] + #h(5cm) $] 
