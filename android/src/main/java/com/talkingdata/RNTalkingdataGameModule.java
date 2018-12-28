
package com.talkingdata;

import android.app.Application;
import android.content.Context;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReadableMap;
import com.tendcloud.tenddata.TDGAAccount;
import com.tendcloud.tenddata.TalkingDataGA;

import java.util.Map;

public class RNTalkingdataGameModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNTalkingdataGameModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNTalkingdataGame";
  }

  public static void start(Context app, String appID, String channel) {
    // App ID: 在TalkingData Game Analytics创建应用后会得到App ID。
    // 渠道 ID: 是渠道标识符，可通过不同渠道单独追踪数据。
    TalkingDataGA.init(app, appID, channel);
  }

  @ReactMethod
  public void onEvent(String eventId, final ReadableMap eventData) {
    TalkingDataGA.onEvent(eventId, eventData.toHashMap());
  }

  @ReactMethod
  public void setAccountName(String accountId, String accountName) {
    TDGAAccount account = TDGAAccount.setAccount(accountId);
    if (account != null) {
      account.setAccountName(accountName);
    }
  }

  @ReactMethod
  public void setAcountLevel(String accountId, int level) {
    TDGAAccount account = TDGAAccount.setAccount(accountId);
    if (account != null) {
      account.setLevel(level);
    }
  }

  @ReactMethod
  public void setAccountType(String accountId, int accountType) {
    TDGAAccount account = TDGAAccount.setAccount(accountId);
    if (account != null) {
      account.setAccountType(TDGAAccount.AccountType.values()[accountType]);
    }
  }
}