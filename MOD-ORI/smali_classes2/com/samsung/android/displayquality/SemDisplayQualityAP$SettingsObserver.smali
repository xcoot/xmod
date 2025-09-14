.class final Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public observeByName(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public observeByUri(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, -0x1

    .line 7
    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mBrightnessModeLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 15
    .line 16
    iget-object v0, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->isBrightnessModeAuto(Landroid/content/ContentResolver;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleAutoBrightnessModeOn()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleAutoBrightnessModeOff()V

    .line 37
    .line 38
    .line 39
    :goto_0
    monitor-exit p1

    .line 40
    goto :goto_2

    .line 41
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0

    .line 43
    :cond_1
    sget-object p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->getScreenModeSetting()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenModeChanged(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_2
    return-void
.end method
