#import "../layout.typ": *

#let gebiet = "Schwingungen und Wellen"
#let titel = [Harmonische Welle]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)1)")
#set math.equation(numbering: "(1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Mathematische Beschreibung einer harmonischen Welle

== Einleitung
Vor der Klasse haben Sie, ohne viel zu merken, eine Welle produziert! Dazu bewegten Sie die Arme regelmässig nach oben und nach unten, und zwar sobald Sie von Ihrem Nachbarn dazu angeleitet wurden. Sie selbst aber blieben immer am selben Ort stehen.

== Die Grundlage: Ihre Armbewegung
Ihre Armbewegung scheint die Grundlage einer Welle darzustellen. Deshalb soll sie als erste untersucht werden. Dazu betrachten wir die Armbewegung der ersten, links aussen stehenden Person am Ort #text(fill: green)[$x=0$]. Zu Beginn halte sie ihre Arme waagrecht ausgestreckt. Dann hebe sie die Arme langsam nach oben, um sie anschliessend wieder zu senken. Grafisch lässt sich die _zeitliche_ Bewegung der Arme wie folgt darstellen: (Elongation-Zeit-Diagramm)

#figure([
  #cetz.canvas({
    import cetz-plot: *
    import cetz.draw: *
    
    set-style(axes: (overshoot: 2em, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "school-book", size: (10,2), x-tick-step: none, y-tick-step: none, x-label: [Zeit $t$], y-label: [Elongation #text(fill: green)[$y$]], x-ticks: ((2*calc.pi, [$T$]), ), y-ticks: ((1, [#text(fill: green)[$hat(y)$]]), ), name: "yt", {
      plot.add(y => (calc.sin(y)), domain: (0, 2*calc.pi), style: (stroke: green))
    })
    
  })
], caption: [Grafische Darstellung der Armbewegung der Person am Ort $#text(fill: green)[$𝑥$] = 0$])<y-t>

Nach der Zeit $T$ hat diese Person wieder ihren Anfangszustand erreicht und der Vorgang könnte wieder von vorne beginnen. Diese Zeit wird deshalb Periodendauer genannt. Die Armbewegung folgt in etwa folgender Bewegungsgleichung: (harmonische Schwingung)

$ 
#text(fill: green)[$y$]=#text(fill: green)[$hat(y)$] sin(#text(fill: purple)[$omega$] t) 
$

Wann hat die 1. Person ihre Arme oben ausgestreckt? Kennzeichnen Sie diese Stelle im Diagramm.

== Das Zusammenspiel: Die weiteren Personen
Die zweite Person von links am Ort $#text(fill: green)[$x$]=1$ folgt der Armbewegung (durch die Doppelpfeile dargestellt) der ersten, ist aber noch nicht so weit wie diese. Die dritte sowie die folgenden Personen ruhen noch. Dieser Zustand ist mit den gelben Kreisen dargestellt. Eine halbe Periodendauer nach dem Start hält die erste ihre Arme wieder nach vorne ($#text(fill: green)[$y$]=0$). Die Person am Ort $#text(fill: green)[$x$]=6$ wird erst mit der Armbewegung beginnen. Sie hinkt also der ersten Person um eine halbe Periodendauer nach. Der eben beschriebene Zustand zum Zeitpunkt $t=T/2$ wird durch die grünen, kleineren Kreise dargestellt.

#figure([
  #cetz.canvas({
    import cetz-plot: *
    import cetz.draw: *

    let personen = 12
    
    set-style(axes: (overshoot: 2em, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)

    plot.plot(axis-style: "school-book", size: (10,3), x-tick-step: none, y-tick-step: none, x-label: [Ort #text(fill: green)[$x$]], y-label: [Elongation #text(fill: green)[$y$]], y-ticks: ((1, [#text(fill: green)[$hat(y)$]]), ), name: "yx", {
      for x in range(personen+1) {
        plot.add(((x, -1), (x, 1)), style: (stroke: gray, mark: (symbol: "barbed", scale: 0.8)))
      }
      let zeit = 2
      plot.add(y => (
        if y > zeit { 0 } 
        else 
        { -calc.sin(2*(y - zeit)*calc.pi/personen)}
      ), samples: 0, sample-at: range(personen+1), domain: (0, personen), style: (stroke: none), mark: "o", mark-size: 5pt, mark-style: (fill: yellow.lighten(50%), stroke: yellow))
      let zeit = 6
      plot.add(y => (
        if y > zeit { 0 } 
        else 
        { -calc.sin(2*(y - zeit)*calc.pi/personen)}
      ), samples: 0, sample-at: range(personen+1), domain: (0, personen), style: (stroke: none), mark: "o", mark-size: 2.5pt, mark-style: (fill: green.lighten(50%), stroke: green))
    })
    
  })
], caption: [Die anderen Personen übernehmen die Bewegung mit einer zeitlichen
Verzögerung])<x-y>

Wie sieht die Welle zum Zeitpunkt $t=T$ aus? Zeichnen Sie diesen Zustand ins Diagramm (@x-y).

In der Zeit $T$ hat eine Welle genau die Strecke $lambda$ zurückgelegt. Sie wird Wellenlänge bezeichnet. Ergänzen Sie diese Angabe in @x-y.

Eine Welle wandert mit der Zeit nach vorne. Wie schnell macht sie das? Die Geschwindigkeit bei einer gleichförmigen Bewegung ist bekanntlich als zurückgelegte Strecke pro Zeit definiert. Mit den Angaben oben können Sie die Ausbreitungsgeschwindigkeit #text(fill: blue)[$c$] einer Welle angeben:
#v(.5em)
$#text(fill: blue)[$c$]=#h(3cm)$	oder mithilfe der Frequenz $f$ ausgedrückt: $#text(fill: blue)[$c$]=$
#v(.5em)
Merken Sie sich diesen einfachen, aber äusserst wichtigen Zusammenhang!

== Die Armbewegung der Person am Ort #text(fill: green)[x] zum Zeitpunkt t

Zum Schluss soll folgende Frage beantwortet werden: Welche Elongation #text(fill: green)[$y$] nehmen die Arme einer bestimmten Person am Ort #text(fill: green)[$x$] zu einem gegebenen Zeitpunkt $t$ ein?

Wir wissen: Die Person am Ort #text(fill: green)[$x$] macht dieselbe Schwingung, wie diejenige am Ort #text(fill: green)[$x=0$], nur _zeitlich verzögert_. Die Armbewegung dieser Person lässt sich somit wie folgt ausdrücken:

$
#text(fill: green)[$y$] (x,t)=#text(fill: green)[$hat(y)$] sin(#text(fill: purple)[$omega$] (t-t_x))
$<start>

Das ist dieselbe Gleichung wie für die erste Person, ausser, dass die Zeit um die Verzögerung $t_x$ verkleinert wurde. Wieso Minus? Wenn Sie als Zeit $t=t_x$ einsetzen, muss ja genau dieselbe Bewegung wie für den Zeitpunkt $t=0$ bei der ersten Person rauskommen. Und nur $t_x-t_x=0$!

Wie gross ist aber die Verzögerung $t_x$? Natürlich die Zeit, die die Welle braucht, um den Ort #text(fill: green)[$x$] zu erreichen. Und diese können Sie mithilfe der Ausbreitungsgeschwindigkeit #text(fill: blue)[$c$] angeben.
#v(.5em)
$t_x=$
#v(.5em)
Setzen Sie diese Formel in die @start ein:
#v(.5em)
$y(x,t)=$		
#v(.5em)
Mit den Umformungen $#text(fill: purple)[$omega$]=(2 pi)/ T$ und $#text(fill: blue)[$c$] T=lambda$ erhalten Sie die definitive Bewegungsgleichung einer harmonischen Welle, die sich in positiver #text(fill: green)[$x$]-Richtung ausbreitet:

#cbox(color: haupt-farbe)[$#text(fill: green)[$y$] (x,t)=#h(5cm) $]

== Testfragen

+ Wie sähe die Wellengleichung für eine Welle aus, die sich entgegen der #text(fill: green)[$x$]-Richtung fortpflanzt?
+ Eine Welle breitet sich in positiver #text(fill: green)[$x$]-Richtung mit einer Geschwindigkeit von $qty("3.0", "meter per second")$ aus. Sie beginnt zum Zeitpunkt Null im Nullpunkt des Koordinatensystems. Die Amplitude ist $qty("10", "cm")$, die Frequenz $qty("0.25", "Hertz")$.
  + Wie gross ist die Wellenlänge?
  + Wann beginnt ein Teilchen bei $#text(fill: green)[$x$]=qty("120", "m")$ zu schwingen?
  + Welche Elongation hat dieses Teilchen zum Zeitpunkt $qty("50", "s")$?
#schreibpapier()
