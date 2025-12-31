#import "@preview/meander:0.3.0"
#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = "Ebbe und Flut"
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: ([#emoji.pen], [‣], [–]))

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Ebbe und Flut

Mit diesem Blatt werden Sie erarbeiten, wie Ebbe und Flut zustande kommen. Einige Aufgaben lösen Sie in Zweier- oder Dreiergruppen, andere werde ich Ihnen vorlösen. So kommen Sie dem Phänomen _Ebbe und Flut_ auf die Spur!

#let erde-mond = cetz.canvas({
  import cetz.draw: *

  circle((0, 0), radius: 2cm, name: "Erde", fill: haupt-farbe.transparentize(80%), stroke: haupt-farbe)
  circle((), radius: .5pt)
  circle((0, 6.5), radius: 0.545, fill: gray.lighten(50%), stroke: gray, name: "Mond")
  circle((), radius: .5pt)
  line((0,0), (0,-5), stroke: none) // Platz fürs Zeichnen
  circle("Erde.north", radius: 0.5pt)
  circle("Erde.south", radius: 0.5pt)
  circle("Erde.west", radius: 0.5pt)
  circle("Erde.east", radius: 0.5pt)
  circle("Erde.north-west", radius: 0.5pt)
  circle("Erde.north-east", radius: 0.5pt)
  circle("Erde.south-west", radius: 0.5pt)
  circle("Erde.south-east", radius: 0.5pt)
  
  content("Erde", [N], anchor: "west", padding: 2pt) 
  content((3,-0), [Erde])
  content((3,6.5), [Mond])
  content("Erde.north", [①~~~~~], anchor: "south", padding: 1pt)
  content("Erde.south", [②~~~~~], anchor: "north", padding: 1pt)
  content("Erde.west", [③], anchor: "east", padding: 1.5pt)
  content("Erde.east", [③], anchor: "west", padding: 1.5pt)
  content("Erde.north-west", [④], anchor: "south-east")
  content("Erde.north-east", [④], anchor: "south-west")
  content("Erde.south-west", [⑤], anchor: "north-east")
  content("Erde.south-east", [⑤], anchor: "north-west")
})
#meander.reflow({
  import meander: *
  //opt.debug.pre-thread()
  //opt.debug.post-thread()
  
  placed(top + right, erde-mond, boundary: contour.margin(1cm))
  container()
  
  content[
Betrachten Sie die Abbildung nebenan. Erde und Mond bewegen sich um den gemeinsamen Schwerpunkt.

- Zeichnen Sie die Rotationsrichtung der Erde und die Drehrichtung des Mondes um die Erde ein (Sicht auf den Nordpol).

- Bestimmen Sie den Abstand des gemeinsamen Schwerpunktes vom Erdmittelpunkt und zeichnen Sie den Schwerpunkt $S$ ein (die Erde selbst sei massstabsgetreu, der Abstand zum Mond jedoch nicht).

- Zu den Kräften: Wir betrachten einen Probekörper der Masse $qty("1", "kg")$ in den Punkten ① und ② auf der Erdoberfläche. Welche Kräfte wirken auf ihn ein? Zählen Sie diese auf:

  1. #v(2em)
  2. #v(2em)
  3. #v(2em)
  
#line(stroke: haupt-farbe)

- Zeichnen Sie die Kräfte, die auf den Probekörper in den Punkten ① und ② einwirken, massstabsgetreu ein (Massstab: $qty("1e-5", "Newton") hat(=) qty("1", "cm")$). Berechnen Sie dazu die Kräfte! 

_Wir lassen die Kraft weg, welche die Erde auf den Probekörper gravitativ ausübt ($=arrow(F)_(G", Erde")$), weil sie überall gleich gross ist und immer zum Erdmittelpunkt zeigt._

- Wie gross sind die resultierenden Kräfte $arrow(F)_"res"$ (ohne $arrow(F)_(G", Erde")$) in ① und ② inklusive Richtung? Zeichen Sie diese ebenfalls ein (Massstab: $qty("1e-6", "Newton") hat(=) qty("1", "cm")$).

- Die gleichen Überlegungen zu den Punkten ③ bis ⑤ führen zu den entsprechenden $arrow(F)_"res"$. Ich stelle Ihnen an dieser Stelle die Resultate vor.

- Sie kennen nun die resultierenden Kräfte in den Punkten ① bis ⑤. Was geschieht mit beweglichen Teilchen, wie z. B. Wasser, auf der Erde? Zeichnen Sie dies mit dem Bleistift in die Abbildung oben ein.

#line(stroke: haupt-farbe)

- Auch die Sonne hat einen Einfluss auf Ebbe und Flut, doch haben wir diesen bisher weggelassen. Untersucht man diesen Einfluss, so sieht man, dass dieser etwa dreimal schwächer ist als der Einfluss des Mondes. Der Sonnenstand kann somit die Flut höchstens verstärken bzw. abschwächen (Springflut, Nippflut). Halten Sie fest, wann eine Nipp- bzw. eine Springflut entsteht.

- Berücksichtigt man die Erdrotation, entstehen weitere interessante Effekte. Notieren Sie die wichtigen Konsequenzen in Ihr Heft.
  ]
})
