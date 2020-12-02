trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(Trigger.isInsert && Trigger.isBefore) {
        //AccountTriggerHandler.CreateAccounts(Trigger.new);
    }
    if(Trigger.isBefore) {
        AccountTriggerHandler.tempMethod(Trigger.new, Trigger.old);
        System.debug('test1');
    }
}