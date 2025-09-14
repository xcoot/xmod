.class public abstract Lcom/samsung/android/displayquality/SemDisplayQualityAP;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field protected static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field protected static final SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field protected static final SCREEN_MODE_ADAPTIVE:I = 0x4

.field protected static final SCREEN_MODE_AMOLED_CINEMA:I = 0x0

.field protected static final SCREEN_MODE_AMOLED_PHOTO:I = 0x1

.field protected static final SCREEN_MODE_BASIC:I = 0x2

.field protected static final SCREEN_MODE_NATURAL:I = 0x3

.field protected static final SCREEN_MODE_READING:I = 0x5

.field protected static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field protected static final SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SemDisplayQualityAP"


# instance fields
.field protected DEBUG:Z

.field protected final mBrightnessModeLock:Ljava/lang/Object;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected final mContext:Landroid/content/Context;

.field protected mIsBrightnessModeAuto:Z

.field protected mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

.field protected mUseScreenStatusAsyncHandle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "screen_brightness_mode"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 9
    .line 10
    const-string/jumbo v0, "screen_mode_setting"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "eng"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string/jumbo v1, "userdebug"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    .line 31
    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mBrightnessModeLock:Ljava/lang/Object;

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mUseScreenStatusAsyncHandle:Z

    .line 40
    .line 41
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    .line 48
    .line 49
    new-instance p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    .line 50
    .line 51
    new-instance v0, Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    .line 60
    .line 61
    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    const-string p0, "SemDisplayQualityAP"

    .line 66
    .line 67
    invoke-static {p0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method


# virtual methods
.method public enhanceOutdoorVisibilityByLux(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public getScreenModeSetting()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "screen_mode_setting"

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public abstract handleAutoBrightnessModeOff()V
.end method

.method public abstract handleAutoBrightnessModeOn()V
.end method

.method public abstract handleScreenModeChanged(I)V
.end method

.method public abstract handleScreenOff()V
.end method

.method public abstract handleScreenOffAsync()V
.end method

.method public abstract handleScreenOn()V
.end method

.method public abstract handleScreenOnAsync()V
.end method

.method public isBrightnessModeAuto(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 1
    const/4 p0, -0x2

    .line 2
    const-string/jumbo v0, "screen_brightness_mode"

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 p1, 0x1

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    move v1, p1

    .line 14
    :cond_0
    return v1
.end method

.method public setAdaptiveSync(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public startScreenStatusReceiver()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "SemDisplayQualityAP"

    .line 11
    .line 12
    const-string v0, "mContext is null"

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    new-instance v2, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public startSettingObserver(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "SemDisplayQualityAP"

    .line 6
    .line 7
    const-string p1, "mContext is null"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->observeByUri(Landroid/net/Uri;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
