#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Geradlinige Bewegungen]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Kinematik
Die Kinematik beschäftigt sich mit der möglichen _Bewegung_ eines (starren) Körpers. Sie versucht diese Bewegung sowohl zeitlich als auch örtlich zu erfassen:

=== Beispiele für örtliche Informationen

- geradlinige Bewegung
- krummlinige Bewegung (Kreisbewegung, Bewegungen auf einer Ellipse (Planeten), etc.)

=== Beispiele für zeitliche Informationen

- gleichförmige Bewegung
- ungleichförmige Bewegung (gleichmässig beschleunigt, ungleichmässig beschleunigt)

=== Testfragen

+ Ein Porsche fährt mit Tempomat (dieses Gerät hält die Geschwindigkeit gleich) auf einer geraden Strecke. Welche Informationen können Sie über seine Bewegung angeben?
+ Meteosat (das ist der Satellit, der uns die schönen Bilder für die Wetterprognose liefert) umkreist die Erde auf einer Kreisbahn, wobei er immer über Europa liegt. Welche Bewegung führt er aus?
+ Sie müssen vor einer Kreuzung mit dem Fahrrad abbremsen. Welche Bewegung führen Sie aus?

== Die geradlinige gleichförmige Bewegung

=== Definition
Nach dem Lösen des Arbeitsblattes können Sie selber angeben, wie die gleichförmige Bewegung definiert wird. Versuchen Sie, das Wort "Geschwindigkeit" nicht zu gebrauchen!
#schreibpapier(height: 1.61cm)

=== Das Weg-Zeit-Diagramm (#text(fill: green)[s]-t-Diagramm)

#grid(
  columns: (4cm, 1fr),
  align: (center+horizon, left),
  gutter: 1em,
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: 0.5pt)

      line((0, 0), (0, 2.5), mark: (end: "barbed"), name: "s-achse")
      line((0, 0), (3, 0), mark: (end: "barbed"), name: "t-achse")
      line((0, 0), (30deg, 3.5), stroke: green, name: "langsam")
      line((0, 0), (60deg, 3), stroke: green.darken(50%), name: "schnell")
      line((0, 1), (30deg, 2), (rel: (0, -1)), stroke: (paint: gray, dash: "dotted"))
      line((0, .5), (30deg, 1), (rel: (0, -.5)), stroke: (paint: gray, dash: "dotted"))

      content("s-achse.end", text(size: 8pt)[#text(fill: green)[$s$] in m], anchor: "west", padding: 2pt)
      content("t-achse.90%", text(size: 8pt)[$t$ in s], anchor: "south", padding: 4pt)
      content((1.3, .25), text(size: 8pt)[$Delta t$])
      content((.15, .75), text(size: 8pt, fill: green)[$Delta s$], angle: 90deg)
      content("schnell.60%", text(size: 8pt, fill: green.darken(50%))[schnell], angle: 60deg, anchor: "south", padding: 2pt)
      content("langsam", text(size: 8pt, fill: green)[langsam], angle: 30deg, anchor: "south", padding: 1pt)
    })
  ],
  [
    Halten Sie kurz die Bedeutung der Geradensteigung fest:
    - je steiler die Gerade, desto 
      #schreibpapier(height: .81cm)
    - die Geradensteigung bestimmt den Betrag der Geschwindigkeit #text(fill: blue)[$v$]:#v(1em)

      $#text(fill:blue)[$v$] =$#v(1em)
  ]
)

=== Das Bewegungsgesetz (Weg-Zeit-Gesetz)
Aus der Definition der Geschwindigkeit kann ich die zurückgelegte Strecke berechnen, indem ich sie nach #text(fill: green)[$s$] auflöse:

$ #text(fill: green)[$s$]=#text(fill: blue)[$v$] t $

Allgemeiner:

#cbox(color: haupt-farbe)[$ #text(fill: green)[$s$]=#text(fill: green)[$s_0$]+#text(fill: blue)[$v$] t $]

Der Beginn der Messung muss mit dem Beginn der Bewegung nicht zusammenfallen. #text(fill: green)[$s_0$] ist die bereits zurückgelegte Strecke bis zum Messbeginn ($t=0$).
