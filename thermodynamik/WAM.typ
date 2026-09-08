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

#smallcaps[Carnot] fand vier Zustandsänderungen, die einen solchen Kreisprozess ergeben. Diesen Kreisprozess für einen idealen thermischen Energiewandler nennen wir Carnot’scher Kreisprozess. Dieser ist in Abbildung 4 dargestellt.
#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Wir beginnen in Punkt 1. Die anschliessende Expansion verläuft isotherm, d.h. bei konstanter Temperatur $T_h$. Dabei muss Energie (Wärme $Q_h$) von aussen in das System fliessen. Bei dieser Zustandsänderung handelt es sich somit um eine *isotherme Expansion*.

    Von Punkt 2 zu Punkt 3 führt das Gas eine *adiabatische Expansion* aus, d.h. eine Expansion ohne Energiefluss nach aussen oder innen. Diese führt uns zu einer niedrigeren Temperatur $T_n$.

  ],
  [
    #figure(
      cetz.canvas({
        import cetz.draw: *
        import cetz-plot: *

        // Grundlegende Styles festlegen
        set-style(
          text: (size: 8pt),
          stroke: (thickness: 0.8pt),
        )

        // System-Parameter (Physikalische Konstanten für das Modell)
        let C-h = 6.0 // Konstante für warme Isotherme T_h (p * V = C_h)
        let C-n = 2.5 // Konstante für kalte Isotherme T_n (p * V = C_n)
        let kappa = 1.4 // Adiabatenkoeffizient

        // V-Koordinaten der Zustandspunkte
        let v1 = 1.2
        let v2 = 2.8
        let v4 = 2.0
        // v3 berechnet sich aus der Kreisprozess-Bedingung: v3 = v2 * v4 / v1
        let v3 = (v2 * v4) / v1

        // Druckwerte an den 4 Punkten
        let p1 = C-h / v1
        let p2 = C-h / v2
        let p4 = C-n / v4
        let p3 = C-n / v3

        plot.plot(
          size: (7, 6),
          x-min: 0,
          x-max: 4.5,
          y-min: 0,
          y-max: 5.5,
          x-label: [$V$],
          y-label: [$p$],
          axis-style: "school-book",
          x-tick-step: none,
          y-tick-step: none,
          {
            // 1. Graue Fläche (Arbeit W) schraffieren/ausfüllen
            plot.add-fill-between(
              domain: (v1, v2),
              x => C-h / x,
              x => {
                // Untere Begrenzung der Fläche aus Adiabate (4->1) und Isotherme (4->3)
                let c-ad1 = p1 * calc.pow(v1, kappa)
                let p-ad1 = c-ad1 / calc.pow(x, kappa)
                let p-iso2 = C-n / x
                calc.max(p-ad1, p-iso2)
              },
              style: (fill: rgb("e0e0e0"), stroke: none),
            )

            // 2. Isotherme T_h (Obere Kurve)
            plot.add(
              domain: (0.8, 4.2),
              x => C-h / x,
              style: (stroke: (paint: red, thickness: 1pt)),
              label: none,
            )

            // 3. Isotherme T_n (Untere Kurve)
            plot.add(
              domain: (0.5, 4.2),
              x => C-n / x,
              style: (stroke: (paint: red, thickness: 1pt)),
              label: none,
            )

            // 4. Prozesskurven mit Pfeilen zeichnen (1->2, 2->3, 3->4, 4->1)
            // Isotherme Expansion 1 -> 2
            plot.add(
              domain: (v1, v2),
              x => C-h / x,
              style: (stroke: (paint: red, thickness: 1.5pt), mark: (end: "stealth", fill: red)),
            )

            // Adiabate Expansion 2 -> 3
            let c-ad23 = p2 * calc.pow(v2, kappa)
            plot.add(
              domain: (v2, v3),
              x => c-ad23 / calc.pow(x, kappa),
              style: (stroke: (paint: red, thickness: 1.5pt), mark: (end: "stealth", fill: red)),
            )

            // Isotherme Kompression 3 -> 4
            plot.add(
              domain: (v4, v3),
              x => C-n / x,
              style: (stroke: (paint: red, thickness: 1.5pt), mark: (start: "stealth", fill: red)),
            )

            // Adiabate Kompression 4 -> 1
            let c-ad41 = p4 * calc.pow(v4, kappa)
            plot.add(
              domain: (v1, v4),
              x => c-ad41 / calc.pow(x, kappa),
              style: (stroke: (paint: red, thickness: 1.5pt), mark: (start: "stealth", fill: red)),
            )
          },
        )

        // -- Beschriftungen & Hilfslinien außerhalb des Plots platzieren --
        // Hinweis: Koordinaten lassen sich im Plot direkt mit den berechneten Variablen annotieren.

        // Text "W" in der Mitte
        content((3.2, 2.3), [$W$])

        // Isothermen-Namen
        content((1.2, 5.2), [$T_h$])
        content((0.7, 4.8), [$T_n$])

        // Punkte 1-4 beschriften
        circle((1.9, 4.5), radius: 0.05, fill: red, stroke: none)
        content((1.9, 4.7), [$1$])

        circle((3.9, 2.1), radius: 0.05, fill: red, stroke: none)
        content((4.1, 2.2), [$2$])

        circle((4.8, 1.3), radius: 0.05, fill: red, stroke: none)
        content((5.0, 1.4), [$3$])

        circle((3.0, 1.6), radius: 0.05, fill: red, stroke: none)
        content((2.9, 1.4), [$4$])

        // Wärmepfeile (+Q_h und -Q_n)
        content((4.3, 3.4), [$+ Q_h$])
        line((3.5, 3.2), (3.0, 2.7), stroke: (paint: red, thickness: 0.8pt), mark: (end: "stealth", fill: red))
        line((3.9, 3.0), (3.4, 2.5), stroke: (paint: red, thickness: 0.8pt), mark: (end: "stealth", fill: red))

        content((3.8, 0.7), [$- Q_n$])
        line((3.8, 1.4), (3.9, 0.9), stroke: (paint: red, thickness: 0.8pt), mark: (end: "stealth", fill: red))
        line((4.2, 1.2), (4.3, 0.7), stroke: (paint: red, thickness: 0.8pt), mark: (end: "stealth", fill: red))
      }),
    )
  ],
)

Nun folgt eine *isotherme Kompression*. Weil diese bei einer niedrigeren Temperatur erfolgt als die vorhergehende isotherme Expansion, braucht sie weniger Energie $Q_n$, als die Expansion an Energie $Q_h$ lieferte. Diese Zustandsänderung führt uns von Punkt 3 zu Punkt 4.

Nun folgt eine *adiabatische Kompression*, die uns in den Ausgangszustand 1 zurück führt.

Der Umgebung wird dabei Energie $Delta Q = Q_h – Q_n$ entzogen, die die Maschine in Arbeit $W$ umwandelt. Das Gas braucht Wärme aus einem Wärmereservoir der Temperatur $T_h$ und gibt Wärme an ein kälteres Wärmereservoir $T_n$ ab. Bei der Dampfmaschine, die #smallcaps[Carnot] damals verbessern wollte, handelte es sich bei den Wärmereservoirs um den Dampf im Dampfkessel und um die Kühlung auf der Dampfauslassseite, dem Kondensator.

== Frage

Weshalb ist die adiabatische Expansion im #smallcaps[Carnot]’schen Kreisprozess nötig?

#schreibpapier()

