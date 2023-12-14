/**
* This test class, FlowControlLoopsCollectionsTest, is used to test the methods in the FlowControlLoopsCollections class.
* It contains individual test methods for each method in the class, validating their functionality and expected outcomes.
* The test methods utilize the Salesforce Assert class to assert and validate the results.
* The main purpose of this test class is to ensure the accuracy and correctness of the methods in the FlowControlLoopsCollections class.
*/

@IsTest
public with sharing class FlowControlLoopsCollectionsTest {
    @IsTest
    static void testHelloWorld() {
        String result = FlowControlLoopsCollections.helloWorld(10, 5);
        Assert.areEqual('Hello World!', result, 'Incorrect result for x > y');

        result = FlowControlLoopsCollections.helloWorld(5, 5);
        Assert.isNull(result, 'Incorrect result for x = y');

        result = FlowControlLoopsCollections.helloWorld(5, 10);
        Assert.isNull(result, 'Incorrect result for x < y');
    }

    @IsTest
    static void testVotingEligibility() {
        Boolean result = FlowControlLoopsCollections.votingEligibility(18);
        Assert.isTrue(result, 'Incorrect result for age >= 18');

        result = FlowControlLoopsCollections.votingEligibility(17);
        Assert.isFalse(result, 'Incorrect result for age < 18');
    }

    @IsTest
    static void testFindMax() {
        Integer result = FlowControlLoopsCollections.findMax(10, 5);
        Assert.areEqual(10, result, 'Incorrect result for num1 > num2');

        result = FlowControlLoopsCollections.findMax(5, 10);
        Assert.areEqual(10, result, 'Incorrect result for num2 > num1');

        result = FlowControlLoopsCollections.findMax(5, 5);
        Assert.areEqual(5, result, 'Incorrect result for num1 = num2');

        result = FlowControlLoopsCollections.findMax(null, 5);
        Assert.areEqual(null, result, 'Incorrect result when num1 is null');

        result = FlowControlLoopsCollections.findMax(5, null);
        Assert.areEqual(null, result, 'Incorrect result when num2 is null');

        result = FlowControlLoopsCollections.findMax(null, null);
        Assert.areEqual(null, result, 'Incorrect result when both numbers are null');
    }

    @IsTest
    static void testCheckNumber() {
        String result = FlowControlLoopsCollections.checkNumber(5);
        Assert.areEqual('Positive', result, 'Incorrect result for positive number');

        result = FlowControlLoopsCollections.checkNumber(-5);
        Assert.areEqual('Negative', result, 'Incorrect result for negative number');

        result = FlowControlLoopsCollections.checkNumber(0);
        Assert.areEqual('Zero', result, 'Incorrect result for zero');

        result = FlowControlLoopsCollections.checkNumber(null);
        Assert.areEqual(null, result, 'Incorrect result for null number');
    }

    @IsTest
    static void testCheckEvenOdd() {
        String result = FlowControlLoopsCollections.checkEvenOdd(2);
        Assert.areEqual('Even', result, 'Incorrect result for even number');

        result = FlowControlLoopsCollections.checkEvenOdd(5);
        Assert.areEqual('Odd', result, 'Incorrect result for odd number');

        result = FlowControlLoopsCollections.checkEvenOdd(null);
        Assert.areEqual(null, result, 'Incorrect result for null number');
    }

    @IsTest
    static void testCheckString() {
        String result = FlowControlLoopsCollections.checkString('');
        Assert.areEqual('Empty', result, 'Incorrect result for empty string');

        result = FlowControlLoopsCollections.checkString(null);
        Assert.areEqual('Null', result, 'Incorrect result for null string');

        result = FlowControlLoopsCollections.checkString('Hello');
        Assert.areEqual('Contains Text', result, 'Incorrect result for string with text');
    }


    @IsTest
    static void testDetermineGrade() {
        String result = FlowControlLoopsCollections.determineGrade(95);
        Assert.areEqual('A', result, 'Incorrect grade for score 95');

        result = FlowControlLoopsCollections.determineGrade(85);
        Assert.areEqual('B', result, 'Incorrect grade for score 85');

        result = FlowControlLoopsCollections.determineGrade(75);
        Assert.areEqual('C', result, 'Incorrect grade for score 75');

        result = FlowControlLoopsCollections.determineGrade(65);
        Assert.areEqual('D', result, 'Incorrect grade for score 65');

        result = FlowControlLoopsCollections.determineGrade(55);
        Assert.areEqual('F', result, 'Incorrect grade for score 55');
    }

    @IsTest
    static void testSumUpToLimit() {
        Integer result = FlowControlLoopsCollections.sumUpToLimit(5);
        Assert.areEqual(15, result, 'Incorrect sum for limit 5');
    
        result = FlowControlLoopsCollections.sumUpToLimit(10);
        Assert.areEqual(55, result, 'Incorrect sum for limit 10');
    
        result = FlowControlLoopsCollections.sumUpToLimit(0);
        Assert.areEqual(0, result, 'Incorrect sum for limit 0');
    
        result = FlowControlLoopsCollections.sumUpToLimit(-5);
        Assert.areEqual(0, result, 'Incorrect sum for negative limit');
    }
    
    @IsTest
    static void testReturnHelloWorld() {
        String result = FlowControlLoopsCollections.returnHelloWorld();
        Assert.areEqual('Hello World!; Hello World!; Hello World!; ', result, 'Incorrect result for returnHelloWorld');
    }

    @IsTest
    static void testRepeatString() {
        String result = FlowControlLoopsCollections.repeatString('Hello World!', 3);
        Assert.areEqual('Hello World!; Hello World!; Hello World!', result, 'Incorrect result for repeatString with count 3');
        
        result = FlowControlLoopsCollections.repeatString('Supra', 5);
        Assert.areEqual('Supra; Supra; Supra; Supra; Supra', result, 'Incorrect result for repeatString with count 5');
        
        result = FlowControlLoopsCollections.repeatString('ABC', 2);
        Assert.areEqual('ABC; ABC', result, 'Incorrect result for repeatString with count 2');
    }

    @IsTest
    static void testCreateAndPopulateList() {
        List<Integer> result = FlowControlLoopsCollections.createAndPopulateList();
        List<Integer> expectedList = new List<Integer>{1, 2, 3};
        Assert.areEqual(expectedList, result, 'Incorrect list created and populated');
    }

    @IsTest
    static void testCreateAndRemoveFromList() {
        List<Integer> result = FlowControlLoopsCollections.createAndRemoveFromList();
        List<Integer> expectedList = new List<Integer>{1, 2, 4, 5};
        Assert.areEqual(expectedList, result, 'Incorrect list created and updated');
    }

    @IsTest
    static void testCreateIntegerList() {
        List<Integer> result = FlowControlLoopsCollections.createIntegerList(5);
        List<Integer> expectedList = new List<Integer>{1, 2, 3, 4, 5};
        Assert.areEqual(expectedList, result, 'Incorrect list created');
        Assert.areEqual(5, expectedList.size(), 'List has too many values.');

        result = FlowControlLoopsCollections.createIntegerList(9);
        expectedList = new List<Integer>{1, 2, 3, 4, 5, 6, 7, 8, 9};
        Assert.areEqual(expectedList, result, 'Incorrect list created');
        Assert.areEqual(9, expectedList.size(), 'List has too many values.');
    }

    @IsTest
    static void testCreateStringSet() {
        List<String> inputList = new List<String>{'a', 'b', 'a', 'c'};
        Set<String> result = FlowControlLoopsCollections.createStringSet(inputList);
        Set<String> expectedSet = new Set<String>{'a', 'b', 'c'};
        Assert.areEqual(expectedSet, result, 'Incorrect set created');

        inputList = new List<String>{'Abby', 'Bobby', 'Abby', 'Cathy'};
        result = FlowControlLoopsCollections.createStringSet(inputList);
        expectedSet = new Set<String>{'Abby', 'Bobby', 'Cathy'};
        Assert.areEqual(expectedSet, result, 'Incorrect set created');
    }

    @IsTest
    static void testSumPositiveIntegers() {
        Integer result = FlowControlLoopsCollections.sumPositiveIntegers();
        Integer expectedSum = 12;
        Assert.areEqual(expectedSum, result, 'Incorrect sum of positive integers');
    }

    @IsTest
    static void testFindWordInList() {
        List<String> words = new List<String>{'Hello', 'World', 'Goodbye'};

        Integer result1 = FlowControlLoopsCollections.findWordInList('World', words);
        Assert.areEqual(1, result1, 'Incorrect position of word "World"');

        Integer result2 = FlowControlLoopsCollections.findWordInList('Hello', words);
        Assert.areEqual(0, result2, 'Incorrect position of word "Hello"');

        Integer result3 = FlowControlLoopsCollections.findWordInList('Goodbye', words);
        Assert.areEqual(2, result3, 'Incorrect position of word "Goodbye"');

        Integer result4 = FlowControlLoopsCollections.findWordInList('Hi', words);
        Assert.areEqual(-1, result4, 'Incorrect position of word "Hi"');
    }

    @IsTest
    static void testCountMoney() {
        Decimal result = FlowControlLoopsCollections.countMoney();
        Assert.areEqual(48.02, result, 'Incorrect total value');
    }

    @IsTest
    static void testAddItemsToMap() {
        Map<String, Integer> result = FlowControlLoopsCollections.addItemsToMap();

        // Verify the map size
        Assert.areEqual(5, result.size(), 'Incorrect map size');

        // Verify the key-value pairs
        Assert.areEqual(5, result.get('Apples'), 'Incorrect quantity for Apples');
        Assert.areEqual(10, result.get('Oranges'), 'Incorrect quantity for Oranges');
        Assert.areEqual(15, result.get('Bananas'), 'Incorrect quantity for Bananas');
        Assert.areEqual(20, result.get('Pears'), 'Incorrect quantity for Pears');
        Assert.areEqual(25, result.get('Grapes'), 'Incorrect quantity for Grapes');
    }

    @IsTest
    static void testGetSalary() {
        Integer result = FlowControlLoopsCollections.getSalary('John Doe');
        Assert.areEqual(50000, result, 'Incorrect salary for John Doe');

        result = FlowControlLoopsCollections.getSalary('Jane Smith');
        Assert.areEqual(60000, result, 'Incorrect salary for Jane Smith');

        result = FlowControlLoopsCollections.getSalary('Sam Brown');
        Assert.areEqual(55000, result, 'Incorrect salary for Sam Brown');

        result = FlowControlLoopsCollections.getSalary('Alice Johnson');
        Assert.areEqual(65000, result, 'Incorrect salary for Alice Johnson');

        result = FlowControlLoopsCollections.getSalary('Invalid Employee');
        Assert.isNull(result, 'Expected null for invalid employee');
    }

    @IsTest
    static void testGetHighPaidEmployees() {
        List<String> result = FlowControlLoopsCollections.getHighPaidEmployees();
        Assert.areEqual(new List<String>{'Jane Smith', 'Alice Johnson'}, result, 'Incorrect high paid employees');
    }

}