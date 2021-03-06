// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   YouTube Analytics API (youtubeAnalytics/v1)
// Description:
//   Retrieves your YouTube Analytics reports.
// Documentation:
//   http://developers.google.com/youtube/analytics/

#import "GTLRYouTubeAnalyticsObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_BatchReport
//

@implementation GTLRYouTubeAnalytics_BatchReport
@dynamic identifier, kind, outputs, reportId, timeSpan, timeUpdated;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"outputs" : [GTLRYouTubeAnalytics_BatchReportOutputsItem class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_BatchReportOutputsItem
//

@implementation GTLRYouTubeAnalytics_BatchReportOutputsItem
@dynamic downloadUrl, format, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_BatchReportTimeSpan
//

@implementation GTLRYouTubeAnalytics_BatchReportTimeSpan
@dynamic endTime, startTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_BatchReportDefinition
//

@implementation GTLRYouTubeAnalytics_BatchReportDefinition
@dynamic identifier, kind, name, status, type;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_BatchReportDefinitionList
//

@implementation GTLRYouTubeAnalytics_BatchReportDefinitionList
@dynamic items, kind;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRYouTubeAnalytics_BatchReportDefinition class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_BatchReportList
//

@implementation GTLRYouTubeAnalytics_BatchReportList
@dynamic items, kind;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRYouTubeAnalytics_BatchReport class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_Group
//

@implementation GTLRYouTubeAnalytics_Group
@dynamic contentDetails, ETag, identifier, kind, snippet;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"ETag" : @"etag",
    @"identifier" : @"id"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_GroupContentDetails
//

@implementation GTLRYouTubeAnalytics_GroupContentDetails
@dynamic itemCount, itemType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_GroupSnippet
//

@implementation GTLRYouTubeAnalytics_GroupSnippet
@dynamic publishedAt, title;
@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_GroupItem
//

@implementation GTLRYouTubeAnalytics_GroupItem
@dynamic ETag, groupId, identifier, kind, resource;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"ETag" : @"etag",
    @"identifier" : @"id"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_GroupItemResource
//

@implementation GTLRYouTubeAnalytics_GroupItemResource
@dynamic identifier, kind;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_GroupItemListResponse
//

@implementation GTLRYouTubeAnalytics_GroupItemListResponse
@dynamic ETag, items, kind;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRYouTubeAnalytics_GroupItem class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_GroupListResponse
//

@implementation GTLRYouTubeAnalytics_GroupListResponse
@dynamic ETag, items, kind, nextPageToken;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRYouTubeAnalytics_Group class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_ResultTable
//

@implementation GTLRYouTubeAnalytics_ResultTable
@dynamic columnHeaders, kind, rows;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"columnHeaders" : [GTLRYouTubeAnalytics_ResultTableColumnHeadersItem class],
    @"rows" : [NSObject class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRYouTubeAnalytics_ResultTableColumnHeadersItem
//

@implementation GTLRYouTubeAnalytics_ResultTableColumnHeadersItem
@dynamic columnType, dataType, name;
@end
