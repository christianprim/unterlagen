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
  [☞], [1\. Posten:], [Der Weg zur Dampfmaschine des James Watt], [20 min],
  [☞], [2\. Posten:], [Erfindung eines Geistlichen: Der Stirling-Motor], [15 min],
  [☞], [3\. Posten:], [Der Carnot-Prozess], [20 min],
  [☞], [4\. Posten:], [Benzin-Motoren: Im 4-Takt und 2-Takt], [20 min],
  [☞], [5\. Posten:], [Der Diesel-Motor: Im Kampf gegen den Benziner], [20 min],
  [☞], [6\. Posten:], [Der Wankel-Motor: Eine Nachkriegserfindung], [15 min],
  [☞], [7\. Posten:], [Rund ums Auto], [15 min],
  [☞], [8\. Posten:], [Kompressoren und Turbolader], [10 min],
  [☞], [9\. Posten:], [Vom Eismann zum Kühlschrank], [25 min],
  [☞], [10\. Posten:], [Die Dampfturbine: Einfaches Prinzip hoch aktuell], [10 min],
  [☞], [11\. Posten:], [Der Raketen-Antrieb: Primitiv und trotzdem leistungsfähig], [20 min],
  [☞], [12\. Posten:], [Das Düsentriebwerk, eine fliegende Wärmearbeitsmaschine], [10 min],
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

= Dampfmaschine

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
Die Drehzahl kann mit einem Fliehkraftregler, wie sie ihn bei den Kreisbewegungen kennengelernt haben, durch Regulieren der Dampfzufuhr konstant gehalten werden.
Die Dampfmaschine nach diesem Prinzip erreicht einen Wirkungsgrad von bis zu 25%.

== Fragen
Was waren die ersten "mobilen Maschinen" (die oben erwähnt werden), die mit einer Dampfmaschine gebaut wurden?

#schreibpapier()
#pagebreak()

= Stirlingmotor

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

Würde der Motor auch dann funktionieren, wenn er oben gekühlt und unten geheizt würde? Wenn ja, weshalb? Wenn nein, was müsste man ändern?

#schreibpapier()
#pagebreak()

= Carnot-Prozess

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
              stroke: 0.5pt
            ), 
            x: (
              mark: (
                end: "barbed", 
                scale: 0.7
              )
            ), 
            y: (
              mark: (
                end: "barbed", 
                scale: 0.7
              )
            )
          ), 
          stroke: 0.5pt
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

        content((1.4, 5.6*.75), text(orange)[$T_h$])
        content((0.5, 5*.75), text(orange)[$T_n$])

        content("p-V.1", [$1$], anchor: "west", padding: 3pt)
        content("p-V.2", [$2$], anchor: "south-west", padding: 2pt)
        content("p-V.3", [$3$], anchor: "south", padding: 2pt)
        content("p-V.4", [$4$], anchor: "north", padding: 2pt)

        content((3.7, 3.4*.75), text(fuchsia)[$+ Q_h$])
        decorations.wave(line((3.2, 3.3*.75), (2.8, 2.8*.75)), amplitude: 1pt, stroke: (paint: fuchsia, thickness: .5pt))
        mark((2.7, 2.68*.75), (rel: (-.4, -.5*.75)), symbol: "barbed", stroke: fuchsia)
        decorations.wave(line((3.5, 3.0*.75), (3.1, 2.5*.75)), amplitude: 1pt, stroke: (paint: fuchsia, thickness: .5pt))
        mark((3, 2.38*.75), (rel: (-.4, -.5*.75)), stroke: fuchsia, symbol: "barbed")

        content((3.6, 0.3*.75), text(fuchsia)[$- Q_n$])
        decorations.wave(line((4, 1.3*.75), (3.6, .8*.75)), amplitude: 1pt, stroke: (paint: fuchsia, thickness: .5pt))
        mark((3.5, .68*.75), (rel: (-.4, -.5*.75)), symbol: "barbed", stroke: fuchsia)
        decorations.wave(line((4.4, 1.2*.75), (4, .7*.75)), amplitude: 1pt, stroke: (paint: fuchsia, thickness: .5pt))
        mark((3.9, .58*.75), (rel: (-.4, -.5*.75)), stroke: fuchsia, symbol: "barbed")
      }),
      caption: [#smallcaps[Carnot]'scher Kreisisprozess]
    )
  ],
)

Nun folgt eine *isotherme Kompression*. Weil diese bei einer niedrigeren Temperatur erfolgt als die vorhergehende isotherme Expansion, braucht sie weniger Energie #text(fuchsia, $Q_n$), als die Expansion an Energie #text(fuchsia, $Q_h$) lieferte. Diese Zustandsänderung führt uns von Punkt 3 zu Punkt 4.

Es folgt eine *adiabatische Kompression*, die uns in den Ausgangszustand 1 zurück führt.

Der Umgebung wird dabei Energie $#text(fuchsia)[$Delta Q$] = #text(fuchsia)[$Q_h$] – #text(fuchsia)[$Q_n$]$ entzogen, die die Maschine in Arbeit $W$ umwandelt. Das Gas braucht Wärme aus einem Wärmereservoir der Temperatur #text(orange, $T_h$) und gibt Wärme an ein kälteres Wärmereservoir #text(orange, $T_n$) ab. Bei der Dampfmaschine, die #smallcaps[Carnot] damals verbessern wollte, handelte es sich bei den Wärmereservoirs um den Dampf im Dampfkessel und um die Kühlung auf der Dampfauslassseite, dem Kondensator.

== Frage

Weshalb ist die adiabatische Expansion im #smallcaps[Carnot]’schen Kreisprozess nötig?

#schreibpapier()
#pagebreak()

= Benzinmotoren

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
  ]
)

=== a) Der 4-Takt- oder Otto-Motor

#figure(
  image("../bilder/4takt.png", width: 16cm)
)

1\. Takt: Der Kolben ist oben und beginnt sich nach unten zu bewegen. In diesem Moment öffnet das Einlassventil und das Treibstoff-Luft-Gemisch wird in den Zylinder gesogen.

2\. Takt: Nachdem der Kolben die unterste Position erreicht hat, schliesst das Einlassventil. Der Kolben bewegt sich nach oben und verdichtet das Gemisch. Das Volumen wird auf etwa einen Zehntel verkleinert, wodurch der Druck auf etwas mehr als #qty("22", "bar") ansteigt. Man spricht von einem Verdichtungsverhältnis von 10:1. Das Gemisch erreicht dabei etwa eine Temperatur von #qty("300", "Celsius") bis #qty("400", "Celsius"). Bei Temperaturen über #qty("500", "Celsius") würde sich das Benzin-Luft-Gemisch selbständig entzünden, was den Motor beschädigen kann (führt zu sogenanntem Klopfen).

#text(size: 8pt)[Bei Benzinsorten unterscheidet man unterschiedliche Oktan-Zahlen. Je höher die Oktan-Zahl des Benzins, umso höher liegt die Temperatur, bei welcher sich das Benzin-Luft-Gemisch selbständig entzündet. Das heisst, dass Motoren mit höherem Verdichtungsverhältnis Benzin-Sorten mit grösserer Oktan-Zahl benötigen (Bsp.: Bleifrei 95 hat die Oktan-Zahl 95, Bleifrei 98 eine entsprechend höhere).]

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
  ]
)


2\. Takt: Das komprimierte Gemisch wird entzündet (s. Abb. b unten in der Mitte). Der entstehende grosse Druck presst den Kolben nach unten (Arbeitstakt). Das Gemisch im Kurbelgehäuse wird dadurch etwas zusammengepresst, kann aber nicht mehr zum Gaseinlass heraus, da dieser vom Kolben bald versperrt wird. Sobald der Kolben in der untersten Position ist, wird das Gemisch im Kurbelgehäuse durch den Überströmkanal in den Brennraum über den Kolben geleitet (s. Abb. c unten rechts). Gleichzeitig wird das verbrannte Gemisch durch das neu eintretende Gemisch zum Gasaustritt hinaus gedrückt. Aufgrund der etwas speziellen Formgebung des Kolbenoberteils tritt nur wenig frisches Gemisch direkt wieder zum Gasaustritt aus, allerdings lässt sich das bei Zwei-Taktern nicht verhindern, was man an den Abgasen riechen kann. Einspritz-Zweitakter haben diese Durchmischung zwar nicht, doch liessen sie sich nicht mit einem Dreiwegkatalysator betreiben bzw. haben eine geringere Leistung. Nun wird wieder beim 1. Takt begonnen.

== Fragen

- Was sind die Vor- und Nachteile der beiden Motorenarten im Vergleich? Welcher ist leistungsfähiger, welcher ist billiger in der Herstellung, bei welchem können die Abgase geringer gehalten werden, etc. Begründen Sie Ihre Antworten. Suchen Sie nach weiteren Vor- und Nachteilen.
- Liegt der Wirkungsgrad des 2-Takt-Motors eher über oder unter demjenigen des #smallcaps[Otto]-Motors?
- Beantworten Sie diese Frage, falls Sie den Posten 5 (Dieselmotor) bereits absolviert haben. Der #smallcaps[Otto]-Motor hat einige Ähnlichkeiten mit dem Diesel-Motor. Vergleichen Sie die beiden Motoren miteinander und stellen Sie Gemeinsamkeiten und Unterschiede zusammen. Was sind Vor- und Nachteile des einen gegenüber dem andern?

#schreibpapier()
#pagebreak()

= Dieselmotor

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
  ]
)

2\. Takt: Nachdem der Kolben die unterste Position erreicht hat, schliesst das Einlassventil. Der Kolben bewegt sich nach oben und verdichtet die Luft. Das Volumen wird auf etwa einen Sechszehntel verkleinert, wodurch der Druck auf etwas mehr als #qty("45", "bar") ansteigt (ohne Abgasturboaufladung, s. Posten 8). Man spricht von einem Verdichtungsverhältnis von 16:1. Das Gemisch erreicht dabei eine Temperatur von etwa #qty("600", "Celsius"). Hat der Kolben den höchsten Punkt erreicht, so sprüht eine Hochdruckpumpe den flüssigen Diesel-Treibstoff in den Zylinder. Der Treibstoff entzündet sich aufgrund der hohen Temperatur selbständig (Zündkerzen braucht der Dieselmotor somit keine).

#figure(
  image("../bilder/diesel-4takt.jpg")
)
3\. Takt: Durch die Entzündung des Gemischs steigt die Temperatur an, und damit steigt auch der Druck auf etwa #qty("60", "bar"). Der Kolben wird nach unten gedrückt (Arbeitstakt).

4\. Takt: In dem  Moment, in welchem sich der Kolben wieder nach oben bewegt, öffnet das Auslassventil und die Abgase werden nach aussen gedrückt. Ist der Kolben oben angelangt, so schliesst das Auslassventil und der Ablauf beginnt wieder mit dem 1. Takt.

Aufgrund des grossen Verdichtungsverhältnisses arbeitet der Dieselmotor mit einem Wirkungsgrad von 38% und mehr. Grosse Schiffsdieselmotoren erreichen Wirkungsgrade von bis zu 50%.


== Fragen

- Beantworten Sie diese Frage, falls Sie den Posten 4 (Benzin-Motoren) bereits absolviert haben. Der Diesel-Motor hat einige Ähnlichkeiten mit dem Otto-Motor. Vergleichen Sie die beiden Motoren miteinander und stellen Sie Gemeinsamkeiten und Unterschiede zusammen. Was sind Vor- und Nachteile des einen gegenüber dem andern?
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
              y: (mark: (end: "barbed", scale: 1))
            ), 
            stroke: 0.5pt
          )

          plot.plot(
            axis-style: "school-book", 
            size: (5,5), 
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
                  (300, 1)
                ), 
                style: (stroke: haupt-farbe), 
                line: (type: "spline", tension: .5)
              )
            }
          ) 
        })
      ]
    ]
  )


  _Bem.: Die kleine Schleife unten, die vom Gaswechsel in Takt 1 und 4 herrührt, schliesst ebenfalls eine bestimmte Fläche ein, die auch eine Arbeit darstellt. Diese Arbeit muss aber aufgewendet werden und müsste deshalb genau genommen von der verrichteten Arbeit abgezogen werden!_

#schreibpapier()
#pagebreak()

