#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "@preview/zap:0.5.0"
#import "../layout.typ": *

#let gebiet = "Elektrizität"
#let titel = [Arbeit und Leistung]
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#emoji.pen], [‣], [–]))
#set enum(numbering: "a)1)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Arbeit und Leistung im elektrischen Stromkreis

== Was Sie bereits wissen
Sie kennen die Definition der elektrischen Arbeit aus der Elektrostatik:

$
#text(fill: aqua)[$W_"el"$]=#text(fill: blue)[$U$] q
$

Zudem wissen Sie, dass die elektrische Stromstärke der Ladung entspricht, die pro Zeiteinheit durch den Querschnitt eines Drahtes fliesst:

$
#text(fill: red)[$I$]=(Delta q)/(Delta t)
$

== Was Sie sich erarbeiten
- Ausgehend von den oben genannten Formeln leiten Sie selbständig die Formel für die Arbeit bei bewegten Ladungsträgern her.

  _Tipp: Lösen Sie die untere Gleichung nach der Grösse auf, die auch in der oberen vorkommt. Setzen Sie diese dann ein._
  #schreibpapier(height: 1.61cm)

  #place(dx: .5cm, dy: -.75cm)[$#text(fill: aqua)[$W_"el"$]=$]

- Wie ändert sich die verrichtete Arbeit, wenn Sie während einer längeren Zeit erfolgt, also $t$ zunimmt?
  #schreibpapier(height: 1.21cm)

  Deswegen haben wir die Leistung eingeführt. Sie ist zur Erinnerung wie folgt definiert: $P=#text(fill: aqua)[$W$]/t$. 

- Wie gross ist demnach die Leistung im elektrischen Stromkreis? Von welchen Grössen hängt sie ab? Geben Sie auch die Einheit an.

  #h(.5cm)$P=$ #h(10cm) $[P]=$#h(2cm)

== Sie wenden die gewonnene Formel gleich an

+ Wie gross ist die Stromstärke durch eine Glühlampe mit der Aufschrift "$qty("230", "V")$/$qty("100", "Watt")$"?
  #schreibpapier(height: 1.21cm)

+ Die Einheit kWh (auf der Stromrechnung) steht für die physikalische Grösse Energie und nicht für die Leistung. Rechnen Sie 1~kWh in J (Joule) um.
  #schreibpapier(height: 1.21cm)

== Meine Erwartung an Sie
Ich erwarte, dass Sie selbständig in 10 Minuten die Leistung herleiten können. Ich bin mir sicher, dass Sie das auch schaffen werden. Als Herausforderung für die ganz Schnellen habe ich zwei Anwendungsaufgaben aufgeführt. Es wäre schön, wenn Sie in dieser Zeit die erste bearbeiten könnten. Sie erbringen eine hervorragende Leistung, wenn Sie das ganze Blatt schaffen.
