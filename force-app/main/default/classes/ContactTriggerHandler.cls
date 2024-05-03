public with sharing class ContactTriggerHandler {
    public void onBeforeInsert(List<Contact> newContacts) {
        for (Contact acc : newContacts) {
            acc.LastName = acc.LastName + ' - new';
        }
    }
}