.class public final Lcom/android/server/wm/WindowProcessController;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# instance fields
.field public final mActivities:Ljava/util/ArrayList;

.field public volatile mActivityStateFlags:I

.field public mAnimatingReasons:I

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

.field public mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mConfigTask:Lcom/android/server/wm/Task;

.field public volatile mCrashing:Z

.field public volatile mCurAdj:I

.field public volatile mCurProcState:I

.field public volatile mCurSchedGroup:I

.field public volatile mDebugging:Z

.field public volatile mFgInteractionTime:J

.field public volatile mHasActivities:Z

.field public volatile mHasCachedConfiguration:Z

.field public volatile mHasClientActivities:Z

.field public volatile mHasForegroundServices:Z

.field public volatile mHasImeService:Z

.field public volatile mHasOverlayUi:Z

.field public mHasPendingConfigurationChange:Z

.field public volatile mHasRecentTasks:Z

.field public volatile mHasTopUi:Z

.field public mInactiveActivities:Ljava/util/ArrayList;

.field public final mInfo:Landroid/content/pm/ApplicationInfo;

.field public volatile mInstrumentationSourceUid:I

.field public volatile mInstrumenting:Z

.field public volatile mInstrumentingWithBackgroundActivityStartPrivileges:Z

.field public volatile mInteractionEventTime:J

.field public volatile mIsActivityConfigOverrideAllowed:Z

.field public volatile mLastActivityFinishTime:J

.field public volatile mLastActivityLaunchTime:J

.field public final mLastReportedConfiguration:Landroid/content/res/Configuration;

.field public mLastTopActivityDeviceId:I

.field public final mListener:Lcom/android/server/am/ProcessRecord;

.field public final mName:Ljava/lang/String;

.field public volatile mNotResponding:Z

.field public final mOwner:Ljava/lang/Object;

.field public mPauseConfigurationDispatchCount:I

.field public volatile mPendingUiClean:Z

.field public volatile mPerceptible:Z

.field public volatile mPersistent:Z

.field public volatile mPid:I

.field public final mPkgList:Ljava/util/ArrayList;

.field public mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mRapidActivityLaunchCount:I

.field public mReason:Ljava/lang/String;

.field public final mRecentTasks:Ljava/util/ArrayList;

.field public mRemoteActivities:Landroid/util/ArrayMap;

.field public volatile mRepProcState:I

.field public volatile mRequiredAbi:Ljava/lang/String;

.field public volatile mStoppedState:I

.field public mThread:Landroid/app/IApplicationThread;

.field public final mUid:I

.field public final mUseFifoUiScheduling:Z

.field public final mUserId:I

.field public volatile mUsingWrapper:Z

.field public mVrThreadTid:I

.field public volatile mWasStoppedLogged:Z

.field public volatile mWhenUnimportant:J

.field public mWindowSession:Lcom/android/server/wm/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v0, 0x14

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 17
    .line 18
    const/16 v0, -0x2710

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 41
    .line 42
    new-instance v2, Landroid/content/res/Configuration;

    .line 43
    .line 44
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    iput v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 53
    .line 54
    const v3, 0xffff

    .line 55
    .line 56
    .line 57
    iput v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 64
    .line 65
    iput p4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 66
    .line 67
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 68
    .line 69
    iput-object p6, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object p7, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 74
    .line 75
    new-instance p3, Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 76
    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance p6, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;

    .line 81
    .line 82
    invoke-direct {p6, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 83
    .line 84
    .line 85
    iget-object p7, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 86
    .line 87
    invoke-direct {p3, p6, p7}, Lcom/android/server/wm/BackgroundLaunchProcessController;-><init>(Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;Lcom/android/server/notification/NotificationManagerService$3;)V

    .line 88
    .line 89
    .line 90
    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 91
    .line 92
    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    .line 95
    .line 96
    .line 97
    move-result-object p6

    .line 98
    invoke-virtual {p6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p6

    .line 102
    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-nez p3, :cond_0

    .line 107
    .line 108
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 109
    .line 110
    .line 111
    move-result p6

    .line 112
    const/16 p7, 0x3e8

    .line 113
    .line 114
    if-ne p6, p7, :cond_1

    .line 115
    .line 116
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 117
    .line 118
    :cond_1
    invoke-static {}, Lcom/android/window/flags/Flags;->fifoPriorityForMajorUiProcesses()Z

    .line 119
    .line 120
    .line 121
    move-result p6

    .line 122
    if-eqz p6, :cond_2

    .line 123
    .line 124
    if-nez p3, :cond_3

    .line 125
    .line 126
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-eqz p3, :cond_2

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    move v1, v2

    .line 134
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 144
    .line 145
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1, p0, p5, p2}, Lcom/android/server/wm/PackageConfigPersister;->updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public static applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    if-ne p3, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Landroid/content/AttributionSource$Builder;

    .line 11
    .line 12
    invoke-direct {v2, p3}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iget-object v2, p2, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->checkSystemTermsOfAddressIsEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 31
    .line 32
    invoke-static {v2, p3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionUtils;->checkSystemGrammaticalGenderPermission(Landroid/permission/PermissionManager;Landroid/content/AttributionSource;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    :goto_0
    move p3, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move p3, v0

    .line 41
    :goto_1
    if-eqz p1, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    if-eqz p3, :cond_3

    .line 45
    .line 46
    const/4 p1, -0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    if-eqz p2, :cond_4

    .line 49
    .line 50
    const-string/jumbo p1, "persist.sys.grammatical_gender"

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move p1, v0

    .line 59
    :goto_2
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getGrammaticalGenderRaw()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-ne p2, p1, :cond_5

    .line 64
    .line 65
    return v0

    .line 66
    :cond_5
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setGrammaticalGender(I)V

    .line 67
    .line 68
    .line 69
    return v1
.end method


# virtual methods
.method public final addBoundClientUid(ILjava/lang/String;J)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-wide/32 v0, 0xf8fa52e

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v1, p2, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const-wide/16 v0, 0x200

    .line 20
    .line 21
    and-long p2, p3, v0

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    cmp-long p2, p2, v0

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    new-instance p2, Landroid/util/IntArray;

    .line 34
    .line 35
    invoke-direct {p2}, Landroid/util/IntArray;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 39
    .line 40
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/util/IntArray;->indexOf(I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/4 p3, -0x1

    .line 47
    if-ne p2, p3, :cond_2

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final addToPendingTop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final appEarlyNotResponding(Ljava/lang/String;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 24
    .line 25
    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 26
    .line 27
    invoke-interface {v1, v3, v4, p1}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-gez p1, :cond_1

    .line 32
    .line 33
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 34
    .line 35
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    if-eq p1, p0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object p2, v2

    .line 41
    :goto_0
    move-object v2, p2

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 46
    .line 47
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->run()V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void

    .line 64
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final appNotResponding(Ljava/lang/String;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 25
    .line 26
    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 27
    .line 28
    invoke-interface {v1, v4, v5, p1}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    if-gez p1, :cond_1

    .line 35
    .line 36
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 37
    .line 38
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    if-eq p1, p0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object p2, p3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object p2, v3

    .line 46
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_3
    return v2

    .line 58
    :catch_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    return v2

    .line 74
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final areBackgroundActivityStartsAllowed(IZ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-boolean v4, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-wide v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    .line 18
    .line 19
    iget-wide v7, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    .line 20
    .line 21
    iget-wide v9, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    .line 22
    .line 23
    const/4 p0, 0x6

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_0
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 38
    .line 39
    const/4 v11, 0x1

    .line 40
    const/4 v12, 0x0

    .line 41
    if-eqz v4, :cond_9

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    if-eqz p2, :cond_4

    .line 52
    .line 53
    iget-object p2, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    :goto_0
    add-int/lit8 v1, p2, -0x1

    .line 60
    .line 61
    if-lez p2, :cond_3

    .line 62
    .line 63
    iget-object p2, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroid/app/BackgroundStartPrivileges;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundFgsStarts()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    monitor-exit v0

    .line 78
    :goto_1
    move p2, v11

    .line 79
    goto :goto_5

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto/16 :goto_8

    .line 82
    .line 83
    :cond_2
    move p2, v1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    monitor-exit v0

    .line 86
    :goto_2
    move p2, v12

    .line 87
    goto :goto_5

    .line 88
    :cond_4
    iget-object p2, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 89
    .line 90
    if-nez p2, :cond_7

    .line 91
    .line 92
    iget-object p2, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    :goto_3
    add-int/lit8 v1, p2, -0x1

    .line 99
    .line 100
    if-lez p2, :cond_6

    .line 101
    .line 102
    iget-object p2, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Landroid/app/BackgroundStartPrivileges;

    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_5

    .line 115
    .line 116
    monitor-exit v0

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move p2, v1

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    monitor-exit v0

    .line 121
    goto :goto_2

    .line 122
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->getOriginatingTokensThatAllowBal()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    move-object v4, p2

    .line 127
    check-cast v4, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_8

    .line 134
    .line 135
    monitor-exit v0

    .line 136
    goto :goto_2

    .line 137
    :cond_8
    iget-object v4, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 138
    .line 139
    invoke-virtual {v4, v1, v2, p2}, Lcom/android/server/notification/NotificationManagerService$3;->isActivityStartAllowed(ILjava/lang/String;Ljava/util/Collection;)Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    monitor-exit v0

    .line 144
    goto :goto_5

    .line 145
    :cond_9
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    goto :goto_2

    .line 147
    :goto_5
    if-eqz p2, :cond_a

    .line 148
    .line 149
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 150
    .line 151
    invoke-direct {p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_a
    invoke-static {}, Lcom/android/window/flags/Flags;->balRespectAppSwitchStateWhenCheckBoundByForegroundUid()Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-eqz p0, :cond_c

    .line 160
    .line 161
    if-eqz p1, :cond_b

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBoundByForegroundUid()Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-eqz p0, :cond_b

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_b
    move v11, v12

    .line 171
    goto :goto_6

    .line 172
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBoundByForegroundUid()Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    :goto_6
    if-eqz v11, :cond_d

    .line 177
    .line 178
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 179
    .line 180
    const/4 p0, 0x4

    .line 181
    invoke-direct {p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_d
    if-eqz v3, :cond_e

    .line 186
    .line 187
    if-eqz p1, :cond_e

    .line 188
    .line 189
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 190
    .line 191
    const/16 p0, 0x9

    .line 192
    .line 193
    invoke-direct {p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_e
    const/4 p0, 0x2

    .line 198
    if-ne p1, p0, :cond_11

    .line 199
    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 201
    .line 202
    .line 203
    move-result-wide p0

    .line 204
    sub-long v0, p0, v7

    .line 205
    .line 206
    const-wide/16 v2, 0x2710

    .line 207
    .line 208
    cmp-long p2, v0, v2

    .line 209
    .line 210
    if-ltz p2, :cond_f

    .line 211
    .line 212
    sub-long/2addr p0, v9

    .line 213
    cmp-long p0, p0, v2

    .line 214
    .line 215
    if-gez p0, :cond_11

    .line 216
    .line 217
    :cond_f
    cmp-long p0, v7, v5

    .line 218
    .line 219
    if-gtz p0, :cond_10

    .line 220
    .line 221
    cmp-long p0, v9, v5

    .line 222
    .line 223
    if-lez p0, :cond_11

    .line 224
    .line 225
    :cond_10
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 226
    .line 227
    const/16 p0, 0x8

    .line 228
    .line 229
    invoke-direct {p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_11
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 234
    .line 235
    :goto_7
    return-object p1

    .line 236
    :goto_8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    throw p0
.end method

.method public final canCloseSystemDialogsByToken()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->getOriginatingTokensThatAllowBal()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    .line 33
    .line 34
    check-cast v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const-wide/32 v3, 0x9fe8a20

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v4, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    :cond_2
    monitor-exit v0

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    :goto_0
    monitor-exit v0

    .line 57
    :goto_1
    return v2

    .line 58
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final computeProcessActivityState()V
    .locals 15

    .line 1
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 8
    .line 9
    const/high16 v3, 0x110000

    .line 10
    .line 11
    and-int/2addr v2, v3

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    move v2, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v5

    .line 19
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    sub-int/2addr v6, v4

    .line 26
    const v7, 0x7fffffff

    .line 27
    .line 28
    .line 29
    move v10, v4

    .line 30
    move v8, v5

    .line 31
    move v9, v8

    .line 32
    :goto_1
    if-ltz v6, :cond_8

    .line 33
    .line 34
    iget-object v11, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    .line 41
    .line 42
    iget-boolean v12, v11, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 43
    .line 44
    if-eqz v12, :cond_1

    .line 45
    .line 46
    const/high16 v12, 0x100000

    .line 47
    .line 48
    or-int/2addr v8, v12

    .line 49
    :cond_1
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 50
    .line 51
    if-eqz v12, :cond_2

    .line 52
    .line 53
    iget v13, v12, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 54
    .line 55
    const/4 v14, -0x1

    .line 56
    if-eq v13, v14, :cond_2

    .line 57
    .line 58
    const/high16 v13, 0x400000

    .line 59
    .line 60
    or-int/2addr v8, v13

    .line 61
    :cond_2
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-eqz v13, :cond_5

    .line 66
    .line 67
    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 68
    .line 69
    invoke-virtual {v11, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-eqz v9, :cond_3

    .line 74
    .line 75
    const/high16 v9, 0x200000

    .line 76
    .line 77
    or-int/2addr v8, v9

    .line 78
    :cond_3
    if-eqz v12, :cond_4

    .line 79
    .line 80
    if-lez v7, :cond_4

    .line 81
    .line 82
    iget v9, v12, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 83
    .line 84
    if-ltz v9, :cond_4

    .line 85
    .line 86
    if-le v7, v9, :cond_4

    .line 87
    .line 88
    move v7, v9

    .line 89
    :cond_4
    move v9, v4

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    if-nez v9, :cond_7

    .line 92
    .line 93
    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 94
    .line 95
    if-eq v0, v12, :cond_7

    .line 96
    .line 97
    sget-object v13, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 98
    .line 99
    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    if-eqz v13, :cond_6

    .line 104
    .line 105
    :goto_2
    move-object v0, v12

    .line 106
    goto :goto_3

    .line 107
    :cond_6
    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 108
    .line 109
    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-eqz v13, :cond_7

    .line 114
    .line 115
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 116
    .line 117
    and-int/2addr v10, v0

    .line 118
    goto :goto_2

    .line 119
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_8
    iget-object v6, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 123
    .line 124
    const/high16 v11, 0x10000

    .line 125
    .line 126
    if-eqz v6, :cond_a

    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    sub-int/2addr v6, v4

    .line 133
    :goto_4
    if-ltz v6, :cond_a

    .line 134
    .line 135
    iget-object v12, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 136
    .line 137
    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    check-cast v12, [I

    .line 142
    .line 143
    aget v12, v12, v5

    .line 144
    .line 145
    and-int/lit8 v12, v12, 0x2

    .line 146
    .line 147
    if-eqz v12, :cond_9

    .line 148
    .line 149
    iget-object v12, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    check-cast v12, Lcom/android/server/wm/ActivityRecord;

    .line 156
    .line 157
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-eqz v12, :cond_9

    .line 162
    .line 163
    or-int/2addr v8, v11

    .line 164
    :cond_9
    add-int/lit8 v6, v6, -0x1

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_a
    const v6, 0xffff

    .line 168
    .line 169
    .line 170
    and-int/2addr v6, v7

    .line 171
    or-int/2addr v6, v8

    .line 172
    if-eqz v9, :cond_b

    .line 173
    .line 174
    or-int/2addr v6, v11

    .line 175
    goto :goto_6

    .line 176
    :cond_b
    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 177
    .line 178
    if-ne v0, v7, :cond_c

    .line 179
    .line 180
    const/high16 v0, 0x20000

    .line 181
    .line 182
    :goto_5
    or-int/2addr v6, v0

    .line 183
    goto :goto_6

    .line 184
    :cond_c
    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 185
    .line 186
    if-ne v0, v7, :cond_e

    .line 187
    .line 188
    const/high16 v0, 0x40000

    .line 189
    .line 190
    or-int/2addr v0, v6

    .line 191
    if-eqz v10, :cond_d

    .line 192
    .line 193
    const/high16 v0, 0xc0000

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_d
    move v6, v0

    .line 197
    :cond_e
    :goto_6
    iput v6, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 198
    .line 199
    and-int v0, v6, v3

    .line 200
    .line 201
    if-eqz v0, :cond_f

    .line 202
    .line 203
    move v0, v4

    .line 204
    goto :goto_7

    .line 205
    :cond_f
    move v0, v5

    .line 206
    :goto_7
    if-nez v2, :cond_11

    .line 207
    .line 208
    if-eqz v0, :cond_11

    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 211
    .line 212
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    new-instance v1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    .line 218
    .line 219
    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;-><init>(Lcom/android/server/wm/VisibleActivityProcessTracker;Lcom/android/server/wm/WindowProcessController;)V

    .line 220
    .line 221
    .line 222
    iget-object v3, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 223
    .line 224
    monitor-enter v3

    .line 225
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 226
    .line 227
    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_10

    .line 236
    .line 237
    iput-boolean v4, v1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    .line 238
    .line 239
    iget-object v0, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 240
    .line 241
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 242
    .line 243
    .line 244
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 247
    .line 248
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 249
    .line 250
    invoke-virtual {v0, p0, v4}, Lcom/android/server/wm/WindowManagerService;->onProcessActivityVisibilityChanged(IZ)V

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :catchall_0
    move-exception p0

    .line 255
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    throw p0

    .line 257
    :cond_11
    if-eqz v2, :cond_13

    .line 258
    .line 259
    if-nez v0, :cond_13

    .line 260
    .line 261
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 262
    .line 263
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 264
    .line 265
    iget-object v3, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 266
    .line 267
    monitor-enter v3

    .line 268
    :try_start_2
    iget-object v1, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 269
    .line 270
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    .line 275
    .line 276
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    if-eqz v1, :cond_12

    .line 278
    .line 279
    iget-boolean v2, v1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    .line 280
    .line 281
    if-eqz v2, :cond_12

    .line 282
    .line 283
    iget-object v0, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 284
    .line 285
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 286
    .line 287
    .line 288
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 291
    .line 292
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 293
    .line 294
    invoke-virtual {v0, p0, v5}, Lcom/android/server/wm/WindowManagerService;->onProcessActivityVisibilityChanged(IZ)V

    .line 295
    .line 296
    .line 297
    goto :goto_8

    .line 298
    :catchall_1
    move-exception p0

    .line 299
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 300
    throw p0

    .line 301
    :cond_13
    if-eqz v2, :cond_14

    .line 302
    .line 303
    if-nez v1, :cond_14

    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_14

    .line 310
    .line 311
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 314
    .line 315
    iget-object v1, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 316
    .line 317
    monitor-enter v1

    .line 318
    :try_start_4
    iget-object v2, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 319
    .line 320
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    check-cast p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    .line 325
    .line 326
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 327
    if-eqz p0, :cond_14

    .line 328
    .line 329
    iget-boolean v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    .line 330
    .line 331
    if-nez v1, :cond_14

    .line 332
    .line 333
    iput-boolean v4, p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    .line 334
    .line 335
    iget-object v0, v0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 336
    .line 337
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :catchall_2
    move-exception p0

    .line 342
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 343
    throw p0

    .line 344
    :cond_14
    :goto_8
    return-void
.end method

.method public final computeRelaunchReason()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz v1, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final containsPackage(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v2, v1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    if-ne v0, p0, :cond_2

    .line 28
    .line 29
    :cond_0
    iget-object p0, v1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p0, v1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    invoke-virtual {v1}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    new-instance p0, Landroid/app/ProfilerInfo;

    .line 44
    .line 45
    invoke-direct {p0, v1}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public final dispatchConfiguration(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "Unable to send config for IME proc "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, ": no app thread"

    .line 26
    .line 27
    const-string v1, "ActivityTaskManager"

    .line 28
    .line 29
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    iget v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    add-int/2addr v2, v3

    .line 39
    iput v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 40
    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 46
    .line 47
    iput v2, p1, Landroid/content/res/Configuration;->seq:I

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 53
    .line 54
    const/16 v2, 0x10

    .line 55
    .line 56
    if-lt v1, v2, :cond_2

    .line 57
    .line 58
    iput-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    .line 59
    .line 60
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 61
    .line 62
    if-lt v1, v2, :cond_2

    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    .line 69
    .line 70
    invoke-static {p1, v1}, Landroid/app/servertransaction/ConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;I)Landroid/app/servertransaction/ConfigurationChangeItem;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p2, "    "

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "Activities:"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move v1, v2

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-ge v1, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v3, "  - "

    .line 41
    .line 42
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "Remote Activities:"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/lit8 v1, v1, -0x1

    .line 85
    .line 86
    :goto_1
    if-ltz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v3, "  - "

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const-string v3, " flags="

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, [I

    .line 117
    .line 118
    aget v3, v3, v2

    .line 119
    .line 120
    and-int/lit8 v4, v3, 0x1

    .line 121
    .line 122
    if-eqz v4, :cond_1

    .line 123
    .line 124
    const-string v4, "host "

    .line 125
    .line 126
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    and-int/lit8 v3, v3, 0x2

    .line 130
    .line 131
    if-eqz v3, :cond_2

    .line 132
    .line 133
    const-string v3, "embedded"

    .line 134
    .line 135
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v1, v1, -0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-lez v1, :cond_4

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v3, "Recent Tasks:"

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-ge v2, v1, :cond_4

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v3, "  - "

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_4
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 213
    .line 214
    if-eqz v1, :cond_5

    .line 215
    .line 216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string/jumbo p2, "mVrThreadTid="

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget p2, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 226
    .line 227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 228
    .line 229
    .line 230
    :cond_5
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 231
    .line 232
    invoke-virtual {p2, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController;->dump(Ljava/io/PrintWriter;)V

    .line 233
    .line 234
    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 237
    .line 238
    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v0, "     Configuration="

    .line 242
    .line 243
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v0, "     OverrideConfiguration="

    .line 263
    .line 264
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v0, "     mLastReportedConfiguration="

    .line 284
    .line 285
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    .line 289
    .line 290
    if-eqz v0, :cond_6

    .line 291
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v1, "(cached) "

    .line 295
    .line 296
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    goto :goto_3

    .line 309
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 310
    .line 311
    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget p2, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 322
    .line 323
    if-eqz p2, :cond_a

    .line 324
    .line 325
    const-string v0, "     mAnimatingReasons="

    .line 326
    .line 327
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    and-int/lit8 v0, p2, 0x1

    .line 331
    .line 332
    if-eqz v0, :cond_7

    .line 333
    .line 334
    const-string/jumbo v0, "remote-animation|"

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :cond_7
    and-int/lit8 v0, p2, 0x2

    .line 341
    .line 342
    if-eqz v0, :cond_8

    .line 343
    .line 344
    const-string/jumbo v0, "wakefulness|"

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :cond_8
    and-int/lit8 p2, p2, 0x4

    .line 351
    .line 352
    if-eqz p2, :cond_9

    .line 353
    .line 354
    const-string p2, "legacy-recents"

    .line 355
    .line 356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 360
    .line 361
    .line 362
    :cond_a
    iget-boolean p2, p0, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    .line 363
    .line 364
    if-eqz p2, :cond_b

    .line 365
    .line 366
    const-string p2, "     mUseFifoUiScheduling=true"

    .line 367
    .line 368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :cond_b
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 372
    .line 373
    const p2, 0xffff

    .line 374
    .line 375
    .line 376
    if-eq p0, p2, :cond_12

    .line 377
    .line 378
    const-string v0, "     mActivityStateFlags="

    .line 379
    .line 380
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const/high16 v0, 0x100000

    .line 384
    .line 385
    and-int/2addr v0, p0

    .line 386
    if-eqz v0, :cond_c

    .line 387
    .line 388
    const-string v0, "W|"

    .line 389
    .line 390
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    :cond_c
    const/high16 v0, 0x10000

    .line 394
    .line 395
    and-int/2addr v0, p0

    .line 396
    if-eqz v0, :cond_d

    .line 397
    .line 398
    const-string v0, "V|"

    .line 399
    .line 400
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    const/high16 v0, 0x200000

    .line 404
    .line 405
    and-int/2addr v0, p0

    .line 406
    if-eqz v0, :cond_f

    .line 407
    .line 408
    const-string v0, "R|"

    .line 409
    .line 410
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_d
    const/high16 v0, 0x20000

    .line 415
    .line 416
    and-int/2addr v0, p0

    .line 417
    if-eqz v0, :cond_e

    .line 418
    .line 419
    const-string v0, "P|"

    .line 420
    .line 421
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    goto :goto_4

    .line 425
    :cond_e
    const/high16 v0, 0x40000

    .line 426
    .line 427
    and-int/2addr v0, p0

    .line 428
    if-eqz v0, :cond_f

    .line 429
    .line 430
    const-string v0, "S|"

    .line 431
    .line 432
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    const/high16 v0, 0x80000

    .line 436
    .line 437
    and-int/2addr v0, p0

    .line 438
    if-eqz v0, :cond_f

    .line 439
    .line 440
    const-string v0, "F|"

    .line 441
    .line 442
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :cond_f
    :goto_4
    const/high16 v0, 0x400000

    .line 446
    .line 447
    and-int/2addr v0, p0

    .line 448
    if-eqz v0, :cond_10

    .line 449
    .line 450
    const-string v0, "VT|"

    .line 451
    .line 452
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    :cond_10
    and-int/2addr p0, p2

    .line 456
    if-eq p0, p2, :cond_11

    .line 457
    .line 458
    new-instance p2, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    const-string/jumbo v0, "taskLayer="

    .line 461
    .line 462
    .line 463
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p0

    .line 473
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    :cond_11
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 477
    .line 478
    .line 479
    :cond_12
    return-void

    .line 480
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 482
    .line 483
    .line 484
    throw p0
.end method

.method public final getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getChildCount()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getDisplayContextsWithErrorDialogs(Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 16
    .line 17
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    add-int/lit8 v3, v3, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v3, :cond_1

    .line 26
    .line 27
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 34
    .line 35
    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-direct {v5, v2, v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 48
    .line 49
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 50
    .line 51
    move-object v5, p1

    .line 52
    check-cast v5, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    add-int/lit8 v2, v2, -0x1

    .line 67
    .line 68
    :goto_1
    if-ltz v2, :cond_4

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 93
    .line 94
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const/4 v4, 0x0

    .line 98
    :goto_2
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    move-object v3, p1

    .line 107
    check-cast v3, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_3

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_4

    .line 121
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method public final getInputDispatchingTimeoutMillis()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 19
    .line 20
    int-to-long v1, p0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_0
    const-wide/32 v1, 0xea60

    .line 25
    .line 26
    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    return-wide v1

    .line 32
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final getPackageList()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, [I

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [I

    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    return-object v0
.end method

.method public final getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v1, v0, -0x1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    add-int/lit8 v0, v0, -0x2

    .line 32
    .line 33
    :goto_0
    if-ltz v0, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-lez v5, :cond_1

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    move-object v1, v3

    .line 56
    move-object v2, v4

    .line 57
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-object v2
.end method

.method public final handleAppCrash()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    add-int/lit8 p0, p0, -0x1

    .line 13
    .line 14
    :goto_0
    if-ltz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "  Force finishing activity "

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "ActivityTaskManager"

    .line 43
    .line 44
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    const/16 v4, 0x10

    .line 54
    .line 55
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 56
    .line 57
    .line 58
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-virtual {v5, v3, v4, v6, v2}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 62
    .line 63
    .line 64
    const-string v2, "handleAppCrashed"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    add-int/lit8 p0, p0, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public final handleAppDied$1()Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {v2, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v2, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    move v1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v2

    .line 37
    :goto_0
    iget-boolean v4, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    :goto_2
    iget-boolean v5, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 53
    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    iget-object v5, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    :cond_3
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 69
    .line 70
    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sub-int/2addr v1, v3

    .line 79
    :goto_3
    if-ltz v1, :cond_5

    .line 80
    .line 81
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v1, v1, -0x1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    sub-int/2addr v1, v3

    .line 98
    move v5, v2

    .line 99
    :goto_4
    const/4 v6, 0x0

    .line 100
    if-ltz v1, :cond_1d

    .line 101
    .line 102
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 107
    .line 108
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-nez v8, :cond_6

    .line 113
    .line 114
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 115
    .line 116
    if-nez v8, :cond_6

    .line 117
    .line 118
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_7

    .line 123
    .line 124
    :cond_6
    move v5, v3

    .line 125
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    if-eqz v8, :cond_b

    .line 130
    .line 131
    iget-object v9, v8, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 132
    .line 133
    if-eqz v9, :cond_9

    .line 134
    .line 135
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 136
    .line 137
    if-ne v10, v0, :cond_9

    .line 138
    .line 139
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 140
    .line 141
    aget-boolean v10, v10, v3

    .line 142
    .line 143
    if-eqz v10, :cond_8

    .line 144
    .line 145
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 150
    .line 151
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    const/4 v13, 0x0

    .line 156
    const/4 v14, 0x0

    .line 157
    const-wide v11, 0x8f752dddcc63debL

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    iput-object v6, v8, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 166
    .line 167
    move v9, v3

    .line 168
    goto :goto_5

    .line 169
    :cond_9
    move v9, v2

    .line 170
    :goto_5
    iget-object v10, v8, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 171
    .line 172
    if-eqz v10, :cond_a

    .line 173
    .line 174
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 175
    .line 176
    if-ne v10, v0, :cond_a

    .line 177
    .line 178
    iput-object v6, v8, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 179
    .line 180
    :cond_a
    or-int/2addr v5, v9

    .line 181
    :cond_b
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-static {v6}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    const/4 v8, 0x2

    .line 190
    if-eqz v6, :cond_d

    .line 191
    .line 192
    :cond_c
    :goto_6
    move v6, v3

    .line 193
    goto :goto_7

    .line 194
    :cond_d
    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 195
    .line 196
    if-eq v6, v3, :cond_e

    .line 197
    .line 198
    if-ne v6, v8, :cond_10

    .line 199
    .line 200
    :cond_e
    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 201
    .line 202
    const/4 v9, 0x3

    .line 203
    if-ge v6, v9, :cond_10

    .line 204
    .line 205
    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 206
    .line 207
    if-nez v6, :cond_10

    .line 208
    .line 209
    :cond_f
    move v6, v2

    .line 210
    goto :goto_7

    .line 211
    :cond_10
    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    .line 212
    .line 213
    if-nez v6, :cond_11

    .line 214
    .line 215
    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    .line 216
    .line 217
    if-nez v6, :cond_11

    .line 218
    .line 219
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    .line 220
    .line 221
    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_c

    .line 226
    .line 227
    :cond_11
    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 228
    .line 229
    if-eqz v6, :cond_12

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_12
    iget-boolean v6, v7, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 233
    .line 234
    if-nez v6, :cond_f

    .line 235
    .line 236
    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 237
    .line 238
    if-le v6, v8, :cond_f

    .line 239
    .line 240
    iget-wide v9, v7, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 241
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 243
    .line 244
    .line 245
    move-result-wide v11

    .line 246
    const-wide/32 v13, 0xea60

    .line 247
    .line 248
    .line 249
    sub-long/2addr v11, v13

    .line 250
    cmp-long v6, v9, v11

    .line 251
    .line 252
    if-lez v6, :cond_f

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :goto_7
    if-eqz v6, :cond_16

    .line 256
    .line 257
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 258
    .line 259
    aget-boolean v8, v9, v8

    .line 260
    .line 261
    if-eqz v8, :cond_13

    .line 262
    .line 263
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    .line 268
    .line 269
    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    .line 270
    .line 271
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 276
    .line 277
    iget-object v12, v7, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 278
    .line 279
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    const/4 v12, 0x5

    .line 284
    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 293
    .line 294
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    move-object v10, v8

    .line 303
    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v20

    .line 307
    const/16 v19, 0x0

    .line 308
    .line 309
    const-wide v16, 0x826bc31d70d318aL

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    const/16 v18, 0xcc

    .line 315
    .line 316
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :cond_13
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 320
    .line 321
    if-eqz v8, :cond_14

    .line 322
    .line 323
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 324
    .line 325
    if-eqz v8, :cond_16

    .line 326
    .line 327
    iget-object v8, v8, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 328
    .line 329
    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 330
    .line 331
    if-eqz v8, :cond_16

    .line 332
    .line 333
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v9, "Force removing "

    .line 336
    .line 337
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v9, ": app died, no saved state"

    .line 344
    .line 345
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    const-string v9, "ActivityTaskManager"

    .line 353
    .line 354
    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    iget v8, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 358
    .line 359
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    iget-object v10, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 364
    .line 365
    if-eqz v10, :cond_15

    .line 366
    .line 367
    iget v10, v10, Lcom/android/server/wm/Task;->mTaskId:I

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_15
    const/4 v10, -0x1

    .line 371
    :goto_8
    iget-object v11, v7, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 372
    .line 373
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    const-string/jumbo v12, "proc died without state saved"

    .line 386
    .line 387
    .line 388
    filled-new-array {v8, v9, v10, v11, v12}, [Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    const/16 v9, 0x7531

    .line 393
    .line 394
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 395
    .line 396
    .line 397
    :cond_16
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 398
    .line 399
    if-eqz v8, :cond_17

    .line 400
    .line 401
    iget-boolean v9, v8, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    .line 402
    .line 403
    if-eqz v9, :cond_17

    .line 404
    .line 405
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 406
    .line 407
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    iget-object v10, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v11

    .line 416
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v10

    .line 420
    if-eqz v10, :cond_17

    .line 421
    .line 422
    iput-boolean v2, v8, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    .line 423
    .line 424
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 425
    .line 426
    const/16 v10, 0xce

    .line 427
    .line 428
    invoke-virtual {v9, v10, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    :cond_17
    if-eqz v6, :cond_18

    .line 432
    .line 433
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 434
    .line 435
    if-eqz v8, :cond_18

    .line 436
    .line 437
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    if-ne v8, v3, :cond_18

    .line 442
    .line 443
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 444
    .line 445
    goto :goto_9

    .line 446
    :cond_18
    move-object v8, v7

    .line 447
    :goto_9
    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 448
    .line 449
    invoke-virtual {v9, v8}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 450
    .line 451
    .line 452
    move-result-object v9

    .line 453
    if-eqz v9, :cond_19

    .line 454
    .line 455
    invoke-virtual {v9, v8}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    .line 456
    .line 457
    .line 458
    goto :goto_a

    .line 459
    :cond_19
    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 460
    .line 461
    invoke-virtual {v9}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    if-eqz v9, :cond_1a

    .line 466
    .line 467
    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 468
    .line 469
    invoke-virtual {v9}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 470
    .line 471
    .line 472
    move-result-object v9

    .line 473
    invoke-virtual {v9, v8}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    .line 474
    .line 475
    .line 476
    :cond_1a
    :goto_a
    invoke-virtual {v7, v3, v3}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 477
    .line 478
    .line 479
    if-eqz v6, :cond_1c

    .line 480
    .line 481
    iget-object v6, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 482
    .line 483
    if-eqz v6, :cond_1b

    .line 484
    .line 485
    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 486
    .line 487
    if-eqz v6, :cond_1b

    .line 488
    .line 489
    iget-object v6, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 490
    .line 491
    if-eqz v6, :cond_1b

    .line 492
    .line 493
    invoke-virtual {v6, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    if-eqz v6, :cond_1b

    .line 498
    .line 499
    iget-boolean v8, v6, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 500
    .line 501
    if-nez v8, :cond_1b

    .line 502
    .line 503
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    .line 504
    .line 505
    .line 506
    move-result v8

    .line 507
    if-eqz v8, :cond_1b

    .line 508
    .line 509
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    .line 510
    .line 511
    .line 512
    :cond_1b
    const-string v6, "appDied"

    .line 513
    .line 514
    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    :cond_1c
    add-int/lit8 v1, v1, -0x1

    .line 518
    .line 519
    goto/16 :goto_4

    .line 520
    .line 521
    :cond_1d
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    sub-int/2addr v1, v3

    .line 528
    :goto_b
    if-ltz v1, :cond_1e

    .line 529
    .line 530
    iget-object v3, v0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    check-cast v3, Lcom/android/server/wm/Task;

    .line 537
    .line 538
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 539
    .line 540
    .line 541
    add-int/lit8 v1, v1, -0x1

    .line 542
    .line 543
    goto :goto_b

    .line 544
    :cond_1e
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 547
    .line 548
    .line 549
    iput-boolean v2, v0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    .line 550
    .line 551
    iput-object v6, v0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 552
    .line 553
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 556
    .line 557
    .line 558
    iput-boolean v2, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 559
    .line 560
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    .line 561
    .line 562
    .line 563
    return v5
.end method

.method public final hasActivityInVisibleTask()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 2
    .line 3
    const/high16 v0, 0x400000

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final hasResumedActivity()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 2
    .line 3
    const/high16 v0, 0x200000

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final hasThread()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const-wide v3, -0x403e6aeb7d63ce3bL    # -0.13736206414649935

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "Sending to IME proc "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " new config "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "ActivityTaskManager"

    .line 67
    .line 68
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    .line 73
    .line 74
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sub-int/2addr p1, v0

    .line 22
    :goto_0
    if-ltz p1, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    move-object v1, p1

    .line 43
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 59
    .line 60
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getDeviceIdForDisplayId(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v1, p1

    .line 68
    :goto_2
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    .line 69
    .line 70
    if-eq v1, v2, :cond_4

    .line 71
    .line 72
    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    .line 73
    .line 74
    move p1, v0

    .line 75
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    xor-int/2addr p1, v0

    .line 86
    and-int/2addr p1, v2

    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v0, "Current config: "

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, " unchanged for IME proc "

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 113
    .line 114
    const-string v0, "ActivityTaskManager"

    .line 115
    .line 116
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    return-void

    .line 120
    :cond_6
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 121
    .line 122
    if-lez p1, :cond_7

    .line 123
    .line 124
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 125
    .line 126
    return-void

    .line 127
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final onTopProcChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x3

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowProcessController;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayAreaConfigurationListener()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigTask:Lcom/android/server/wm/Task;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public registeredForActivityConfigChanges()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final releaseSomeActivities()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v2, v3, :cond_5

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 21
    .line 22
    if-nez v4, :cond_4

    .line 23
    .line 24
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    .line 25
    .line 26
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 27
    .line 28
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 56
    .line 57
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 58
    .line 59
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 60
    .line 61
    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 62
    .line 63
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState$1(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    :goto_2
    return-void

    .line 90
    :cond_5
    if-eqz v0, :cond_7

    .line 91
    .line 92
    new-instance p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    const/4 v2, 0x1

    .line 105
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 114
    .line 115
    const-string v3, "low-mem"

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    add-int/lit8 p0, p0, -0x1

    .line 121
    .line 122
    if-gtz p0, :cond_6

    .line 123
    .line 124
    :cond_7
    return-void
.end method

.method public final removeActivity(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    xor-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final removeAnimatingReason(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 2
    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final removeRemoteActivityFlags(ILcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-gez p2, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aget v2, v0, v1

    .line 23
    .line 24
    not-int p1, p1

    .line 25
    and-int/2addr p1, v2

    .line 26
    aput p1, v0, v1

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 11
    .line 12
    if-le v3, v1, :cond_0

    .line 13
    .line 14
    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    .line 29
    .line 30
    iput v0, v7, Landroid/content/res/Configuration;->seq:I

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 37
    .line 38
    invoke-virtual {v7, v0}, Landroid/content/res/Configuration;->overrideUndefinedFrom(Landroid/content/res/Configuration;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    move-object v4, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v0, 0x0

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    move-object v6, p1

    .line 67
    invoke-static/range {v4 .. v11}, Lcom/android/server/wm/ConfigurationContainer;->applySizeOverrideIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZZZLcom/android/server/wm/Task;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final resumeConfigurationDispatch()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 12
    .line 13
    return p0
.end method

.method public final scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    const-string v1, " owner="

    const-string v2, "ActivityTaskManager"

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mWindowSession:Lcom/android/server/wm/Session;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v3, :cond_0

    .line 11
    :try_start_1
    iget-object v3, v3, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p0

    .line 18
    invoke-virtual {p0, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 19
    invoke-static {p0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 20
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to schedule ClientTransactionItem="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 21
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed for dead process. ClientTransactionItem="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1

    .line 2
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to send transaction to client proc "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    const-string v0, ": no app thread"

    const-string v1, "ActivityTaskManager"

    .line 4
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method

.method public final scheduleUpdateOomAdj()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 15
    .line 16
    invoke-static {v1, p0, v2, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final setOverrideGender(Landroid/content/res/Configuration;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGrammaticalManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 6
    .line 7
    invoke-static {p1, p2, v0, p0}, Lcom/android/server/wm/WindowProcessController;->applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final setThread(Landroid/app/IApplicationThread;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 25
    .line 26
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    iget-object p1, p1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    .line 34
    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    return-void

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :try_start_4
    throw p0

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 42
    throw p0
.end method

.method public final stopFreezingActivities()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    if-lez v1, :cond_0

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public final unregisterActivityConfigurationListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigTask:Lcom/android/server/wm/Task;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroid/content/res/Configuration;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public unregisterDisplayAreaConfigurationListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigTask:Lcom/android/server/wm/Task;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    :goto_0
    if-ltz p1, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final updateActivityInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz v1, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 51
    .line 52
    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 55
    .line 56
    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final updateAssetConfiguration(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v0, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    new-instance v2, Landroid/content/res/Configuration;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 35
    .line 36
    .line 37
    iput p1, v2, Landroid/content/res/Configuration;->assetsSeq:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void

    .line 56
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/res/Configuration;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 63
    .line 64
    .line 65
    iput p1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final updateProcessInfo(ZZZZ)V
    .locals 1

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p4, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iget-object v0, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    .line 18
    .line 19
    .line 20
    :cond_1
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 38
    .line 39
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p1, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method
