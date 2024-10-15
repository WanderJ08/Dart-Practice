enum DiaSemana {
  Lunes,
  Martes,
  Miercoles,
  Jueves,
  Viernes,
  Sabado,
  Domingo,
}

extension EvenCheck on int {
  bool isEvenNumber() {
    return this % 2 == 0;
  }
}

void main() {
  DiaSemana today = DiaSemana.Miercoles;
  switch (today) {
    case DiaSemana.Lunes:
      print('Today is Monday');
      break;
    case DiaSemana.Martes:
      print('Today is Tuesday');
      break;
    case DiaSemana.Miercoles:
      print('Today is Wednesday');
      break;
    case DiaSemana.Jueves:
      print('Today is Thursday');
      break;
    case DiaSemana.Viernes:
      print('Today is Friday');
      break;
    case DiaSemana.Sabado:
      print('Today is Saturday');
      break;
    case DiaSemana.Domingo:
      print('Today is Sunday');
      break;
  }

  int userNumber = 5;
  if (userNumber.isEvenNumber()) {
    print('$userNumber is even');
  } else {
    print('$userNumber is odd');
  }
}
