#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Geometrische Optik"
#let titel = [Reflexion]
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

= Reflexion

== Theorie
_Wie sehen wir?_ Eine vorläufige Antwort auf diese Frage könnte lauten: Wir sehen Dinge, wenn das von ihnen kommende Licht in unser Auge gelangt.

_Doch woher kommt dieses Licht?_ Für Körper, die von sich aus leuchten wie die Sonne, die Sterne und die Glühlampe bei unserem Experiment, fällt es uns nicht schwer eine Antwort zu geben. Sie strahlen das Licht selbständig aus und werden daher _selbstleuchtende_ Körper genannt.

_Wie steht es mit dem Mond?_ Er leuchtet ja nicht selbst! Für ihn sieht die Sache etwas komplizierter aus. Er muss von einer Lichtquelle beleuchtet werden, daher nennt man den Mond einen _beleuchteten_ Körper. Beim Mond übernimmt die Sonne diese Aufgabe. Das Sonnenlicht trifft auf den Mond auf und wird von diesem wieder abgestrahlt, um schliesslich in Ihr Auge zu gelangen. So, jetzt wissen Sie mehr darüber, weshalb Sie den Mond sehen.

Eine interessante Frage haben wir noch nicht untersucht: Wie wird das Sonnenlicht am Mond "umgelenkt", um in unser Auge zu gelangen? Genau dieses wollen wir jetzt im Praktikum genauer untersuchen.

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Damit wir alle von demselben sprechen, lernen wir gleich zu Beginn nützliches Vokabular:

    Der Einfallswinkel #text(fill: red)[$alpha$] ist der Winkel zwischen dem einfallenden Lichtstrahl und dem Lot.
    
    Der Reflexionswinkel #text(fill: blue)[$beta$] ist der Winkel zwischen dem reflektierten (=zurückgeworfenen) Lichtstrahl und dem Lot.
    
    Das _Lot_ steht immer senkrecht zur Oberfläche. Wir wählen als Oberfläche nicht Mondgestein sondern einen ebenen Spiegel, weil dieser sehr viel Licht ohne Streuung reflektiert (siehe auch Kasten auf #ref(<mond>, form: "page")).
  ],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      scope({
        rotate(45deg)
        rect((-2, 2), (rel: (2, 1)), fill: black, radius: 2pt, name: "box")
        circle((-.35, 2.75), radius: 1.5pt, stroke: white)
        content((-.7, 2.5), std.rotate(45deg)[#text(fill: yellow, size: 5pt)[*RayBox*]])
      })
      line("box.south", (rel: (-45deg, 3)), stroke: red, name: "einfallend")

      line("einfallend.end", (rel: (0, 3)), stroke: 1pt)
      line("einfallend.end", (rel: (0, -3)), stroke: 1pt)
      mark("einfallend", "einfallend.end", symbol: "barbed", stroke: red)

      line("einfallend.end", (rel: (-135deg, 3)), stroke: red, name: "reflektiert")
      mark("reflektiert", "reflektiert.end", symbol: "barbed", stroke: red)

      line("einfallend.end", (rel: (-4, 0)), stroke: (dash: "dash-dotted"), name: "lot")

      cetz.angle.angle("einfallend.end", "einfallend", "lot", radius: .65, stroke: red, label: text(fill: red, baseline: -0.02em)[$alpha$], label-radius: .45)
      cetz.angle.angle("einfallend.end", "lot", "reflektiert", radius: .65, stroke: blue, label: text(fill: blue, baseline: 0.06em)[$beta$], label-radius: .45)
      
      content("lot", [Lot], anchor: "south", padding: 2pt)
      content("einfallend.end", [Spiegel], anchor: "west", padding: 5pt)
    })
  ]
)

#v(-1em)
== Aufgabe
+ Bestimmen Sie die Richtung des reflektierten Strahls in Abhängigkeit vom einfallenden Strahl.

  Dazu gehen Sie am Besten wie folgt vor:
  
  - Klicken Sie solange auf den `on / mode / off` -Knopf der LaserRayBox, bis ein einzelner Lichtstrahl erzeugt wird.
  
  - Stellen Sie den kleinen Spiegel in die Mitte der Skalenscheibe auf, sodass die Linie, die mit 0 angeschrieben ist, senkrecht zum Spiegel steht. Lassen Sie den roten Lichtstrahl zum Fusspunkt des Lotes auf den Spiegel fallen.

  - Verfolgen Sie den Verlauf von Lichtstrahlen mit verschiedenen Einfallswinkeln (0°, 20°, 45°, 75°) und tragen Sie die Messergebnisse für den Reflexionswinkel in die Tabelle ein:

    #align(center)[
      #table(
        columns: (auto, auto),
        align: center,
        [Einfallswinkel], [Reflexionswinkel], 
        [$qty("0", "degree")$], [],
        [$qty("20", "degree")$], [], 
        [$qty("45", "degree")$], [], 
        [$qty("75", "degree")$], []
      )
    ]

  - Was stellen Sie fest? Formulieren Sie einen Satz! (Reflexionsgesetz)
    #schreibpapier(height: 3.21cm)
    
  - Was beobachten Sie, wenn Sie 5 Strahlen auf den Spiegel richten? Drücken Sie dazu ein paar Mal auf den Knopf der LaserRayBox. Wie verlaufen die parallelen Lichtstrahlen?
    #schreibpapier(height: 3.21cm)
    
  - Stellen Sie folgende Anordnung auf. Wählen Sie einen nicht zu grossen Gegenstand:
    #v(1em)

    #align(center)[
      #cetz.canvas({
        import cetz.draw: *

        set-style(stroke: .5pt)
        
        rect((-1, .5), (rel: (3, 1)), radius: .5, fill: haupt-farbe.lighten(70%), name: "gegenstand")
        line((6, -2), (0, 4), stroke: 1pt, name: "spiegel")

        mark((3, -2), (rel: (0,-1)), width: .25, scale: 2.5, symbol: "barbed")
        arc((2.83, -1.54), start: 110deg, stop: 70deg, radius: .5)
        arc((2.9, -1.53), start: -180deg, stop: 0deg, radius: (.1, .02), stroke: blue + 1pt)
        circle((3, -1.53), radius: (.06, .01))

        content("gegenstand", [Gegenstand])
        content("spiegel", angle: "spiegel.start", [Spiegel], anchor: "south", padding: 2pt)
        content((3, -2.3), [Auge])
      })
    ]

  - Wo glauben Sie, den Gegenstand zu sehen? Zeichnen Sie ihn oben ein.
    #schreibpapier()


+ Was ist das Verblüffende am Winkelspiegel?
  #grid(
    columns: (1fr, auto),
    gutter: .5cm,
    align: (left, horizon),
    [
        - Stellen Sie die zwei ebenen Spiegel senkrecht zueinander und betrachten Sie drei verschieden schräg einfallende Lichtstrahlen auf den Spiegel 1. Was beobachten Sie?
          #schreibpapier(height: 4.01cm)
    ], 
    [
      #cetz.canvas({
        import cetz.draw: *
  
        scope({
          rotate(30deg)
          line((-3, 0), (1.2, 0), name: "spiegel1")
          line((), (1.2, 3), name: "spiegel2")
          line((-3, 2), (0, 0), stroke: red, name: "s")
          mark("s", "s.end", symbol: "barbed", stroke: red)
          line((-2, 2), (0, 0), stroke: orange, name: "s")
          mark("s", "s.end", symbol: "barbed", stroke: orange)
          line((-1, 2), (0, 0), stroke: yellow, name: "s")
          mark("s", "s.end", symbol: "barbed", stroke: yellow)
          line((0, 0), (1, 2/3), stroke: red, name: "s")
          mark("s", "s.end", symbol: "barbed", stroke: red)
          line((0, 0), (1, 1), stroke: orange, name: "s")
          mark("s", "s.end", symbol: "barbed", stroke: orange)
          line((0, 0), (1, 2), stroke: yellow, name: "s")
          mark("s", "s.end", symbol: "barbed", stroke: yellow)
        })
        content("spiegel1", angle: "spiegel1.end", [Spiegel 1], anchor: "north", padding: 2pt)
        content("spiegel2", angle: "spiegel1.end", [Spiegel 2], anchor: "south", padding: 2pt)
      })
    ]
  )



  - Zeichnen Sie jeweils den Lichtweg für jeden Einfallswinkel #text(fill: red)[$alpha_1$] am Spiegel 1, und tragen Sie in die Tabelle:
    #set enum(numbering: "a)")
    + den Reflexionswinkel #text(fill: blue)[$beta_1$] am Spiegel 1,
    + den Einfallswinkel #text(fill: red)[$alpha_2$] am Spiegel 2,
    + den Reflexionswinkel #text(fill: blue)[$beta_2$] am Spiegel 2 ein.

    #align(center)[
      #table(
        columns: (2cm, 2cm, 2cm, 2cm, 2cm),
        align: center,
        [], text(fill: red)[$alpha_1$], text(fill: blue)[$beta_1$], text(fill: red)[$alpha_2$], text(fill: blue)[$beta_2$],
        [1\. Strahl], [$qty("56", "degree")$], [], [], [],
        [2\. Strahl], [$qty("45", "degree")$], [], [], [],
        [3\. Strahl], [$qty("27", "degree")$], [], [], [],
      )
    ]

  - Finden Sie eine Beziehung zwischen #text(fill: red)[$alpha_1$] und #text(fill: blue)[$beta_2$] heraus, und beweisen Sie diese mit Hilfe der Geometrie und des Reflexionsgesetzes.
    #schreibpapier(height: 5.21cm)
    
  - Blicken Sie selbst in den Winkelspiegel. Was stellen Sie fest, wenn Sie sich kämmen wollen?
    #schreibpapier()

  
  #showbox("Aus Umwelt und Technik", haupt-farbe)[
    Autofahrer sehen andere Verkehrsteilnehmer oft nur im _Rückspiegel_. Der Blick in den Rückspiegel zeigt aber nicht alles, was sich hinter oder neben dem Fahrzeug befindet.
  
    Ein Kind auf dem Fahrrad befindet sich manchmal "im toten Winkel": Der Fahrer kann es im Rückspiegel nicht sehen. Daher sollten Velofahrer in solchen Situationen rechtzeitig anhalten -- und zwar nicht neben einem Fahrzeug, sondern hinter ihm!
    
    Um im Strassenverkehr bei Dunkelheit besser gesehen zu werden, ist neben heller Kleidung das Anbringen von _Licht reflektierenden Streifen_ ein gutes Mittel. "Sohlenblitze" und Katzenaugen werfen das Licht in jene Richtung zurück, aus der es kommt. Sie sind daher aus der Richtung der Lichtquelle besonders gut zu sehen.
    
    Solche reflektierende Streifen funktionieren genau mit demselben Prinzip des Winkelspiegels.
  
    Zurück zum Mond:
  
    #grid(
      columns: (1fr, auto),
      gutter: .5cm,
      [
        Amerikanische Astronauten haben im Rahmen der Apollo-14-Mission einen _Tripelspiegel_ (Winkelspiegel in drei Dimensionen) auf den Mond aufgestellt. Um die Entfernung des Mondes zu bestimmen, wurde ein kurzer Laserblitz von der Erde zum Spiegel geschickt und von dort zur Erde reflektiert. Aus der Laufzeit des Lichts liess sich die Entfernung Erde-Mond auf einige Zentimeter genau bestimmen.
    
        Die sandige Mondoberfläche würde zwar das Licht auch zurückwerfen (sonst würden wir den Mond ja nicht sehen!) doch erfolgt dies in allen Richtungen (=Streuung!), was eine Messung verunmöglichen würde.
      ],
      [
        #image("../bilder/winkelspiegel.jpg", width: 6cm)
      ]
    )  
  ]
  #v(1em)<mond>
  
+ Weshalb ist das Bild im Spiegel seitenverkehrt?
  - Halten Sie das Plexiglas mit dem eingravierten Text vor den Spiegel. Was beobachten Sie? Was passiert, wenn Sie das Plexiglas drehen? Geben Sie nun eine Antwort auf die Eingangs gestellte Frage. _Tipp: Zeichnen Sie den Verlauf der Lichtstrahlen von oben gesehen._
    #align(center)[
      #cetz.canvas({
        import cetz.draw: *

        line((), (0, 3.5), name: "spiegel")
        content("spiegel.start", [Spiegel], anchor: "north")
      })
    ]

  - Versuchen Sie auch herauszufinden, wo das Bild genau liegt und halten Sie es in einem Satz fest:
    #schreibpapier()

+ Untersuchen Sie nun den Hohlspiegel (Konkavspiegel)

  - Zuerst sollen Sie einen neuen Begriff kennen lernen: die _optische Achse._ Sie ist die Symmetrieachse des Hohlspiegels und steht immer senkrecht dazu. Zeichnen Sie in die nächste Abbildung die optische Achse ein und beschriften Sie sie!

    #align(center)[
      #cetz.canvas({
        import cetz.draw: *

        circle((-5, 0), stroke: white)
        arc((-30deg, 3), start: -30deg, stop: 30deg, radius: 3, name: "spiegel")
        content("spiegel.50%", [Hohlspiegel], anchor: "west", padding: 2pt)
      })
    ]
    
  - Erzeugen Sie mit der LaserRayBox 5 parallele Lichtstrahlen und untersuchen Sie den Verlauf dieser Lichtstrahlen vor dem Hohlspiegel. Achten Sie darauf, dass die Lichtstrahlen parallel zur optischen Achse einfallen.
  
  - Haben Sie beobachtet, wie alle parallel einfallenden Lichtstrahlen sich in einem Punkt schneiden? Diesen Punkt nennen Physiker _Brennpunkt_. Den Abstand zwischen Brennpunkt und Spiegel nennen sie folgerichtig _Brennweite_.

  - Wie gross ist die Brennweite verglichen mit dem Krümmungsradius des Spiegels? Sie können Ihren Zirkel verwenden, um den Krümmungsradius des Spiegels abzuschätzen.
    #schreibpapier(height: 2.41cm)
    
  - Zeichnen Sie in die obige Abbildung den Brennpunkt ein (schätzen Sie selber ab, wo er in etwa liegen müsste) und beschriften Sie ihn mit einem grossen $F$. Zeichnen Sie zudem 3 Strahlen ein, die parallel zur optischen Achse verlaufen (_achsenparallel_), und deren weiteren Verlauf nach der Reflexion am Spiegel.
  
  - In welche Richtung wird ein Strahl reflektiert, der zuerst durch den Brennpunkt geht (ein so genannter _Brennstrahl_)?
    #schreibpapier(height: 2.41cm)
    
+ Und nun kommen wir zur spannenden Frage:
  Wie sieht das Spiegelbild eines Gegenstandes in einem Hohlspiegel aus?
  
  - Halten Sie dafür Ihren Finger vor den grossen Hohlspiegel und beschreiben Sie die Art, die Grösse und die Lage des Bildes in Abhängigkeit vom Abstand Finger-Spiegel. 

    #align(center)[
      #table(
        columns: (auto, auto, auto),
        align: (left, center, center),
        
        [Abstand Finger–Spiegel], [Art (aufrecht, umgekehrt)], [#h(1cm)Grösse#h(1cm)],
        [sehr nahe am Spiegel#v(.5em)], [], [],
        [im Brennpunkt#v(.5em)], [], [],
        [sehr weit weg#v(.5em)], [], []
      )
    ]

+ Jetzt dürfen Sie sich auf eine mögliche Prüfungsfrage vorbereiten.

  Konstruieren Sie das (Spiegel-)Bild des Pfeils in folgender Abbildung. _Lösungsweg:_ Zeichnen Sie vom Punkt $upright(P)_1$ sowohl den Verlauf eines achsenparallelen Strahls als auch denjenigen eines Brennstrahls ein. Dort, wo sich die beiden Strahlen schneiden ist das (Spiegel-)Bild $upright(P)'_1$ des Punktes $upright(P)_1$. Verfahren Sie mit dem Punkt $upright(P)_2$ gleich. Wählen Sie anschliessend einen weiteren Punkt auf dem Pfeil und bestimme sein Bild. Was stellen Sie fest? Wie sieht das Bild des Pfeils demnach aus? _Wichtig:_ Der Hohlspiegel wird bei der Bildkonstruktion durch die sogenannte _Hauptebene_ ersetzt. Die Konstruktionsstrahlen werden an dieser Hauptebene reflektiert.

  #align(center)[
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: .5pt)

      line((0, -3), (0, 3), name: "HE")
      line((-11, 0), (3,0), stroke: (dash: "dash-dotted"), name: "oA")
      circle((-3, 0), radius: 1pt, fill: black, name: "F")
      line((-9, -1.5), (-9, 2), stroke: 1pt + purple, mark: (end: "barbed"), name: "G")

      content("HE.end", [Hauptebene], anchor: "south", padding: 2pt)
      content("oA.90%", [optische Achse], anchor: "north", padding: 2pt)
      content("F", [$upright(F)$], anchor: "north", padding: 3pt)
      content("G.start", [$upright(P)_2$], anchor: "north", padding: 2pt)
      content("G.end", [$upright(P)_1$], anchor: "south", padding: 2pt)
    })
  ]

#showbox("Aus Umwelt und Technik", haupt-farbe)[
  In einem Hohlspiegel sieht man sich vergrössert, wenn man nahe genug herangeht. Man verwendet sie deshalb häufig als Kosmetikspiegel oder als Rasierspiegel. Hohlspiegel findet man aber auch als Reflektoren in Auto- oder Fahrradscheinwerfern sowie in Taschenlampen. Sie bündeln dort das Licht und lenken es in eine bestimmte Richtung.

  #grid(
    columns: (1fr, auto),
    gutter: .5cm,
    [
      Das Bild zeigt einen grossen Hohlspiegel, der das einfallende Sonnenlicht auf das Rohr in der Mitte sammelt. Mit seiner Hilfe wird Wasser soweit erhitzt, dass es verdampft. Der Dampf treibt anschliessend die Turbine eines kleinen Elektrizitätswerks an.
    ],
    [
      #image("../bilder/parabolspiegel.jpg", width: 6cm)
    ]
  )
]
