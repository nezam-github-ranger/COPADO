public class AccountCaseController {
    public List<Case> caseList {get;set;}
    public AccountCaseController(){
        caseList = new List<Case>();
        Id caseId = ApexPages.currentPage().getParameters().get('Id');
        if(caseId != Null || caseId != ''){
            caseList = [SELECT Id, AccountId, Reason, Origin FROM Case WHERE Id =: caseId];
        }
        System.debug('caseList ==> ' + caseList); 
        System.debug('caseList'); 
    }
}