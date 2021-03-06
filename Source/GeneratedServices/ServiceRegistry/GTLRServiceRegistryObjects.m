// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Cloud Service Registry API (serviceregistry/alpha)
// Description:
//   Manages service endpoints in Service Registry and provides integration with
//   DNS for service discovery and name resolution.
// Documentation:
//   https://developers.google.com/cloud-serviceregistry/

#import "GTLRServiceRegistryObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRServiceRegistry_Endpoint
//

@implementation GTLRServiceRegistry_Endpoint
@dynamic address, creationTimestamp, descriptionProperty, fingerprint,
         identifier, name, port, selfLink, state, visibility;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"identifier" : @"id"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceRegistry_EndpointEndpointVisibility
//

@implementation GTLRServiceRegistry_EndpointEndpointVisibility
@dynamic networks;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"networks" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceRegistry_EndpointsListResponse
//

@implementation GTLRServiceRegistry_EndpointsListResponse
@dynamic endpoints, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"endpoints" : [GTLRServiceRegistry_Endpoint class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"endpoints";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceRegistry_Operation
//

@implementation GTLRServiceRegistry_Operation
@dynamic clientOperationId, creationTimestamp, descriptionProperty, endTime,
         error, httpErrorMessage, httpErrorStatusCode, identifier, insertTime,
         kind, name, operationType, progress, region, selfLink, startTime,
         status, statusMessage, targetId, targetLink, user, warnings,
         zoneProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"identifier" : @"id",
    @"zoneProperty" : @"zone"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"warnings" : [GTLRServiceRegistry_OperationWarningsItem class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceRegistry_OperationError
//

@implementation GTLRServiceRegistry_OperationError
@dynamic errors;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"errors" : [GTLRServiceRegistry_OperationErrorErrorsItem class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceRegistry_OperationWarningsItem
//

@implementation GTLRServiceRegistry_OperationWarningsItem
@dynamic code, data, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"data" : [GTLRServiceRegistry_OperationWarningsItemDataItem class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceRegistry_OperationErrorErrorsItem
//

@implementation GTLRServiceRegistry_OperationErrorErrorsItem
@dynamic code, location, message;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceRegistry_OperationWarningsItemDataItem
//

@implementation GTLRServiceRegistry_OperationWarningsItemDataItem
@dynamic key, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceRegistry_OperationsListResponse
//

@implementation GTLRServiceRegistry_OperationsListResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRServiceRegistry_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end
