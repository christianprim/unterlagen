#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Die Spannenergie]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Die Spannenergie

== Was Sie bereits wissen
Zu Beginn der Stunde wurde Ihnen gezeigt, dass die rücktreibende Kraft #text(fill: red)[$arrow(F)_F$] einer Feder proportional zur Dehnung #text(fill: green)[$arrow(y)$] der Feder ist. Formal (es sei $D$ die Federkonstante):

$ #text(fill: red)[$arrow(F)_F$] = -D dot #text(fill: green)[$arrow(y)$] $

Um eine Feder zu spannen, muss somit die Kraft $#text(fill: red)[$arrow(F)_"spann"$] = D dot #text(fill: green)[$arrow(y)$]$ aufgewendet werden.

Zudem kennen Sie die Definition der Energie:

#align(center)[#text(fill: aqua)[Energiezunahme] = #text(fill: red)[Kraft] #sym.dot #text(fill: green)[Weg] = $#text(fill: red)[$F$] dot #text(fill: green)[$y$]$, wobei die Kraft in Richtung des Weges zeigt]

== Worum geht es?
Ihre Aufgabe ist es, die Federenergie einer gespannten Feder zu berechnen. Das wäre ganz leicht, wäre da nicht ein Problem: Die Kraft, die Sie aufwenden müssen um eine Feder zu spannen ist nicht konstant. Sie nimmt mit zunehmender Dehnung #text(fill: green)[$y$] zu!

== Wie Sie vorgehen
In der ersten Abbildung ist die Wegabhängigkeit der Kraft, die aufgewendet werden muss, um einen Gegenstand anzuheben, als rote Linie dargestellt. Da diese Kraft nicht von der Höhe abhängt (in Erdnähe), ergibt sich eine waagrechte Gerade.

+ Zeichnen Sie in der Grafik nebenan die Wegabhängigkeit der Kraft ein, die aufgewendet werden muss, um eine Feder zu spannen!

  #grid(
    columns: (1fr, 1fr),
    align: center,
    [
      #cetz.canvas({
        import cetz-plot: *
        import cetz.draw: *
        
        set-style(axes: (overshoot: 10pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed", scale: 0.7)), y: (mark: (end: "barbed", scale: 0.7))), stroke: 0.5pt)
    
        plot.plot(axis-style: "left", size: (4,2), x-tick-step: none, y-tick-step: none, x-label: text(fill: green)[$h$], x-ticks: ((1, text(fill: green)[$h$]), ), y-ticks: ((.8, text(fill: red)[$m g$]), ), y-label: text(fill: red)[$F_G$], name: "Fs", {
          plot.add(((0,0.8), (1, 0.8)), style: (stroke: red))
          plot.add(((0, 0), (0, 1)), style: (stroke: none))
          plot.add-fill-between(((0, 0.8), (1, 0.8)), ((0, 0), (1, 0)), style: (stroke: none, fill: aqua.transparentize(80%))) 
          plot.add(((1, 0), (1, 0.8)), style: (stroke: (paint: black, dash: "dashed")))
          plot.add-anchor("W", (0.5, 0.4))
        })
        content("Fs.W", [$#text(fill: aqua)[Fläche] = #text(fill: red)[$m g$] #text(fill: green)[$h$]$])  
      })
    ], 
    [
      #cetz.canvas({
        import cetz-plot: *
        import cetz.draw: *
        
        set-style(axes: (overshoot: 10pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed", scale: 0.7)), y: (mark: (end: "barbed", scale: 0.7))), stroke: 0.5pt)
    
        plot.plot(axis-style: "left", size: (4,2), x-tick-step: none, y-tick-step: none, x-label: text(fill: green)[$y$], x-ticks: ((1, text(fill: green)[$y$]), ), y-label: text(fill: red)[$F_"spann"$], name: "Fs", {
          plot.add(((0,0.8), (1, 0.8)), style: (stroke: none))          
        })
       })  
    ]
  )

+ Unter der Kurve der ersten Abbildung ist eine Fläche hellblau hinterlegt und ihre Grösse angegeben. Woran erinnert Sie dieser Wert? Was schliessen Sie daraus?
  #schreibpapier(height: 2.01cm)
  
+ Wenden Sie diese Erkenntnis an, um die Federenergie zu berechnen!

  #cbox(color: haupt-farbe)[$ #text(fill: red)[$E_"spann"$] = #h(4cm) $]

== Massstab
Mit der Lösung von a) und b) beweisen Sie, dass Sie die Physik hinter der Berechnung der Spannenergie verstanden haben. Leiten Sie noch die Formel in c) her, dürfen Sie zudem stolz sein, Ihre Erkenntnisse mathematisch umgesetzt zu haben.
