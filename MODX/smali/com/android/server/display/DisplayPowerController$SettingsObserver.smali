.class public final Lcom/android/server/display/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "[api] SettingsObserver: onChange: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 24
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 38
    iget-object p2, p1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 40
    new-instance v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;

    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-direct {v0, v1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 46
    iget-object p0, p1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    move-result-wide p0

    .line 55
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string/jumbo p1, "screen_brightness_for_als"

    .line 62
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_1

    .line 72
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 74
    iget-object p2, p2, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    move-result-object p2

    .line 80
    const/4 v0, 0x2

    .line 81
    const/4 v1, -0x2

    .line 82
    invoke-static {p2, p1, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 85
    move-result p1

    .line 86
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 88
    iget-object p2, p2, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "Setting up auto-brightness for preset "

    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessPresetToString(I)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-static {p2, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 113
    iget-object p2, p1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 117
    invoke-virtual {p1, p2, v0}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 125
    goto :goto_0

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 128
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V

    .line 131
    :goto_0
    return-void
.end method
