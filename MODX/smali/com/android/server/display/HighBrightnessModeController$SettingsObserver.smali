.class public final Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLowPowerModeSetting:Landroid/net/Uri;

.field public mStarted:Z

.field public final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    const-string/jumbo p1, "low_power"

    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 15
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->updateLowPower()V

    .line 4
    return-void
.end method

.method public final updateLowPower()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "low_power"

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    const/4 v2, 0x1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 22
    iget-boolean v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 24
    if-ne v2, v0, :cond_1

    .line 26
    return-void

    .line 27
    :cond_1
    sget-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    .line 29
    if-eqz v0, :cond_2

    .line 31
    const-string v0, "Settings.Global.LOW_POWER_MODE enabled: "

    .line 33
    const-string v1, "HighBrightnessModeController"

    .line 35
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 40
    iput-boolean v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    .line 45
    return-void
.end method
