.class public final Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

.field public mRunnable:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;

.field public mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;


# virtual methods
.method public final updateSwitchSetting()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "ibs_switch"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 16
    .line 17
    const/16 v2, 0x80

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object p0, v1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->updateTimeSetting()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final updateTimeSetting()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "ibs_start_hour"

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x17

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const-string/jumbo v1, "ibs_start_minute"

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const-string/jumbo v1, "ibs_end_hour"

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x7

    .line 28
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const-string/jumbo v1, "ibs_end_minute"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 42
    .line 43
    iget-object p0, v4, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;

    .line 48
    .line 49
    move-object v3, v0

    .line 50
    invoke-direct/range {v3 .. v8}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;IIII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    .line 58
    .line 59
    const-string v0, "Handler is null, cannot update time settings."

    .line 60
    .line 61
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method
