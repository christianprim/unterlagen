#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Wärmelehre"
#let titel = [Temperatur und Wärmeausdehnung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Einstieg in die Wärmelehre: Wie messe ich die Temperatur
Bei einem Blick zurück in die Geschichte ist man erstaunt, wie lange keine vernünftige und einheitliche Temperaturmessung möglich war. Lange Zeit konnte sich kein Vorschlag durchsetzen, wie Temperatur gemessen werden könnte.

Erst ein Vorschlag des schwedischen Astronoms Anders #smallcaps[Celsius] (#text(number-type: "old-style")[1701 -- 1744]) lieferte für alle eine einfach nachvollziehbare Temperaturmessung. Er verwendete ein Glasrohr, welches zu einem bestimmten Bruchteil mit einer Flüssigkeit gefüllt war (einige Anforderungen an die Flüssigkeit werden wir später noch stellen müssen!). Das untere Ende des Glasrohres ist leicht verdickt und bildet dadurch einen Vorratstank für die Flüssigkeit. Er tauchte das Glasrohr in ein Eis-Wasser-Gemisch und definierte diese Temperatur als $qty("0", "Celsius")$ (Null Grad Celsius). Dieser erste Fixpunkt kann mit Eiswasser leicht von jedermann irgendwo auf der Erde nachvollzogen werden. Sodann tauchte er das Rohr in siedendes Wasser und erhielt so einen zweiten Fixpunkt. Das Glasrohr unterteilte er zwischen diesen beiden Fixpunkten in 100 gleiche Teile. Deshalb definierte er den zweiten Fixpunkt als $qty("100", "Celsius")$.

== Experiment
_Tun Sie es dem Anders #smallcaps[Celsius] gleich! Lesen Sie, bevor Sie mit dem Experiment beginnen, alles durch. Während das Experiment läuft, können Sie unter Umständen die eine oder andere Frage bereits beantworten. Räumen Sie zum Schluss wieder so auf, wie Sie den Platz angetroffen haben und schalten Sie alle Geräte aus._

An Ihrem Platz befinden sich ein mit einer dunklen Flüssigkeit gefülltes Glasrohr, ein Eis-Wasser-Gemisch, eine kleine Kochplatte und ein mit der richtigen Menge Wasser gefüllter Topf.

=== Ablauf des Experiments
#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    - Das bereitliegende, mit einer dunklen Flüssigkeit gefüllte Glasrohr liegt schon einige Zeit auf dem Tisch und hat somit Zimmertemperatur. Markieren Sie mit einem Folienschreiber den Stand der Flüssigkeit (nur fein markieren)!

    - Tauchen Sie nun das Glasrohr zuerst in Eiswasser. Rühren Sie vorsichtig, bis sich der Stand der Flüssigkeit nicht mehr ändert. Setzen Sie mit dem Folienschreiber eine weitere Marke.
  ], [#image("../bilder/exp-temperatur-messen.jpg", width: 7cm)]
)
- Schalten Sie die Kochplatte unter dem mit Wasser gefüllten Topf ein und tauchen Sie das Glasrohr dann in die siedende Flüssigkeit. Setzen Sie mit dem Folienschreiber eine weitere Marke.

== Fragen

- Die Marke, die Sie ganz zu Beginn gesetzt haben, entspricht dem Stand der Flüssigkeit bei Zimmertemperatur. Ermitteln Sie diese, so gut es geht, mit dem Verfahren, wie es Celsius vorgeschlagen hat!

  Lösung: Die Zimmertemperatur $theta.alt$ beträgt:
  
  $ theta.alt = #h(3cm) unit("Celsius") $

  _Bemerkung: Temperaturen in Grad Celsius °C werden in der Physik mit dem griechischen Buchstaben Theta geschrieben._

#pagebreak()

- Überlegen Sie sich, was für Bedingungen die Flüssigkeit im Glasrohr idealerweise erfüllen sollte. Kennen Sie Flüssigkeiten, die für Thermometer verwendet werden und wissen Sie, weshalb?
  #schreibpapier(height: 2.01cm)
  
- Die Temperatur-Skala Grad Celsius, welche wir kennen gelernt haben, hat etwas sehr Willkürliches an sich. Etwa gleichzeitig zu Anders #smallcaps[Celsius] erfand der Danziger Glasbläser Daniel #smallcaps[Fahrenheit] eine andere, ebenso willkürliche Einheit der Temperatur, das nach ihm benannte Grad Fahrenheit °F. Ähnlich wie Celsius wählte auch er zwei Fixpunkte. Als erster Fixpunkt (Nullpunkt) seiner Skala wählte Fahrenheit die tiefste Temperatur des strengen Winters von #text(number-type: "old-style")[1709], die er durch eine bestimmte Eis-Wasser-Salz-Mischung reproduzieren zu können glaubte. Weil selbst die ältesten Leute behaupteten, sie hätten noch nie so bitterkalte Tage erlebt, hoffte Fahrenheit, auf diese Weise negative Temperaturen vermeiden zu können. Als zweiten Fixpunkt soll er seine Körpertemperatur gewählt haben, der er willkürlich die Zahl 100 zuordnete. Dadurch kam die Schmelztemperatur von Eis auf $qty("32", "Fahrenheit")$ und die Siedetemperatur von Wasser auf $qty("212", "Fahrenheit")$ zu liegen.

  #grid(
    columns: (1fr, auto),
    align: (left, horizon),
    gutter: .5cm,
    [
      + Finden Sie heraus, wie die Temperatur von °C in °F umgerechnet werden kann und umgekehrt! Als Hilfe steht Ihnen nebenstehende Grafik zur Verfügung. Auf der Ordinate sind Grad Celsius, auf der Abszisse Grad Fahrenheit aufgetragen. Markieren Sie dazu bekannte Punkte in der Grafik und verbinden Sie diese mit einer Geraden. Finden Sie mit Hilfe der Geraden eine Gleichung, mit der die beiden Temperaturen ineinander umgerechnet werden können!
    ], 
    [
      #cetz.canvas({
        import cetz.draw: *
        import cetz-plot: *
  
        set-style(axes: (overshoot: 15pt, shared-zero: false, stroke: 0.5pt, tick: (stroke: 0.5pt), x: (mark: (end: "barbed")), y: (mark: (end: "barbed"))), stroke: 0.5pt)
  
        plot.plot(axis-style: "school-book", size: (5, 5), x-min: 0, x-max: 100, x-tick-step: 20, x-minor-tick-step: 10, y-tick-step: 40, y-minor-tick-step: 10, x-label: [$unit("Celsius")$], y-min: 20, y-max: 200, y-label: [$unit("Fahrenheit")$], name: "at", {
          plot.add(((0, 0), ), style: (stroke: none)) 
        })
      })
    ]
  )
  #enum.item(2)[Wie kalt waren die kältesten Tage des Winters von #text(number-type: "old-style")[1709] in °C?
    #schreibpapier(height: 2.01cm)]

  + Bestimmen Sie die Körpertemperatur von Daniel Fahrenheit in °C zur Zeit seiner Eichung des zweiten Fixpunktes! Hatte er vielleicht Fieber zur Zeit seiner Erfindung?
    #schreibpapier(height: 2.01cm)
    
  + Welche Eichung scheint Ihnen geschickter gewählt zu sein? Weshalb?
    #schreibpapier()
  
#pagebreak()

= Einstieg in die Wärmelehre: Der Bimetallstreifen
Wahrscheinlich wissen Sie schon, dass sich ein festes Material beim Erwärmen ausdehnt. Sie untersuchen in diesem Experiment zwei unterschiedliche Metalle, die aneinander befestigt sind. Man nennt diesen einen Bimetallstreifen (_bi_ für _zwei_). Was geschieht nun, wenn man diesen Bimetallstreifen erhitzt?

== Experiment
_Lesen Sie, bevor Sie mit dem Experiment beginnen, alles durch. Während das Experiment läuft, können Sie unter Umständen die eine oder andere Frage bereits beantworten. Räumen Sie zum Schluss wieder so auf, wie Sie den Platz angetroffen haben und schalten Sie alle Geräte aus._

An ihrem Platz finden Sie zwei Bimetallstreifen. Mit dem Bunsenbrenner oder dem Heissluftfön werden Sie den Bimetallstreifen _vorsichtig_ erhitzen.

== Ablauf des Experiments

#grid(
  columns: (1fr, auto),
  align: (left, horizon),
  gutter: .5cm,
  [
    - Halten Sie den Bimetallstreifen mit der bereitgelegten Zange in der blauen Flamme des Bunsenbrenners oder erhitzen Sie ihn gleichmässig mit dem Heissluftfön. Was stellen Sie fest? Legen Sie nach dem Experiment den heissen Bimetallstreifen nicht auf den Tisch, sondern auf die hitzebeständige Platte. Das Gleiche gilt für den Bunsenbrenner!

    - Was geschieht mit dem Bimetallstreifen, wenn er wieder langsam auskühlt?
  ],
  [#image("../bilder/exp-bimetall.jpg", width: 5cm)]
)
#schreibpapier(height: 1.21cm)

== Erklärung

Wie erklären Sie sich das beobachtete Phänomen? Schreiben Sie Ihre Vermutungen auf!
#schreibpapier()

#pagebreak()

== Anwendungen des Bimetallstreifens

_Lesen Sie den folgenden Text so, dass Sie die Anwendungen im zweiten Teil dieser Arbeit Ihren MitschülerInnen erklären können!_

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Sie haben gesehen, dass sich der Bimetallstreifen biegt, sobald er erwärmt oder gekühlt wird. Mit einer Skala versehen kann der Bimetallstreifen als Thermometer benutzt werden. Dazu wird der Bimetallstreifen durch ein übliches Thermometer geeicht. In _Bimetall-Thermometern_ ist der Bimetallstreifen in Form einer Spirale aufgewickelt (s. @thermometer)
  ],
  [
    #figure(
      image("../bilder/bimetall-thermometer.jpg", width: 3.5cm),
      caption: []
    )<thermometer>
  ]
)
#grid(
  columns: (auto, 1fr),
  gutter: .5cm,
  [
    #figure(
      image("../bilder/regelkreis.png", width: 5cm),
      caption: []
    )<regelkreis>
  ],
  [
    Der Bimetallstreifen findet auch in Regelkreisen Verwendung. So kann er zum Beispiel als Schalter in einem Thermostaten eingesetzt werden, d.h. er regelt die Temperatur eines Raumes. Ein solcher Schalter ist in @regelkreis gezeichnet. Solange die Temperatur unter (in diesem Fall) $qty("20", "Celsius")$ liegt, wird der Bimetallstreifen an den Kontakt gedrückt und damit ist der elektrische Stromkreis geschlossen. An diesem Stromkreis ist die Heizung angeschlossen. Steigt nun die Temperatur im Raum über $qty("20", "Celsius")$, so öffnet sich der Stromkreis zwischen Bimetallstreifen und Kontakt, wodurch die Heizung automatisch abgestellt wird.
  ]
)

= Aufgabe

#grid(
  columns: (1fr, auto),
  align: (left, horizon),
  gutter: .5cm,
  [
    Gegeben sind zwei $qty("1", "m")$ lange Metallstreifen. Der eine besteht aus Kupfer- und der andere aus Eisen-Blechs. Diese sind so miteinander verbunden, dass sie einen Abstand von $qty("5", "mm")$ aufweisen (s. @aufbau, Distanz #text(fill: green)[$d$]). Beide werden nun um $qty("100", "Celsius")$ erhitzt. Wie biegt sich dieser Bimetallstreifen? Wie gross ist der Winkel #text(fill: blue)[$beta$], der durch den entstandenen Kreissektor eingeschlossen wird?

    Zur Lösung brauchen Sie folgendes: Erhitzt man einen Stab von $qty("1", "m")$ Länge um $qty("100", "Celsius")$, so wird er um #text(fill: green)[$Delta l$] länger. Experimente zeigen, dass für unsere Materialien gilt:
  ],
  [
    #figure(
      cetz.canvas({
        import cetz.draw: *

        set-style(stroke: .5pt)

        arc((135deg, 1.9), start: 135deg, stop: 45deg, radius: 1.9, stroke: 2pt + gray, name: "eisen")
        arc((135deg, 1.97), start: 135deg, stop: 45deg, radius: 1.97, stroke: 2pt + orange, name: "kupfer")
        line((135deg, 2), (0, 0), (45deg, 2))
        line((45deg, -0.1), (rel: (135deg, 1.9)), mark: (symbol: "|"), stroke: green, name: "r")
        line((43deg, 1.9), (rel: (45deg, 0.07)), mark: (symbol: "|", scale: 0.5), stroke: green, name: "d")
        cetz.angle.angle((0, 0), (45deg, 1), (135deg, 1), stroke: blue, radius: 0.7, label: text(fill: blue, baseline: -0.02em)[$beta$])

        content("eisen.50%", text(fill: gray)[Eisen], anchor: "north", padding: 3pt)
        content("kupfer.50%", text(fill: orange)[Kupfer], anchor: "south", padding: 3pt)
        content("r", text(fill: green)[$r$], anchor: "east", padding: 3pt)
        content("d", text(fill: green)[$d$], anchor: "north", padding: 3pt)
      }),
      caption: []
    )<aufbau>
  ]
)

$ #text(fill:green)[$Delta l_"Kupfer"$] = qty("1.6", "mm")" " #text(fill:green)[$Delta l_"Eisen"$] = qty("1.2", "mm")$
#schreibpapier()

#pagebreak()

= Einstieg in die Wärmelehre: Erwärmen eines Festkörpers
Wahrscheinlich wissen Sie schon, was ein festes Material macht, wenn man es erwärmt. An diesem Posten lernen Sie mit dem bereitstehenden Experiment Genaueres darüber.

== Experiment

_Lesen Sie, bevor Sie mit dem Experiment beginnen, alles durch. Während das Experiment läuft, können Sie unter Umständen die eine oder andere Frage bereits beantworten. Räumen Sie zum Schluss wieder so auf, wie Sie den Platz angetroffen haben und schalten Sie alle Geräte aus._

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Vor Ihnen liegt ein Rohr aus Stahl. Da das Rohr schon längere Zeit da liegt, hat es Zimmertemperatur. Sie sollen nun herausfinden, was das Rohr macht, wenn Sie es langsam erwärmen. Dazu lassen Sie heisses Wasser hindurch fliessen. Tipp: Es dauert eine Weile, bis es wirklich heiss kommt.
  ],
  [#image("../bilder/exp-festkörper.jpg", width: 8cm)]
)

=== Ablauf des Experiments

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    - Am rechten Rand des Rohres sehen Sie einen Zeiger. Dieser bewegt sich über die Skala, sobald sich das Rohr erwärmt. Ein Skalenteil entspricht einer Längenänderung von $qty("0.02", "mm")$. Stellen Sie den Zeiger von Hand bei Zimmertemperatur auf den Wert 0. Messen Sie die Stablänge bei Zimmertemperatur. Diese Stablänge bezeichnen wir als #text(fill: green)[$l_0$]. Tragen Sie den Wert unter _Auswertung_ ein.
    
    - Lassen Sie nun heisses Wasser durch das Rohr fliessen. Halten Sie das Thermometer in das ausfliessende Wasser. Dieses zeigt Ihnen die Wassertemperatur an. Schliessen Sie den Hahnen erst, wenn sowohl Temperaturanzeige als auch Distanzanzeige einen konstanten Wert annehmen. Bestimmen Sie die Längenänderung #text(fill: green)[$Delta l$]. Tragen Sie die Messergebnisse unter Auswertung in die Tabelle ein. Wurde der Stab kürzer oder länger?
  ],
  [#image("../bilder/exp-festkörper-skala.jpg", width: 5.5cm)]
)

- Bestimmen Sie zum Schluss, um wie viele Prozent der Stab etwa pro °C länger geworden ist und notieren Sie sich das Ergebnis auch wieder unter _Auswertung_.

#pagebreak()

== Auswertung

#grid(
  columns: (2fr, 1fr, 2.5fr),
  inset: (y: 1em),
  [Stablänge bei Zimmertemperatur: ], [$#text(fill: green)[$l_0$]=$#h(3cm)], [m],
  [Zimmertemperatur: ], [$theta.alt_"ZT" = $], [°C]
)

_Bemerkung: Temperaturen in Grad Celsius °C werden in der Physik mit dem griechischen Buchstaben Theta geschrieben._

#set table(
  fill: (_, y) => if y< 1 { haupt-farbe.transparentize(80%) },
  stroke: (_, y) => (
      x: none,
      top: if y == 0 { 1pt } else { if y == 1 { 0.5pt } else { 0pt }},
      bottom: 1pt,
  ),
)

#table(
  columns: (1fr, 2fr, 2fr, 1fr),
  align: center,
  [], [Temperatur $theta.alt$ in °C], [$Delta theta.alt$ in °C ($Delta theta.alt = theta.alt-theta.alt_"ZT"$)], [#text(fill: green)[$Delta l$] in m],
  [1\. Messung], [$theta.alt_"ZT" = #h(1cm)$ °C], [$qty("0", "Celsius")$], [$qty("0", "m")$], 
  [2\. Messung], [], [], []
)

Prozentuale Längenänderung pro °C zwischen 1. und 2. Messung:
#schreibpapier(height: 1.21cm)

== Fragen
- Aus dem Experiment finden Sie, dass für die Längenänderung eines Festkörpers gilt:

  $#text(fill: green)[$Delta l$]= #text(fill: blue)[$alpha$] #text(fill: green)[$l_0$] Delta theta.alt$

  In Worte: Die Längenzunahme ist proportional zur Temperaturzunahme (Temperaturzunahme um $qty("4", "Celsius")$ ergibt Längenzunahme um $2 #text(fill: green)[$Delta l$]$ im Vergleich zu Temperaturzunahme um $qty("2", "Celsius")$.)

  #text(fill: blue)[$alpha$] nennt man den Längenausdehnungskoeffizienten, der materialabhängig ist.

  Die neue Länge des Stabes beträgt somit (Formeln von oben einsetzen und vereinfachen):
  $#text(fill: green)[$l$]=#text(fill: green)[$l_0$]+#text(fill: green)[$Delta l$]=$
  
  Bestimmen Sie die Einheit von #text(fill: blue)[$alpha$]: $[alpha] =$

  Bestimmen Sie aus Ihren Messungen den Wert von #text(fill: blue)[$alpha$] für Stahl:

  $#text(fill: blue)[$alpha$]=$
  
- Die Quai-Brücke in Zürich hat eine Länge von $qty("125", "m")$ und besteht aus Beton. Die jahreszeitlichen Temperaturschwankungen, welchen sie ausgesetzt ist, betragen $qty("30", "Celsius")$. Der Längenausdehnungskoeffizient für Beton beträgt $qty("12e-6", "per Celsius")$.
  + Um wie viel schwankt ihre Länge innerhalb eines Jahres?
  + Wie wird diesem Problem baulich Rechnung getragen?
  #schreibpapier(height: 4.01cm)
- Was zeichnet einen Festkörper aus im Gegensatz zu einem Gas und einer Flüssigkeit?

#pagebreak()

= Einstieg in die Wärmelehre: Erwärmen einer Flüssigkeit
Wahrscheinlich wissen Sie schon, was mit einer Flüssigkeit geschieht, wenn man sie erwärmt. An diesem Posten lernen Sie mit dem bereitstehenden Experiment Genaueres darüber.

== Experiment
_Lesen Sie, bevor Sie mit dem Experiment beginnen, alles durch. Während das Experiment läuft, können Sie unter Umständen die eine oder andere Frage bereits beantworten. Räumen Sie zum Schluss wieder so auf, wie Sie den Platz angetroffen haben und schalten Sie alle Geräte aus._

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    An ihrem Platz finden Sie ein Gefäss, das sich nach oben zu einem Röhrchen verengt und mit Wasser gefüllt ist (s. erste Abb.). Mit dem bereitliegenden Stift können Sie den jeweiligen Stand der Flüssigkeit im Röhrchen markieren. Da die Flüssigkeit schon längere Zeit im Zimmer steht, können Sie den jetzigen Stand als denjenigen bei Zimmertemperatur festhalten (Marke 1).
  ],
  [
    #image("../bilder/exp-flüssigkeit-nahaufnahme.jpg", width: 2cm)
  ]
)

=== Ablauf des Experiments

#grid(
  columns: (1fr, auto),
  gutter: 0.5cm,
  [
    - Zeichnen Sie sorgfältig Marke 1 ein. Lesen Sie an einem Thermometer die Zimmertemperatur ab und tragen Sie diese auf der Rückseite unter _Auswertung_ bei $theta_"ZT"$ ein.
    
    - Füllen Sie das Thermosgefäss mit lauwarmem Leitungswasser auf.
    
    - Lassen Sie die Flasche nun in das Wasserbad tauchen. Beobachten Sie, was das Wasser in der Flasche beim Erwärmen macht. Warten Sie (!), bis die Flüssigkeit in der Flasche nicht mehr steigt, d.h. keine Volumenänderung mehr erfährt, und setzen Sie eine weitere Marke (Marke 2) ans Röhrchen. Notieren Sie die genaue Temperatur in der Tabelle unter _Auswertung_.
  ],
  [
    #image("../bilder/exp-flüssigkeit.jpg", width: 7cm)
  ]
)

- Ihre Messung ist nun beendet. Bestimmen Sie jetzt die Volumenänderung $Delta V$ von Marke 1 zu Marke 2, indem Sie die Höhenzunahme zwischen diesen beiden Marken und die Röhrchenquerschnittsfläche bestimmen. Bestimmen Sie noch, um wie viel die oberste Marke unter dem Ende des Röhrchens liegt (s. Frage 2).

- Bestimmen Sie zum Schluss, um wie viele Prozent das Volumen des Wassers pro °C zugenommen hat und notieren Sie sich das Ergebnis auch wieder unter _Auswertung_.

#pagebreak()

== Auswertung

#grid(
  columns: (2.8fr, 1fr, 3.2fr),
  inset: (y: 1em),
  [Volumen des Wassers in der Flasche: ], [$V_0 = 0.30$#h(3cm)], [$ell$ (Liter)],
  [Zimmertemperatur: ], [$theta.alt_"ZT" = $], [°C]
)

_Bemerkung: Temperaturen in Grad Celsius °C werden in der Physik mit dem griechischen Buchstaben Theta geschrieben._

#set table(
  fill: (_, y) => if y< 1 { haupt-farbe.transparentize(80%) },
  stroke: (_, y) => (
      x: none,
      top: if y == 0 { 1pt } else { if y == 1 { 0.5pt } else { 0pt }},
      bottom: 1pt,
  ),
)

#table(
  columns: (1fr, 2fr, 2fr, 1fr),
  align: center,
  [], [Temperatur $theta.alt$ in °C], text(fill: green)[$Delta h$], [$Delta V$ in $ell$],
  [1\. Marke], [$theta.alt_"ZT" = #h(1cm)$ °C], [$qty("0", "mm")$], [$0" "ell$], 
  [2\. Marke], [], [], []
)
#grid(
  columns: (4fr, 1fr, 1fr),
  inset: (y: 1em),
  [Temperaturzunahme $Delta theta.alt$ zwischen der 1. und der 2. Marke: ], [$Delta theta.alt=#h(2cm)$], [°C],
  [Volumenzunahme des Wassers zwischen den beiden Marken: ], [$Delta V=$], [$ell$#v(1em)],
  [Daraus resultierende prozentuale Volumenzunahme pro °C:], text(fill: white)[$Delta ell$], []
)

== Fragen
- Aus dem Experiment finden Sie, dass für die Volumenänderung eines Festkörpers gilt:

  $Delta V=#text(fill: red)[$gamma$] V_0 Delta theta.alt$

  In Worte: Die Volumenzunahme ist proportional zur Temperaturzunahme (Temperaturzunahme um $qty("4", "Celsius")$ ergibt Volumenzunahme um $2 Delta V$ im Vergleich zu Temperaturzunahme um nur $qty("2", "Celsius")$.) Die Volumenzunahme $Delta V$ ist proportional zum ursprünglichen Volumen $V_0$.

  #text(fill: red)[$gamma$] nennt man den Volumenausdehnungskoeffizienten, der materialabhängig ist.

  Das neue Volumen der Flüssigkeit beträgt somit (Formeln von oben einsetzen und vereinfachen):
    
  $V=V_0+Delta V=$

  Bestimmen Sie die Einheit von #text(fill: red)[$gamma$]: $[gamma] =$

  Bestimmen Sie aus Ihren Messungen den Wert von #text(fill: red)[$gamma$] für Wasser:

  $#text(fill: red)[$gamma$]=$

- Auf welche Temperatur hätten Sie das Wasser in der Flasche erwärmen müssen, damit es zum Röhrchen heraussteigt? Kann diese Temperatur erreicht werden?
  #schreibpapier(height: 3.21cm)

- Was zeichnet eine Flüssigkeit aus im Gegensatz zu einem Gas und einem festen Stoff (Festkörper)?

#pagebreak()

= Einstieg in die Wärmelehre: Erwärmen eines Gases
Wahrscheinlich wissen Sie schon, was mit einer gasförmigen Substanz geschieht, wenn man sie erwärmt. An diesem Posten lernen Sie mit dem bereitstehenden Experiment Genaueres darüber.

== Experiment
_Lesen Sie, bevor Sie mit dem Experiment beginnen, alles durch. Während das Experiment läuft, können Sie unter Umständen die eine oder andere Frage bereits beantworten. Räumen Sie zum Schluss wieder so auf, wie Sie den Platz angetroffen haben und schalten Sie alle Geräte aus._

#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    An ihrem Platz finden Sie eine Flasche, in welcher sich ein Thermometer befindet, und einen Ballon. Stülpen Sie den Ballon vorsichtig über die Flasche (s. Abb.). Achten Sie darauf, dass dabei im Ballon möglichst keine Luft vorhanden ist.

    Vorsicht: Beschädigen Sie das Thermometer dabei nicht!

    Die (gasförmige) Luft in der Flasche hat Zimmertemperatur, da die Flasche schon längere Zeit im Raum ist. Sie sollen nun herausfinden, was die Luft macht, wenn Sie sie langsam erwärmen.
  ],
  [
    #image("../bilder/exp-gas.jpg", width: 5cm)
  ]
)

=== Ablauf des Experiments

- Tragen hinten auf dem Blatt unter _Auswertung_ das Volumen $V_0$ und die Zimmertemperatur der Luft in der Flasche ein. Zum Volumen: Vermutlich kennen Sie den Volumeninhalt einer solchen Flasche.

- Heizen Sie die Flasche nun sorgfältig mit dem Fön auf. Achten Sie darauf, dass Sie den Ballon dabei nicht beschädigen (Flasche im unteren Bereich heizen!). Aufgrund der Erwärmung dehnt sich die Luft in der Flasche aus. Der Ballon wird «aufstehen», bis er mit etwas Luft gefüllt ist. Stellen Sie das Heizen gerade _dann_ ein, bevor der Ballon mit viel Druck weiter aufgeblasen werden müsste. Denn nun würden Sie mit zusätzlichem Heizen nur noch den Druck in der Flasche erhöhen, der aber noch lange nicht ausreicht, um den Ballon aufzublasen. Lesen Sie die Temperatur der Luft in der Flasche ab und halten Sie diese in der Tabelle unter _Auswertung_ fest (2. Messung).

- Schreiben Sie auch in die Tabelle, um wie viel das Luftvolumen bei der 2. Messung zugenommen hat. Dazu müssen Sie das Luftvolumen im Ballon bestimmen. Dieses können Sie herausfinden, indem Sie den Ballon mit Wasser füllen und die Wassermenge in den bereitstehenden Massbecher leeren.

- Bestimmen Sie zum Schluss, um wie viel Prozent das Volumen der Luft pro °C zugenommen hat und notieren Sie sich das Ergebnis auch wieder unter _Auswertung_.

#pagebreak()

== Auswertung

#grid(
  columns: (1.5fr, 1fr, 3.2fr),
  inset: (y: 1em),
  [Volumen der Flasche: ], [$V_0 =$#h(4cm)], [$ell$ (Liter)],
  [Zimmertemperatur: ], [$theta.alt_"ZT" = $], [°C]
)

_Bemerkung: Temperaturen in Grad Celsius °C werden in der Physik mit dem griechischen Buchstaben Theta geschrieben._

#set table(
  fill: (_, y) => if y< 1 { haupt-farbe.transparentize(80%) },
  stroke: (_, y) => (
      x: none,
      top: if y == 0 { 1pt } else { if y == 1 { 0.5pt } else { 0pt }},
      bottom: 1pt,
  ),
)

#table(
  columns: (1fr, 2fr, 2fr, 1fr),
  align: center,
  [], [Temperatur $theta.alt$ in °C], [$Delta theta.alt$ in °C ($Delta theta.alt = theta.alt-theta.alt_"ZT"$)], [$Delta V$ in $ell$],
  [1\. Messung], [$theta.alt_"ZT" = #h(1cm)$ °C], [$qty("0", "Celsius")$], [$0" "ell$], 
  [2\. Messung], [], [], []
)

#grid(
  columns: (4fr, 1fr, 1fr),
  inset: (y: 1em),
  [Temperaturzunahme $Delta theta.alt$ zwischen den beiden Messungen: ], [$Delta theta.alt=#h(2cm)$], [°C],
  [Volumenzunahme der Luft zwischen den Messungen: ], [$Delta V=$], [$ell$#v(1em)],
  [Daraus resultierende prozentuale Volumenzunahme pro °C:]
)

== Fragen
- Aus dem Experiment finden Sie, dass für die Volumenänderung eines Festkörpers gilt:

  $Delta V=#text(fill: red)[$gamma$] V_0 Delta theta.alt$

  In Worte: Die Volumenzunahme ist proportional zur Temperaturzunahme (Temperaturzunahme um $qty("4", "Celsius")$ ergibt Volumenzunahme um $2 Delta V$ im Vergleich zu Temperaturzunahme um nur $qty("2", "Celsius")$.) Die Volumenzunahme $Delta V$ ist proportional zum ursprünglichen Volumen $V_0$.

  #text(fill: red)[$gamma$] nennt man den Volumenausdehnungskoeffizienten, der materialabhängig ist.

  Das neue Volumen des Gases beträgt somit (Formeln von oben einsetzen und vereinfachen):

  $V=V_0+Delta V=$

  Bestimmen Sie die Einheit von #text(fill: red)[$gamma$]: $[gamma] =$

  Bestimmen Sie aus Ihren Messungen den Wert von #text(fill: red)[$gamma$] für Luft (vorwiegend Stickstoff):

  $#text(fill: red)[$gamma$]=$

- In einem mit Helium der Temperatur $qty("-13", "Celsius")$ gefüllten Ballon befindet sich ein Luftvolumen von \unit{0.006 cubic meter}. Der Ballon wird nun durch Sonneneinstrahlung auf $qty("33", "Celsius")$ aufgeheizt. Der Volumenausdehnungskoeffizient von Helium beträgt $#text(fill: red)[$gamma$] = qty("3.66e-3", "per Celsius")$.
  + Drücken Sie das Volumen in Litern aus.
  + Wie gross ist das Volumen der Luft nach Aufheizung des Ballons durch die Sonne?
  #schreibpapier(height: 2.41cm)
- Was zeichnet ein Gas aus im Gegensatz zu einem festen Stoff (Festkörper) und einer Flüssigkeit?
