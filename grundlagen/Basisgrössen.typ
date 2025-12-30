#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Grundlagen"
#let titel = "Physikalische Grössen und ihre Einheiten"
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Physikalische Grössen

== Basisgrössen

#set table(
  fill: (_, y) => if y<=1 { haupt-farbe.transparentize(80%) },
  stroke: (_, y) => (
      x: none,
      top: if y == 0 { 1pt } else { if y == 2 { 0.5pt } else { 0pt }},
      bottom: 1pt,
  ),
)

#table(
  columns: 5,
  align: (center, center, center, center, left),
  table.header(
    table.cell(colspan: 2, align: left)[*Basisgrösse*], table.vline(stroke: 0.5pt), table.cell(colspan: 3, align: left)[*Basiseinheit*],
    [Name], [Symbol], [Name], [Symbol], [Beschreibung]
  ),
  [Zeit], [$t$], [Sekunde], [s], [Die Sekunde *s*, ist die SI-Basiseinheit der Zeit],
  [Länge], [$l$], [Meter], [m], [Das Meter, Symbol *m*, ist die SI-Basiseinheit der Länge],
  [Masse], [$m$], [Kilogramm], [kg], [Das Kilogramm, Symbol *kg* ist die SI-Basiseinheit der Masse],
  [el. Stromstärke], [$I$], [Ampere], [A], [Das Ampere, Symbol *A*, ist die SI-Basiseinheit der elektrischen Stromstärke],
  [Temperatur], [$T$], [Kelvin], [K], [Das Kelvin, Symbol *K*, ist die SI-Basiseinheit der Temperatur],
  [Stoffmenge], [$n$], [Mol], [mol], [Die Stoffmenge, Symbol *mol*, eines Systems ist ein Mass für die Anzahl spezifizierter elementarer Einzelteile],
  [Lichtstärke], [$I_v$], [Candela], [cd], [Das Candela, Symbol *cd*, ist die SI-Basiseinheit der Lichtstärke in einer vorgegebener Richtung]
)

Seit #text(number-type: "old-style")[2019] werden die Basiseinheiten nicht mehr nach einem materiellen Körper (Urmeter, Urkilogramm, etc.) definiert, sondern nach 7 Naturkonstanten. Damit können die Basiseinheiten immer wieder neu hergeleitet werden.

== Abgeleitete Grössen

Neben den Basisgrössen gibt es noch eine Vielzahl weiterer physikalischer Grössen, wie z. B. den Flächeninhalt, das Volumen, die Dichte, die Geschwindigkeit, die Beschleunigung, die Ladung oder den elektrischen Widerstand. Sie werden durch physikalische Gesetzmässigkeiten aus den Basisgrössen abgeleitet.

Dadurch ist die Einheit einer abgeleiteten Grösse klar und man muss sich nicht erneut auf einen Standard einigen.

=== Beispiel: Geschwindigkeit

Die Geschwindigkeit $v$ ist eine abgeleitete Grösse. Sie setzt sich aus Länge und Zeit zusammen:

$ "Geschwindigkeit" = "Länge" / "Zeit" "oder: " v=l/t $

Da die Einheit von Länge und Zeit definiert ist, ergibt sich daraus die SI-Basiseinheit für die Geschwindigkeit:

$ [v]=1 "m"/"s"=qty("1", "m/s") $

Nebst der Basiseinheit können weitere SI-Einheiten für die Geschwindigkeit angegeben werden. Aus dem Alltag ist die Einheit *Kilometer pro Stunde* bekannt. Es gilt folgende Umrechnung:

$ 1 "m"/"s" = 3.6 "km"/"h" =qty("3.6", "km/h") $
