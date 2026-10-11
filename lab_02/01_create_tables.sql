Table Pacjent {
  id_pacjent int [primary key, increment]
  Imie varchar [not null]
  Nazwisko varchar [not null]
  Pesel varchar [not null]
  Numer_Tel varchar(15)
}

Table Lekarz {
  id_lekarz int [primary key, increment]
  Imie varchar [not null]
  Nazwisko varchar [not null]
  Specjalizacja varchar [not null]
  id_specjalizacja int [ref: > Specjalizacja.id_specjalizacja]
}

Table Specjalizacja {
  id_specjalizacja int [primary key, increment]
  Nazwa_Spec varchar
}

Table Wizyta {
  id_wizyta int [primary key]
  id_pacjent int [ref: > Pacjent.id_pacjent]
  id_lekarz int [ref: > Lekarz.id_lekarz]

  data_wizyty date [not null]
  godzina_wizyty time [not null]
  status_wizyty varchar [not null]
}

Records Lekarz(id_lekarz, id_specjalizacja, Imie, Nazwisko) {
  0, 0, 'Dr. Marek', 'Kolemba'
  1, 0, 'Dr. Justyna', 'Szalemba'
}

Records Specjalizacja(id_specjalizacja, Nazwa_Spec) {
  0, 'Dermatolog'
}

Records Pacjent(id_pacjent, Imie, Nazwisko) {
  0, 'Alice', 'Kolemba'
  1, 'Bob', 'Mariusz'
  2, 'Candice', 'Jaskolski'
  3, 'David', 'Saczewska'
}

Records Wizyta(id_wizyta, id_pacjent, id_lekarz, data_wizyty, godzina_wizyty, status_wizyty) {
  0, 0, 0, '2026-01-01', '15:00', 'Aktywna'
}