#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Schwingungen und Wellen"
#let titel = [Überlagerung von Wellen]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Überlagerung von Wellen

== Ziel
Bei dieser Aufgabe versuchen Sie selbständig mit herauszufinden, was geschieht, wenn zwei harmonische Wellen sich überlagern.

== Theorie
Sie haben sicher beobachtet, dass die Regentropfen in einer Pfütze schöne Kreise bilden. Jeder Regentropfen löst eine Oberflächenwelle aus, die sich in alle Richtungen gleich schnell fortpflanzt (daher der Kreis!). Das gilt wunderschön für einen einzelnen Tropfen, der in eine Pfütze fällt. Doch was haben Sie beobachtet, wenn mehrere gleichzeitig hinein fallen?

Die Wellen der einzelnen Regentropfen überlagern sich. Es werden immer noch Kreise beobachtet, die einfach ineinander hinein ragen. Es ist äusserst erstaunlich und trotzdem alltäglich:

#cbox(color: haupt-farbe)[Zwei Wellen laufen übereinander hinweg, ohne sich gegenseitig zu stören.]

== Beispiel

#grid(
  columns: (1fr, 1fr),
  align: (left, right),
  [
    Betrachten Sie die zwei Wellen in der Abbildung nebenan. Die eine läuft nach rechts, die andere nach links. Sobald sie sich treffen, überlagern sie sich! Da sie sich dabei nicht beeinflussen, muss die Höhe des Wellenbergs beim Zusammenstoss zunehmen. Sobald Sie sich wieder trennen, geht diese Höhe auf die ursprüngliche zurück.

    Merken Sie sich den einfachen Zusammenhang:
  ],
  [
    #cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      set-style(stroke: 0.5pt)

      let max = calc.max(calc.exp(-0.5*calc.pow(0, 2)))

      plot.plot(axis-style: none, size: (6,0.5), name: "1", {
        plot.add(((-3,0), (11, 0)), style: (stroke: aqua + 1pt))
        plot.add(y => (calc.exp(-0.5*calc.pow(y, 2))+calc.exp(-0.5*calc.pow(y - 8, 2))), domain: (-3, 11), style: (stroke: aqua))
        plot.add-anchor("c_1", (0, 1))
        plot.add-anchor("c_2", (8, 1))
      })
      line("1.c_1", (rel: (1, 0)), stroke: red, mark: (end: "barbed"), name: "c_1")
      content("c_1", text(fill: red)[$arrow(c)$], anchor: "south", padding: 2pt)

      line("1.c_2", (rel: (-1, 0)), stroke: red, mark: (end: "barbed"), name: "c_2")
      content("c_2", text(fill: red)[$-arrow(c)$], anchor: "south", padding: 2pt)

      scope({
        translate(y: -1.25)
        plot.plot(axis-style: none, size: (6,0.5), name: "2", {
          plot.add(((-3,0), (11, 0)), style: (stroke: aqua + 1pt))
          plot.add(y => (calc.exp(-0.5*calc.pow(y - 2, 2))+calc.exp(-0.5*calc.pow(y - 6, 2))), domain: (-3, 11), style: (stroke: aqua))
        })
      })

      scope({
        translate(y: -2.5)
        plot.plot(axis-style: none, size: (6,1), name: "3", {
          plot.add(((-3,0), (11, 0)), style: (stroke: aqua + 1pt))
          plot.add(y => (calc.exp(-0.5*calc.pow(y - 4, 2))+calc.exp(-0.5*calc.pow(y - 4, 2))), domain: (-3, 11), style: (stroke: aqua))
        })
      })

      scope({
        translate(y: -3.75)
        plot.plot(axis-style: none, size: (6,0.5), name: "4", {
          plot.add(((-3,0), (11, 0)), style: (stroke: aqua + 1pt))
          plot.add(y => (calc.exp(-0.5*calc.pow(y - 2, 2))+calc.exp(-0.5*calc.pow(y - 6, 2))), domain: (-3, 11), style: (stroke: aqua))
          plot.add-anchor("c_1", (2, 1))
          plot.add-anchor("c_2", (6, 1))
        })
      })
      
      line("4.c_1", (rel: (-1, 0)), stroke: red, mark: (end: "barbed"), name: "c_1")
      content("c_1", text(fill: red)[$-arrow(c)$], anchor: "south", padding: 2pt)

      line("4.c_2", (rel: (1, 0)), stroke: red, mark: (end: "barbed"), name: "c_2")
      content("c_2", text(fill: red)[$arrow(c)$], anchor: "south", padding: 2pt)

      content((7, .4), [$t=qty("0", "s")$])
      content((7, -.85), [$t=qty("1", "s")$])
      content((7, -2.1), [$t=qty("2", "s")$])
      content((7, -3.35), [$t=qty("3", "s")$])
    })
  ]
)

#cbox(color: haupt-farbe)[Die Elongation der überlagerten Welle erhält man, indem man die Elongationen der \ Einzelwellen vektoriell, d.h. unter Beachtung des Vorzeichens, zusammenzählt.]

== Aufgabe
Untersuchen Sie die Überlagerung (auch Superposition genannt) zweier harmonischer Wellen $#text(fill: green)[$y_1$] (x, t)$ und $#text(fill: green)[$y_2$] (x, t)$.

+ Wie sieht die Superposition $#text(fill: green)[$y$] (x,t=0)$ zweier Wellen, die dieselbe Frequenz und Wellenlänge haben, aber gegeneinander verschoben sind, zum Zeitpunkt $t=0$ aus? Zeichnen Sie diese mit Ihrem Mathematikprogramm.

  $#text(fill: green)[$y_1$] (x,t)=qty("1", "cm") dot sin(2 pi (t/qty("8", "s")-x/qty("8", "cm") ) )$

  $#text(fill: green)[$y_2$] (x,t)=qty("2", "cm") dot sin(2 pi (t/qty("8", "s")-(x-qty("1", "cm"))/qty("8", "cm") ) )$

  $#text(fill: green)[$y$] (x,t=0)=#text(fill: green)[$y_1$] (x,t=0)+#text(fill: green)[$y_2$] (x,t=0)$
  
+ Wie sieht es bei zwei Wellen ungleicher Frequenz aus? Die Wellengeschwindigkeit sei bei beiden Wellen gleich.

  $#text(fill: green)[$y_1$] (x,t)=qty("2", "cm") dot sin(2 pi (t/qty("12", "s")-x/qty("6", "cm") ) )$

  $#text(fill: green)[$y_2$] (x,t)=qty("1", "cm") dot sin(2 pi (t/qty("4", "s")-x/qty("2", "cm") ) )$

  $#text(fill: green)[$y$] (x,t=0)=#text(fill: green)[$y_1$] (x,t=0)+#text(fill: green)[$y_2$] (x,t=0)$
