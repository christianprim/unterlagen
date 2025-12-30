#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Physikpraktikum"
#let titel = [Information]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Das Physikpraktikum

#v(.8cm)
Liebe Schülerin, lieber Schüler,#v(.4cm)

Damit Sie vom Physikpraktikum in diesem Semester optimal profitieren können, erhalten Sie die wichtigsten Informationen schriftlich.

Sie arbeiten generell in Zweiergruppen. Ihre Arbeit ist als Partnerarbeit zu verstehen. Das heisst, Sie verfassen gemeinsam das Protokoll und teilen sich die Experimentierarbeit gerecht auf. Daher erhalten Sie auch als Team gemeinsam eine Note fürs Protokoll.

== Protokoll
Von jeder Messung, bzw. jedem Versuch wird ein Protokoll angefertigt (ab heute pro Team ein Protokoll). Dieses wird folgendermassen strukturiert:

- Oben rechts: Namen der Personen in der Arbeitsgruppe, Datum und Überschrift.
- Das Wesentliche der Aufgabe wird zunächst in ein paar Sätzen zusammengefasst.
- Versuchsbeschreibung:

  Hier beschreiben Sie
  + was Sie tun und welche Materialien Sie dabei benutzen und
  + was Sie beobachten.

  Wenn die Beobachtung in Form einer Messung erfolgt, sollten Sie die Messergebnisse übersichtlich in Tabellenform notieren. _Hinweis:_ Masseinheiten nicht vergessen!

- Interpretation: Meistens sind Sie aufgefordert, Ihre Beobachtungen auszuwerten und zu interpretieren. Das Auflisten möglicher Fehlerquellen sowie deren Grössenordnung gehört auch hierher und schliesst das Protokoll ab.

  _Wichtig:_ Trennen Sie klar Ihre Beobachtungen von der Auswertung! Es muss ersichtlich sein, was Sie gemessen und was Sie berechnet haben. Denken Sie daran: Anhand Ihres Protokolls muss für eine Drittperson, die nicht während des Praktikums anwesend war, ersichtlich werden, was Sie genau gemacht haben.

#cbox(color: haupt-farbe)[Das Protokoll mit der Auswertung geben Sie nach der Doppelstunde ab!]

== Beurteilung
- Für die Praktikumsnote zählen sämtliche Protokolle.

- Unter jedem Protokoll finden Sie die Bewertung in Form von $++$, $+$, $circle$, $-$ und $- -$. Haben Sie in jedem Protokoll ein $++$ erzielt, bekommen Sie 0.2 auf Ihren Notenschnitt dazu gezählt, bei lauter $--$ entsprechend $-0.2$.

- Sorgfältiges und konzentriertes Arbeiten, hilfsbereites Verhalten, Phantasie und Improvisationstalent werden positiv registriert.

Ich freue mich auf eine konstruktive Zusammenarbeit. 
