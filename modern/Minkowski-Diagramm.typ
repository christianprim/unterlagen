#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Moderne Physik"
#let titel = [Minkowski-Diagramm]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")
#set text(number-type: "old-style")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Harry Potter
Harry Potter will seinen $qty("1.75", "m")$ langen Nimbus 2000 in eine Truhe versorgen, die nur $qty("1.40", "m")$ lang ist. Für ihn wäre es eine Kleinigkeit, seinen Besen auf die gewünschte Länge zu verkleinern. Doch verwendet er diesmal die Magie nur dazu, den Nimbus 2000 auf $qty("80" , "percent")$ der Lichtgeschwindigkeit zu beschleunigen.

+ Kann aus Harry Potters Sicht der Besen aufgrund der relativistischen Längenkontraktion bei dieser Geschwindigkeit für eine kurze Zeit in die Truhe versorgt werden? Rechnen Sie nach.

Um sicherzugehen, dass dem wertvollen Besen bei diesem Vorhaben nichts zustösst, positioniert er seine Freunde Ron Weasley und Hermine Granger an beiden Enden der Truhe. Hermine soll die Eingangsklappe schliessen, sobald der Besen vollkommen drin steckt und Ron die Hinterwand öffnen, sobald der Besen die Hinterwand berühren würde. Harry ist ganz begeistert, als er auf diese Weise den Besen für eine kurze Zeit versorgt hat! Doch da flattert ihm Hedwig, seine kleine Eule, um die Ohren. Sie war die ganze Zeit über auf dem Besen und teilt den Erfolg von Harry überhaupt nicht: "Der Nimbus 2000 war niemals vollständig in der Truhe drin!"

#enum.item(2)[Zeigen Sie durch Rechnung, dass aus Hedwigs Sicht der Besen tatsächlich niemals in die Truhe passte.
]

Was soll nun gelten? War der Besen drin, ja oder nein? Um diese Frage zu beantworten, betrachten Sie das gezeichnete #smallcaps[Minkowski]-Diagramm.

#enum.item(3)[Markieren Sie darin folgende Ereignisse: ① Besenspitze bei Eingangsklappe, ② Besenende bei Eingangsklappe, ③ Besenspitze bei Hinterwand, ④ Besenende bei Hinterwand. Betrachten Sie die Reihenfolge der Ereignisse für Harry und Hedwig und halten Sie Ihre Beobachtung fest.]
#v(3em)

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    set-style(stroke: .5pt)

    scope({
      scale(3)
      line((0, -1.3), (0, 1.8), mark: (end: "barbed"), name: "eingang")
      line((-1.3, 0), (1.7, 0), mark: (end: "barbed"), name: "x")
      line((0, 0), (51.3402deg, 2.3), mark: (end: "barbed"), stroke: haupt-farbe, name: "ct'")
      line((0, 0), (51.3402deg, -1.7), stroke: haupt-farbe)
      line((0, 0), (38.6598deg, 2.2), mark: (end: "barbed"), stroke: haupt-farbe, name: "x'")
      line((0, 0), (38.6598deg, -1.6), stroke: haupt-farbe)
      line((0.5, -1.3), (0.5, 1.7), name: "hinterwand")
      line((0, -.45), (rel: (51.3402deg, 2.5)), stroke: haupt-farbe, name: "spitze")
      line((0, -.45), (rel: (51.3402deg, -1.1)), stroke: haupt-farbe)

      content("eingang.end", [$c t$ in Ls], anchor: "south", padding: 2pt)
      content("x.end", text(baseline: -0.02em)[$x$ in Ls], anchor: "west", padding: 2pt)
      content("ct'.end", text(baseline: -0.02em)[#text(fill: haupt-farbe)[$c t'$] in Ls], anchor: "south", padding: 2pt)
      content("x'.end", text(baseline: -0.02em)[#text(fill: haupt-farbe)[$x'$] in Ls], anchor: "west", padding: 2pt)
      content((-.07, 1.1), std.rotate(-90deg)[#text(size: 8pt)[Weltlinie Eingangsklappe]])
      content((0.43, 1.1), std.rotate(-90deg)[#text(size: 8pt)[Weltlinie Hinterwand]])
      content((1.05, 1.43), std.rotate(-51.3402deg)[#text(size: 8pt, fill: haupt-farbe)[Weltlinie Besenende]])
      content((1.24, 1.2), std.rotate(-51.3402deg)[#text(size: 8pt, fill: haupt-farbe)[Weltlinie Besenspitze]])
    })
  })
]

// 	\draw (0,-0.45)--node[sloped,above,very near end]{\small Weltlinie Besenspitze}++(51.3402:2.5cm);
// 	\draw (0,-0.45)--++(51.3402+180:1.1cm);
