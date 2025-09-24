public class BuggyClass {
    public static void updateAccounts(List<Account> accts) {
        // ❌ Bad practice: SOQL + DML inside loop
        for (Account a : accts) {
            Account acc = [SELECT Id, Name FROM Account WHERE Id = :a.Id];
            acc.Name = 'Updated ' + acc.Name;
            update acc;
        }
    }
}
