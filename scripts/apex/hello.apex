/*// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);
*/

// Set Class Reprsents a collection of unique elements with no duplicate values.

// Set Fruit
// add Apple
// add Orange
// add Lemon
// add Banana
// add Apple
// add Apple
// add Banana

// Set output [Apple, Orange, Lemon, Banana]
Set<String> fruits = new Set<String>();
fruits.add( 'Apple');
fruits.add( 'Orange');
fruits.add( 'Lemon');
fruits.add( 'Banana');
fruits.add( 'Lemon');
fruits.add( 'Lemon');
fruits.add( 'Lemon');

System.debug(fruits);
System.debug(fruits.size());

for (String fruit : fruits){
    System.debug(fruit);
}

Set<String> thingsToEat = new Set<String>{'Rice', 'Chicken'};
System.debug(thingsToEat);
Boolean hasApple = thingsToEat.contains('Apple');
System.debug('Does thingsToEat have apples?' + hasApple);
thingsToEat.addAll(fruits);
hasApple = thingsToEat.contains('Apple');
System.debug('Does thingsToEat have apples?' + hasApple);
thingsToEat.clear();
System.debug(thingsToEat.isEmpty() + ' size: ' thingsToEat.size());









//Map Class Represents a collection of key-value pairs where each key is unique. It allows efficent storage, retrieval,...
//and manipulation of data on the keys.
//Real life application from Warren Walters
//DEC 24, 2023

Map<String, Integer> dayOfWeekMap = new Map<String,Integer>();

dayOfWeekMap.put('Mon', 1);
dayOfWeekMap.put('Tue', 2);
dayOfWeekMap.put('Wed', 3);
dayOfWeekMap.put('Thu', 4);
dayOfWeekMap.put('Fri', 5);
dayOfWeekMap.put('Sat', 6);
dayOfWeekMap.put('Sun', 7);

String dayOfWeekString = 'Mon';
Integer dayOfWeekNumber = dayOfWeekMap.get(dayOfWeekString);
system.debug('Day of the week number: ' + dayOfWeekNumber);

for (String day : dayOfWeekMap.keySet()){
    System.debug('Day of the week: ' + day);
    System.debug('day of the week number :' + dayOfWeekMap.get(day));
}



//Map Class Represents a collection of key-value pairs where each key is unique. It allows efficent storage, retrieval,...
//and manipulation of data on the keys.
//Real life application from Warren Walters
//DEC 24, 2023

Map<Id,Account> accountMap = new Map<Id, Account>();

List<Account> accounts = [SELECT Id, Name FROM Account LIMIT 10];

for(Account acc : accounts){
    accountMap.put(acc.Id, acc);
}

System.debug('Account map: ' + accountMap);
Id accId = '0018b00002Z5ERCAA3';                        //Name=University of Arizona}, 0018b00002Z5ERCAA3=Account:

if (accountMap.containsKey(accId)){ 
    Account singleAcc = accountMap.get(accId);
    System.debug(singleAcc);
}

for (Account accInMap : accountMap.values()){
    System.debug('Account inside of the map  ' + accInMap);
}