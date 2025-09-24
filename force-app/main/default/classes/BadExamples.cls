public class BadExamples {

    // ❌ SOQL inside a loop
    public static void soqlInLoop(List<String> names) {
        for (String n : names) {
            Account a = [SELECT Id, Name FROM Account WHERE Name = :n]; // SOQL in loop
            System.debug(a);
        }
    }

    // ❌ DML inside a loop
    public static void dmlInLoop(List<Account> accts) {
        for (Account a : accts) {
            a.Description = 'Updated in loop';
            update a; // DML in loop
        }
    }

    // ❌ Hardcoded ID
    public static void hardcodedId() {
        Account a = [SELECT Id FROM Account WHERE Id = '001XXXXXXXXXXXX']; // Hardcoded ID
        System.debug(a);
    }

    // ❌ Empty catch block
    public static void emptyCatchBlock() {
        try {
            Integer x = 10 / 0;
        } catch (Exception e) {
            // Empty catch block
        }
    }
}
