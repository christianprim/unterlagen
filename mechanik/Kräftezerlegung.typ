#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = [Kräftezerlegung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Kräftezerlegung

== Worum es geht
Bis jetzt haben wir nur verschiedenen Kräfte zusammengezählt und daraus die resultierende Kraft bestimmt. Das Umgekehrte geht aber auch! Eine Kraft kann in zwei oder mehrere Kräfte zerlegt werden. Werden diese Teilkräfte zusammengezählt, muss natürlich wieder die ursprüngliche, einzelne Kraft erhalten werden.

Wo ist das sinnvoll? Zwei Beispiele:

- Die Strassenlaterne
  #grid(
    columns: (1fr, 1fr),
    gutter: (1cm),
    [#cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      rect((-4, -2.5), (-3.6, 1), fill: gradient.linear(white, gray.lighten(50%)), stroke: none)
      rect((3.6, -2.5), (4, 1), fill: gradient.linear(gray.lighten(50%), white), stroke: none)
      line((-3.6, -2.5), (-3.6, 1))
      line((3.6, -2.5), (3.6, 1))
      line((-3.6, .7), (0, 0), (3.6, .7))
      line((0, 0), (0, -1.5))
      rect((-0.6, -1.5), (0.6, -2.3), fill: gradient.linear(haupt-farbe, haupt-farbe.lighten(80%), haupt-farbe), stroke: haupt-farbe)
      line((0, 0), (-2.5, -.486), stroke: orange.lighten(30%) + 1pt, mark: (end: "barbed"), name: "F_1")
      line((0, 0), (2.5, -.486), stroke: orange.lighten(30%) + 1pt, mark: (end: "barbed"), name: "F_2")
      line((-2.5, -.486), (0, -.972), (2.5, -.486), stroke: (dash: "dotted"))
      line((0, 0), (0, -.972), stroke: red + 1pt, mark: (end: "barbed"), name: "F_G")
      circle((0, 0), radius: 2pt, fill: white)

      content("F_1", text(fill: orange.lighten(20%))[$arrow(F)_1$], anchor: "south-east", padding: 1pt)
      content("F_2", text(fill: orange.lighten(20%))[$arrow(F)_2$], anchor: "south-west", padding: 1pt)
      content("F_G", text(fill: red)[$arrow(F)_G$], anchor: "west", padding: 3pt)
    })],
    [
      Eine Strassenlaterne wird durch zwei Seile befestigt. Da diese Seile nur Kräfte aufnehmen können, die in ihrer Richtung wirken, ist es sinnvoll, die Gewichtskraft der Laterne in die gezeichneten Kräfte #text(fill: orange.lighten(20%))[$arrow(F)_1$] und #text(fill: orange.lighten(20%))[$arrow(F)_2$] zu zerlegen.
    ]
  )

- Die schiefe Ebene
  #grid(
    columns: (1fr, 1fr),
    gutter: (1cm),
    [
      #cetz.canvas({
        import cetz.draw: *
  
        set-style(stroke: .5pt)

        let A = (-8, 0)
        let B = (0, 4.6188)
        let C = (0, 0)
        let M = (-3, 3.465)
        line(A, B, C, close: true)
        circle(M, radius: .5, fill: gradient.radial(haupt-farbe.lighten(80%), haupt-farbe, center: (25%, 25%)), stroke: haupt-farbe)
        line(M, (rel: (0, -3)), stroke: red + 1pt, mark: (end: "barbed"), name: "F_G")
        line(M, (rel: (210deg, 1.5)), stroke: orange.lighten(30%) + 1pt, mark: (end: "barbed"), name: "F_||")
        line(M, (rel: (-60deg, 2.598)), stroke: orange.lighten(30%) + 1pt, mark: (end: "barbed"), name: "F_perp")
        line("F_||.end", "F_G.end", "F_perp.end", stroke: (dash: "dotted"))
        content("F_G", text(fill: red)[$arrow(F)_G$], anchor: "west", padding: 2pt)
        content("F_||", text(fill: orange.lighten(20%))[$arrow(F)_||$], anchor: "south-east", padding: 1pt)
        content("F_perp", text(fill: orange.lighten(20%))[$arrow(F)_perp$], anchor: "south-west", padding: 1pt)
      })
    ],
    [
      Eine Murmel, die auf einer Rampe los gelassen wird, rollt mit zunehmender Geschwindigkeit nach unten. Dafür ist eine Kraft notwendig, die in Richtung der Ebene wirkt (werden wir später genauer untersuchen). Da hier wiederum nur die Gewichtskraft in Frage kommt, ist es sinnvoll, diese in eine Teilkraft parallel zur Ebene #text(fill: orange.lighten(20%))[$arrow(F)_||$] und eine senkrecht zur Ebene #text(fill: orange.lighten(20%))[$arrow(F)_perp$] zu zerlegen.
    ]
  )
#v(1em)
#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
- Wie verändern sich die Teilkräfte #text(fill: orange.lighten(20%))[$arrow(F)_||$] und #text(fill: orange.lighten(20%))[$arrow(F)_perp$], wenn die Neigung der Ebene vergrössert bzw.\ verkleinert wird?
#schreibpapier()
#pagebreak()

== Mathematische Bestimmung der beiden Teilkräfte

#grid(
  columns: (auto, 8.3cm),
  gutter: .5cm,
  [
    Die schiefe Ebene kann als Dreieck ABC aufgefasst werden. Das Dreieck PQR gebildet aus der Gewichtskraft und den beiden Teilkräften ist aber dem Dreieck ABC ähnlich.
    Somit gilt für #text(fill: orange.lighten(20%))[$arrow(F)_||$]:
    $
    #text(fill: orange.lighten(20%))[$F_||$]/#text(fill: red)[$F_G$]= a/c (=sin alpha)" oder "#text(fill: orange.lighten(20%))[$F_||$] = #text(fill: red)[$F_G$] a/c
    $
    #text(size: 8pt)[Die Werte für $a$ und $c$ finden Sie für die wichtigsten Neigungen in der Formelsammlung! Später werden Sie eine elegantere mathematische Methode kennen lernen. Stichwort: Trigonometrie ($sin alpha$).]
  ],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      let A = (-8, 0)
      let B = (0, 4.6188)
      let C = (0, 0)
      let M = (-3, 3.465)
      
      line(A, B, C, close: true)
      hide(line(A, B, name: "c"))
      hide(line(A, C, name: "b"))
      hide(line(B, C, name: "a"))
      circle(M, radius: .5, fill: gradient.radial(haupt-farbe.lighten(80%), haupt-farbe, center: (25%, 25%)), stroke: haupt-farbe)
      line(M, (rel: (0, -3)), stroke: red + 1pt, mark: (end: "barbed"), name: "F_G")
      line(M, (rel: (210deg, 1.5)), stroke: orange.lighten(30%) + 1pt, mark: (end: "barbed"), name: "F_||")
      line(M, (rel: (-60deg, 2.598)), stroke: orange.lighten(30%) + 1pt, mark: (end: "barbed"), name: "F_perp")
      line("F_||.end", "F_G.end", "F_perp.end", stroke: (dash: "dotted"))
      hide(line("F_||.end", "F_G.end", name: "PR"))

      cetz.angle.angle("b.start", "b", "c", radius: 0.8, label: box(baseline: -0.2em)[$alpha$], label-radius: 0.6)
      cetz.angle.angle("F_G.end", "F_G", "PR", radius: 0.8, label: box(baseline: -0.2em)[$alpha$], label-radius: 0.6)
      content("F_G", text(fill: red)[$arrow(F)_G$], anchor: "west", padding: 2pt)
      content("F_||", text(fill: orange.lighten(20%))[$arrow(F)_||$], anchor: "south-east", padding: 1pt)
      content("F_perp", text(fill: orange.lighten(20%))[$arrow(F)_perp$], anchor: "south-west", padding: 1pt)
      content(A, [A], anchor: "east", padding: 2pt)
      content(B, [B], anchor: "south", padding: 2pt)
      content(C, [C], anchor: "west", padding: 2pt)
      content("F_G.end", [P], anchor: "north", padding: 2pt)
      content("F_G.start", [Q], anchor: "south", padding: 2pt)
      content("F_||.end", [R], anchor: "north-east", padding: 2pt)
      content("a", [$a$], anchor: "west", padding: 2pt)
      content("b", [$b$], anchor: "north", padding: 2pt)
      content("c.40%", [$c$], anchor: "south-east", padding: 2pt)
    })
  ]
)
- Was gilt für #text(fill: orange.lighten(20%))[$arrow(F)_perp$]?#v(2em)

  $#text(fill: orange.lighten(20%))[$F_perp$]/#text(fill: red)[$F_G$]=#h(5cm)"oder " #text(fill: orange.lighten(20%))[$F_perp$]=$#v(2em)

== Geschichtliches

#grid(
  columns: (4.5cm, 1fr),
  gutter: 0.5cm,
  [#image("../bilder/zerlegung.png")],
  [
    Die Kräfte bei einer schiefen Ebene hat schon ein Zeitgenosse #smallcaps[Galileo Galileis], ein Herr #smallcaps[Simon Stevin], #text(number-type: "old-style")[1586] untersucht.
    
    Seine Überlegungen waren die folgenden:

    Die vier Kugeln auf der langen Kathetenfläche ziehen gleich stark wie die zwei Kugeln entlang der kürzeren Kathete.

    Die Zugkraft #text(fill: orange.lighten(20%))[$arrow(F)_||$] einer Kugel auf der langen schiefen Ebene entspricht hier also gerade $1/2$ der Kraft senkrecht zu dieser langen Ebene #text(fill: orange.lighten(20%))[$arrow(F)_perp$].

    Oder: Die Zugkraft der Kugeln auf der langen schiefen Ebene verhält sich zur Zugkraft der zwei hängenden Kugeln auf der kurzen schiefen Ebene wie das umgekehrte Verhältnis der entsprechenden Dreiecksseiten, was in Übereinstimmung mit der Gleichung $#text(fill: orange.lighten(20%))[$F_||$]/#text(fill: orange.lighten(20%))[$F_perp$]=a/b=1/2$ ist.
  ]
)
