#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Geometrische Optik"
#let titel = [Brechung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "1.")

#set table(
  fill: (_, y) => if y< 1 { haupt-farbe.transparentize(80%) },
  stroke: (_, y) => (
      x: none,
      top: if y == 0 { 1pt } else { if y == 1 { 0.5pt } else { 0pt }},
      bottom: 1pt,
  ),
)

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

#set page(numbering: "1", header: context{
  let header-gradient = gradient.linear(haupt-farbe, haupt-farbe.lighten(70%), haupt-farbe.lighten(100%), white, angle: 90deg)
  place(dx: -2cm, dy: 0cm)[
    #rect(height: 1cm, width: 21cm, fill: header-gradient)
  ]
  set text(font: header-footer-font, fill: haupt-farbe)
  [_#gebiet: #titel _ #h(1fr) _#counter(page).get().first()_]
})

= Brechung

== Theorie
Sie haben sicher schon einen Stecken ins Wasser gehalten und mit Erstaunen festgestellt, dass dieser an der Wasseroberfläche einen Knick aufweist. Wenn nicht, dann standen Sie sicher schon mal bis zu den Knien im Wasser und haben Ihre Füsse betrachtet. Ihre Beine scheinen so komisch verkürzt zu sein!

Beide Beobachtungen haben dieselbe Erscheinung zugrunde liegend: die _Brechung._ Und diese wollen wir heute genauer untersuchen. Wer Untersuchen sagt, denkt auch gleich wieder an Beschreiben. Ja richtig! Zuerst dürfen Sie Ihren physikalischen Wortschatz erweitern.

Der Winkel zwischen einfallendem Lichtstrahl und Lot heisst _Einfallswinkel_ #text(fill: red)[$alpha$].

Derjenige zwischen gebrochenem Lichtstrahl und Lot heisst _Brechungswinkel_ #text(fill: blue)[$beta$].

== Aufgabe
+ Untersuchen Sie als erstes die Brechung zwischen Luft und Glas. Gibt es irgendeine Gesetzmässigkeit?

  #grid(
    columns: (1fr, auto),
    align: (left, horizon),
    gutter: .5cm,
    [
      - Benutzten Sie die LaserRayBox, um einen einzelnen Lichtstrahl zu erzeugen (siehe letztes Optikpraktikum).
      
      - Richten Sie diesen Lichtstrahl auf den Mittelpunkt des Halbkreises, den sie auf die runde Scheibe mit der Gradeinteilung legen. Sie sollten folgendes beobachten:

        Der Lichtstrahl schneidet die Scheibe mit der Skaleneinteilung zuerst in Punkt A, trifft anschliessend auf das Glas, wird gebrochen und schneidet erneut den Scheibenrand, diesmal in Punkt B. Wir werden noch die Abstände der beiden Schnittpunkte zum Lot gebrauchen und beschriften sie deshalb mit #text(fill: red)[$a$] und #text(fill: blue)[$b$]. Beachten Sie auch die Abbildung!
    ],
    [
      #cetz.canvas({
        import cetz.draw: *

        set-style(stroke: .5pt)

        merge-path(fill: aqua.lighten(50%),{
          arc((-1, 0), start: -180deg, stop: 0deg)
          line((), (-1, 0))
        })

        circle((0, 0), radius: 1.8, stroke: (dash: "dotted"))

        line((-2, 0), (2, 0), stroke: gray)
        line((0, -2), (0, 2), stroke: (dash: "dash-dotted"), name: "lot")

        line((0, 0), (130deg, 2), stroke: red, name: "einfallend")
        mark("einfallend", "einfallend.start", symbol: "barbed", stroke: red)
        line((0, 0), (-70deg, 2), stroke: red, name: "gebrochen")
        mark("gebrochen.70%", "gebrochen.end", symbol: "barbed", stroke: red)

        cetz.angle.angle((0, 0), "lot.end", "einfallend", stroke: red, radius: .7, label: text(fill: red, baseline: -0.02em)[$alpha$], label-radius: .5)
        cetz.angle.angle((0, 0), "lot.start", "gebrochen", stroke: blue, radius: 1.1, label: text(fill: blue, baseline: -0.02em)[$beta$], label-radius: .9)

        line((130deg, 1.8), (0, calc.cos(40deg)*1.8), stroke: red, name: "a")
        line((-70deg, 1.8), (0, -calc.cos(-20deg)*1.8), stroke: blue, name: "b")

        content("lot.end", [Lot], anchor: "south-west", padding: 2pt)
        content("einfallend.end", [A], anchor: "east")
        content("gebrochen.end", [B], anchor: "west")
        content("a", text(fill: red)[$a$], anchor: "south", padding: 2pt)
        content("b", text(fill: blue)[$b$], anchor: "north", padding: 2pt)
      })
    ]
  )


  - Als erstes wollen wir Ihr Auge schulen! Wenn der Abstand #text(fill: red)[$a$] nicht zu klein ist, wird nicht das ganze Licht gebrochen. Sehen Sie es? Was passiert mit dem Licht das nicht gebrochen wird? Beschreiben Sie es möglichst genau in einem Satz!
    #schreibpapier(height: 1.61cm)
    
  - Tragen Sie die Messwerte (#text(fill: blue)[$beta$], #text(fill: red)[$a$] und #text(fill: blue)[$b$]) in die Tabelle für die Einfallswinkel 15°, 30°, 45°, 60° und 75° ein. Die letzte Kolonne müssen Sie noch nicht ausfüllen!
    #align(center)[  
      #table(
        columns: (1.5cm, 1.5cm, 1.5cm, 1.5cm, 1.5cm),
        align: center,
        text(fill: red)[$alpha$], text(fill: blue)[$beta$], text(fill: red)[$a$], text(fill: blue)[$b$], [$#text(fill: red)[$a$]/#text(fill: blue)[$b$]$],
        [$qty("15", "degree")$], table.cell(colspan: 4)[],
        [$qty("30", "degree")$], table.cell(colspan: 4)[],
        [$qty("45", "degree")$], table.cell(colspan: 4)[],
        [$qty("60", "degree")$], table.cell(colspan: 4)[],
        [$qty("75", "degree")$], table.cell(colspan: 4)[],
      )
    ]

  - Bilden Sie für jede Reihe der Messung das Verhältnis von #text(fill: red)[$a$] zu #text(fill: blue)[$b$] und tragen Sie das Resultat in die letzte Kolonne ein. Was stellen Sie fest?
    
  - Die Strecken #text(fill: red)[$a$] und #text(fill: blue)[$b$] lassen sich mithilfe der trigonometrischen Funktionen angeben. Überprüfen Sie die Richtigkeit des _Brechungsgesetzes:_

    $ (sin #text(fill: red)[$alpha$]) / (sin #text(fill: blue)[$beta$]) ="konst." $

  - Der Brechungswinkel #text(fill: blue)[$beta$] kann einen bestimmten Wert nicht überschreiten. (Der Einfallswinkel #text(fill: red)[$alpha$] kann ja höchstens 90° betragen!) Dieser Winkel heisst Grenzwinkel. Wie gross ist dieser Grenzwinkel bei Glas in etwa? Führen Sie das entsprechende Experiment durch.
    #schreibpapier(height: 1.21cm)
    
  - Überprüfen Sie Ihre Aussage, indem Sie den Grenzwinkel mit dem Brechungsgesetz nachprüfen!
    #schreibpapier(height: 1.21cm)

+ Was geschieht, wenn das Licht von der Glasseite her kommt?
  - Drehen Sie dazu den Halbkreis so, dass das Licht zuerst auf die gekrümmte Seite auftrifft. Was passiert, wenn Sie den Grenzwinkel auf der Glasseite überschreiten?
    #schreibpapier(height: 1.21cm)

== Theorie
Das Verhältnis $#text(fill: red)[$a$]/#text(fill: blue)[$b$]=(sin #text(fill: red)[$alpha$]) / (sin #text(fill: blue)[$beta$])=n$ heisst Brechzahl $n$. 
Für Glas haben Sie die Brechzahl selbst berechnet. Nun sind Sie sogar in der Lage eine Vorhersage zu machen! Wenn ich Ihnen die Brechzahl $n$ eines Stoffes vorgebe, können Sie den gebrochenen Strahl selbst zeichnen, ohne das Material selber zu besitzen. Sie werden gleich sehen weshalb! Denn als kleine Übung (so was könnte durchaus an einer Prüfung kommen!) müssen Sie den Brechungswinkel in Diamant ($#text(fill: blue)[$n_D$] = 2.4$) bestimmen. Und Diamanten kann sich nun einmal auch die Kantonsschule Zürich Nord nicht in grösserer Menge leisten!

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Darf ich Ihnen noch einen kleinen Trick verraten? Ich kenne nämlich eine ganz einfache Konstruktion. Und die geht wie folgt (beachten Sie auch die Skizze!): Zeichnen Sie dort, wo der Strahl die Diamantoberfläche berührt, einen Kreis, der der Brechungszahl $n_L=1$ für Luft entspricht. Ich habe für den Radius $qty("2", "cm")$ (Massstab 2:1) gewählt. Zeichnen Sie um denselben Mittelpunkt im selben Massstab wie vorher einen Kreis, der dem Brechungsindex für Diamant entspricht (also $2.4 dot qty("2", "cm")$). Auf der Diamantseite schneidet der noch ungebrochene Lichtstrahl den kleinen Kreis im Punkt A. Wenn Sie eine Parallele zum Lot durch diesen Punkt legen, schneidet er den grossen Kreis im Punkt B. Jetzt sind Sie schon fast fertig. Man kann nämlich durch ähnliche Dreiecke zeigen, dass der gebrochene Strahl durch den Punkt B verlaufen muss. War ganz einfach, oder?
  ],
  [
    #cetz.canvas({
      import cetz.draw: *
  
      set-style(stroke: .5pt)
  
      let alpha1 = 50deg
      let n1 = 1.0
      let n2 = 2.4

      rect((-3, -3), (3, 0), stroke: none, fill: aqua.lighten(90%))
      line((-3, 0), (3,0), stroke: 1pt + blue, name: "oberfläche")
      line((0, -3), (0,3), stroke: (dash: "dash-dotted"), name: "lot")
      circle((0, 0), radius: n2, stroke: blue, name: "diamant")
      circle((), radius: n1, name: "luft")
      line((90deg + alpha1, n2 + 0.5), (0, 0), stroke: red, name: "einfallend")
      mark("einfallend.50%", (0, 0), symbol: "barbed", stroke: red)
      line((0, 0), (-90deg + alpha1, n1), stroke: (dash: "dotted"))
      on-layer(2, circle((), radius: 1pt, fill: white, name: "A"))
      hide(line((), (rel: (0, -10)), name: "parallel"))
      intersections("i", "diamant", "parallel")
      line((-90deg + alpha1, n1), "i.0", stroke: (dash: "dotted"))
      line((0, 0), ((0, 0), n2 + 0.5, "i.0"), stroke: red, name: "gebrochen")
      mark("gebrochen.50%", "i.0", symbol: "barbed", stroke: red)
      circle((), radius: 1pt, fill: white, name: "B")
      circle((0, 0), radius: 1pt, fill: white)
  
      cetz.angle.angle((0, 0), (90deg, 1), "einfallend", radius: 0.6, stroke: red, label: box(baseline: -0.2em)[#text(fill: red)[$alpha$]], label-radius: 0.4)
      cetz.angle.angle((0, 0), (-90deg, 1), "gebrochen", radius: 1.1, stroke: blue, label: box(baseline: -0.2em)[#text(fill: blue)[$beta$]], label-radius: 0.8)
      
      content("lot.end", [Lot], anchor: "south")
      content("luft.south-west", [$n_L$], anchor: "south-west")
      content("diamant.south-west", text(fill: blue)[$n_D$], anchor: "north-east")
      content((0, 0), anchor: "south-west", [M], padding: 3pt)
      content("A", anchor: "west", [A], padding: 2pt)
      content("B", anchor: "west", [B], padding: 2pt)
      content((2, 2.5), [Luft])
      content((2, -2.5), text(fill: blue)[Diamant])
    })
  ]
)

== Aufgabe

+ Bestimmen Sie den Brechungswinkel in Diamant, wenn der Einfallswinkel $#text(fill: red)[$alpha$]=qty("45", "degree")$ beträgt.
  - Jetzt können Sie es gleich selbst probieren.
  #align(center)[
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      line((-2.7, 0), (2.7, 0), stroke: 1pt + blue)
      line((0, -2.7), (0, 2.7), stroke: (dash: "dash-dotted"), name: "lot")
      line((0, 0), (135deg, 3.8), stroke: red, name: "einfallend")
      mark("einfallend", "einfallend.start", symbol: "barbed", stroke: red)

      cetz.angle.angle((0, 0), (0, 1), "einfallend", radius: .8, stroke: red, label: text(fill: red, baseline: -0.02em)[$alpha$], label-radius: 0.6)
      content("lot.end", [Lot], anchor: "west", padding: 2pt)
      content((2.7, 2.7), [Luft])
      content((2.7, -2.7), text(fill: blue)[Diamant])
    })
  ]
+ Kommen wir nun zur anfangs aufgeworfenen Frage, weshalb der Stab im Wasser geknickt wird und weshalb unsere Beine verkürzt erscheinen.
  #grid(
    columns: (auto, 1fr),
    align: horizon,
    inset: (left: 1.5em),
    [
      #cetz.canvas({
        import cetz.draw: *

        line((-.4, 2.2), (-.4, .4), (0, 0), (4, 0), (4, 1.8), (3.5, 2.2), fill: aqua.lighten(50%), stroke: none)
        
        stroke((thickness:.5pt, paint: blue, join: "round"))
        line((4, 0), (3.5,.4), (-.4, .4))
        line((3.5, 2.2), (3.5, .4))

        line((-.4, 2.2), (0, 1.8), (4, 1.8), (3.5, 2.2), close: true)
        
        stroke((thickness: .75pt, join: "round", paint: black))
        line((0, 0), (4, 0), (4, 2), (0, 2), (-.4, 2.4), (-.4,.4), close: true)
        line((0, 0), (0,2))
        line((4, 2), (3.5, 2.4), (-.4, 2.4))
        line((3.5, 2.4), (3.5, 2.2))

        stroke(.5pt)
        
        mark((-1.5, 1.1), (rel: (-1, 0)), symbol: "barbed", scale: 3, width: .2)
        arc((-.96, .95), start: -20deg, stop: 20deg, radius: .45)
        arc((-.94, 1.01), start: -90deg, stop: -270deg, radius: (.02, .09), stroke: blue + 1pt)
        circle((-.94, 1.1), radius: (.01, .05))

        content((-0.2,1.1), std.skew(ay: 40deg, reflow: true)[A])
        content((3.75,1.1), std.skew(ay: 40deg, reflow: true)[#text(fill: blue.darken(40%))[B]])
      })
    ], 
    [
      - Füllen Sie die Glasküvette mit Wasser bis etwa $qty("2", "cm")$ unter dem Rand. Schauen Sie von vorne durch die Küvettenwand A. Verschieben Sie Ihren Zeigefinger auf der Tischoberfläche in der Nähe der Wanne (ohne sie zu berühren!) von der Fläche A ausgehend langsam nach hinten. Bleiben Sie an dem Ort stehen, wo Sie, durch die Küvette betrachtet, die Rückwand B vermuten. Was stellen Sie fest? Erklärung?

    ]
  )
  #block(inset: (left: 1.5em))[#schreibpapier(height: 2cm)]
  #grid(
    columns: (1fr, auto),
    gutter: .5cm,
    [
      - Legen Sie eine Münze in die Glasküvette. Richten Sie die Zielvorrichtung so aus, dass Sie die Münze treffen. Treffen Sie sie mit dem Stab? Was müssen die Indianer, die in Südamerika die Fische mit dem Speer jagen, anstellen?
        #schreibpapier(height: 2.01cm)
    ],
    [
      #image("../bilder/fischer.jpg", width: 6cm)
    ]
  )
    
  - Erklären Sie mit Hilfe einer Zeichnung, warum das Rohr unter bestimmten Winkeln an der Eintauchstelle geknickt scheint.
    #schreibpapier()

== Theorie
Mehr als die Hälfte aller Schweizer braucht eine Augenkorrektur! Es müssen heute nicht unbedingt Brillen sein, ich selber z.B. trage Kontaktlinsen. Aber egal wie die Augenkorrektur äusserlich ausschaut, das Wichtige ist die Linse. Doch wie funktioniert eine Linse eigentlich? Vielleicht haben Sie schon gehört, dass es nebst der Hornhautverkrümmung hauptsächlich zwei Probleme gibt: die Weit- und die Kurzsichtigkeit. Also muss es auch zwei grundsätzlich verschiedene Linsentypen geben. Das tönt spannend! Deshalb untersuchen Sie als erstes diese zwei Typen.

== Aufgabe
+ Untersuchen Sie eine Sammel- und eine Zerstreuungslinse.
  - Schauen Sie dazu die beiden Linsen genau an und zeichnen Sie den Querschnitt hin. _Tipp: Die Linse, die Sie als Lupe gebrauchen können, ist die Sammellinse._

    #grid(
      columns: (1fr, 1fr),
      align: center,
      [~#v(4cm)], [],
      [Sammellinse], [Streulinse]
    )
  - Stellen Sie anschliessend die LaserRayBox so ein, dass sie 5 parallele Strahlen erzeugt.
  
  - Legen Sie die entsprechend geschnittenen Glasstücke auf ein weisses Blatt Papier und beleuchten Sie sie mit den parallelen Strahlen. Beschreiben Sie den Verlauf der Strahlen möglichst genau:
    #schreibpapier(height: 3.61cm)

    #place(dy: -3.5cm)[
      Sammellinse:
      #v(1.25cm)
      Streulinse:
    ]
    
  - Können Sie nun etwas mit der Angabe auf den Linsen anfangen?
    #schreibpapier(height: 1.21cm)
    
  - Erklären Sie diese Erscheinung! _Tipp: Bei einer Linse haben Sie einen Übergang von Luft zu Glas und anschliessend wieder von Glas zu Luft. Das sollte Sie an die vorhergehenden Aufgaben erinnern! Am Besten fertigen Sie eine Skizze an._
    #schreibpapier()

+ Kommen wir zur Lupe: Welche Bilder kann sie erzeugen?
  - Messen Sie hierfür als erstes die Brennweite Ihrer Lupe. Wie beim Hohlspiegel ist die Brennweite der Abstand zwischen der Linse und dem Punkt, in dem sich alle parallel einfallenden Strahlen schneiden.

    $#text(fill: green)[$f$]=$

  - Untersuchen Sie nun die verschiedenen Bilder, die eine Lupe erzeugen kann. Dazu habe ich Ihnen folgende Tabelle vorbereitet:
    #table(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, center), 
      [Abstand Gegenstand–Lupe], [Art (aufrecht, umgekehrt)], [Grösse],
      [#v(1em)sehr nahe an der Lupe#v(1em)], [], [],
      [im Brennpunkt#v(1em)], [], [],
      [sehr weit weg#v(1em)], [], []
    )

  - Vergleichen Sie das Resultat mit dem Hohlspiegel. Was stellen Sie fest?
    #schreibpapier(height: 2.81cm)
    
  - Vervollständigen Sie zur Erklärung der beobachteten Bilder folgende Grafiken, indem Sie die wichtigen Strahlengänge einzeichnen: (Die Anleitung für die Strahlengänge finden Sie im 1. Optikpraktikum zum Thema Reflexion)
    #grid(
      columns: (1fr),
      align: center,
      row-gutter: 1em,
      [
        #cetz.canvas({
          import cetz.draw: *

          set-style(stroke: .5pt)

          line((-7, 0), (7, 0), stroke: (dash: "dash-dotted"), name: "oA")
          line((0, -2), (0, 2), mark: (symbol: "barbed"), name: "HE")
          circle((-3, 0), radius: 1pt, fill: white, name: "F1")
          circle((3, 0), radius: 1pt, fill: white, name: "F2")

          line((-6, 0), (-6, 1), stroke: red + 1pt, mark: (end: "barbed"), name: "G")

          content("oA.90%", [optische Achse], anchor: "south", padding: 1pt)
          content("HE.end", [Sammellinse], anchor: "south", padding: 1pt)
          content("F1", [$upright(F)_1$], anchor: "north", padding: 2pt)
          content("F2", [$upright(F)_2$], anchor: "north", padding: 2pt)
          content("G", text(fill: red)[$G$], anchor: "east", padding: 3pt)
        })
      ],
      [
        #cetz.canvas({
          import cetz.draw: *

          set-style(stroke: .5pt)

          line((-7, 0), (7, 0), stroke: (dash: "dash-dotted"), name: "oA")
          line((0, -2), (0, 2), mark: (symbol: "barbed"), name: "HE")
          circle((-3, 0), radius: 1pt, fill: white, name: "F1")
          circle((3, 0), radius: 1pt, fill: white, name: "F2")

          line((-3, 0), (-3, 1), stroke: red + 1pt, mark: (end: "barbed"), name: "G")

          content("oA.90%", [optische Achse], anchor: "south", padding: 1pt)
          content("HE.end", [Sammellinse], anchor: "south", padding: 1pt)
          content("F1", [$upright(F)_1$], anchor: "north", padding: 2pt)
          content("F2", [$upright(F)_2$], anchor: "north", padding: 2pt)
          content("G", text(fill: red)[$G$], anchor: "east", padding: 3pt)
        })
      ],
      [
        #cetz.canvas({
          import cetz.draw: *

          set-style(stroke: .5pt)

          line((-7, 0), (7, 0), stroke: (dash: "dash-dotted"), name: "oA")
          line((0, -2), (0, 2), mark: (symbol: "barbed"), name: "HE")
          circle((-3, 0), radius: 1pt, fill: white, name: "F1")
          circle((3, 0), radius: 1pt, fill: white, name: "F2")

          line((-1.5, 0), (-1.5, .7), stroke: red + 1pt, mark: (end: "barbed"), name: "G")

          content("oA.90%", [optische Achse], anchor: "south", padding: 1pt)
          content("HE.end", [Sammellinse], anchor: "south", padding: 1pt)
          content("F1", [$upright(F)_1$], anchor: "north", padding: 2pt)
          content("F2", [$upright(F)_2$], anchor: "north", padding: 2pt)
          content("G", text(fill: red)[$G$], anchor: "east", padding: 3pt)
        })
      ]
    )

  - Bilden Sie mit der Lupe die Landschaft aus dem Fenster auf ein weisses Blatt Papier ab. Welchen Unterschied gibt es zwischen diesem Bild und einem Spiegelbild?
    #schreibpapier(height: 2.81cm)
    
  - Messen Sie die Grösse #text(fill: red)[$G$] des Fensters oder der Lampe, den Abstand #text(fill: blue)[$b$] Bild-Lupe und die Höhe #text(fill: blue)[$B$] des Bildes. Messen Sie alle Grössen für drei verschiedene Fälle. Tragen Sie die Messergebnisse in die Tabelle ein.
    #align(center)[
      #table(
        columns: (3cm, 3cm, 3cm, 3cm),
        align: center,
        text(fill: red)[$G$], text(fill: blue)[$b$], text(fill: blue)[$B$], [$#text(fill: green)[$f$]=(#text(fill: red)[$G$] #text(fill: blue)[$b$])/(#text(fill: red)[$G$]+ #text(fill: blue)[$B$])$],
        table.cell(colspan: 4)[#v(1em)],
        table.cell(colspan: 4)[#v(1em)],
        table.cell(colspan: 4)[#v(3em)],
      )
    ]

  - Überprüfen Sie die Formel $#text(fill: green)[$f$]=(#text(fill: red)[$G$] #text(fill: blue)[$b$])/(#text(fill: red)[$G$]+ #text(fill: blue)[$B$])$, indem Sie die letzte Kolonne ausrechnen und mit dem Wert aus der ersten Teilaufgabe vergleichen. Können Sie diese Formel auf die ganz allgemeine $1/#text(fill: green)[$f$]=1/#text(fill: red)[$g$]+1/#text(fill: blue)[$b$]$ umformen?
    #schreibpapier()

+ Und jetzt eine Anwendung: das Fernrohr
  
  Das astronomische Fernrohr ist die Kombination aus einer Sammellinse grosser Brennweite (=Objektiv) und einer Lupe (=Okular).

  Versuchen Sie mit dem beigelegten Material ein Fernrohr nach zu bauen! _ Hilfe:_
  
  - Bilden Sie mit der Sammellinse grosser Brennweite (=Objektiv) die Landschaft aus dem Fenster auf die Mattscheibe ab, die Sie hinter der Linse hinhalten. Notieren Sie Ihre Beobachtungen.
    #schreibpapier(height: 1.61cm)
    
  - Beobachten Sie jetzt das Bild auf der Mattscheibe durch die Lupe (=Okular).
    #v(1em)
    #align(center)[
      #cetz.canvas({
        import cetz.draw: *

        set-style(stroke: .5pt)

        let halte-stange = gradient.linear(gray.darken(20%), gray.lighten(20%), gray.darken(20%), gray.darken(20%))
        let fuss = gradient.linear(gray.darken(20%), gray.lighten(20%), gray.darken(20%), gray.darken(20%), angle: 90deg)


        // Optische Bank
        rect((0, 0), (11.5, .6))
        line((0, .3), (11.5, .3), stroke: 2pt + gray.lighten(20%))
  
        // Objektiv
        rect((.3, .1), (rel: (.6, .8)), fill: fuss)
        rect((.5, .9), (rel: (.2, .5)), fill: halte-stange)

        rect((.525, 1.4), (rel: (.15, .6)), fill: black)
        merge-path(fill: aqua.lighten(50%),{
          arc((.6, 2.3), start: 200deg, stop: 160deg, radius: 2)
          arc((), start: 20deg, stop: -20deg, radius: 2)
        })
        rect((.575, 2), (rel: (.05, 1.8)), fill: black)

        // Mattscheibe
        rect((8.6, .1), (rel: (.6, .8)), fill: fuss)
        rect((8.8, .9), (rel: (.2, .5)), fill: halte-stange)

        rect((8.825, 1.4), (rel: (.15, .4)), fill: black)
        on-layer(-1, rect((8.7, 1.7), (rel: (.4, 2.5)), fill: gray.lighten(70%), stroke: beige.darken(10%) + 4.5pt))

        // Okular
        rect((10.6, .1), (rel: (.6, .8)), fill: fuss)
        rect((10.8, .9), (rel: (.2, .8)), fill: halte-stange)

        rect((10.825, 1.7), (rel: (.15, .7)), fill: black)
        merge-path(fill: aqua.lighten(50%),{
          arc((10.9, 2.6), start: 200deg, stop: 160deg, radius: 1)
          arc((), start: 20deg, stop: -20deg, radius: 1)
        })
        rect((10.875, 2.4), (rel: (.05, 1.1)), fill: black)

        // Auge
        mark((12.5, 2.95), (rel: (1, 0)), symbol: "barbed", scale: 3, width: .2)
        arc((11.95, 3.1), start: 160deg, stop: 200deg, radius: .45)
        arc((11.94, 3.04), start: 90deg, stop: -90deg, radius: (.02, .09), stroke: blue + 1pt)
        circle((11.93, 2.95), radius: (.01, .05))

        // Beschriftungen
        content((10.9, 4.6), [Okular])
        content((.6, 4.6), [Objektiv])
        content((8.9, 4.6), [Mattscheibe])
      })
    ]
    #v(.5em)
  
  - Wenn Sie jetzt mit demselben Abstand zwischen Objektiv und Lupe die Landschaft _ohne_ Mattscheibe beobachten, haben Sie ein richtiges Fernrohr gebaut!

#showbox("Aus der Geschichte", haupt-farbe)[
  #set text(number-type: "old-style")
  Im Mittelalter war die Überzeugung weit verbreitet, im Mittelpunkt der Welt stünde die Erde. Sonne, Planeten und Sterne dagegen würden um die Erde wandern.

  Trotzdem gab es auch damals schon Astronomen, die eine andere Erklärung für die Himmelsbewegungen hatten. Einer dieser Astronomen war Nikolaus #smallcaps[Kopernikus] (1473--1543). Er war der Ansicht, dass die Erde und alle anderen Planeten die Sonne umkreisten und dass die Erde sich zusätzlich um ihre eigene Achse drehe. Allerdings hatte #smallcaps[Kopernikus] keine Beweise für seine Theorie.
  
  Nach der Erfindung des Fernrohres wurden jedoch Beobachtungen gemacht, die die Lehre von der Erde als Mittelpunkt der Welt widerlegten: Im Jahre 1610 entdeckte der italienische Astronom #smallcaps[Galilei] mit einem Fernrohr, dass der Planet Jupiter von Monden umkreist wird. Für diese Monde stand der Jupiter im Mittelpunkt ihrer Bahnen – und nicht die Erde!
  
  Viele weitere Beobachtungen liessen sich mit dem "Weltbild" des #smallcaps[Kopernikus] erklären. So veröffentlichte #smallcaps[Galilei] schliesslich 1632 ein Buch und beschrieb darin seine Beobachtungen. Er behauptete, das Weltbild des #smallcaps[Kopernikus] sei richtig, und widersprach so der kirchlichen Lehre.
  
  Deshalb wurde #smallcaps[Galilei] zum Papst nach Rom geladen und vor ein kirchliches Gericht gestellt. Er wurde dazu verurteilt, sein Behauptungen zu widerrufen. Sein Buch wurde verboten und er selbst unter Hausarrest gestellt. Jedoch konnte nicht verhindert werden, dass sich in den folgenden Jahrzehnten das kopernikanische Weltbild durchsetzte.
]
