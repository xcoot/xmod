.class public final Lcom/android/server/am/ProcessStateRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdjSeq:I

.field public mAdjSource:Ljava/lang/Object;

.field public mAdjSourceProcState:I

.field public mAdjTarget:Ljava/lang/Object;

.field public mAdjType:Ljava/lang/String;

.field public mAdjTypeCode:I

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBackgroundRestricted:Z

.field public mCacheOomRankerRss:J

.field public mCacheOomRankerRssTimeMs:J

.field public mCacheOomRankerUseCount:I

.field public mCachedAdj:I

.field public mCachedAdjType:Ljava/lang/String;

.field public final mCachedCompatChanges:[I

.field public mCachedForegroundActivities:Z

.field public mCachedHasActivities:I

.field public mCachedHasRecentTasks:I

.field public mCachedHasVisibleActivities:I

.field public mCachedIsHeavyWeight:I

.field public mCachedIsHomeProcess:I

.field public mCachedIsPreviousProcess:I

.field public mCachedIsReceivingBroadcast:I

.field public mCachedProcState:I

.field public mCachedSchedGroup:I

.field public mCompletedAdjSeq:I

.field public mContainsCycle:Z

.field public mCurAdj:I

.field public mCurBoundByNonBgRestrictedApp:Z

.field public mCurCapability:I

.field public mCurProcState:I

.field public mCurRawAdj:I

.field public mCurRawProcState:I

.field public mCurSchedGroup:I

.field public mFgInteractionTime:J

.field public mFollowupUpdateUptimeMs:J

.field public mForcingToImportant:Ljava/lang/Object;

.field public mHasForegroundActivities:Z

.field public mHasOverlayUi:Z

.field public mHasShownUi:Z

.field public mHasStartedServices:Z

.field public mHasTopUi:Z

.field public mInteractionEventTime:J

.field public mLastCanKillOnBgRestrictedAndIdleTime:J

.field public mLastInvisibleTime:J

.field public mLastStateTime:J

.field public mLastTopTime:J

.field public mMaxAdj:I

.field public mNoKillOnBgRestrictedAndIdle:Z

.field public mNotCachedSinceIdle:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcStateChanged:Z

.field public mReachable:Z

.field public mRepForegroundActivities:Z

.field public mRepProcState:I

.field public mReportedInteraction:Z

.field public mRunningRemoteAnimation:Z

.field public mSavedPriority:I

.field public mScheduleLikeTopApp:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mServiceB:Z

.field public mServiceHighRam:Z

.field public mSetAdj:I

.field public mSetBoundByNonBgRestrictedApp:Z

.field public mSetCached:Z

.field public mSetCapability:I

.field public mSetNoKillOnBgRestrictedAndIdle:Z

.field public mSetProcState:I

.field public mSetRawAdj:I

.field public mSetSchedGroup:I

.field public mSystemNoUi:Z

.field public mVerifiedAdj:I

.field public mWhenUnimportant:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e9

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 7
    .line 8
    const/16 v0, -0x2710

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 22
    .line 23
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 24
    .line 25
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 26
    .line 27
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 28
    .line 29
    const/16 v2, 0x14

    .line 30
    .line 31
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 32
    .line 33
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 34
    .line 35
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 36
    .line 37
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 38
    .line 39
    const-wide/high16 v2, -0x8000000000000000L

    .line 40
    .line 41
    iput-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    .line 48
    .line 49
    const/4 v2, -0x1

    .line 50
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 51
    .line 52
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 53
    .line 54
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 55
    .line 56
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 57
    .line 58
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 59
    .line 60
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 61
    .line 62
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 63
    .line 64
    filled-new-array {v2, v2, v2}, [I

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    .line 72
    .line 73
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 74
    .line 75
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 76
    .line 77
    const/16 v0, 0x13

    .line 78
    .line 79
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 80
    .line 81
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 82
    .line 83
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    .line 84
    .line 85
    const-wide v0, 0x7fffffffffffffffL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public final forceProcessStateUpTo(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 2
    .line 3
    if-le v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 17
    .line 18
    .line 19
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 26
    .line 27
    invoke-virtual {p1, v1, p0}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_0
    :goto_0
    return-void
.end method

.method public final getCachedCompatChange(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v4, Lcom/android/server/am/PlatformCompatCache;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    .line 30
    .line 31
    aget-wide v4, v4, p1

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-boolean v6, v1, Lcom/android/server/am/PlatformCompatCache;->mCacheEnabled:Z

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 41
    .line 42
    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, v1, Lcom/android/server/am/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    .line 56
    .line 57
    invoke-interface {v1, v4, v5, v2}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    .line 58
    .line 59
    .line 60
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 62
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v6, "Error reading platform compat change "

    .line 65
    .line 66
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v4, "ActivityManager"

    .line 77
    .line 78
    invoke-static {v4, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    move v1, v3

    .line 82
    :goto_1
    aput v1, v0, p1

    .line 83
    .line 84
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    .line 85
    .line 86
    aget p0, p0, p1

    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    if-ne p0, p1, :cond_2

    .line 90
    .line 91
    move v3, p1

    .line 92
    :cond_2
    return v3
.end method

.method public final getCachedHasActivities()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 35
    .line 36
    if-ne p0, v2, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v2, 0x0

    .line 40
    :goto_1
    return v2
.end method

.method public final getCachedIsHomeProcess()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 31
    .line 32
    if-ne p0, v3, :cond_2

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_2
    return v2
.end method

.method public final getCachedIsPreviousProcess()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 31
    .line 32
    if-ne p0, v3, :cond_2

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_2
    return v2
.end method

.method public final getSetAdjWithServices()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 2
    .line 3
    const/16 v1, 0x384

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/16 p0, 0x320

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    return v0
.end method

.method public final getVerifiedAdj()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 2
    .line 3
    return p0
.end method

.method public final isCached()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 2
    .line 3
    const/16 v0, 0x384

    .line 4
    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final resetCachedInfo()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 3
    .line 4
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 15
    .line 16
    const/16 v0, -0x2710

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 22
    .line 23
    const/16 v1, 0x13

    .line 24
    .line 25
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method public final setCurAdj(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    .line 8
    .line 9
    return-void
.end method

.method public final setCurProcState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 8
    .line 9
    return-void
.end method

.method public final setCurRawAdj(IZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 6
    .line 7
    if-le p0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    return v0

    .line 12
    :cond_1
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 17
    .line 18
    const/16 p2, 0xc8

    .line 19
    .line 20
    if-gt p1, p2, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move v0, v1

    .line 24
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    .line 25
    .line 26
    return v1
.end method

.method public final setCurrentSchedulingGroup(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    .line 8
    .line 9
    return-void
.end method

.method public final setReportedProcState(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 12
    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    .line 17
    if-ge p1, v2, :cond_0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 34
    .line 35
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    .line 36
    .line 37
    invoke-static {v0, v2}, Landroid/app/servertransaction/ConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;I)Landroid/app/servertransaction/ConfigurationChangeItem;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    const-string v1, "ActivityTaskManager"

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, "Failed to schedule ConfigurationChangeItem="

    .line 66
    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, " owner="

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw p0

    .line 94
    :cond_0
    :goto_0
    return-void
.end method

.method public final updateLastInvisibleTime(Z)V
    .locals 4

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    .line 12
    .line 13
    cmp-long p1, v2, v0

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
