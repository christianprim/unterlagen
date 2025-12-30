#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Das 2\. #smallcaps[Newton]sche Gesetz]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Kokosnüsse
In der Presse "20 Minuten" vom #text(number-type: "old-style")[5\. März 2002] stand folgender Artikel:

#align(center)[
  #box(width: 57%, height: 8cm, inset: 1em, stroke: haupt-farbe)[
    #text(size: 24pt, font: "TeX Gyre Heros", style: "oblique", weight: "extrabold")[#par(leading: .2em, spacing: .5em)[Kokosnüsse sind viel \ gefährlicher als Haie]]

    #columns(2, gutter: 8pt)[
      #align(left)[
        #text(size: 9pt, )[LONDON – Tropen-Touristen fürchten sich am meisten vor Hai-Attacken. Doch ein viel grösseres Risiko bergen Kokosnüsse – das verkündete gestern die Londoner Reiseversicherung Club Direct. Demnach wurden im Jahr 2000 insgesamt 79 Menschen von Haien angegriffen, von ihnen starben 10. Durch Kokosnüsse aber würden jedes Jahr rund 150 Menschen erschlagen. Die Gefahr des romantischen Verweilens unter Kokospalmen hat der kanadische Professor Peter Brass in seiner Abhandlung «Verletzungen durch fallende Kokosnüsse» naturwissenschaftlich untersucht: Eine 4 Kilo schwere Kokosnuss beschleunigt sich bei ihrem Fall aus 25 Metern Höhe auf 80 Kilometer pro Stunde – und trifft das Opfer mit der Kraft einer Tonne.]
      ]
    ]
  ]
]

== Aufgaben
+ Wie gross ist die Kraft, die auf die fallende Kokosnuss wirkt, und wie heisst sie?
  #schreibpapier(height: 1.62cm)
  
+ Überprüfen Sie die Geschwindigkeitsangabe. Stimmen die $qty("80", "km/h")$?
  #schreibpapier(height: 1.62cm)
  
+ Im Artikel wird die Kraft in Tonnen angegeben. Wieso ist das physikalisch falsch? Wie gross ist diese Kraft in Newton?
  #schreibpapier(height: 1.62cm)
  
+ Wie lange hat der Stoss gedauert? (Stosszeit)
  #schreibpapier(height: 1.62cm)
  
+ Wie gross wäre der Bremsweg der Kokosnuss mit den angegebenen Daten?
  #schreibpapier(height: 1fr)
