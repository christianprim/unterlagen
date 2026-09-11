#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Wärmearbeitsmaschinen]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)
#let lernziele(doc) = {
  showbox("Lernziele", haupt-farbe)[
    #set list(marker: emoji.darts)
    #doc
  ]
}

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Was sind Wärmearbeitsmaschinen?

Das Umwandeln von Arbeit in Wärme ist einfach. Es ist sogar ausserordentlich schwierig, beim Arbeiten keine Wärme zu erzeugen, da Reibung allgegenwärtig ist.
Das Gegenteil hingegen, das Umwandeln von Wärme in Arbeit, ist wesentlich schwieriger. Die Menschen versuchten lange Zeit vergeblich, eine Maschine zu entwickeln, die dies in befriedigender Art und Weise konnte. Wärmearbeitsmaschinen, wie Sie sie jetzt kennen lernen werden, haben folgendes gemeinsam:

_Der Druck eines Gases versetzt ein Bauteil in Bewegung. Diese Bewegung ist meist periodisch, muss es aber nicht sein!_


= Was werden Sie tun?

In dieser Werkstatt werden Sie selbständig in Gruppen zu 2 bis 3 Personen die verschiedenen Wärmearbeitsmaschinen kennen lernen. Zum Teil werden Sie auch Experimente ausführen oder Modelle ausprobieren können. Ich bitte Sie dabei um Sorgfalt im Umgang mit dem Material. Sie bekommen zu jedem Posten Unterlagen, mit welchen Sie arbeiten sollen. Neben Informationen, Theorie und Experimenten zu den jeweiligen Posten werden Sie auch Aufgaben zu bearbeiten haben. Beachten Sie die Zeitvorgaben für die einzelnen Posten. Die Posten können in beliebiger Reihenfolge absolviert werden. Allerdings können gewisse Fragen eines bestimmten Postens unter Umständen erst nach Absolvieren eines anderen Postens beantwortet werden.

Folgende Posten stehen zur Verfügung:

#grid(
  columns: 4,
  align: (left, right, left, left),
  gutter: 1em,
  [☞], link(<1>)[1\. Posten:], link(<1>)[Der Weg zur Dampfmaschine des James Watt], [20 min],
  [☞], link(<2>)[2\. Posten:], link(<2>)[Erfindung eines Geistlichen: Der Stirling-Motor], [15 min],
  [☞], link(<3>)[3\. Posten:], link(<3>)[Der Carnot-Prozess], [20 min],
  [☞], link(<4>)[4\. Posten:], link(<4>)[Benzinmotoren: Im 4-Takt und 2-Takt], [20 min],
  [☞], link(<5>)[5\. Posten:], link(<5>)[Der Dieselmotor: Im Kampf gegen den Benziner], [20 min],
  [☞], link(<6>)[6\. Posten:], link(<6>)[Der Wankelmotor: Eine Nachkriegserfindung], [15 min],
  [☞], link(<7>)[7\. Posten:], link(<7>)[Rund ums Auto], [15 min],
  [☞], link(<8>)[8\. Posten:], link(<8>)[Kompressoren und Turbolader], [10 min],
  [☞], link(<9>)[9\. Posten:], link(<9>)[Vom Eismann zum Kühlschrank], [25 min],
  [☞], link(<10>)[10\. Posten:], link(<10>)[Die Dampfturbine: Einfaches Prinzip hoch aktuell], [10 min],
  [☞], link(<11>)[11\. Posten:], link(<11>)[Der Raketen-Antrieb: Primitiv und trotzdem leistungsfähig], [20 min],
  [☞], link(<12>)[12\. Posten:], link(<12>)[Das Düsentriebwerk, eine fliegende Wärmearbeitsmaschine], [10 min],
)

#set heading(numbering: "1.")

#show heading: it => {
  if it.level == 1 {
    set text(font: "TeX Gyre Heros", style: "italic")
    block(counter(heading).display() + " Posten: " + it.body)
  } else {
    set text(font: "TeX Gyre Heros")
    block(it.body)
  }
}
#pagebreak()

= Dampfmaschine <1>

#lernziele[
  An diesem Posten erfahren Sie
  - was für Ideen von Wärmearbeitsmaschinen die Menschheit schon vor James Watt hatte.
  - was die industrielle Revolution auslöste.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Für diesen Posten benötigen Sie 20 Minuten.

== Ideen aus der Zeit der Griechen

Der griechische Gelehrte #smallcaps[Heron] von Alexandria, der im ersten Jahrhundert n. Chr. gelebt haben muss, hatte einige raffinierte Ideen, wie mit Wärme eine Maschine angetrieben werden könnte. Seine Maschinen und Apparate setzten sich durch Luft- oder Dampfdruck in Bewegung.

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Eine seiner berühmtesten Erfindung war die automatische Öffnung einer Tempeltür: Entzündete man auf einem Altar vor dem Tempel ein Opferfeuer, so öffnete sich die Tempeltür. Eine Nachbildung ist auf dem Bild zu sehen! Im oberen Kolben wurde die Luft durch das Feuer erwärmt. Dadurch nahm ihr Volumen zu und begann das Wasser im unteren Kolben zu verdrängen. Dieses Wasser konnte über eine Leitung abfliessen und füllte ein weiteres Gefäss auf. Sobald dieses Gefäss schwer genug war, öffnete sich die Tür!
  ],
  [
    #image("../bilder/tempeltüre.jpg", width: 7.5cm)
  ],
)

== Aufgaben

- Versuchen Sie das Prinzip der Tempeltür anhand der Foto nachzuvollziehen!
#schreibpapier(height: 2cm)
#grid(
  columns: (1fr, 6cm),
  gutter: .5cm,
  [
    - Betrachten Sie die Abbildungen nebenan. Beides sind Erfindungen des Griechen #smallcaps[Heron]. Links wird ein Altarfeuer wie von Geisterhand gelöscht, rechts sehen Sie eine Maschine, die Heron "Äolipile" nannte. Versuchen Sie herauszufinden, wie diese Maschinen funktionieren!
  ],
  [
    #grid(
      columns: (1fr, 1fr),
      image("../bilder/heron1.jpg", height: 4cm), image("../bilder/heron2.jpg", height: 4cm),
    )
  ],
)
#schreibpapier()
#pagebreak()

== Der Weg zur industriellen Revolution

#text(
  number-type: "old-style",
)[Erst im 16. Jahrhundert wurden die Ideen von #smallcaps[Heron] wiederentdeckt. Verschiedene Konstrukteure erfanden Maschinen, die wenig Arbeit bei enormem Feueraufwand verrichten konnten. Dabei baute der eine auf dem Werk des andern auf. Der Engländer Thomas #smallcaps[Newcomen] (1663-1729) konstruierte eine Dampfmaschine, die gerade ein Prozent der Energie, die man in Form von Wärme hineinsteckte, in Arbeit umwandelte – eine miserable Ausbeute, und dennoch das Beste, was es damals gab.

  Am 5. Januar 1769 erhielt der schottische Mechaniker James #smallcaps[Watt] das Patent für seine Dampfmaschine. Sie erreichte eine viel bessere Ausbeute als alles bisher Erfundene. Diese Maschine löste einen wahren Boom aus und machte menschliche Arbeitskräfte ersetzbar. Die industrielle Revolution nahm ihren Anfang. Noch bis ins 20. Jahrhundert blieben Dampfmaschinen nach dem Prinzip von James #smallcaps[Watt] konkurrenzlos. Und selbst die Benzinmotoren von heute können ihre Verwandtschaft zur Dampfmaschine nicht verbergen. Mit der Dampfmaschine schossen Industriebetriebe aus dem Boden und die Wasserkraft als Antrieb für Webstühle wurde ersetzbar. Diese Erfindung markiert einen Meilenstein in der Geschichte der Menschheit. Und erstmals konnte eine Maschine auch sich selber transportieren, mobile Maschinen konnten nun gebaut werden.]

#grid(
  columns: (auto, 1fr),
  gutter: .5cm,
  [
    #image("../bilder/dampfmaschineModell.jpg", width: 8cm)
  ],
  [
    Und so funktioniert die Dampfmaschine nach James #smallcaps[Watt]:
    Heisser Frischdampf wird aus einem Dampfkessel der Maschine zugeführt. Ein kleiner Steuerkolben lässt Dampf nur auf die linke Seite des (grösseren) Arbeitskolbens strömen (s. Abb). Dadurch wird dieser auf die rechte Seite gedrückt und versetzt ein Schwungrad in Bewegung. Der Steuerkolben, der ebenfalls mit dem Schwungrad verbunden ist, klemmt die Dampfzufuhr zum Arbeitskolben ab und öffnet die Dampfzufuhr auf die rechte Seite des Arbeitskolbens, wodurch sich dieser wieder nach links bewegt. Das Ganze läuft dauernd so weiter.
  ],
)
Anzumerken ist noch, dass durch den Steuerkolben jeweils in dem Moment, in welchem z.B. rechts die Dampfzufuhr geöffnet wird, links ein Kanal öffnet, durch den der sich noch im linken Teil befindliche Dampf nach aussen entweichen kann. Dieser Kanal ist im Modell oben als "U-förmige" Aussparung zu erkennen.

#text(
  size: 8pt,
)[Die Drehzahl kann mit einem Fliehkraftregler, wie sie ihn bei den Kreisbewegungen kennengelernt haben, durch Regulieren der Dampfzufuhr konstant gehalten werden.]

Die Dampfmaschine nach diesem Prinzip erreicht einen Wirkungsgrad von bis zu 25%.

== Frage
- Was waren die ersten "mobilen Maschinen" (die oben erwähnt werden), die mit einer Dampfmaschine gebaut wurden?

#schreibpapier()
#pagebreak()

= Stirlingmotor <2>

#lernziele[
  An diesem Posten erfahren Sie
  - wie einer der vielleicht raffiniertesten Motoren funktioniert.
  - dass dieser Motor, wird er von Hand angetrieben, als Kältequelle genutzt werden kann.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Frage. Führen Sie das Experiment wie beschrieben durch. Für diesen Posten benötigen Sie 15 Minuten.

== Zum Stirling-Motor

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Starten Sie, bevor Sie den Text zum Stirling-Motor lesen, das Experiment: Vor Ihnen steht ein kleiner Stirling-Motor. Zünden Sie den Docht des Spritbrenners an und heizen Sie damit den Glaskolben auf. Versetzen Sie nach einer gewissen Zeit das Schwungrad in Bewegung (nur eine Drehrichtung ist möglich), bis der Motor von alleine läuft. Es kann einen Moment dauern, bis der Kolben genügend warm ist.
  ],
  [
    #image("../bilder/stirlingmotor.jpg", width: 5cm)
  ],
)

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    #text(number-type: "old-style")[Der schottische Pfarrer Robert #smallcaps[Stirling] (1790 - 1878) liess den nach ihm benannten Heissluftmotor 1816 patentieren, in welchem sich zwei Kolben, ein Arbeits- und ein Verdrängerkolben, im gleichen Zylinder auf- und abbewegen,] wobei die beiden Kolben um 90° versetzt an der Kurbelwelle festgemacht sind (s. Abb. rechts). Der Arbeitskolben verschliesst den Zylinder dicht, der Verdrängerkolben hingegen nicht, er lässt die Luft vom oberen in den unteren Teil durchströmen, wobei dabei die Kupferwolle Wärme aufnehmen und auch wieder abgeben kann. Dieser Motor ist äusserst raffiniert und die genaue Funktionsweise nicht ganz einfach zu verstehen. Das Prinzip funktioniert so: Oben am Zylinder wird geheizt, seitlich unten mit Kühlwasser gekühlt. Die Luft oberhalb des Verdrängerkolbens ist dadurch etwas wärmer als unterhalb.
  ],
  [
    #align(center + horizon, image("../bilder/stirlingmotor-aufbau.png", width: 5cm))
  ],
)
Abb. 2a: Der Verdrängerkolben, der sich vorher im heissen Bereich des Zylinders aufgewärmt hat, kommt nach unten und erwärmt beim Vorbeigehen die Luft. Da die warme Luft ein grösseres Volumen beansprucht, presst sie den Arbeitskolben nach unten. Der Stirlingmotor verrichtet Arbeit.

Abb. 2b: Unten angekommen, muss der Arbeitskolben wieder nach oben gelangen. Dafür muss an ihm Arbeit verrichtet werden. Damit diese Arbeit aber geringer ist, als die Arbeit, die er vorher verrichtet hat, wird die Luft über dem Arbeitskolben wieder abgekühlt. Dies wird mit dem Verdrängerkolben bewerkstelligt, der sich bereits wieder im kalten Bereich abgekühlt hat und die Luft beim Hochgehen mit abkühlt.

Abb. 2c: Der Verdrängerkolben ist oben angekommen. Die Luft über dem Arbeitskolben ist kühler als in Abb. 2a. Da sie ein geringeres Volumen beansprucht, wird das Hochkommen des Arbeitskolbens begünstigt.

Abb. 2d: Noch immer bewegt sich der Arbeitskolben nach oben, der Verdrängerkolben jedoch bereits wieder nach unten. Die Luft wird langsam wieder wärmer. Noch immer wird Energie für diese Bewegung gebraucht, doch sobald sich wieder der Arbeitskolben nach unten bewegt (Abb. 2a), wird wieder Energie abgegeben.
Über eine ganze Umdrehung gerechnet wird also Energie abgegeben (pro Umlauf wird mehr Energie abgegeben als gebraucht). Das Spiel beginnt von vorne.

#align(center, grid(
  columns: 4,
  align: center,
  gutter: 1em,
  [#image("../bilder/stirlingmotor-takt-1.png", width: 3.5cm)],
  [#image("../bilder/stirlingmotor-takt-2.png", width: 3.5cm)],
  [#image("../bilder/stirlingmotor-takt-3.png", width: 3.5cm)],
  [#image("../bilder/stirlingmotor-takt-4.png", width: 3.5cm)],

  [Abb. 2a], [Abb. 2b], [Abb. 2c], [Abb. 2d],
))

Stirling-Motoren haben leider bisher nie den grossen Durchbruch erlangt, obwohl moderne Exemplare Wirkungsgrade von bis zu maximal 36% erreichen, äusserst zuverlässig arbeiten und es keine Rolle spielt, wie geheizt wird. Des Weiteren arbeitet der Motor beinahe geräuschlos, weil weder Ventil- noch Ansaug- oder Auspuffgeräusche (s. Benzin-, Dieselmotoren und Dampfmaschine) vorhanden sind. In Kombination mit Sonnenenergie erlebt dieser Motor zur Zeit einen Aufschwung, da mit gebündelten Sonnenstrahlen der obere Teil des Zylinders einfach geheizt werden kann. In diesem Einsatzgebiet wird dieser Motor zur Zeit von Neuem erprobt. Ob es bald Serienprodukte geben wird, muss noch abgewartet werden. Interessant ist der Motor auch bei umgekehrter Anwendung: Dreht man ihn von Hand, so läuft der oben beschriebene Prozess rückwärts. Dadurch erwärmt sich der Zylinder auf der einen Seite und kühlt sich auf der anderen Seite ab – wir haben ein einfaches Kühlsystem, das ohne schädliche Kältemittel auskommt! Der Wirkungsgrad ist allerdings schlechter als bei einem herkömmlichen Kühlschrank.

== Frage

- Würde der Motor auch dann funktionieren, wenn er oben gekühlt und unten geheizt würde? Wenn ja, weshalb? Wenn nein, was müsste man ändern?

#schreibpapier()
#pagebreak()

= Carnot-Prozess <3>

#lernziele[
  An diesem Posten erfahren Sie
  - wann die theoretischen Grundlagen von Wärmearbeitsmaschinen erarbeitet wurden.
  - wie die Arbeit einer Wärmearbeitsmaschine bestimmt werden kann.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Für diesen Posten benötigen Sie 20 Minuten.

=== Der Kreisprozess für ideale Gase

Bereits James #smallcaps[Watt] erkannte, dass bei Bemühungen um die Erhöhung des Wirkungsgrades von Dampfmaschinen nicht nur Experimente, sondern auch theoretische Überlegungen angestellt werden müssen. Ein Ingenieur im Dienste Napoleons, Sadi #smallcaps[Carnot] #text(number-type: "old-style")[(1796 – 1832)], konnte die Zustandsänderungen eines idealen Gases beschreiben, welche dieses in einem Kreisprozess vollführt.

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Lösen Sie dazu folgendes Problem: Wie viel Arbeit verrichtet jemand, der mit einem Kolben ein Gas zusammenpresst? Dies machen Sie zum Beispiel beim Aufpumpen eines Fahrradreifens. Wir betrachten dazu zuerst ein einfacheres Beispiel:
  ],
  [
    #figure(
      cetz.canvas({
        import cetz.draw: *
        set-style(stroke: .5pt)

        rect((0, 0), (6, 2))
        line((3, 0), (3, .75))
        line((3, 2), (3, 1.25))
        rect((2.6, .75), (2.8, 1.25), stroke: (paint: gray, dash: "dashed"), fill: gray.lighten(80%))
        line((2.5, .75), (3.5, .75))
        line((2.5, 1.25), (3.5, 1.25))
        rect((3.2, .75), (3.4, 1.25), fill: haupt-farbe)
        line((2.7, 1), (3.3, 1), stroke: green, mark: (end: "barbed"), name: "deltaS")
        content((1.5, 1), text(size: 8pt)[Kammer 1\ Druck $p$])
        content((4.5, 1), text(size: 8pt)[Kammer 2\ Druck #qty("0", "Pa")])
        content("deltaS", text(green, $Delta s$), anchor: "south", padding: 2pt)
      }),
      caption: "Arbeit",
    )
  ],
)
#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    + Wir stellen uns zwei (sehr grosse) Kammern vor, welche nur durch ein, mit einem beweglichen Kolben verschlossenes, Rohr verbunden sind (s. Abb. 1). Der Druck in Kammer 1 sei $p$, in Kammer 2 sei der Druck #qty("0", "Pa") (Vakuum). Nun sollen Sie den Kolben um die Strecke $Delta s$ im Rohr in Richtung Kammer 1 verschieben, sodass das Volumen von Kammer 1 um $Delta V$ kleiner wird. Da Kammer 1 sehr gross ist, nehmen wir vereinfachend an, dass sich $p$ dabei nicht ändert.

      Wie gross ist die in diesem Fall verrichtete Arbeit $W$ (ausgedrückt durch $Delta V$)? _Tipp: Benutzen Sie zuerst die Definition der Arbeit, bringen Sie dann die eine Grösse darin (Kraft $arrow(F)$) mit dem Druck in Zusammenhang und vereinfachen Sie!_

    + Füllen Sie zur Aufgabe das vorbereitete $p$-$V$-Diagramm (s. Abb. 2) aus und überlegen Sie sich, was im Diagramm $W$ ist, wenn Sie die in a) gefundene Formel mit dem Diagramm vergleichen!
  ],
  [
    #figure(
      cetz.canvas({
        import cetz.draw: *
        set-style(stroke: .5pt)

        line((), (5.5, 0), mark: (end: "barbed"), name: "V-Achse")
        line((0, 0), (0, 6), mark: (end: "barbed"), name: "p-Achse")
        line((2, 0), (rel: (0, -.1)))
        line((4, 0), (rel: (0, -.1)))
        line((2, -.3), (4, -.3), mark: (symbol: "|"), name: "DeltaV")
        line((-.1, 3), (0, 3), name: "p")

        content("V-Achse.87%", text(size: 8pt)[Volumen $V$], anchor: "north", padding: 4pt)
        content("p-Achse.97%", text(size: 8pt)[Druck #text(blue)[$p$]], anchor: "west", padding: 4pt)
        content("DeltaV", text(size: 8pt)[$Delta V$], anchor: "north", padding: 3pt)
        content("p", text(size: 8pt, blue)[$p$], anchor: "east", padding: 3pt)
      }),
      caption: [$p$-$V$-Diagramm],
    )
  ],
)

#schreibpapier()
#pagebreak()
Nun kehren wir zu #smallcaps[Carnot] zurück. In Abbildung 3 ist ein Kreisprozess in einem $p$-$V$-Diagramm zu sehen.

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Wir starten dabei mit einem Gas im Zustand 1. Über Zustand 2 gelangen wir zu Zustand 3. Dabei wird vom Gas mechanische Arbeit (in der Abbildung rot dargestellt und wird unten von hellblau zugedeckt) verrichtet. Anschliessend geht es über Zustand 4 wieder zu Zustand 1, der dem Anfangszustand entspricht. Dieser zweite Teil braucht Energie (hellblau dargestellt). Weil aber die abgegebene Arbeit grösser ist, als die zugeführte Energie, bleibt am nach einem Umlauf die Arbeit $W$ übrig. Es wird also vom Gas mehr mechanische Arbeit abgegeben, als von diesem bei der Kompression aufgenommen wird. Wie wir von der vorangehenden Seite wissen, entspricht die umrandete Fläche der abgegebenen Arbeit $W$, die man aus diesem Kreisprozess erhält.
  ],
  [
    #figure(
      cetz.canvas({
        import cetz.draw: *
        set-style(stroke: .5pt)

        rect((1, 0), (4, 3), fill: aqua.lighten(60%), stroke: none)
        line((1, 0), (1, 3), stroke: aqua)
        line((4, 0), (4, 3), stroke: aqua)

        line((0, 0), (5.5, 0), mark: (end: "barbed"), name: "V-Achse")
        line((0, 0), (0, 5), mark: (end: "barbed"), name: "p-Achse")
        circle((2.5, 3), radius: (1.5, .75), stroke: haupt-farbe, fill: haupt-farbe.lighten(80%), name: "c")

        set-style(fill: haupt-farbe, stroke: haupt-farbe)
        hide(line((1.75, 0), (1.75, 4), name: "one"))
        hide(line((3.25, 0), (3.25, 4), name: "two"))
        hide(line((1.5, 0), (1.5, 4), name: "three"))
        hide(line((3.5, 0), (3.5, 4), name: "four"))
        intersections("x", "one", "c")
        intersections("y", "two", "c")
        intersections("x1", "three", "c")
        intersections("y1", "four", "c")
        mark("x.0", (3, 4), symbol: "barbed", name: "I")
        mark("x1.1", (0, 3), symbol: "barbed", name: "IV")
        mark("y.0", (3, 2.25), symbol: "barbed", name: "III")
        mark("y1.1", (5, 3), symbol: "barbed", name: "II")
        circle((1, 3), radius: 1.5pt, name: "1")
        circle((2.5, 3.75), radius: 1.5pt, name: "2")
        circle((4, 3), radius: 1.5pt, name: "3")
        circle((2.5, 2.25), radius: 1.5pt, name: "4")

        content("V-Achse.97%", text(size: 8pt)[$V$], anchor: "north", padding: 4pt)
        content("p-Achse.97%", text(size: 8pt)[#text(blue)[$p$]], anchor: "east", padding: 4pt)
        content("1", text(size: 8pt)[1], anchor: "east", padding: 3pt)
        content("2", text(size: 8pt)[2], anchor: "south", padding: 3pt)
        content("3", text(size: 8pt)[3], anchor: "west", padding: 3pt)
        content("4", text(size: 8pt)[4], anchor: "north", padding: 3pt)
        content("c", text(size: 8pt)[$W$])
      }),
      caption: [Kreisprozess],
    )

  ],
)

#smallcaps[Carnot] fand vier Zustandsänderungen, die einen solchen Kreisprozess ergeben. Diesen Kreisprozess für einen idealen thermischen Energiewandler nennen wir #smallcaps[Carnot]'scher Kreisprozess. Dieser ist in Abbildung 4 dargestellt.
#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Wir beginnen in Punkt 1. Die anschliessende Expansion verläuft isotherm, d.h. bei konstanter Temperatur #text(orange, $T_h$). Dabei muss Energie (Wärme #text(fuchsia, $Q_h$)) von aussen in das System fliessen. Bei dieser Zustandsänderung handelt es sich somit um eine *isotherme Expansion*.

    Von Punkt 2 zu Punkt 3 führt das Gas eine *adiabatische Expansion* aus, d.h. eine Expansion ohne Energiefluss nach aussen oder innen. Diese führt uns zu einer niedrigeren Temperatur #text(orange, $T_n$).

  ],
  [
    #figure(
      cetz.canvas({
        import cetz.draw: *
        import cetz-plot: *
        import cetz.decorations

        // Grundlegende Styles festlegen
        set-style(
          axes: (
            overshoot: 5pt,
            shared-zero: false,
            stroke: 0.5pt,
            tick: (
              stroke: 0.5pt,
            ),
            x: (
              mark: (
                end: "barbed",
                scale: 0.7,
              ),
            ),
            y: (
              mark: (
                end: "barbed",
                scale: 0.7,
              ),
            ),
          ),
          stroke: 0.5pt,
        )

        let C-h = 6.0 // Konstante für warme Isotherme T_h (p * V = C_h)
        let C-n = 2.5 // Konstante für kalte Isotherme T_n (p * V = C_n)
        let kappa = 2.6 // Adiabatenkoeffizient

        let v1 = 1.2
        let v2 = 2.8
        let v4 = 2.1
        let v3 = (v2 * v4) / v1

        let p1 = C-h / v1
        let p2 = C-h / v2
        let p4 = C-n / v4
        let p3 = C-n / v3

        plot.plot(
          size: (7, 4.5),
          x-min: 0,
          x-max: 5,
          y-min: 0,
          y-max: 5.5,
          x-label: [$V$],
          y-label: text(blue)[$p$],
          axis-style: "school-book",
          x-tick-step: none,
          y-tick-step: none,
          name: "p-V",
          {
            plot.add-fill-between(
              domain: (v1, v3),
              x => C-h / x,
              x => {
                let c-ad1 = p1 * calc.pow(v1, kappa)
                let p-ad1 = c-ad1 / calc.pow(x, kappa)
                let p-iso2 = C-n / x
                calc.max(p-ad1, p-iso2)
              },
              style: (fill: haupt-farbe.lighten(80%), stroke: none),
            )

            plot.add-fill-between(
              domain: (v2, v3),
              x => C-h / x,
              x => {
                let c-ad1 = p2 * calc.pow(v2, kappa)
                let p-ad1 = c-ad1 / calc.pow(x, kappa)
                let p-iso2 = C-n / x
                calc.max(p-ad1, p-iso2)
              },
              style: (fill: white, stroke: none),
            )

            plot.add(
              domain: (0.8, 5.2),
              x => C-h / x,
              style: (stroke: (paint: orange, thickness: 1pt)),
              label: none,
            )

            plot.add(
              domain: (0.5, 5.2),
              x => C-n / x,
              style: (stroke: (paint: orange, thickness: 1pt)),
              label: none,
            )

            plot.add(
              domain: (v1, v2),
              x => C-h / x,
              style: (stroke: (paint: red, thickness: 1pt), mark: (end: "barbed", fill: red)),
            )

            let c-ad23 = p2 * calc.pow(v2, kappa)
            plot.add(
              domain: (v2, v3),
              x => c-ad23 / calc.pow(x, kappa),
              style: (stroke: (paint: red, thickness: 1pt), mark: (end: "barbed", fill: red)),
            )

            plot.add(
              domain: (v4, v3),
              x => C-n / x,
              style: (stroke: (paint: red, thickness: 1pt), mark: (start: "barbed", fill: red)),
            )

            let c-ad41 = p4 * calc.pow(v4, kappa)
            plot.add(
              domain: (v1, v4),
              x => c-ad41 / calc.pow(x, kappa),
              style: (stroke: (paint: red, thickness: 1pt), mark: (start: "barbed", fill: red)),
            )

            plot.add-anchor("1", (v1, p1))
            plot.add-anchor("2", (v2, p2))
            plot.add-anchor("3", (v3, p3))
            plot.add-anchor("4", (v4, p4))
          },
        )

        content((3.3, 1.5), [$W$])

        content((1.4, 5.6 * .75), text(orange)[$T_h$])
        content((0.5, 5 * .75), text(orange)[$T_n$])

        content("p-V.1", [$1$], anchor: "west", padding: 3pt)
        content("p-V.2", [$2$], anchor: "south-west", padding: 2pt)
        content("p-V.3", [$3$], anchor: "south", padding: 2pt)
        content("p-V.4", [$4$], anchor: "north", padding: 2pt)

        content((3.7, 3.4 * .75), text(fuchsia)[$+ Q_h$])
        decorations.wave(line((3.2, 3.3 * .75), (2.8, 2.8 * .75)), amplitude: 1pt, stroke: (
          paint: fuchsia,
          thickness: .5pt,
        ))
        mark((2.7, 2.68 * .75), (rel: (-.4, -.5 * .75)), symbol: "barbed", stroke: fuchsia)
        decorations.wave(line((3.5, 3.0 * .75), (3.1, 2.5 * .75)), amplitude: 1pt, stroke: (
          paint: fuchsia,
          thickness: .5pt,
        ))
        mark((3, 2.38 * .75), (rel: (-.4, -.5 * .75)), stroke: fuchsia, symbol: "barbed")

        content((3.6, 0.3 * .75), text(fuchsia)[$- Q_n$])
        decorations.wave(line((4, 1.3 * .75), (3.6, .8 * .75)), amplitude: 1pt, stroke: (
          paint: fuchsia,
          thickness: .5pt,
        ))
        mark((3.5, .68 * .75), (rel: (-.4, -.5 * .75)), symbol: "barbed", stroke: fuchsia)
        decorations.wave(line((4.4, 1.2 * .75), (4, .7 * .75)), amplitude: 1pt, stroke: (
          paint: fuchsia,
          thickness: .5pt,
        ))
        mark((3.9, .58 * .75), (rel: (-.4, -.5 * .75)), stroke: fuchsia, symbol: "barbed")
      }),
      caption: [#smallcaps[Carnot]'scher Kreisprozess],
    )
  ],
)

Nun folgt eine *isotherme Kompression*. Weil diese bei einer niedrigeren Temperatur erfolgt als die vorhergehende isotherme Expansion, braucht sie weniger Energie #text(fuchsia, $Q_n$), als die Expansion an Energie #text(fuchsia, $Q_h$) lieferte. Diese Zustandsänderung führt uns von Punkt 3 zu Punkt 4.

Es folgt eine *adiabatische Kompression*, die uns in den Ausgangszustand 1 zurück führt.

Der Umgebung wird dabei Energie $#text(fuchsia)[$Delta Q$] = #text(fuchsia)[$Q_h$] – #text(fuchsia)[$Q_n$]$ entzogen, die die Maschine in Arbeit $W$ umwandelt. Das Gas braucht Wärme aus einem Wärmereservoir der Temperatur #text(orange, $T_h$) und gibt Wärme an ein kälteres Wärmereservoir #text(orange, $T_n$) ab. Bei der Dampfmaschine, die #smallcaps[Carnot] damals verbessern wollte, handelte es sich bei den Wärmereservoirs um den Dampf im Dampfkessel und um die Kühlung auf der Dampfauslassseite, dem Kondensator.

== Frage

- Weshalb ist die adiabatische Expansion im #smallcaps[Carnot]’schen Kreisprozess nötig?

#schreibpapier()
#pagebreak()

= Benzinmotoren <4>

#lernziele[
  An diesem Posten erfahren Sie
  - wie die in unserer Zeit am weitest verbreitete Motorenart funktioniert.
  - was die Vor- und Nachteile der Benzin-Motoren sind.
]

== Ablauf

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Das Demonstrations-Modell dient zur Veranschaulichung der Erklärungen im folgenden Text. Benötigte Zeit: 20 Minuten.

    == Funktionsweise der Benzin-Motoren

    Bei den Benzin-Motoren unterscheidet man zwischen dem 2-Takt- und dem 4-Takt-Motor, welcher auch #smallcaps[Otto]-Motor genannt wird.

    N. #smallcaps[Otto] stellte seinen Verbrennungsmotor #text(number-type: "old-style")[1867 vor. 1883] wurde er von den Herren #smallcaps[Daimler] und #smallcaps[Benz] weiterentwickelt. Heute erreicht dieser Motor Wirkungsgrade von maximal 35%. Die Funktionsweise kann in vier Takte unterteilt werden. Drehen Sie das Modell (s. nebenstehende Abbildung) in die richtige Position, die dem Takt entspricht, an welchem Sie gerade am Lesen sind. Die folgende Abbildung veranschaulicht das im Text Beschriebene.
  ],
  [
    #image("../bilder/viertaktmotor.png", width: 4cm)
  ],
)

=== a) Der 4-Takt- oder Otto-Motor

#figure(
  image("../bilder/4takt.png", width: 16cm),
)

1\. Takt: Der Kolben ist oben und beginnt sich nach unten zu bewegen. In diesem Moment öffnet das Einlassventil und das Treibstoff-Luft-Gemisch wird in den Zylinder gesogen.

2\. Takt: Nachdem der Kolben die unterste Position erreicht hat, schliesst das Einlassventil. Der Kolben bewegt sich nach oben und verdichtet das Gemisch. Das Volumen wird auf etwa einen Zehntel verkleinert, wodurch der Druck auf etwas mehr als #qty("22", "bar") ansteigt. Man spricht von einem Verdichtungsverhältnis von 10:1. Das Gemisch erreicht dabei etwa eine Temperatur von #qty("300", "Celsius") bis #qty("400", "Celsius"). Bei Temperaturen über #qty("500", "Celsius") würde sich das Benzin-Luft-Gemisch selbständig entzünden, was den Motor beschädigen kann (führt zu sogenanntem Klopfen).

#text(
  size: 8pt,
)[Bei Benzinsorten unterscheidet man unterschiedliche Oktan-Zahlen. Je höher die Oktan-Zahl des Benzins, umso höher liegt die Temperatur, bei welcher sich das Benzin-Luft-Gemisch selbständig entzündet. Das heisst, dass Motoren mit höherem Verdichtungsverhältnis Benzin-Sorten mit grösserer Oktan-Zahl benötigen (Bsp.: Bleifrei 95 hat die Oktan-Zahl 95, Bleifrei 98 eine entsprechend höhere).]

3\. Takt: Ein Funken der Zündkerze entzündet das Gemisch, die Temperatur steigt auf über #qty("2500", "Celsius") und dadurch erhöht sich der Druck auf etwa #qty("60", "bar"). Der Kolben wird nach unten gedrückt (Arbeitstakt).

4\. Takt: In dem Moment, in welchem sich der Kolben wieder nach oben bewegt, öffnet das Auslassventil und die Abgase werden nach aussen gedrückt. Ist der Kolben oben angelangt, so schliesst das Auslassventil und der Ablauf beginnt wieder mit dem 1. Takt.

Bei genauer Betrachtung der Funktionsweise des 4-Takt-Motors erkennt man, dass auf zwei Auf- und Abbewegungen nur ein Arbeitstakt stattfindet. Zudem ist der 4-Takt-Motor auf Ventile angewiesen, die Störungen hervorrufen können. Der folgende Motor hat diese Nachteile nicht.

=== b) Der 2-Takt-Motor

Die Funktionsweise kann in zwei Takte unterteilt werden:

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    1\. Takt: Der sich nach oben bewegende Kolben (s. Abb. a rechts) komprimiert das über ihm befindliche Gemisch. Gleichzeitig wird neues Gemisch durch den nun offenen Gaseinlass in das Kurbelgehäuse gesogen.
  ],
  [
    #image("../bilder/2takt.png", width: 9cm)
  ],
)


2\. Takt: Das komprimierte Gemisch wird entzündet (s. Abb. b unten in der Mitte). Der entstehende grosse Druck presst den Kolben nach unten (Arbeitstakt). Das Gemisch im Kurbelgehäuse wird dadurch etwas zusammengepresst, kann aber nicht mehr zum Gaseinlass heraus, da dieser vom Kolben bald versperrt wird. Sobald der Kolben in der untersten Position ist, wird das Gemisch im Kurbelgehäuse durch den Überströmkanal in den Brennraum über den Kolben geleitet (s. Abb. c unten rechts). Gleichzeitig wird das verbrannte Gemisch durch das neu eintretende Gemisch zum Gasaustritt hinaus gedrückt. Aufgrund der etwas speziellen Formgebung des Kolbenoberteils tritt nur wenig frisches Gemisch direkt wieder zum Gasaustritt aus, allerdings lässt sich das bei Zwei-Taktern nicht verhindern, was man an den Abgasen riechen kann. Einspritz-Zweitakter haben diese Durchmischung zwar nicht, doch liessen sie sich nicht mit einem Dreiwegkatalysator betreiben bzw. haben eine geringere Leistung. Nun wird wieder beim 1. Takt begonnen.

== Fragen

- Was sind die Vor- und Nachteile der beiden Motorenarten im Vergleich? Welcher ist leistungsfähiger, welcher ist billiger in der Herstellung, bei welchem können die Abgase geringer gehalten werden, etc. Begründen Sie Ihre Antworten. Suchen Sie nach weiteren Vor- und Nachteilen.
- Liegt der Wirkungsgrad des 2-Takt-Motors eher über oder unter demjenigen des #smallcaps[Otto]-Motors?
- Beantworten Sie diese Frage, falls Sie den Posten 5 (Dieselmotor) bereits absolviert haben. Der #smallcaps[Otto]-Motor hat einige Ähnlichkeiten mit dem Dieselmotor. Vergleichen Sie die beiden Motoren miteinander und stellen Sie Gemeinsamkeiten und Unterschiede zusammen. Was sind Vor- und Nachteile des einen gegenüber dem andern?

#schreibpapier()
#pagebreak()

= Dieselmotor <5>

#lernziele[
  An diesem Posten erfahren Sie
  - wie der in unserer Zeit am zweithäufigsten verbreitete Motor funktioniert.
  - wie die Motorenleistung aus dem $p$-$V$-Diagramm bestimmt werden kann.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Das Demonstrations-Modell dient zur Veranschaulichung der Erklärungen im folgenden Text. Für diesen Posten benötigen Sie 20 Minuten. Erledigen Sie Aufgaben, die die angegebene Zeit überschreiten, zu Hause.

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    == Funktionsweise des Dieselmotors

    In den Jahren zwischen #text(number-type: "old-style")[1892 und 1897] entwickelte R. #smallcaps[Diesel] den nach ihm benannten Verbrennungsmotor, der lange in Autos anteilsmässig hinter dem #smallcaps[Otto]-Motor zurückstand, aber gerade in letzter Zeit stark aufholt und in Lastwagen gar ausschliesslich zum Einsatz kommt. Die untenstehende Abbildung veranschaulicht das im Text beschriebene. In einem Druck-Volumen-Diagramm ($p$-$V$-Diagramm, s. nächste Seite) werden wir das Gas, welches sich im Zylinder befindet, während den 4-Takten "begleiten":

    1\. Takt: Der Kolben ist oben und beginnt sich nach unten zu bewegen. In diesem Moment öffnet das Einlassventil und reine Luft wird in den Zylinder gesogen.
  ],
  [
    #image("../bilder/dieselmotor.png", width: 5cm)
  ],
)

2\. Takt: Nachdem der Kolben die unterste Position erreicht hat, schliesst das Einlassventil. Der Kolben bewegt sich nach oben und verdichtet die Luft. Das Volumen wird auf etwa einen Sechszehntel verkleinert, wodurch der Druck auf etwas mehr als #qty("45", "bar") ansteigt (ohne Abgasturboaufladung, s. Posten 8). Man spricht von einem Verdichtungsverhältnis von 16:1. Das Gemisch erreicht dabei eine Temperatur von etwa #qty("600", "Celsius"). Hat der Kolben den höchsten Punkt erreicht, so sprüht eine Hochdruckpumpe den flüssigen Diesel-Treibstoff in den Zylinder. Der Treibstoff entzündet sich aufgrund der hohen Temperatur selbständig (Zündkerzen braucht der Dieselmotor somit keine).

#figure(
  image("../bilder/diesel-4takt.jpg"),
)
3\. Takt: Durch die Entzündung des Gemischs steigt die Temperatur an, und damit steigt auch der Druck auf etwa #qty("60", "bar"). Der Kolben wird nach unten gedrückt (Arbeitstakt).

4\. Takt: In dem  Moment, in welchem sich der Kolben wieder nach oben bewegt, öffnet das Auslassventil und die Abgase werden nach aussen gedrückt. Ist der Kolben oben angelangt, so schliesst das Auslassventil und der Ablauf beginnt wieder mit dem 1. Takt.

Aufgrund des grossen Verdichtungsverhältnisses arbeitet der Dieselmotor mit einem Wirkungsgrad von 38% und mehr. Grosse Schiffsdieselmotoren erreichen Wirkungsgrade von bis zu 50%.


== Fragen

- Beantworten Sie diese Frage, falls Sie den Posten 4 (Benzin-Motoren) bereits absolviert haben. Der Dieselmotor hat einige Ähnlichkeiten mit dem Otto-Motor. Vergleichen Sie die beiden Motoren miteinander und stellen Sie Gemeinsamkeiten und Unterschiede zusammen. Was sind Vor- und Nachteile des einen gegenüber dem andern?

#schreibpapier(height: 2cm)

- Aus Posten 3 wissen Sie, dass die Fläche unter einer Kurve in einem $p$-$V$-Diagramm die Arbeit ergibt. Das heisst für das $p$-$V$-Diagramm des Dieselmotors, dass die eingeschlossene Fläche die Arbeit angibt, die der Kolben während den vier Takten verrichtet.

  #grid(
    columns: (1fr, auto),
    gutter: .5cm,
    [
      - Bestimmen Sie die Arbeit $W$ (in J), die in einer rechteckigen Fläche des Gitternatzes in der Abbildung "steckt", indem Sie die Seitenlängen des Rechtecks bestimmen ($p$, $V$) und daraus die Arbeit $W$ als Produkt der beiden Grössen berechnen.

      - Schätzen Sie dann die Arbeit, die der Kolben während den vier Takten verrichtet, indem Sie die von der Kurve eingeschlossenen Fläche anhand des Gitters von Auge abschätzen.

      - Wie gross ist die Leistung eines 4-Zylinder-Motors, der mit 4200 Umdrehungen pro Minute arbeitet und das in der Abbildung dargestellte $p$-$V$-Diagramm aufweist? Wie gross ist das Hubvolumen (auch Hubraum genannt) dieses Motors?
    ],
    [
      #align(horizon)[
        #cetz.canvas({
          import cetz-plot: *
          import cetz.draw: *

          set-style(
            axes: (
              overshoot: 15pt,
              shared-zero: true,
              stroke: 0.5pt,
              tick: (stroke: 0.5pt),
              x: (mark: (end: "barbed", scale: 0.7)),
              y: (mark: (end: "barbed", scale: 1)),
            ),
            stroke: 0.5pt,
          )

          plot.plot(
            axis-style: "school-book",
            size: (5, 5),
            x-tick-step: 50,
            y-tick-step: 10,
            x-label: [~~~~~~~~~~$V$ in $unit("cm^3")$],
            y-label: [#text(fill: blue)[$p$] in bar],
            x-grid: true,
            y-grid: true,
            x-min: 0,
            x-max: 350,
            y-min: 0,
            name: "pV",
            {
              plot.add(
                (
                  (300, 1),
                  (120, 18),
                  (70, 30),
                  (40, 57),
                  (70, 58),
                  (150, 32),
                  (270, 12),
                  (294, 3),
                  (150, 1.8),
                  (40, 1.5),
                  (300, 1),
                ),
                style: (stroke: haupt-farbe),
                line: (type: "spline", tension: .5),
              )
            },
          )
        })
      ]
    ],
  )

  _Bem.: Die kleine Schleife unten, die vom Gaswechsel in Takt 1 und 4 herrührt, schliesst ebenfalls eine bestimmte Fläche ein, die auch eine Arbeit darstellt. Diese Arbeit muss aber aufgewendet werden und müsste deshalb genau genommen von der verrichteten Arbeit abgezogen werden!_

#schreibpapier()
#pagebreak()

= Wankelmotor <6>

#lernziele[
  An diesem Posten erfahren Sie
  - wie eine originelle Idee eines Verbrennungsmotors bisher vergeblich versuchte, seine älteren Verwandten (Benzin- und Dieselmotor) zu verdrängen.
  - dass die Mathematik einen nicht unwesentlichen Einfluss bei der Erfindung dieses Motors spielte.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Frage. Das Demonstrations-Modell dient zur Veranschaulichung der Erklärungen im folgenden Text. Für diesen Posten benötigen Sie 15 Minuten.


== Die raffinierte Nachkriegs-Idee

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    #text(
      number-type: "old-style",
    )[Im Jahre 1957 brachte F. #smallcaps[Wankel] den ersten nach ihm benannten Kreiskolbenmotor zum Laufen, und 1964 wurde das erste Auto (ein NSU) serienmässig mit diesem Motor gebaut. Der Motor konnte sich allerdings nie richtig durchsetzen, auch wenn sich einige berühmte Automobilhersteller (Mercedes, Mazda) in der Zwischenzeit dem Motor widmeten und in einige ihrer Modelle einbauten.]

    Der Kolben, mit einer Form ähnlich derjenigen eines gleichseitigen Dreiecks mit geschwungenen Seiten, vollführt in einem trochoidenförmigen Gehäuse (s. Mathematik) eine stetig kreisende Bewegung. Seine Funktionsweise ist in der untenstehenden Abbildung dargestellt. In der Mathematik werden Sie vielleicht noch beliebige andere solche Formen kennenlernen, die allerdings allesamt komplizierter sind als die hier beschriebene und sich deshalb weniger für die Konstruktion eines Motors eignen.
  ],
  [
    #image("../bilder/wankelmotor.png", width: 5cm)
  ],
)

#image("../bilder/wankel-4takt.png")

Im ersten Takt wird an der Kolbenflanke A durch das Einlassrohr Gemisch angesaugt, was in den vier Schritten der Abbildung von links nach rechts (1 bis 4) zu erkennen ist. Nach etwa einem Drittel Umdrehung befindet sich die Kolbenflanke A von der Abbildung 4 bei der Kolbenflanke B in der Abbildung 1. Das Gemisch wird nun bei B bis zu Abb. 3 komprimiert und dann mit einer Zündkerze entzündet. In der Abbildung 4 findet also bei B der Arbeitstakt statt, was in der Abbildung 1 bei C noch andauert. In Abbildung 2 bis 4 findet bei C das Ausschieben der Abgase statt, worauf das Ganze wieder von vorne beginnt.
Ein Java-Applet zum Ablauf der einzelnen Phasen finden Sie im Internet unter: https://www.vascak.cz/data/android/physicsatschool/template.php?s=mf_wankel&l=de

== Frage

- Beantworten Sie diese Frage erst dann, wenn Sie die Posten 4 (Benzinmotoren) und Posten 5 (Dieselmotor) bereits absolviert haben. Was sind Vor- und Nachteile des Wankel-Motors gegenüber dem Benzinmotor? Vergleichen Sie die Motoren miteinander und stellen möglichst viele Punkte zusammen. Überlegen Sie sich auch, was konstruktiv Probleme oder Vorteile sein könnten.
#schreibpapier()
#grid(
  columns: 2,
  gutter: .5cm,
  grid.cell(rowspan: 2)[#image("../bilder/wankelmotor-schnitt.jpg")], [#image("../bilder/wankel-auto.jpg", width: 6cm)],
  [#image("../bilder/wankelmotor-schnitt-2.jpg")],
)

#pagebreak()

= Rund ums Auto <7>

#lernziele[
  An diesem Posten erfahren Sie
  - dass die eigentliche Wärmearbeitsmaschine noch einiges an Hilfe braucht, bis sie läuft.
  - um was es sich dabei alles handelt.
]

== Ablauf
Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Für diesen Posten benötigen Sie 15 Minuten.

#figure(
  image("../bilder/auto-durchsichtig.jpg", width: 14cm),
)

== Rund ums Auto
Bei der Wärmearbeitsmaschine handelt es sich eigentlich nur gerade um das Herz eines Autos. Damit dieses läuft, braucht es noch manches mehr.

Weil Benzin oder Diesel in flüssiger Form kaum brennt, muss dieses zuerst zusammen mit der zur Verbrennung benötigten Luft in gasförmigen Zustand gebracht werden. Bei Autos geschah dies früher mit einem *Vergaser*, der wie ein Parfumzerstäuber funktioniert. Motorräder haben noch heute die billigeren Vergaser, bei Autos hingegen kommen *elektronische Einspritzanlagen* zum Einsatz. Diese arbeiten genauer und lassen sich durch einen Computer steuern. Damit erreicht man sauberere Motoren und einen geringeren Verbrauch. Motoren mit *Katalysatoren* zur teilweisen Reinigung der Abgasluft von Schadstoffen (Kohlenmonoxid, Kohlenwasserstoffe, Stickoxide etc.) sind auf Einspritzanlagen angewiesen.

Der Treibstoff wird von einer *Treibstoffpumpe* zum Motor geführt. Der Motor muss durch einen kleinen Elektromotor (*Anlasser*), der den Strom von der *Batterie* bezieht, in Betrieb gesetzt werden. Umgekehrt wandelt der *Alternator* mechanische Energie des Motors in elektrische Energie um (Generator) und lädt damit die Batterie auf. Damit Luft und Benzin keine Verschmutzungen in den Motor tragen, kommen *Luft- und Benzinfilter* zum Einsatz. Nach der Verbrennung können die Abgase über den *Auspuff* mit integriertem *Schalldämpfer* und den *Katalysator*, der die Abgase weitgehend von den giftigsten Stoffen befreit, entweichen.

Weil die Reibung der Kolben an der Zylinderwand zu viel Wärme produzieren und den Motor beschädigen würde, muss der Motor geschmiert werden. Ein hauchdünner Ölfilm vermindert die Reibung wesentlich. Deshalb ist ein genügend hoher Ölstand sehr wichtig. Ohne *Öl* geht der Motor sehr rasch kaputt. Das Öl zirkuliert in einem eigenen Kreislauf mit Pumpe und *Kühler*.

Weil Wärmearbeitsmaschinen sehr viel Abwärme produzieren, muss der Kühlung des Motors ein besonderes Augenmerk geschenkt werden. Früher wurden Motoren meistens mit Luft gekühlt, die bei Fahrt am Motor vorbeigelenkt wurde. Motorräder haben dieses Prinzip zum Teil noch heute (s. Titelbild Posten 4). Der Motor kann dabei gerne überhitzen und hat nur selten die optimale Betriebstemperatur. Deshalb verwendet man anstelle der Luftkühlung die Wasserkühlung. Dabei umstreicht das Kühlwasser, welches mit einem Frostschutzmittel gegen das Erstarren bei tiefen Temperaturen geschützt ist, die Zylinderwand. Durch ein Rohrsystem wird es im Kühler abgekühlt. Der Kühler wiederum nutzt den Fahrtwind, um die Wärme los zu werden. Reicht der Fahrtwind nicht aus, so erzeugt ein Ventilator zusätzlichen Wind zur Kühlung. Ein Thermostat schaltet diesen ein und aus.

Die Kraft des Motors wird über ein *Getriebe* auf die Räder gelenkt. Mit der *Kupplung* wird während dem Schalten der Motor von den Antriebsrädern kurzzeitig getrennt. Weil in Kurven das kurvenäussere Rad einen längeren Weg zurücklegen muss als das kurveninnere Rad, muss ein *Differentialgetriebe* zwischen die Antriebsräder gesetzt werden. Es verteilt die Bewegung im richtigen Mass auf die Antriebsräder.

== Aufgabe

- Versuchen Sie, in diesem aufgeschnittenen Modell möglichst viele der im Text fett geschriebenen Begriffe zu platzieren!

#image("../bilder/auto-zerlegt.jpg")

#pagebreak()

= Kompressoren <8>

#lernziele[
  An diesem Posten erfahren Sie
  - weshalb Kompressoren die Leistung von Motoren steigern können.
  - wie es mit dem Wirkungsgrad solcher Motoren aussieht.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Für diesen Posten benötigen Sie 10 Minuten.

== Kompressoren und Turbolader

#figure(
  cetz.canvas({
    import cetz.draw: *

    content((), image("../bilder/kompressor.jpg", width: 8cm), anchor: "south-west")
    line((2, 5.5), (1.5, 4), stroke: haupt-farbe + 2pt, mark: (end: "stealth"))
  }),
)

Der Kompressor (roter Pfeil) sitzt vor dem Motorblock und verdichtet die angesogene Luft. Angetrieben wird der Kompressor direkt vom Motor.

Kompressoren und Turbolader kommen hauptsächlich in Otto- und Dieselmotoren zum Einsatz. Sie haben alle eines gemeinsam: Sie verdichten die Luft bereits vor dem Zylinder und erhöhen dadurch den Druck auf einige Bar. Öffnet sich nun das Einlassventil, so wird die Luft vom Kolben, der sich nach unten bewegt, nicht angesogen, sondern, aufgrund des erhöhten Drucks, in den Zylinder gepresst. Dadurch bringt man im Falle des Benzinmotors mehr Gemisch und im Falle des Dieselmotors mehr Luft in den Hubraum. Dies hat eine Leistungssteigerung zur Folge, die allerdings mit einem erhöhten Treibstoffbedarf einher geht. Weil die vor dem Zylinder komprimierten Gase jedoch eine höhere Temperatur aufweisen, können diese Gase im Zylinder nicht mehr gleich stark komprimiert werden wie ohne Kompressor, da sie sonst zu heiss werden und zu früh selbständig explodieren. Deshalb ist das Verdichtungsverhältnis etwas geringer als in Motoren ohne Kompressor (die häufig auch "Sauger" genannt werden). Etwas Abhilfe verschafft ein Ladeluftkühler, der die Luft nach dem Komprimieren und vor dem Zylinder von etwa #qty("200", "Celsius") auf #qty("40", "Celsius") abkühlt.

Von Kompressoren spricht man im allgemeinen dann, wenn der Verdichter mechanisch vom Motor selber angetrieben wird. Turbolader hingegen sind Aggregate, bei welchen die Abgase durch eine Turbine strömen und diese in Rotation versetzen. Ein auf der gleichen Welle sitzender Radialverdichter komprimiert die Frischluft. Turbinen nutzen somit den in den Abgasen verbliebene Druck. Turbolader haben den Nachteil, dass die Abgase erst bei höheren Motorendrehzahlen den nötigen Druck haben, damit der Turbolader den gewünschten Druck erzeugen kann. Dadurch wird vebrauchssteigerndes Fahren bei hohen Drehzahlen zum Teil notwendig. Moderne Turbomotoren arbeiten deshalb mit kleineren Turbinen, die wegen des geringeren Querschnitts bereits bei tiefen Drehzahlen höhere Drücke erzeugen. Bei höheren Drehzahlen öffnet dann ein Bypass (_waste gate_), der die Luft an der Turbine vorbei leitet, womit der Druck nicht mehr weiter ansteigt. Kompressoren, die mechanisch angetrieben sind, haben dieses Problem weniger, liefern also bereits bei tieferen Drehzahlen den nötigen Druck, fallen aber häufig durch viel Lärm auf.

Früher waren Kompressoren und Turbolader ein Zeichen für Sportlichkeit. Weil damalige Turbomotoren erst bei hohen Drehzahlen die gewünschte Motorenleistung erbrachten, wurde diese durch übermässigen Treibstoffkonsum erkauft, da hohe Drehzahlen eine Wirkungsgradabnahme verursachen. Heute ist man soweit, dass Turbolader dank technischer Ausgereiftheit durchaus den Wirkungsgrad des Motors steigern können und damit Sinn machen. So konnte z.B. das sogenannte Turboloch – die Zeit, die verstreicht, bis der Druck beim plötzlichen Gasgeben aufgebaut ist – weitgehend beseitigt werden. Zudem wird heute der Hubraum des Motors meistens absichtlich klein gewählt (z.B. beim Smart), damit die Leistung vernünftig ausfällt. Gerade bei Dieselmotoren ist dieses Konzept heute kaum mehr wegzudenken. Moderne Dieselmotoren verfügen alle über Abgasturbolader.


== Fragen

- Hat ein Turbomotor eher bei dauernd ändernden oder eher bei konstanten Drehzahlen den besseren Wirkungsgrad?

#schreibpapier(height: 5.2cm)
- Erklären Sie mit eigenen Worten, wie trotz Leistungssteigerung eine Wirkungsgradabnahme resultieren kann.

#schreibpapier()
#pagebreak()

= Kühlschrank <9>

#lernziele[
  An diesem Posten erfahren Sie
  - die Geschichte des Kühlschranks.
  - wie aus einem abgeschlossenen Raum die Wärme nach aussen transportiert werden kann.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Der Kühlschrank im Praktikumszimmer dient als Experiment und zur Veranschaulichung der Erklärungen im folgenden Text. Für diesen Posten benötigen Sie 25 Minuten.

== Vom Eismann zum Kühlschrank

#text(
  number-type: "old-style",
)[Die Kühlmaschine wurde 1870 erfunden. Es zogen allerdings noch einige Jahrzehnte ins Land, bis der Kühlschrank für jedermann erschwinglich wurde. Bis dahin verkaufte ein Eismann, der regelmässig mit seinem Wagen in den Strassen erschien, Eisbarren. Diese wurden in einem gut isolierten Schrank aufbewahrt und kühlten diesen. Die Schränke mussten entsprechend regelmässig mit Eis aufgefüllt werden. Das Eis wurde im Winter künstlich angelegten Weihern entnommen und in riesigen, tiefen Kellern gestapelt, sodass es bis ans Ende des folgenden Sommers reichte. Auch Gletschereis wurde verwendet. Vielleicht haben Sie noch Grosseltern, die nicht vom "Kühlschrank", sondern vom "Eisschrank" sprechen.

  Diese Idee zu kühlen ist nicht neu. Bereits der römische Kaiser Heliogabal liess in seinem Garten um 220 n.Chr. Schnee aus den Abruzzen anhäufen, um Getränke im Sommer kühlen zu können. Bierbrauereien gehörten am Ende des 19. Jahrhunderts zu den grössten Eiskonsumenten. Deshalb erstaunt es nicht, dass gerade ein deutscher Brauereibesitzer dem Ingenieur Carl von Linde Geld zur Verfügung stellte, damit dieser seine Erfindung einer Kühlmaschine in die Tat umsetzen konnte. Das Prinzip ist bis heute das gleiche geblieben.]

== Funktionsweise des Kühlschranks

Finden Sie durch Berühren heraus, was beim Kühlschrank im Praktikumszimmer dem in der Folge beschriebenen entspricht.

#grid(
  columns: (auto, 1fr),
  gutter: .5cm,
  [
    #image("../bilder/kühlschrank-modell.png", width: 12cm)
  ],
  [
    Im abgebildeten Aufbau ist die Funktionsweise des Kühlschranks dargestellt. Die Erklärung beginnt nach der Drossel. Das Kältemittel im Kältemittelkreislauf ist flüssig und hat eine Temperatur von #qty("-20", "Celsius"). In einem Wärmetauscher kommt das Kühlmittel mit der Luft des Kühlschrankinnern in Kontakt.
  ],
)

Dadurch erwärmt sich das Kältemittel auf #qty("2", "Celsius"), wobei es verdampft (der Siedepunkt des Kältemittels beträgt in diesem Teil des Kreislaufs, in welchem der Druck bei ca. #qty("2", "bar") liegt, bei #qty("-10", "Celsius")), die Luft kühlt sich dabei von #qty("10", "Celsius") auf #qty("5", "Celsius") ab. Das verdampfte, #qty("2", "Celsius") warme Gas wird in einem Kompressor, der von einem Elektromotor angetrieben wird, verdichtet. Dabei steigt auch die Temperatur des Gases (s. Gasgesetze). Der Druck im linken Teil des Kältemittelkreislaufs ist mit 8 bar deutlich angestiegen. Im zweiten Wärmetauscher kommt das warme Gas mit der Aussenluft in Kontakt, welche sich dadurch von erwärmt. Das Gas kühlt sich auf #qty("50", "Celsius") ab und kondensiert dabei (der Siedepunkt des Kältemittels beträgt in diesem Teil des Kreislaufs, in welchem der Druck bei #qty("8", "bar") liegt, bei #qty("60", "Celsius")). Das flüssige Kältemittel gelangt durch ein Druckreduzierventil, wodurch es sich von #qty("50", "Celsius") auf #qty("-20", "Celsius") abkühlt. Der Kreislauf beginnt von vorne.

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Als Kühlmittel kamen früher Fluor-Chlor-Kohlenwasserstoffe (FCKW) und Ammoniak zum Einsatz. Beide haben einen tiefen Siedepunkt, eine Voraussetzung für ein Kältemittel. Die ersteren sind zwar nicht brennbar, ungiftig für den Menschen und geruchlos, doch zerstören sie die Ozonschicht und verstärken den Treibhauseffekt. Ammoniak hat neben gewissen Vorteilen auch negative Aspekte, so ist es giftig und brennbar. Heute verwendet man meist gewöhnliche Kohlenwasserstoffe. Man erreicht damit zwar nicht ganz so tiefe Temperaturen, doch zerstören sie die Ozonschicht nicht und sind nicht giftig.
  ],
  [
    #image("../bilder/kühlschrank.jpg", width: 5cm)
  ],
)

== Tipp

Falls Sie einmal auch ohne Kühlschrank Glace herstellen wollen, dann können Sie dies wie folgt tun: Nehmen Sie zwei Schüsseln, eine grössere und eine kleinere, wobei die kleinere gut in die grössere hineingestellt werden kann. Füllen Sie die grössere Schüssel mit viel zerstossenem Eis und wenig Wasser, damit #qty("0", "Celsius") kaltes Eiswasser entsteht. Geben Sie pro Kilogramm Eiswasser #qty("30", "g") bis #qty("50", "g") Kochsalz dazu und mischen Sie gut. Nun können Sie in die kleine Schüssel Ihre vorbereitete Glacemischung geben. Rühren Sie regelmässig, bis diese gefroren ist. Der Grund, dass die Glacemischung fest wird, liegt daran, dass Salzwasser bis einige Grade unter #qty("0", "Celsius") flüssig bleibt. Das Auflösen des Salzes braucht Energie, welche dem Eiswasser entzogen wird und dieses dadurch abkühlt.

== Fragen

- Weshalb ändert der Siedepunkt der Flüssigkeit im Kältemittelkreislauf bei unterschiedlichem Druck?

#schreibpapier()
#pagebreak()

= Dampfturbine <10>

#lernziele[
  An diesem Posten erfahren Sie
  - wie in einem grossen Kraftwerk aus Wärme elektrische Energie erzeugt wird.
  - weshalb zum Beispiel Kernkraftwerke einen Kühlturm besitzen.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Für diesen Posten benötigen Sie 10 Minuten.

== Das einfache Prinzip einer Dampfturbine:

#grid(
  columns: (5cm, auto),
  gutter: .5cm,
  [#image("../bilder/dampfturbine-ausschnitt.jpg")#align(center, "Abb. 1")],
  grid.cell(rowspan: 2)[#image("../bilder/dampfturbine.jpg")#align(center, "Abb. 2")],
  [
    Legende zur Abbildung 2:
    #grid(
      columns: 1,
      gutter: .5em,
      [1	Frischdampfleitung],
      [2	Ventil],
      [3	Hochdruck-Turbine],
      [7	Niederdruck-Turbinen],
      [9	Kondensator],
    )
  ],
)

Mittlerweile hat sich die Dampfmaschine als Arbeitsmaschine verabschiedet. In grossen Kraftwerken jedoch hat sich der Dampf als Arbeitsmedium weiterhin behaupten können. So wird in Wärmekraftwerken, zu welchen unter anderem Kernkraftwerke, Kohlekraftwerke und Ölkraftwerke zählen, auf jeweils unterschiedliche Art Wasser zum Verdampfen gebracht. Der grosse Druck des Dampfes wird in allen diesen Kraftwerkstypen dazu genutzt, um eine Dampfturbine (s. Abb. 1 und 2) in Rotation zu versetzen. In Kraftwerken sind dabei mehrere solche Turbinen hintereinander geschaltet. Zuerst passiert der Dampf die Hochdruckturbine, danach die Niederdruckturbinen. Wichtig ist hier (analog zur Dampfmaschine), dass der Dampf hinter den Turbinen in einem Kondensator gekühlt wird. Das heisst, in einem "Kühler" wird der Dampf abgekühlt, wobei dieser kondensiert. Damit sinkt der Druck auf der Turbinenrückseite zusätzlich. Dies geschieht häufig mittels eines Kühlturms oder mit einer Kühlung in einem grossen, nahe gelegenen Fluss. Nur ein grosser Druckunterschied zwischen Turbinenvorder- und -rückseite erlaubt einen akzeptablen Wirkungsgrad. Der Wirkungsgrad solcher Kraftwerke liegt heute bei etwas über 40%.

#pagebreak()

== Fragen:
- Beantworten Sie diese Frage, sobald Sie den Posten 1 absolviert haben: Weshalb hat die Dampfturbine die Dampfmaschine abgelöst?

#schreibpapier(height: 6cm)

- Welcher Kraftwerkstyp erzeugt elektrische Energie mit einem besseren Wirkungsgrad: Wasserkraftwerke oder Kohlekraftwerke? Wie gross sind diese etwa?

#schreibpapier(height: 6cm)
- Die Kernkraftwerke Beznau I und II besitzen keine Kühltürme. Weshalb?

#schreibpapier()
#pagebreak()

= Raketen <11>

#lernziele[
  An diesem Posten erfahren Sie
  - wie der einfachste Antrieb mit Wärmeenergie funktioniert.
  - wie der Wirkungsgrad, welcher sich mit einer Wärmearbeitsmaschine maximal erreichen lässt, bestimmt werden kann.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Für diesen Posten benötigen Sie 20 Minuten. Erledigen Sie Aufgaben, die die angegebene Zeit überschreiten, zu Hause.

== Das einfachste Prinzip, der Raketenantrieb

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Das Prinzip des Raketentriebwerks ist sehr einfach, wenn nicht schon fast primitiv. Durch eine Verbrennung, welche möglichst viel Energie freisetzen soll, entstehen sehr hohe Temperaturen in einem Raum und damit eine sehr starke thermische, ungeordnete Molekularbewegung der Teilchen des Gases. Öffnet man den Raum, indem die Verbrennungsreaktion abläuft, nur zu einer Seite, so wandelt sich die ungeordnete in teilweise geordnete Bewegung um (s. Abbildung). Die gewaltige freigesetzte Energie lässt keine Defekte am Mantel des Raumes zu, denn schnell kann es zu einer Explosion – und dann in alle Richtungen - kommen!
  ],
  [
    #image("../bilder/rakete.jpg", width: 4cm)
  ],
)

#grid(
  columns: (auto, 1fr),
  align: horizon,
  gutter: .5cm,
  [
    #align(center)[
      #cetz.canvas({
        import cetz.draw: *

        rect(
          (-3.5, 3.5),
          (-0.5, 5.5),
          stroke: 1pt + red,
          name: "top-box",
        )
        content(
          "top-box",
          align(center)[#text(red)[
            Heisses Gas \
            (Temperatur $T_1$)
          ]],
        )

        rect(
          (-3.5, 0.5),
          (-0.5, 2.0),
          stroke: 1pt + black,
          name: "mid-box",
        )
        content(
          "mid-box",
          align(center)[
            Wärmearbeits- \ maschine
          ],
        )

        rect(
          (-3.5, -2.5),
          (-0.5, -0.5),
          stroke: 1pt + blue,
          name: "bot-box",
        )
        content(
          "bot-box",
          align(center)[#text(blue)[
            Abwärme an die \ Umwelt \ (Temperatur $T_2$)
          ]],
        )

        rect(
          (0.5, -0.2),
          (3.5, 2.8),
          stroke: 1pt + green,
          name: "right-box",
        )
        content(
          "right-box",
          text(green)[
            Verbraucher
          ],
        )

        line(
          "top-box",
          "mid-box",
          stroke: (paint: red, thickness: 12pt),
          mark: (end: "triangle", fill: red),
        )
        content((-1.3, 2.75), text(red)[$U_1$])

        line(
          "mid-box",
          "right-box",
          stroke: (paint: green, thickness: 8pt),
          mark: (end: "triangle", fill: green),
        )
        content((0, 0.8), text(green)[$W$])

        line(
          "mid-box",
          "bot-box",
          stroke: (paint: blue, thickness: 6pt),
          mark: (end: "triangle", fill: blue),
        )
        content((-1.4, 0.0), text(fill: blue)[$U_2$])
      })
    ]
  ],
  [
    #text(
      number-type: "old-style",
    )[Raketen sind wohl die ältesten Wärmearbeitsmaschinen überhaupt, so sollen bereits die Araber 1288 die spanische Stadt Valencia mit Raketen angegriffen haben. Es ist aber nicht ganz einfach, eine Rakete kontrolliert zu steuern. Erst dem nationalsozialistischen Deutschland gelang es mit enormen Forschungsgeldern unter der Führung von Wernher #smallcaps[von Braun] eine militärische Grossrakete, die V2, zu entwickeln. Die Sowjets waren, allerdings erst nach dem 2. Weltkrieg, ebenfalls erfolgreich im Entwickeln einsatzfähiger Raketen, selbst für Flüge ins Weltall. Einzig den USA gelang dies lange Zeit nicht, so endeten enorm viele Versuche mit schauerhaften Explosionen. Erst unter der Hilfe von #smallcaps[von Braun], der nach dem Krieg nach den USA gebracht wurde, kamen auch diese besser voran. Dennoch klappte es mit einem Flug in den Weltraum, der den Sowjets 1957 mit dem Sputnik bereits gelungen war, nicht nach Plan. Als John #smallcaps[Glenn] als erster Amerikaner mit der höchst unzuverlässigen Atlas-Trägerrakete 1962 in den Weltraum geschossen wurde, kam das geglückte Abenteuer beinahe einem Wunder gleich, denn zuvor waren zwei von drei Atlas-Tests missglückt. Der vierte mit #smallcaps[Glenn] an Bord war erstaunlicherweise ein Erfolg.]

  ],
)


== Der Wirkungsgrad einer Rakete

#set math.equation(numbering: "(1)")

Mit Hilfe des Diagramms (letzte Seite) werden wir berechnen können, wie gut der Wirkungsgrad einer Rakete maximale überhaupt sein kann. Ob man diesen Wert dann auch tatsächlich erreicht, hängt davon ab, wie gut die Rakete gebaut wird.

Das Diagramm kann so verstanden werden: Eine Wärmearbeitsmaschine nutzt die innere Energie $U_1$ eines heissen Gases aus und wandelt einen Teil davon in Arbeit W um. Die Abgase, die die Maschine nicht weiter nutzen kann, stösst diese wieder aus. Die Abgase haben eine innere Energie $U_2$.

Ein heisses Gas befinde sich in der Rakete. Das Gas besteht aus $N$ Teilchen und hat die Temperatur $T_1$. Damit ergibt sich für die innere Energie $U_1$ des Gases:

$ U_1 = 3/2 N k T_1 $ <gas>

Den Wirkungsgrad der Maschine finden wir mit dem Diagramm und aus der Definition des Wirkungsgrades $eta$:

$ eta = "Nutzen" / "Aufwand" = W / U_1 "     aufgelöst nach" W ":     "W = eta U_1 $ <arbeit>

Zwischen den Grössen $U_1$, $U_2$ und $W$ gilt gemäss Diagramm und dem Energiesatz folgender Zusammenhang:

$ U_1 = U_2 + W = U_2 + eta U_1 $ <hauptsatz>

Im zweiten Schritt wurde @arbeit eingesetzt. Setzen wir die @gas in @hauptsatz ein, so folgt:
#set math.equation(numbering: none)

$ 3/2 N k T_1 = 3/2 N k T_2 + eta N k T_1 $

Lösen Sie diese Gleichung nun nach dem Wirkungsgrad $eta$ auf:#h(1fr)
#box(
  stroke: haupt-farbe + .5pt,
  inset: 18pt,
  radius: 4pt,
)[
  $ eta_"theor" = "                              " $
]


== Fragen

- Der maximal mögliche Wirkungsgrad $eta_"theor"$ einer Wärmearbeitsmaschine gilt interessanterweise nicht nur für Raketen, sondern für alle Wärmearbeitsmaschinen. Bestimmen Sie die (theoretisch maximal erreichbaren) Wirkungsgrade $eta_"theor"$ folgender Wärmearbeitsmaschinen und füllen Sie die Tabelle dazu aus. Füllen Sie auch die heute in der Praxis erreichten Wirkungsgrade $eta$ ein, wenn Sie die entsprechenden Posten absolviert haben:

  #set table(
    fill: (_, y) => if y < 1 { haupt-farbe.transparentize(80%) },
    stroke: (_, y) => (
      x: none,
      top: if y == 0 { 1pt } else { if y == 1 { 0.5pt } else { 0pt } },
      bottom: 1pt,
    ),
  )

  #table(
    columns: (2fr, 2fr, 2fr, 1fr, 1fr),
    align: (left, center, center, center, center),
    [Maschine], [Arbeitstemperatur $T_1$], [Abgastemperatur $T_2$], [$eta_"theor"$], [$eta$],
    [4-Takt-#smallcaps[Otto]-Motor], [#qty("1800", "K")], [#qty("900", "K")], [], [],
    [Dieselmotor], [#qty("2900", "K")], [#qty("770", "K")], [], [],
    [Dampfturbine], [#qty("800", "K")], [#qty("320", "K")], [], [],
  )

- Was für eine Bedingung müsste erfüllt sein, dass der Wirkungsgrad einer Wärmearbeitsmaschine nahezu 100% beträgt? Weshalb ist das auf der Erde nicht möglich?

#schreibpapier()
#pagebreak()

= Düsentriebwerk <12>

#lernziele[
  An diesem Posten erfahren Sie
  - weshalb gerade diese Wärmearbeitsmaschine bei schnellen Flugzeugen zum Einsatz gelangt.
  - wie gut ein Düsentriebwerk die ihm zur Verfügung gestellte Energie ausnutzen kann.
]

== Ablauf

Lesen Sie den folgenden Text durch und beantworten Sie die Fragen. Für diesen Posten benötigen Sie 10 Minuten.

== Das Düsentriebwerk, eine fliegende Wärmearbeitsmaschine

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Das Düsentriebwerk kommt vorwiegend bei schweren und schnellen Flugzeugen zum Einsatz, da der Wirkungsgrad eines Propellers bei Geschwindigkeiten nahe der Schallgeschwindigkeit (ca. #qty("330", "m/s")) stark abnimmt und herkömmliche Motoren bei grossem Leistungsbedarf zu schwer werden. Der Wirkungsgrad eines Düsentriebwerks steht allerdings jenem eines Motors in jedem Fall nach, er erreicht nur knapp 25%.
  ],
  [
    #image("../bilder/düsentriebwerk.jpg", width: 10cm)
  ],
)

== Funktionsweise

Ein Nieder- und ein Hochdruckkompressor (oder Verdichter) am Einlass des Triebwerks, bestehend aus mehreren rotierenden und festen Verdichterlaufrädern, presst die einströmende Luft in die Brennkammern, in welchen Treibstoff verbrannt wird und sich die Luft dadurch schlagartig erwärmt. Die erhitzte Luft wird wegen der grossen Volumenzunahme nach hinten beschleunigt und treibt dabei die eigentliche Turbine (bestehend aus Hoch- und Niederdruckturbine) an, welche wiederum die auf der gleichen Welle montierten Nieder- und Hochdruckkompressoren vorne antreibt. Der schnelle Luftstrom verlässt dann das Triebwerk nach hinten und drückt dadurch das Triebwerk (und alles, was daran festgemacht ist) nach vorne.

== Fragen
- Weshalb werden Autos nicht mit Düsentriebwerken angetrieben?

#schreibpapier(height: 1.6cm)
- Weshalb werden kleine Flugzeuge mit einer Geschwindigkeit um 300 km/h nicht mit einem Düsentriebwerk angetrieben?

#schreibpapier()
