
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
    if (!bLog){
        [TalkingDataGA setVerboseLogDisabled];
    }
    
    [TalkingDataGA onStart:appId withChannelId:channelId];
}

RCT_EXPORT_METHOD(setAccountName:(NSString *)accountId accountName:(NSString *)accountName)
{
    NSString* aid = accountId;
    
    if (aid == nil) {
        aid = [TalkingDataGA getDeviceId];
    }
    
    TDGAAccount* account = [TDGAAccount setAccount:aid];
    if (account != nil) {
        [account setAccountName:accountName];
    }
}

RCT_EXPORT_METHOD(setAcountLevel:(NSString *)accountId accountLevel:(int)accountLevel)
{
    NSString* aid = accountId;
    
    if (aid == nil) {
        aid = [TalkingDataGA getDeviceId];
    }
    
    TDGAAccount* account = [TDGAAccount setAccount:aid];
    if (account != nil) {
        [account setLevel:accountLevel];
    }
}

RCT_EXPORT_METHOD(setAccountType:(NSString *)accountId accountType:(int)accountType)
{
    NSString* aid = accountId;
    
    if (aid == nil) {
        aid = [TalkingDataGA getDeviceId];
    }
    
    TDGAAccount* account = [TDGAAccount setAccount:aid];
    if (account != nil) {
        [account setAccountType:(TDGAAccountType)accountType];
    }
}

RCT_EXPORT_METHOD(onEvent:(NSString *)eventId eventInfo:(NSDictionary *)eventInfo)
{
    [TalkingDataGA onEvent:eventId eventData:eventInfo];
}

@end

