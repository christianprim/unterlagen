#import "../layout.typ": *

#let gebiet = "Elektrizität"
#let titel = [Der Transformator]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")
#set math.equation(numbering: "(1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Der Transformator
In der Technik werden oft unterschiedliche Spannungen gebraucht. Übliche Spannungsquellen liefern aber nur eine ganz bestimmte Spannung (Eine einfache Batterie liefert zum Beispiel eine Spannung von $qty("1.5", "Volt")$, das Stromnetz in der Schweiz eine effektive Spannung von $qty("230", "Volt")$, etc.).

Wie wird in den elektrischen Geräten die erwünschte Spannung "erzeugt"?

Eine Methode, mit der Sie die Spannung über einen Verbraucher senken können, sollten Sie bereits kennen. Sie brauchen nur einen genügend grossen Widerstand vor dem Verbraucher anzulegen.

#grid(
  columns: (1fr, auto),
  gutter: .5em,
  [
    - Überlegen Sie, weshalb diese Methode nicht gerade sinnvoll ist.
      #schreibpapier(height: 2.81cm)
  ], 
  [
    #circuit({
      import zap: *
      import cetz.draw: *
      
      node("u1u", (0, 1))
      node("u1o", (0, 1.5))
      node("u2u", (4, 1))
      node("u2o", (4, 1.5))
      
      content((-.5, 1.25), text(fill: blue)[$U_1$])
      content((4.5, 1.25), text(fill: blue)[$U_2$])
      resistor("r", (0, 2.5), (4, 2.5), label: [$R$])
      wire("u1o", "r.in")
      wire("r.out", "u2o")
      wire("u1u", (rel: (0, -1)), (rel: (4, 0)), "u2u")
    })
  ]
)

Ein Transformator weist keine solchen Schwächen auf. Mit ihm ist es sogar möglich, die Spannung auf der Verbraucherseite zu erhöhen. Daher ist er für die Technik unentbehrlich!

== Aufbau des Transformators

#set list(marker: (text(fill: haupt-farbe)[#sym.compose], [‣], [–]))
#grid(
  columns: (1fr, auto),
  gutter: .5cm,
  [
    Jeder Transformator ist aus zwei Spulen aufgebaut:

    - die felderzeugende Spule ① mit $N_1$ Windungen
    - die Induktionsspule ② mit $N_2$ Windungen.

    Sie sind über einen gemeinsamen Eisenkern verbunden.
  ],
  [
    #circuit({
      import zap: *
      import cetz.draw: *
      
      set-style(stroke: .5pt)

      node("u1u", (0, 1))
      node("u1o", (0, 1.5))
      node("u2u", (3.5, 1))
      node("u2o", (3.5, 1.5))
      compound-path({
        rect((.5, 0), (3, 2.5))
        rect((1, .5), (rel: (1.5, 1.5)))
      }, fill: haupt-farbe, fill-rule: "even-odd")
      swire("u1o", (.5, 2), axis: "y")
      swire("u1u", (.5, .5), axis: "y")
      swire("u2o", (3, 2), axis: "y")
      swire("u2u", (3, .5), axis: "y")

      for y in range(10){
        line((1, .5 + y*.15), (rel: (-.5, .15)), stroke: 1pt)
      }

      for y in range(15){
        line((3, .5 + y/10), (rel: (-.5, .1)), stroke: 1pt)
      }

      content((-.5, 1.25), text(fill: blue)[$U_1$])
      content((4, 1.25), text(fill: blue)[$U_2$])
      content((.75, .25), [①])
      content((2.75,.25), [②])
      content((1.75, 2.25), [Eisenkern])
    })
  ]
)

== Funktionsweise des Transformators
Die felderzeugende Spule ① ist an eine Wechselspannungsquelle der Spannung $#text(fill: blue)[$U_1$] (t)$ angeschlossen. Diese bewirkt in der Spule ① einen Wechselstrom $#text(fill: red)[$I_1$] (t)$, der ein sich ständig änderndes magnetisches Feld $#text(fill: aqua)[$Delta B$] / (Delta t)$ im Eisenkern hervorruft. Dieser induziert in der Induktionsspule ② eine Spannung $#text(fill: blue)[$U_2$] (t)$.

== Berechnung der induzierten Spannung bei einem idealen Transformator

"Idealer Trafo" bedeutet, dass $#text(fill: aqua)[$Delta B$] / (Delta t)$ (bzw. $(Delta italic(Phi)) / (Delta t)$) in beiden Spulen gleich ist! Es treten somit keinerlei Verluste auf!

Selbstinduktion: $#text(fill: blue)[$U_"ind,1"$]=-N (Delta italic(Phi)) / (Delta t)$ die selbstinduzierte Spannung ist beim unbelasteten Trafo dem Betrag nach gleich gross wie die angelegte Spannung $#text(fill: blue)[$U_1$] (t)$!

$
#text(fill: blue)[$U_1$] (t)=+N_1 (Delta italic(Phi)) / (Delta t)
$

In der zweiten Spule wird somit die Spannung $#text(fill: blue)[$U_2$] (t)=-N_2 (Delta italic(Phi)) / (Delta t) attach(=, t: "mit 1")- N_2 / N_1 #text(fill: blue)[$U_1$] (t)$ induziert.

Die induzierte Spannung ist somit nur von den Windungszahlen der Spulen abhängig!

== Testaufgaben
+ Heute sind oft Halogenlampen in Gebrauch. Sie brauchen eine Spannung von $qty("12", "Volt")$. Das Netz liefert eine Spannung von $qty("230", "Volt")$. Berechnen Sie die Windungszahlen der 2.~Spule, wenn die 1.~Spule 1000~Windungen aufweist.

+ Funktioniert ein Trafo mit Gleichstrom, wenn z.B. eine Batterie als Quelle dient? 
