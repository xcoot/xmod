.class public final Lcom/android/server/display/brightness/DisplayBrightnessController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

.field public final mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

.field public mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

.field public mCurrentScreenBrightness:F

.field public mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

.field public final mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

.field public final mDisplayId:I

.field public mLastUserSetScreenBrightness:F

.field public final mLock:Ljava/lang/Object;

.field public final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field public mPendingScreenBrightness:F

.field public final mPersistBrightnessNitsForDefaultDisplay:Z

.field public final mScreenBrightnessDefault:F

.field public final mTag:Ljava/lang/String;

.field public mUserSetScreenBrightnessUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IFLcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 11
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 13
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 15
    new-instance v1, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;

    .line 17
    invoke-direct {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;-><init>()V

    .line 20
    iput p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p2, v1, :cond_0

    .line 25
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 27
    if-eqz v2, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    iput-object p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 33
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 35
    invoke-static {p3}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    .line 38
    move-result p3

    .line 39
    iput p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    .line 41
    const/4 v0, -0x2

    .line 42
    if-nez p2, :cond_2

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    move-result-object v1

    .line 48
    const-string/jumbo v2, "screen_brightness"

    .line 51
    const/4 v3, -0x1

    .line 52
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 59
    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, "getScreenBrightnessSettingOnBootPhase: default: "

    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mTag:Ljava/lang/String;

    .line 83
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move p3, v0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v1

    .line 95
    const v2, 0x10e015b

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 101
    move-result v1

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 105
    move-result-object v2

    .line 106
    const-string/jumbo v3, "sub_screen_brightness"

    .line 109
    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 116
    move-result v0

    .line 117
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_1

    .line 123
    :cond_3
    :goto_1
    invoke-virtual {p4, p3}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    .line 126
    iput p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 128
    iput-object p5, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 130
    new-instance p3, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 132
    invoke-direct {p3, p1, p2, p7}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;-><init>(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 135
    iput-object p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 137
    iput-object p6, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    move-result-object p1

    .line 143
    const p3, 0x11101fc

    .line 146
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 149
    move-result p1

    .line 150
    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    .line 152
    const-string p1, "DisplayBrightnessController["

    .line 154
    const-string p3, "]"

    .line 156
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mTag:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method public final convertToAdjustedNits(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const/high16 p0, -0x40800000    # -1.0f

    .line 7
    return p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToAdjustedNits(F)F

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final convertToNits(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const/high16 p0, -0x40800000    # -1.0f

    .line 7
    return p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getBrightnessFromNits(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 7
    return p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessFromNits(F)F

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getBrightnessSettingListener()Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 3
    return-object p0
.end method

.method public final getCurrentBrightness()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public getCurrentDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getIsUserSetScreenBrightnessUpdated()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    .line 3
    return p0
.end method

.method public final getLastUserSetScreenBrightness()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getScreenBrightnessSetting()F
    .locals 4

    .line 1
    const-string/jumbo v0, "getScreenBrightnessSetting: default: "

    .line 4
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 6
    iget-object v2, v1, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    iget v1, v1, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 11
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v3

    .line 15
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mTag:Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    .line 48
    move-result p0

    .line 49
    monitor-exit v3

    .line 50
    return p0

    .line 51
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    throw p0
.end method

.method public final isAllowAutoBrightnessWhileDozing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 6
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final isAllowAutoBrightnessWhileDozingConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 6
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 5
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 10
    iget p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    .line 12
    if-nez p1, :cond_2

    .line 14
    iget-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    .line 16
    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 20
    iget-object p1, p1, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 22
    iget p1, p1, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 24
    const/4 v0, 0x0

    .line 25
    cmpl-float v0, p1, v0

    .line 27
    if-ltz v0, :cond_2

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 50
    const-string v0, "BrightnessSetting"

    .line 52
    const-string v1, "Attempting to init invalid brightness"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    iget-object v1, v0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 60
    monitor-enter v1

    .line 61
    :try_start_0
    iget v2, v0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 63
    cmpl-float v2, p1, v2

    .line 65
    if-eqz v2, :cond_1

    .line 67
    iget-object v2, v0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 69
    iget-object v3, v0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 71
    iget-object v3, v3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 73
    iget v4, v0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    .line 75
    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/display/PersistentDataStore;->setBrightness(Lcom/android/server/display/DisplayDevice;FI)V

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iput p1, v0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 83
    monitor-exit v1

    .line 84
    goto :goto_2

    .line 85
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0

    .line 87
    :cond_2
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 89
    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    .line 98
    move-result p1

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 101
    monitor-enter v0

    .line 102
    :try_start_1
    iput p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :catchall_1
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    throw p0
.end method

.method public final setBrightness(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    .line 6
    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    .line 8
    if-nez v1, :cond_1

    .line 10
    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    .line 17
    move-result p0

    .line 18
    iget-object v0, v0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 20
    iget v1, v0, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 22
    const/4 v2, 0x0

    .line 23
    cmpl-float v2, p0, v2

    .line 25
    if-ltz v2, :cond_1

    .line 27
    cmpl-float p1, p1, p2

    .line 29
    if-nez p1, :cond_0

    .line 31
    cmpl-float p1, v1, p0

    .line 33
    if-gtz p1, :cond_1

    .line 35
    :cond_0
    cmpl-float p1, p0, v1

    .line 37
    if-eqz p1, :cond_1

    .line 39
    iput p0, v0, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 41
    const/4 p0, 0x1

    .line 42
    iput-boolean p0, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 44
    :cond_1
    return-void
.end method

.method public final setBrightnessToFollow(ZF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 6
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 8
    iput p2, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    .line 10
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 6
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateUserSetScreenBrightness()Z

    .line 9
    move-result v2

    .line 10
    iget-object v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 15
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    new-instance v3, Lcom/android/server/display/brightness/StrategySelectionRequest;

    .line 18
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, v3, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 23
    iput p2, v3, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    .line 25
    iput v4, v3, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    .line 27
    iput-boolean v2, v3, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    .line 29
    iput-object p3, v3, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 31
    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->selectStrategy(Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    .line 40
    move-result p3

    .line 41
    new-instance v1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    .line 43
    iget-boolean v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    .line 45
    invoke-direct {v1, p1, p3, v2}, Lcom/android/server/display/brightness/StrategyExecutionRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZ)V

    .line 48
    invoke-interface {p2, v1}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;

    .line 51
    move-result-object p1

    .line 52
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 55
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 57
    new-instance p2, Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 59
    invoke-direct {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 62
    iget p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 64
    iput p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 66
    iget p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    .line 68
    iput p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mSdrBrightness:F

    .line 70
    iget-object p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 72
    iput-object p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 74
    iget-object p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 76
    iput-object p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 78
    iget-boolean p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 80
    iput-boolean p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    .line 82
    iget-boolean p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 84
    iput-boolean p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 86
    iget p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 88
    iput p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    .line 90
    iget p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 92
    iput p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMinBrightness:F

    .line 94
    iget p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 96
    iput p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    .line 98
    iget-boolean p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 100
    iput-boolean p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    .line 102
    iget-object p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 104
    iput-object p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 106
    iget p3, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 108
    iput p3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    .line 110
    iget-boolean p1, p1, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 112
    iput-boolean p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    .line 114
    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 119
    move-result p0

    .line 120
    if-eqz p0, :cond_0

    .line 122
    const/4 p0, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    const/4 p0, 0x0

    .line 125
    :goto_0
    iput-boolean p0, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    .line 127
    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    .line 129
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    .line 132
    return-object p0

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    goto :goto_1

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    :try_start_4
    throw p0

    .line 138
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    throw p0
.end method

.method public final updateScreenBrightnessSetting(FF)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 14
    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 16
    cmpl-float v2, p1, v1

    .line 18
    if-nez v2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    cmpl-float v1, p1, v1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    iput p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 27
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    .line 30
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 43
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method public updateUserSetScreenBrightness()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    .line 4
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 9
    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 12
    move-result v2

    .line 13
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 15
    if-nez v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 19
    iget-object v2, v2, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 21
    iget v2, v2, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 23
    iget v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 25
    invoke-static {v2, v4}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 33
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 35
    iput v3, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 37
    :cond_0
    monitor-exit v1

    .line 38
    return v0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 43
    iget v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 45
    cmpl-float v5, v2, v4

    .line 47
    if-nez v5, :cond_2

    .line 49
    iput v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 51
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 53
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 55
    iput v3, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 57
    monitor-exit v1

    .line 58
    return v0

    .line 59
    :cond_2
    cmpl-float v0, v4, v2

    .line 61
    if-eqz v0, :cond_3

    .line 63
    iput v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 65
    :cond_3
    iput v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 67
    iput v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 69
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 71
    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 73
    iput v3, v0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    .line 78
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 80
    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 83
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    .line 86
    return v0

    .line 87
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p0
.end method
