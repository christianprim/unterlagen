#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Fünf Alltagsgegenstände]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Fünf Alltagsgegenstände

== Ziel
Sie besitzen seit den letzten Stunden ein theoretisches Wissen über das Hebelgesetz. Doch wie Sie das Schwimmen nur im Wasser und nicht vor dem Schreibtisch lernen können, brauchen auch Sie zu den Hebelgesetzen etwas mehr Praxis.

Im Alltag treffen Sie immer wieder Gegenstände an, deren Funktionsweise auf das Hebelgesetz beruht. Fünf davon habe ich mit in die Stunde genommen. Wäre es nicht ein Reiz, herauszufinden, wie diese einzelnen Gegenstände eigentlich funktionieren?

Das Ziel dieser Lektion ist es, dass Sie die Funktionsweise dieser Werkzeuge verstehen und dieselben Überlegungsschritte auch auf andere Gegenstände anwenden können (z. B\. in einer Prüfung).

== Ihr Auftrag
Sie bereiten sich vor, die Funktionsweise Ihres Gegenstandes den anderen zu erklären. Dazu haben Sie 5-10~min Vorbereitungszeit.

== Vorgehen
Zeichnen Sie in die Abbildung Ihres Gegenstandes die Drehachse (#text(fill: blue)[DA]) sowie alle Kräfte (#text(fill: red)[$arrow(F)_1$] und #text(fill: red)[$arrow(F)_2$]) ein, die beim Gebrauch des Werkzeugs auf den Gegenstand wirken (die Gewichtskraft wird vernachlässigt). Der Abstand der Wirkungslinie einer Kraft zur Drehachse wird Kraftarm genannt. Zeichnen Sie diese Kraftarme (#text(fill: green)[$r_1$] und #text(fill: green)[$r_2$]) zu den gezeichneten Kräften ein. _Achten Sie auf den rechten Winkel!_

Nun können Sie die Frage zur Funktionsweise beantworten: Welche der gezeichneten Kräfte ist die grössere? Welche Folge hat dies für den Gebrauch des Gegenstandes?

== Die fünf Gegenstände

#grid(
  columns: (1fr, 1fr, 1fr),
  align: center,
  [#image("../bilder/nussknacker.png")], [#image("../bilder/tischlerhammer.png")],
  [#image("../bilder/schraubenschlüssel.png")],
  [Nussknacker], [Tischlerhammer], [Schraubenschlüssel],
  [#image("../bilder/beisszange.png")],[#image("../bilder/locher.png")], [],
  [Beisszange], [Locher]
)
