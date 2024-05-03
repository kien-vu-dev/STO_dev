@isTest
private class AccountTriggerHandlerTest {
    @isTest
    static void myUnitTest() {
        List<Account> accts = new List<Account>();
        // Create a test account
        Account testAccount = new Account(Name = 'Test Account');
        accts.add(testAccount);
        insert accts;
        
        // Retrieve the updated account
        Account updatedAccount = [SELECT Name FROM Account WHERE Id = :testAccount.Id];

        // Perform assertions to validate the account name update
        System.assertEquals('Test Account - new', updatedAccount.Name, 'Account name not updated as expected');
    }
}