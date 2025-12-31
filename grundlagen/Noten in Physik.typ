#import "../layout.typ": *

#let gebiet = "Grundlagen"
#let titel = "Noten in Physik"
#let haupt-farbe = haupt-farbe(gebiet: gebiet)

#show: arbeitsblatt.with(titel: titel, gebiet: gebiet, gebiet-farbe: haupt-farbe)

= Noten in Physik

== Prüfungen
Pro Semester werden so viele schriftliche Prüfungen durchgeführt, wie Physiklektionen pro Woche stattfinden. Der Stoff wird eine Woche zum Voraus bekanntgegeben. Es handelt sich normalerweise um den Stoff, der bis zur Prüfung behandelt wurde. Die Prüfungsnote errechnet sich streng mathematisch aus der erreichten Punktzahl, wobei auf die erste Nachkommastelle gerundet wird. Die Prüfungsnoten haben volles Notengewicht.

=== Nachprüfung
Wer schriftlich begründet eine Prüfung nicht schreiben kann, muss zur Nachprüfung erscheinen. Diese findet in der Lektion statt, in der die an der Prüfung abwesende Person wieder den Physikunterricht besucht.

== Unterrichtsnote
Es ist meine Pflicht, Ihnen auch eine Unterrichtsnote zu setzen. Diese beurteilt Ihre Mitarbeit während der Lektion und das Erledigen der Hausaufgaben. Ich werde zu diesem Zweck Ihr Aufgabenheft unangekündigt einsammeln (bzw. ein PDF-Auszug Ihrer elektronischen Notizen verlangen). Die Unterrichtsnote wirkt sich direkt auf Ihren Gesamtschnitt aus.

#align(center)[
  #box(width: 15cm)[
    #grid(
      columns: (1fr, 15fr),
      align: (center, left),
      row-gutter: 10pt,
      text(fill: haupt-farbe)[$+$], [Sie machen im Unterricht rege mit und lösen die Hausaufgaben. Diese müssen nicht zwingend korrekt gelöst sein.],
      text(fill: haupt-farbe)[$circle$], [Sie melden sich kaum im Unterricht und lösen die Hausaufgaben unregelmässig oder meist oberflächlich.],
      text(fill: haupt-farbe)[$-$], [Sie melden sich so zu sagen nie im Unterricht und haben selten die Hausaufgaben gelöst. Sie bekommen diese Bewertung auch, wenn Sie das Aufgabenheft nicht dabei haben und es deshalb nicht abgeben können.]
    )
  ]
]

Am Ende des Semesters werden die Bewertungen aller Kontrollen gemittelt und entsprechend dem Prüfungsschnitt angerechnet.

=== Beispiele

Wurden alle Kontrollen mit $+$ bewertet, bekommen Sie $+0.1$ auf Ihren Prüfungsschnitt dazu gezählt. Sollten Sie nur $-$ erhalten haben, wird von Ihrem Prüfungsschnitt 0.1 abgezogen. Bei lauter $circle$ bleibt Ihr Schnitt erhalten.

== Gesamtnote
#cbox(color: haupt-farbe)[$"Zeugnisnote" = "arithmetisches Mittel der schriftlichen Noten" + "Unterrichtsnote"$]

Es wird auf die nächstgelegene halbe Note gerundet. Sollte der Schnitt eine Nachkommastelle von .25 oder .75 aufweisen, wird im Normalfall aufgerundet.

