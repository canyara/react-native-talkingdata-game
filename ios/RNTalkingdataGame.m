
#import "RNTalkingdataGame.h"
#import "TalkingDataGA.h"

@implementation RNTalkingdataGame

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(onStart:(NSString *)appId withChannelId:(NSString *)channelId withLog:(BOOL)bLog)
{
    [TalkingDataGA setVerboseLogDisabled:!bLog];
    [TalkingDataGA onStart:appId withChannelId:channelId];
}

RCT_EXPORT_METHOD(setAccountName:(NSString *)accountId (NSString *)accountName)
{
    NSString* aid = accountId;
    
    if (aid == nil) {
        aid = [TalkingDataGA getDeviceId];
    }
    
    TDGAAccount* account = [TDGAAccount setAccount:aid];
    [account setAccountName:accountName];
}

RCT_EXPORT_METHOD(setAccountType:(NSString *)accountId (int)accountType)
{
    NSString* aid = accountId;
    
    if (aid == nil) {
        aid = [TalkingDataGA getDeviceId];
    }
    
    TDGAAccount* account = [TDGAAccount setAccount:aid];
    [account setAccountType:(TDGAAccountType)accountType];
}

RCT_EXPORT_METHOD(setAccountType:(NSString *)accountId (int)accountType)
{
    NSString* aid = accountId;
    
    if (aid == nil) {
        aid = [TalkingDataGA getDeviceId];
    }
    
    TDGAAccount* account = [TDGAAccount setAccount:aid];
    [account setAccountType:(TDGAAccountType)accountType];
}

@end
  
