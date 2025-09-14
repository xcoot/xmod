.class public final Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 7
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    .line 9
    const-string/jumbo p1, "location_background_throttle_interval_ms"

    .line 12
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 18
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    .line 20
    const-string/jumbo p1, "location_mode"

    .line 23
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 25
    return-void

    .line 26
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 29
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    .line 31
    const-string/jumbo p1, "enable_gnss_raw_meas_full_tracking"

    .line 34
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
