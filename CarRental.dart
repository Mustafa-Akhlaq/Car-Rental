import 'dart:io';

void main() {
  print('Welcome to THMS CAR RENTAL SERVICES');
  print('Which kind of car do you want to rent?');
  print('1. Sedan');
  print('2. Hedge Back');
  print('3. 4 by 4');
  stdout.write('Choose an option (1, 2, or 3): ');
  String? choice = stdin.readLineSync();

  List<String> carOptions = [];
  if (choice == '1') {
    carOptions = [
      'Toyota Corolla Altis Grande X CVT-i 1.8 Black Interior',
      'Hyundai Sonata 2.5',
      'Honda Civic 2023 Tyre R'
    ];
  } else if (choice == '2') {
    carOptions = [
      'Suzuki Swift 2024',
      'Suzuki Cultus 2024',
      'KIA Picanto 2024'
    ];
  } else if (choice == '3') {
    carOptions = [
      'Toyota Hilux Revo V Automatic 2.8 2021',
      'Toyota Surf SSR-X 2.7 2005',
      'Toyota Prado TX Limited 2.7 2019'
    ];
  } else {
    print('Invalid Option.');
    exit(1);
  }

  print('\nAvailable options:');
  for (int i = 0; i < carOptions.length; i++) {
    print('${i + 1}. ${carOptions[i]}');
  }
  stdout.write('Choose a car (1, 2, or 3): ');
  String? carChoice = stdin.readLineSync();
  int carIndex = int.tryParse(carChoice ?? '') ?? -1;
  if (carIndex < 1 || carIndex > carOptions.length) {
    print('Invalid Option.');
    exit(1);
  }

  String selectedCar = carOptions[carIndex - 1];
  print('You selected: $selectedCar');
  print('This car will be charged for 40000 Rupees for 24 hours.');
  stdout.write('Do you accept? (yes/no): ');
  String? accept = stdin.readLineSync();

  if (accept?.toLowerCase() != 'yes') {
    print('You did not accept our offer.');
    exit(1);
  }

  stdout.write('Enter your full name: ');
  String? fullName = stdin.readLineSync();
  stdout.write('Enter your CNIC: ');
  String? cnic = stdin.readLineSync();
  stdout.write('Enter your phone number: ');
  String? phoneNumber = stdin.readLineSync();

  DateTime now = DateTime.now();
  String receipt = '''
========================================
         THMS RENTAL SERVICES
========================================
Date: ${now.toLocal()}
Time: ${now.toLocal().hour}:${now.toLocal().minute}
----------------------------------------
Name: $fullName
CNIC: $cnic
Phone: $phoneNumber
Car: $selectedCar
----------------------------------------
Amount: 40000 Rupees
----------------------------------------
Note: Any damage caused to the vehicle
      will be inspected and fined
      accordingly.
========================================
''';

  print(receipt);
}
