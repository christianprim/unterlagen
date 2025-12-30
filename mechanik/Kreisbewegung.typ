#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/unify:0.7.1": num,qty,unit
#import "../layout.typ": *

#let gebiet = "Mechanik"
#let titel = "Beobachtungsauftrag zur Kreisbewegung"
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#set list(marker: (text(fill: haupt-farbe)[#sym.checkmark], [‣], [–]))
#set enum(numbering: "a)")

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Beobachtungsauftrag zur Kreisbewegung

== Ziel
- Sie führen selbständig eine Beobachtung durch und halten sie fest.
- Anschliessend vergleichen Sie diese mit zwei Beobachtungen, die Hans-Jakob und Rosemarie gemacht haben, und lernen so zwei wichtige Grössen für die Beschreibung einer Kreisbewegung kennen.

== Ihre Aufgabe
+ Beobachten Sie die Spielfiguren auf dem Plattenspieler. Wie würden Sie ihre Bewegung mit Worten und in ganzen Sätzen beschreiben?
  #schreibpapier(height: 1.21cm)

+ Wenn Sie die Geschwindigkeit der Spielfiguren miteinander vergleichen, was stellen Sie fest?
  #schreibpapier(height: 1.21cm)

+ Jetzt haben Sie sich eine eigene Meinung gebildet. Vergleichen Sie diese nun mit den Beobachtungen von Hans-Jakob und Rosemarie:
  
  #set list(marker: ([‣]))
  - _Hans-Jakobs Beobachtung:_ Die Spielfigur, die weit aussen steht, legt in derselben Zeit eine grössere Strecke zurück, als die Spielfigur weit innen. Also ist die _Bahngeschwindigkeit_ #text(fill: blue)[$v$] der äusseren Spielfigur grösser. 
  - _Rosemaries Beobachtung:_ Beide Spielfiguren befinden auf demselben Plattenteller. Sowohl die innere als auch die äussere Spielfigur brauchen für eine volle Umrundung dieselbe Zeit. Oder anders ausgedrückt: In gleichen Zeitabschnitten überstreichen beide denselben Drehwinkel. Somit ist ihre _Winkelgeschwindigkeit_ #text(fill: purple)[$omega$] gleich gross.
  Beide Beobachtungen sind richtig! Welche Beobachtung entspricht Ihrer Beobachtung? Die von Hans-Jakob oder diejenige von Rosemarie?
  #schreibpapier(height: 1.21cm)

+ Welche der genannten Geschwindigkeiten hält ein Plattenspieler konstant?
  #schreibpapier(height: 1.21cm)

  Was bedeutet dies für die gespeicherte Information in den Tonrillen? Stellen Sie einen Vergleich zwischen einer Tonspur weit aussen und einer weit innen an!
  #schreibpapier(height: 1.21cm)

+ Winkelgeschwindigkeit und Bahngeschwindigkeit sind natürlich nicht unabhängig voneinander. Wie kann ich aus der Winkelgeschwindigkeit wohl auf die Bahngeschwindigkeit schliessen?
  #schreibpapier()
