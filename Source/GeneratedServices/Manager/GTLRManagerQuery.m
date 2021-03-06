// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Deployment Manager API (manager/v1beta2)
// Description:
//   The Deployment Manager API allows users to declaratively configure, deploy
//   and run complex solutions on the Google Cloud Platform.
// Documentation:
//   https://developers.google.com/deployment-manager/

#import "GTLRManagerQuery.h"

#import "GTLRManagerObjects.h"

@implementation GTLRManagerQuery

@dynamic fields;

@end

@implementation GTLRManagerQuery_DeploymentsDelete

@dynamic deploymentName, projectId, region;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                            region:(NSString *)region
                    deploymentName:(NSString *)deploymentName {
  NSArray *pathParams = @[
    @"deploymentName", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"{projectId}/regions/{region}/deployments/{deploymentName}";
  GTLRManagerQuery_DeploymentsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.region = region;
  query.deploymentName = deploymentName;
  query.loggingName = @"manager.deployments.delete";
  return query;
}

@end

@implementation GTLRManagerQuery_DeploymentsGet

@dynamic deploymentName, projectId, region;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                            region:(NSString *)region
                    deploymentName:(NSString *)deploymentName {
  NSArray *pathParams = @[
    @"deploymentName", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"{projectId}/regions/{region}/deployments/{deploymentName}";
  GTLRManagerQuery_DeploymentsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.region = region;
  query.deploymentName = deploymentName;
  query.expectedObjectClass = [GTLRManager_Deployment class];
  query.loggingName = @"manager.deployments.get";
  return query;
}

@end

@implementation GTLRManagerQuery_DeploymentsInsert

@dynamic projectId, region;

+ (instancetype)queryWithObject:(GTLRManager_Deployment *)object
                      projectId:(NSString *)projectId
                         region:(NSString *)region {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"{projectId}/regions/{region}/deployments";
  GTLRManagerQuery_DeploymentsInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.region = region;
  query.expectedObjectClass = [GTLRManager_Deployment class];
  query.loggingName = @"manager.deployments.insert";
  return query;
}

@end

@implementation GTLRManagerQuery_DeploymentsList

@dynamic maxResults, pageToken, projectId, region;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                            region:(NSString *)region {
  NSArray *pathParams = @[
    @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"{projectId}/regions/{region}/deployments";
  GTLRManagerQuery_DeploymentsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.region = region;
  query.expectedObjectClass = [GTLRManager_DeploymentsListResponse class];
  query.loggingName = @"manager.deployments.list";
  return query;
}

@end

@implementation GTLRManagerQuery_TemplatesDelete

@dynamic projectId, templateName;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                      templateName:(NSString *)templateName {
  NSArray *pathParams = @[
    @"projectId", @"templateName"
  ];
  NSString *pathURITemplate = @"{projectId}/templates/{templateName}";
  GTLRManagerQuery_TemplatesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.templateName = templateName;
  query.loggingName = @"manager.templates.delete";
  return query;
}

@end

@implementation GTLRManagerQuery_TemplatesGet

@dynamic projectId, templateName;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                      templateName:(NSString *)templateName {
  NSArray *pathParams = @[
    @"projectId", @"templateName"
  ];
  NSString *pathURITemplate = @"{projectId}/templates/{templateName}";
  GTLRManagerQuery_TemplatesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.templateName = templateName;
  query.expectedObjectClass = [GTLRManager_Template class];
  query.loggingName = @"manager.templates.get";
  return query;
}

@end

@implementation GTLRManagerQuery_TemplatesInsert

@dynamic projectId;

+ (instancetype)queryWithObject:(GTLRManager_Template *)object
                      projectId:(NSString *)projectId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"projectId" ];
  NSString *pathURITemplate = @"{projectId}/templates";
  GTLRManagerQuery_TemplatesInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.expectedObjectClass = [GTLRManager_Template class];
  query.loggingName = @"manager.templates.insert";
  return query;
}

@end

@implementation GTLRManagerQuery_TemplatesList

@dynamic maxResults, pageToken, projectId;

+ (instancetype)queryWithProjectId:(NSString *)projectId {
  NSArray *pathParams = @[ @"projectId" ];
  NSString *pathURITemplate = @"{projectId}/templates";
  GTLRManagerQuery_TemplatesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.expectedObjectClass = [GTLRManager_TemplatesListResponse class];
  query.loggingName = @"manager.templates.list";
  return query;
}

@end
