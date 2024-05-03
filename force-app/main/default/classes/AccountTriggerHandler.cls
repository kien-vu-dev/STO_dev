public with sharing class AccountTriggerHandler {
    public void onBeforeInsert(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            acc.Name = acc.Name + ' - new';
        }
    }
}