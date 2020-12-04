/**
 * @author thauska
 */
@isTest
public with sharing class ProjectControllerTest {

  @isTest
  public static void givenValidProjectInfoWhenCallServiceThenCreateNewProject () {

    Test.startTest();

    AgileProject agileProject = new AgileProject();

    agileProject.externalId = '1213321221';
    agileProject.name = 'Thay Project';
    agileProject.startDate = Date.today();
    agileProject.endDate = Date.today().addDays(10);

    Project__c createdProject =  ProjectController.create(agileProject);

    Test.stopTest();

    System.assert( createdProject != null );
    System.assert( createdProject.Id != null );
    System.assertEquals(agileProject.externalId, createdProject.ExternalId__c);

  }

  @isTest
  public static void givenInvalidProjectIdWhenCallFindProjectServiceThenReturnError() {

    RestContext.request = new RestRequest();
    RestContext.response = new RestResponse();

    Test.startTest();

    ProjectController.getProjects();

    Test.stopTest();

    Integer responseCode = RestContext.response.statuscode;
    String responsePayload = String.valueOf(RestContext.response.responseBody);

    System.assertEquals(400, responseCode);

  }

}
