#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Spezifische Wärme]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Spezifische Wärme

== Aufgabe
Bestimmen Sie von Stahl, Aluminium, Kupfer, Glas oder Stein die spezifische Wärmekapazität. Vergleichen Sie Ihr Resultat mit den Literaturwerten.

== Theorie
Die auf hoher Temperatur vorgewärmten Objekte werden in Wasser gegeben, das sich in einem Aluminiumgefäss befindet. Mittels Energiebilanz können Sie die spezifische Wärmekapazität des gesuchten Stoffs bestimmen. Es gilt: Die abgegebene Wärme entspricht der aufgenommenen Wärme. Formal: #v(-1em)

$ #text(fill: aqua)[$Q_"ab"$]=#text(fill: aqua)[$Q_"auf"$] $

In der Energiebilanz berücksichtigen Sie das Wasser ($#text(fill: maroon)[$c_W$]=qty("4182", "J/kg/K")$), das Aluminiumgefäss ($#text(fill: maroon)[$c_"Al"$]=qty("896", "J/kg/K")$) und die Objekte.

=== Die Mischtemperatur #text(fill: purple)[$theta.alt_M$]

Der Mischprozess dauert eine gewisse Zeit. In dieser Zeit wird Wärme an die Umgebung abgegeben, was die Messung beeinflusst. Um diese Einflüsse zu berücksichtigen, zeichnen Sie den zeitlichen Verlauf der Wassertemperatur. 

#showbox("Beispiel eines Temperaturverlaufs", haupt-farbe)[
  #align(center)[
    #cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
  
      set-style(axes: (overshoot: 7pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)
  
      plot.plot(axis-style: "left", size: (13,1.4), x-tick-step: 20, y-tick-step: none, y-min: 19, x-max: 144, x-label: [$t$], y-label: text(fill: red)[$theta.alt$], y-ticks: ((20, [#text(fill: blue)[$theta.alt_W$]]), (24.36,[#text(fill: purple)[$theta.alt_M$]])), name: "xt", {
        plot.add(((0, 20), (4, 20), (4, 24.36), (140, 23)), style: (stroke: red))
        plot.add(((0,20), (2, 20), (4, 20), (6, 20.5), (8, 21.5), (10, 23.5), (12, 24), (14, 24.2), (16, 24.2), (18, 24.2), (20, 24.2), (22, 24.18), (24, 24.16), (26, 24.14), (28, 24.12), (30, 24.1), (32, 24.08), (34, 24.06), (36, 24.04), (38, 24.02), (40, 24), (42, 23.98), (44, 23.96), (46, 23.94), (48, 23.92), (50, 23.9), (52, 23.88), (54, 23.86), (56, 23.84), (58, 23.82), (60, 23.8), (62, 23.78), (64, 23.76), (66, 23.74), (68, 23.72), (70, 23.7), (72, 23.68), (74, 23.66), (76, 23.64), (78, 23.62), (80, 23.6), (82, 23.58), (84, 23.56), (86, 23.54), (88, 23.52), (90, 23.5), (92, 23.48), (94, 23.46), (96, 23.44), (98, 23.42), (100, 23.4), (102, 23.38), (104, 23.36), (106, 23.34), (108, 23.32), (110, 23.3), (112, 23.28), (114, 23.26), (116, 23.24), (118, 23.22), (120, 23.2), (122, 23.18), (124, 23.16), (126, 23.14), (128, 23.12), (130, 23.1), (132, 23.08), (134, 23.06), (136, 23.04), (138, 23.02), (140, 23)), style: (stroke: (paint: red, dash: "dotted")), mark: "o", mark-style: (fill: red.lighten(50%), stroke: red), mark-size: 2pt) 
        plot.add(((0, 24.36), (4, 24.36)), style: (stroke: (paint: purple, dash: "dashed")))
      })
    })
  ]
]

Wäre die Mischung schlagartig erfolgt, so wäre der durchgehend gezeichnete Verlauf beobachtet worden. An diesem lässt sich die Mischtemperatur grafisch ablesen.

== Experiment
Bestimmen Sie zuerst die Masse der Objekte. Geben Sie diese in den Topf, um sie auf mindestens $qty("95", "Celsius")$ zu erwärmen. Da das Erwärmen länger dauert, haben Sie nun genügend Zeit, das Experiment zu planen und die Bilanzgleichung aufzustellen.

Wägen Sie anschliessend das Aluminiumgefäss und das Wasser.

=== Temperaturmessung
Sie erfassen die Temperatur in diesem Praktikum digital mit Ihrem Computer. Laden Sie dazu das Programm #link("https://www.vernier.com/downloads/graphical-analysis/")[#text(fill: blue)[`graphical Analysis`]] vom Internet runter und installieren Sie es.

Ändern Sie die Einstellungen für die Datenerfassung wie folgt: Rate: `0.5`; Erfassung starten: `manuell`; Erfassung beenden: `manuell`.

Starten Sie die Messung kurz bevor Sie die heissen Objekte ins Wasser geben. So erhalten Sie die Anfangstemperatur des Wassers und des Aluminiumgefässes.
Beenden Sie diese, sobald Sie einen abnehmenden Temperaturtrend feststellen können oder die Temperatur über mindestens eine Minute konstant bleibt. 

== Protokoll
Ins Protokoll gehören nebst der Skizze des experimentellen Aufbaus die Bilanzgleichung und ein Screenshot des Temperaturverlaufs.

