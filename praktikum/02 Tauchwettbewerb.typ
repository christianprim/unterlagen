#import "../layout.typ": *

#let gebiet = "Grundlagen"
#let titel = [Tauchwettbewerb]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#set enum(numbering: "1.")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Tauchwettbewerb

== Aufgabe
Ziel ist es, den Zylindern (mit der eingegossenen Figuren) einen exakt bemessenen Quader aus Isolationsmaterial anzuhängen. Dabei soll das Zusatzvolumen so berechnet werden, dass die Figur möglichst langsam sinkt und am längsten braucht, um den Boden des Gefässes zu erreichen.

Sieger ist, wer zuletzt unten ankommt. Disqualifiziert wird, wer gar nicht erst zu sinken beginnt.

== Vorbereitung
#grid(
  columns: (1fr, auto),
  align:horizon,
  gutter: .5cm,
  [
    + *Masse und Volumen bestimmen:* Ermitteln Sie die Masse und das Volumen des Zylinders. Da alle Figuren einzigartig sind, unterscheiden sie sich leicht voneinander.

    + *Materialwerte erfassen:* Bestimmen Sie die Masse der beiden Nägel, die für die magnetische Befestigung des Quaders benötigt werden. Zudem müssen Sie die Dichte des Isolationsmaterials kennen.
    
    + *Berechnung und Zuschnitt:* Berechnen Sie basierend auf diesen Daten das ideale Volumen des Isolationsmaterials für Ihre Figur. Schneiden Sie anschliessend einen entsprechenden Quader mit dem bereitgelegten Werkzeug aus.
    
    + *Montage:* Bringen Sie, wie im Bild dargestellt, oben und unten einen Nagel im Isolationsmaterial an.
  ],
  [
    #cetz.canvas({
      import cetz.draw: *

      set-style(stroke: (thickness: .5pt, join: "round"))

      content((-.2, 0), [#image("../bilder/pikachu.svg", width: 2cm)])

      // Magnet
      on-layer(1, circle((0, 2), radius: (.3, .3/5), fill: gray.transparentize(80%), stroke: gray))
      on-layer(2, merge-path(fill: gradient.linear(gray.lighten(80%), white, gray.lighten(80%), gray.lighten(50%)), stroke: gray, {
        line((-.3, 2), (-.3, 1.5))
        arc((), start: -180deg, stop: 0deg, radius: (.3, .3/5))
        line((), (.3, 2))
        arc((), start: 0deg, stop: -180deg, radius: (.3, .3/5))
      }))
      
      // Zylinder
      on-layer(3, circle((0, 2), radius: (1.5, .3), fill: aqua.transparentize(80%), stroke: aqua))
      merge-path(fill: gradient.linear(aqua.transparentize(60%), white, aqua.transparentize(60%), aqua.transparentize(20%)), stroke: aqua, {
        line((-1.5, 2), (-1.5, -2))
        arc((), start: -180deg, stop: 0deg, radius: (1.5, .3))
        line((), (1.5, 2))
        arc((), start: 0deg, stop: -180deg, radius: (1.5, .3))
      })
      arc((1.5, -2), start: 0deg, stop: 180deg, radius: (1.5, .3), stroke: aqua.lighten(50%))

      

      // Quader
      on-layer(3, rect((-1.7, 1.8), (rel: (3, 1)), fill: orange.transparentize(50%)))
      on-layer(3, line((1.3, 1.8), (1.7, 2.2), (1.7, 3.2), (1.3, 2.8), close: true, fill: orange.transparentize(20%)))
      on-layer(2, line((1.7, 2.2), (-1.3, 2.2), (-1.7, 1.8)))
      line((-1.3, 2.2), (-1.3, 3.2))
      line((-1.7, 2.8), (1.3, 2.8), (1.7, 3.2), (-1.3, 3.2), close: true, fill: orange.transparentize(30%))

      // Nägel
      on-layer(1, circle((0, 2), radius: (.2, .04), fill: black))
      on-layer(1, line((0, 2), (0, 2.35), stroke: 2pt))
      on-layer(1, circle((0, 3), radius: (.2, .04), fill: black))
      on-layer(1, line((0, 3), (0, 2.65), stroke: 2pt))
    })
  ]
)
_Wichtig:_ Es finden vor dem Wettbewerb keine Testläufe statt!

== Ablauf des Wettbewerbs
Da nur drei Gefässe zur Verfügung stehen, wird der Wettbewerb in zwei Gruppen durchgeführt.

- Füllen Sie alle Messbecher exakt gleich hoch auf.
- Drücken Sie den #text(fill: red)[roten] Knopf und befestigen Sie Ihren Zylinder am Elektromagneten.
- Legen Sie den Deckel mit der Figur vorsichtig auf den Messbecher. _Achtung:_ Vermeiden Sie abrupte Bewegungen, da die magnetische Haltekraft begrenzt ist.
- Sobald alle drei Figuren in den Messbechern positioniert sind, wird der grosse #text(fill: red)[rote] Startknopf gedrückt und die Zeitmessung gestartet.

Die Bestzeit jeder Gruppe wird festgehalten. Die nachfolgenden Gruppen bereiten sich analog vor und führen ihren Durchgang durch.

*Siegerehrung:* Es gewinnt entweder die Figur mit der absolut längsten Sinkzeit oder die Gruppensieger treten in einem Finaldurchgang gegeneinander an.

== Protokoll
Dokumentieren Sie Ihr Vorgehen, die gemessenen Werte, das berechnete Volumen sowie den Ablauf des Wettbewerbs. Wer den Wettbewerb gewinnt, erhält automatisch ein "++"!

#showbox("Einstieg in die Berechnung des Quadervolumens", haupt-farbe)[
  Die Dichte des Isolationsmaterials $rho_I$ und die Zieldichte ($rho_W$ von Wasser), sowie Masse $m_Z$ und Volumen $V_Z$ des Zylinders seien durch Messung bekannt. Gesucht ist das Quadervolumen $V_Q$: 
  #v(-0.2em)
  $ m = m_Q + m_Z => rho_W dot V= rho_I dot V_Q + m_Z attach(=>, t: "mit "V = V_Q + V_Z) rho_W (V_Q + V_Z) = rho_I V_Q +m_Z $
  #v(-0.5em)
  Weitere Schritte: nach $V_Q$ auflösen.
]
