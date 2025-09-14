.class public final Lcom/android/server/power/batterysaver/BatterySaverController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;


# instance fields
.field public mAdaptiveEnabledRaw:Z

.field public mAdaptivePreviouslyEnabled:Z

.field public final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field public final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field public final mContext:Landroid/content/Context;

.field public mFullEnabledRaw:Z

.field public mFullPreviouslyEnabled:Z

.field public final mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

.field public mIsPluggedIn:Z

.field public final mListeners:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

.field public final mReceiver:Lcom/android/server/power/batterysaver/BatterySaverController$1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Lcom/android/server/power/batterysaver/BatterySaverController$1;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    new-instance p1, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 23
    .line 24
    invoke-direct {p1, p0, p3}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 28
    .line 29
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 30
    .line 31
    invoke-virtual {p4, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    .line 32
    .line 33
    .line 34
    iput-object p5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public enableBatterySaver(ZI)V
    .locals 3

    .line 1
    const-string v0, "BatterySaverController"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "enableBatterySaver: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ")"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 37
    .line 38
    if-ne v1, p1, :cond_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    if-ne v1, p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 48
    .line 49
    .line 50
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 51
    .line 52
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const/4 p1, 0x2

    .line 60
    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 p1, 0x0

    .line 75
    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    :goto_1
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 82
    .line 83
    invoke-virtual {p0, p2, v2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    .line 84
    .line 85
    .line 86
    :cond_4
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final getPolicyLocked()Landroid/os/BatterySaverPolicyConfig;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/BatterySaverPolicyConfig$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setAdjustBrightnessFactor(F)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setAdvertiseIsEnabled(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDeferFullBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDeferKeyValueBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableAnimation(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableAod(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableLaunchBoost(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableOptionalSensors(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableVibration(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableAdjustBrightness(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableDataSaver(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableFirewall(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableNightMode(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableQuickDoze(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setForceAllAppsStandby(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setForceBackgroundCheck(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setLocationMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Landroid/os/BatterySaverPolicyConfig$Builder;->setSoundTriggerMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/os/BatterySaverPolicyConfig$Builder;->build()Landroid/os/BatterySaverPolicyConfig;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method

.method public final getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v1, 0x1040394

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 21
    .line 22
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    .line 50
    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    .line 52
    .line 53
    return-object p0
.end method

.method public final isEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final isPolicyEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    :goto_1
    monitor-exit v0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget p0, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 13
    .line 14
    const-string p0, "BatterySaverPolicy"

    .line 15
    .line 16
    const-string/jumbo p1, "setAdaptivePolicy given null policy"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-object p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 33
    .line 34
    iget p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-ne p1, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 43
    .line 44
    const/16 p1, 0xb

    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 51
    :goto_1
    return v1
.end method

.method public final setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget p0, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 13
    .line 14
    const-string p0, "BatterySaverPolicy"

    .line 15
    .line 16
    const-string/jumbo p1, "setFullPolicy given null policy"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-object p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 33
    .line 34
    iget p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    if-ne p1, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    const/16 v0, 0xd

    .line 46
    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 52
    :goto_1
    return p1
.end method

.method public final updateBatterySavingStats()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/os/PowerManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/PowerManager;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string p0, "BatterySaverController"

    .line 25
    .line 26
    const-string v0, "PowerManager not initialized"

    .line 27
    .line 28
    sget v1, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x2

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x1

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    move v0, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    move v0, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v0, v4

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 62
    .line 63
    iget-boolean v7, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 64
    .line 65
    if-eqz v7, :cond_4

    .line 66
    .line 67
    move v3, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 70
    .line 71
    if-eqz v5, :cond_5

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    move v3, v4

    .line 75
    :goto_1
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    .line 76
    .line 77
    iget-object v4, v6, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    invoke-static {v3, v1, v0, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-virtual {v6, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 85
    .line 86
    .line 87
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :try_start_4
    throw p0

    .line 95
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    throw p0
.end method
