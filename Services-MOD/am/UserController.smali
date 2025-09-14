.class public final Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public volatile mAllowUserUnlocking:Z

.field public mBackgroundUserScheduledStopTimeSecs:I

.field public final mCompletedEventTypes:Landroid/util/SparseIntArray;

.field public volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field public mCurrentProfileIds:[I

.field public volatile mCurrentUserId:I

.field public mDelayUserDataLocking:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInitialized:Z

.field public final mInjector:Lcom/android/server/am/UserController$Injector;

.field public mIsBroadcastSentForSystemUserStarted:Z

.field public mIsBroadcastSentForSystemUserStarting:Z

.field public final mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

.field public volatile mLastUserUnlockingUptime:J

.field public final mLock:Ljava/lang/Object;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaxRunningUsers:I

.field public final mPendingTargetUserIds:Ljava/util/ArrayDeque;

.field public final mPendingUserStarts:Ljava/util/List;

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public mStartedUserArray:[I

.field public final mStartedUsers:Landroid/util/SparseArray;

.field public mStopUserOnSwitch:I

.field public mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field public mSwitchingToSystemUserMessage:Ljava/lang/String;

.field public volatile mTargetUserId:I

.field public mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mUserLifecycleListener:Lcom/android/server/am/UserController$1;

.field public final mUserLru:Ljava/util/ArrayList;

.field public final mUserProfileGroupIds:Landroid/util/SparseIntArray;

.field public final mUserSwitchObservers:Landroid/os/RemoteCallbackList;

.field public mUserSwitchUiEnabled:Z


# direct methods
.method public static -$$Nest$smasyncTraceEnd(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p0

    .line 10
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    const-string p1, "ActivityManager"

    .line 16
    const-string v0, "%s - asyncTraceEnd(%d)"

    .line 18
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/am/UserController;->mBackgroundUserScheduledStopTimeSecs:I

    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 17
    const/16 v2, -0x2710

    .line 19
    iput v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 21
    new-instance v2, Ljava/util/ArrayDeque;

    .line 23
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    .line 28
    new-instance v2, Landroid/util/SparseArray;

    .line 30
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iput-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 42
    filled-new-array {v1}, [I

    .line 45
    move-result-object v4

    .line 46
    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 48
    new-array v4, v1, [I

    .line 50
    iput-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 52
    new-instance v4, Landroid/util/SparseIntArray;

    .line 54
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 57
    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 59
    new-instance v4, Landroid/os/RemoteCallbackList;

    .line 61
    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 64
    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 66
    const/4 v4, 0x1

    .line 67
    iput-boolean v4, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iput-object v4, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 76
    new-instance v4, Landroid/util/SparseIntArray;

    .line 78
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 81
    iput-object v4, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 83
    iput v0, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    .line 85
    const-wide/16 v4, 0x0

    .line 87
    iput-wide v4, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 96
    new-instance v0, Lcom/android/server/am/UserController$1;

    .line 98
    invoke-direct {v0, p0}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;)V

    .line 101
    iput-object v0, p0, Lcom/android/server/am/UserController;->mUserLifecycleListener:Lcom/android/server/am/UserController$1;

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 105
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 108
    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    new-instance v0, Landroid/os/Handler;

    .line 118
    iget-object v4, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 120
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 122
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 125
    move-result-object v4

    .line 126
    invoke-direct {v0, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 129
    iput-object v0, p1, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    .line 131
    iput-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Landroid/os/Handler;

    .line 135
    iget-object v4, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 137
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 139
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 142
    move-result-object v4

    .line 143
    invoke-direct {v0, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 146
    iput-object v0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/android/server/am/UserState;

    .line 150
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 152
    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 155
    iget-object v4, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 157
    new-instance v5, Lcom/android/server/am/UserController$UserProgressListener;

    .line 159
    invoke-direct {v5}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 162
    invoke-virtual {v4, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 165
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 177
    iget-object p1, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 179
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 181
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 184
    iput-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 186
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 189
    return-void
.end method

.method public static asyncTraceBegin(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "ActivityManager"

    .line 11
    const-string v2, "%s - asyncTraceBegin(%d)"

    .line 13
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    const-wide/16 v0, 0x40

    .line 18
    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 21
    return-void
.end method

.method public static getUserSwitchTimeoutMs()I
    .locals 2

    .line 1
    const-string/jumbo v0, "debug.usercontroller.user_switch_timeout_ms"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return v0

    .line 19
    :catch_0
    :cond_0
    const/16 v0, 0xbb8

    .line 21
    return v0
.end method

.method public static showEventLog(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/EventLogTags;->writeBootProgressAmsState(IIILjava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v0, "!@AM_BOOT_PROGRESS , uid : "

    .line 6
    const-string v1, ", state:  "

    .line 8
    const-string v2, ", progress : "

    .line 10
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object p0

    .line 14
    const-string p1, ", step : "

    .line 16
    const-string v0, ", description : "

    .line 18
    invoke-static {p2, p1, p3, v0, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 21
    const-string p1, "ActivityManager"

    .line 23
    invoke-static {p0, p4, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final addUserToUserLru(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 20
    const/16 v3, -0x2710

    .line 22
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v2

    .line 30
    if-eq p1, v3, :cond_0

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V
    .locals 9

    .line 1
    new-instance v1, Landroid/content/Intent;

    .line 3
    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p3, "android.intent.extra.USER"

    .line 8
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    const/high16 p1, 0x50000000

    .line 17
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 22
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    move-result v6

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 31
    move-result v7

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    move v8, p2

    .line 36
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 39
    return-void
.end method

.method public final canDelayDataLockingForUser(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 13
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 21
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 28
    move-result-object p1

    .line 29
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 31
    if-nez p0, :cond_1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 45
    :goto_1
    return p0

    .line 46
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 48
    return p0
.end method

.method public final varargs checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 7
    if-ne v0, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 18
    const-string p1, "Cannot control users : unauthorized"

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    array-length v0, p2

    .line 25
    const/4 v1, 0x0

    .line 26
    move v2, v1

    .line 27
    :goto_1
    if-ge v2, v0, :cond_3

    .line 29
    aget-object v3, p2, v2

    .line 31
    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 33
    iget-object v4, v4, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 35
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2

    .line 41
    return-void

    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const-string p0, "Permission denial: "

    .line 47
    const-string v0, "() from pid="

    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string p1, ", uid="

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string p1, " requires "

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    array-length p1, p2

    .line 78
    const/4 v0, 0x1

    .line 79
    if-ne p1, v0, :cond_4

    .line 81
    aget-object p1, p2, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v0, "one of "

    .line 89
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    const-string p1, "ActivityManager"

    .line 112
    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance p1, Ljava/lang/SecurityException;

    .line 117
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p1
.end method

.method public final checkGetCurrentUserPermissions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 15
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 17
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    const-string v0, "Permission Denial: getCurrentUser() from pid="

    .line 30
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, ", uid="

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, " requires android.permission.INTERACT_ACROSS_USERS"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    const-string v0, "ActivityManager"

    .line 63
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Ljava/lang/SecurityException;

    .line 68
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0

    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public final checkHasManageUsersPermission(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    const-string v0, "android.permission.MANAGE_USERS"

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    move-result p0

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq p0, v0, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 17
    const-string v0, "You need MANAGE_USERS permission to call "

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
.end method

.method public completeUserSwitch(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 11
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 13
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 15
    const-class v2, Landroid/app/KeyguardManager;

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/app/KeyguardManager;

    .line 23
    invoke-virtual {v0, p2}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 34
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;

    .line 39
    invoke-direct {v3, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/UserController$Injector;)V

    .line 42
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;

    .line 44
    invoke-direct {v2, p0, v1, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/UserController;ZII)V

    .line 47
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v3, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->accept(Ljava/lang/Object;)V

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;->run()V

    .line 56
    :goto_1
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p0
.end method

.method public continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "continueUserSwitch-"

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "-to-"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    const/16 v2, 0x7580

    .line 46
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 49
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 51
    const/16 v2, 0x82

    .line 53
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {v1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    const/4 p3, 0x0

    .line 66
    iput-boolean p3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 68
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 70
    monitor-enter p1

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/android/server/am/UserState;

    .line 79
    if-eqz p2, :cond_3

    .line 81
    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 83
    if-eq p2, v2, :cond_3

    .line 85
    if-eqz v1, :cond_3

    .line 87
    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    .line 89
    const/4 v2, 0x4

    .line 90
    if-eq v1, v2, :cond_3

    .line 92
    const/4 v2, 0x5

    .line 93
    if-ne v1, v2, :cond_0

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 107
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 109
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 115
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_4

    .line 130
    :cond_2
    const-string p1, "ActivityManager"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "Stopping background guest or ephemeral user "

    .line 136
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    invoke-static {p1, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 151
    monitor-enter v1

    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v4, 0x1

    .line 155
    const/4 v5, 0x0

    .line 156
    move-object v2, p0

    .line 157
    move v3, p2

    .line 158
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 161
    monitor-exit v1

    .line 162
    goto :goto_1

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    throw p0

    .line 166
    :catchall_1
    move-exception p0

    .line 167
    goto/16 :goto_7

    .line 169
    :cond_3
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    :cond_4
    :goto_1
    if-nez p2, :cond_5

    .line 172
    goto/16 :goto_5

    .line 174
    :cond_5
    const-string/jumbo p1, "no_run_in_background"

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 180
    move-result p1

    .line 181
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 183
    monitor-enter v1

    .line 184
    if-nez p1, :cond_8

    .line 186
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->shouldStopUserOnSwitch()Z

    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_6

    .line 192
    goto :goto_4

    .line 193
    :cond_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 194
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 196
    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Ljava/util/ArrayList;

    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 209
    move-result v1

    .line 210
    :goto_2
    if-ge p3, v1, :cond_9

    .line 212
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 218
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 220
    const-string/jumbo v2, "no_run_in_background"

    .line 223
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_7

    .line 229
    const-string v2, "ActivityManager"

    .line 231
    const-string v3, "Stopping profile %d on user switch"

    .line 233
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object v5

    .line 237
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 240
    move-result-object v5

    .line 241
    invoke-static {v2, v3, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 246
    monitor-enter v2

    .line 247
    const/4 v5, 0x0

    .line 248
    const/4 v6, 0x0

    .line 249
    const/4 v7, 0x0

    .line 250
    const/4 v8, 0x0

    .line 251
    move-object v3, p0

    .line 252
    :try_start_4
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 255
    monitor-exit v2

    .line 256
    goto :goto_3

    .line 257
    :catchall_2
    move-exception p0

    .line 258
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 259
    throw p0

    .line 260
    :cond_7
    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 262
    goto :goto_2

    .line 263
    :catchall_3
    move-exception p0

    .line 264
    goto :goto_6

    .line 265
    :cond_8
    :goto_4
    :try_start_5
    const-string p1, "ActivityManager"

    .line 267
    const-string p3, "Stopping user %d and its profiles on user switch"

    .line 269
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    move-result-object v2

    .line 273
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 276
    move-result-object v2

    .line 277
    invoke-static {p1, p3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    const/4 v7, 0x0

    .line 281
    const/4 v8, 0x0

    .line 282
    const/4 v5, 0x1

    .line 283
    const/4 v6, 0x0

    .line 284
    move-object v3, p0

    .line 285
    move v4, p2

    .line 286
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 289
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 290
    :cond_9
    :goto_5
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->scheduleStopOfBackgroundUser(I)V

    .line 293
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 296
    return-void

    .line 297
    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 298
    throw p0

    .line 299
    :goto_7
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 300
    throw p0
.end method

.method public dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "dispatchUserSwitch-"

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "-to-"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    const/16 v2, 0x757f

    .line 46
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 49
    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 52
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v1, p3, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(II)V

    .line 58
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;

    .line 60
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;II)V

    .line 63
    const-string/jumbo p1, "onUserSwitching"

    .line 66
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/am/UserController;->informUserSwitchObservers(Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 72
    return-void
.end method

.method public dispatchUserSwitchComplete(II)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "dispatchUserSwitchComplete-"

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 26
    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 28
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 34
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 36
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 39
    move-result v1

    .line 40
    :goto_0
    if-ge v2, v1, :cond_0

    .line 42
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string/jumbo v4, "onUserSwitchComplete-"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v4, " #"

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v4, " "

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 71
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 87
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/app/IUserSwitchObserver;

    .line 93
    invoke-interface {v3, p2}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V

    .line 96
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 104
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v2, "sendUserSwitchBroadcasts-"

    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, "-"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    .line 136
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 139
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->endUserSwitch()V

    .line 145
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const-wide v1, 0x10b0000000eL

    .line 9
    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 12
    move-result-wide v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v5

    .line 21
    const-wide v6, 0x10500000001L

    .line 26
    if-ge v4, v5, :cond_2

    .line 28
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/android/server/am/UserState;

    .line 36
    const-wide v8, 0x20b00000001L

    .line 41
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 44
    move-result-wide v8

    .line 45
    iget-object v10, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 47
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    .line 50
    move-result v10

    .line 51
    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 54
    const-wide v6, 0x10b00000002L

    .line 59
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 62
    move-result-wide v6

    .line 63
    iget v10, v5, Lcom/android/server/am/UserState;->state:I

    .line 65
    if-eqz v10, :cond_1

    .line 67
    const/4 v11, 0x1

    .line 68
    if-eq v10, v11, :cond_0

    .line 70
    const/4 v11, 0x2

    .line 71
    if-eq v10, v11, :cond_0

    .line 73
    const/4 v11, 0x3

    .line 74
    if-eq v10, v11, :cond_0

    .line 76
    const/4 v11, 0x4

    .line 77
    if-eq v10, v11, :cond_0

    .line 79
    const/4 v11, 0x5

    .line 80
    if-eq v10, v11, :cond_0

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    move v10, v11

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move v10, v3

    .line 86
    :goto_1
    const-wide v11, 0x10e00000001L

    .line 91
    invoke-virtual {p1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 94
    iget-boolean v5, v5, Lcom/android/server/am/UserState;->switching:Z

    .line 96
    const-wide v10, 0x10800000002L

    .line 101
    invoke-virtual {p1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 104
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 107
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto/16 :goto_6

    .line 116
    :cond_2
    move v4, v3

    .line 117
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 119
    array-length v8, v5

    .line 120
    if-ge v4, v8, :cond_3

    .line 122
    aget v5, v5, v4

    .line 124
    const-wide v8, 0x20500000002L

    .line 129
    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    move v4, v3

    .line 136
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 141
    move-result v5

    .line 142
    if-ge v4, v5, :cond_4

    .line 144
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Ljava/lang/Integer;

    .line 152
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 155
    move-result v5

    .line 156
    const-wide v8, 0x20500000003L

    .line 161
    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 166
    goto :goto_3

    .line 167
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 169
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 172
    move-result v4

    .line 173
    if-lez v4, :cond_5

    .line 175
    move v4, v3

    .line 176
    :goto_4
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 178
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 181
    move-result v5

    .line 182
    if-ge v4, v5, :cond_5

    .line 184
    const-wide v8, 0x20b00000004L

    .line 189
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 192
    move-result-wide v8

    .line 193
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 195
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 198
    move-result v5

    .line 199
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 202
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 204
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 207
    move-result v5

    .line 208
    const-wide v10, 0x10500000002L

    .line 213
    invoke-virtual {p1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 216
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 221
    goto :goto_4

    .line 222
    :cond_5
    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 224
    const-wide v5, 0x10500000005L

    .line 229
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 232
    :goto_5
    iget-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 234
    array-length v5, v4

    .line 235
    if-ge v3, v5, :cond_6

    .line 237
    aget v4, v4, v3

    .line 239
    const-wide v5, 0x20500000006L

    .line 244
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 249
    goto :goto_5

    .line 250
    :cond_6
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 253
    monitor-exit v0

    .line 254
    return-void

    .line 255
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    throw p0
.end method

.method public final endUserSwitch()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/multiuser/Flags;->setPowerModeDuringUserSwitch()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->setPerformancePowerMode(Z)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 24
    const/16 v2, -0x2710

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v1, v3}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v1

    .line 40
    iput v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eq v1, v2, :cond_1

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->switchUser(I)Z

    .line 48
    :cond_1
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p0
.end method

.method public final enforceShellRestriction(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 7
    if-ne v0, v1, :cond_1

    .line 9
    if-ltz p1, :cond_0

    .line 11
    const-string/jumbo v0, "no_debugging_features"

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 23
    const-string v0, "Shell does not have permission to access user "

    .line 25
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$12;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 3
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x757e

    .line 9
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 12
    iget v1, p1, Lcom/android/server/am/UserState;->state:I

    .line 14
    const-string/jumbo v2, "finishUserBoot"

    .line 17
    const-string v3, "NULL"

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "ActivityManager"

    .line 25
    const-string v2, "Finishing user boot "

    .line 27
    invoke-static {v0, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    if-eq v2, p1, :cond_0

    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_2

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p1, v4, v1}, Lcom/android/server/am/UserState;->setState(II)Z

    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x4

    .line 53
    if-eqz v2, :cond_4

    .line 55
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 57
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 60
    move-result-object v2

    .line 61
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 63
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 66
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 68
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 71
    move-result-object v2

    .line 72
    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    .line 74
    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 77
    if-nez v0, :cond_2

    .line 79
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 81
    iget-object v5, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 83
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 85
    iget-boolean v5, v5, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 87
    if-nez v5, :cond_2

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 95
    move-result-object v2

    .line 96
    :try_start_1
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_2

    .line 102
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    .line 105
    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    if-eqz v2, :cond_1

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 112
    move-result-wide v5

    .line 113
    const/16 v2, 0xf0

    .line 115
    const/16 v7, 0xc

    .line 117
    invoke-static {v2, v7, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 120
    const-wide/32 v7, 0x1d4c0

    .line 123
    cmp-long v2, v5, v7

    .line 125
    if-lez v2, :cond_2

    .line 127
    const-string v2, "SystemServerTiming"

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v8, "finishUserBoot took too long. elapsedTimeMs="

    .line 134
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    invoke-static {v2, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception p0

    .line 149
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 152
    move-result-object p0

    .line 153
    throw p0

    .line 154
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 156
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_3

    .line 166
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 168
    const/16 v5, 0x6e

    .line 170
    invoke-virtual {v2, v5, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    .line 179
    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerService$12;I)V

    .line 184
    :cond_3
    iget p2, p1, Lcom/android/server/am/UserState;->state:I

    .line 186
    const-string/jumbo v2, "finishUserBoot"

    .line 189
    const-string/jumbo v4, "send LOCKED BOOT COMPLETED"

    .line 192
    invoke-static {v0, p2, v1, v2, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_4
    iget-object p2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 197
    invoke-virtual {p2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 204
    move-result-object p2

    .line 205
    if-nez p2, :cond_5

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    .line 210
    goto :goto_1

    .line 211
    :cond_5
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 213
    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_6

    .line 219
    const-string v1, "ActivityManager"

    .line 221
    const-string v2, "User "

    .line 223
    const-string v3, " (parent "

    .line 225
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    move-result-object v2

    .line 229
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 231
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string p2, "): attempting unlock because parent is unlocked"

    .line 236
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p2

    .line 243
    invoke-static {v1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    .line 249
    goto :goto_1

    .line 250
    :cond_6
    const-string p0, "ActivityManager"

    .line 252
    const-string v1, "User "

    .line 254
    const-string v2, " (parent "

    .line 256
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    move-result-object v1

    .line 260
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 262
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string p2, "): delaying unlock because parent is locked"

    .line 267
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object p2

    .line 274
    invoke-static {p0, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_1
    iget p0, p1, Lcom/android/server/am/UserState;->state:I

    .line 279
    const-string/jumbo p1, "finishUserBoot"

    .line 282
    const-string p2, "NULL"

    .line 284
    const/4 v1, 0x2

    .line 285
    invoke-static {v0, p0, v1, p1, p2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void

    .line 289
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    throw p0
.end method

.method public finishUserStopped(Lcom/android/server/am/UserState;Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "Delayed locking enabled while KeyEvictedCallbacks not empty, userId:"

    .line 7
    const-string v3, "Removing user state from UserController.mStartedUsers for user #"

    .line 9
    iget-object v4, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 11
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 14
    move-result v4

    .line 15
    const/16 v5, 0x757a

    .line 17
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 20
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 23
    move-result-object v15

    .line 24
    iget-object v5, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter v5

    .line 27
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    .line 29
    iget-object v6, v1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    .line 31
    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    new-instance v13, Ljava/util/ArrayList;

    .line 36
    iget-object v6, v1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    .line 38
    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    iget-object v6, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v12, 0x5

    .line 49
    const/4 v8, 0x1

    .line 50
    if-ne v6, v1, :cond_3

    .line 52
    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    .line 54
    if-eq v1, v12, :cond_0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const-string v1, "ActivityManager"

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, " as a result of user being stopped"

    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 84
    iget-object v1, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 96
    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_1

    .line 104
    const-string v1, "ActivityManager"

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, " callbacks:"

    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move v1, v7

    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto/16 :goto_9

    .line 134
    :cond_1
    move/from16 v1, p2

    .line 136
    :goto_0
    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/UserController;->updateUserToLockLU(IZ)I

    .line 139
    move-result v1

    .line 140
    const/16 v2, -0x2710

    .line 142
    if-ne v1, v2, :cond_2

    .line 144
    move v3, v7

    .line 145
    move v2, v8

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    move v2, v8

    .line 148
    move v3, v2

    .line 149
    goto :goto_2

    .line 150
    :cond_3
    :goto_1
    move v1, v4

    .line 151
    move v2, v7

    .line 152
    move v3, v8

    .line 153
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    new-instance v11, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 156
    invoke-direct {v11}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 159
    if-eqz v2, :cond_6

    .line 161
    const-string v5, "ActivityManager"

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 165
    const-string v7, "Removing user state from UserManager.mUserStates for user #"

    .line 167
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v7, " as a result of user being stopped"

    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v6

    .line 182
    invoke-static {v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 187
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerInternal;->removeUserState(I)V

    .line 194
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 196
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 201
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 204
    move-result-object v5

    .line 205
    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 207
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v6, "stopPackagesOfStoppedUser-"

    .line 215
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string v6, "-[stopUser]"

    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v11, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v16, "finish user"

    .line 236
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 238
    iget-object v10, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 240
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 243
    monitor-enter v10

    .line 244
    :try_start_1
    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 246
    const/4 v6, 0x0

    .line 247
    const/4 v7, -0x1

    .line 248
    const/4 v8, 0x0

    .line 249
    const/4 v9, 0x0

    .line 250
    const/16 v17, 0x1

    .line 252
    const/16 v18, 0x0

    .line 254
    const/16 v19, 0x0

    .line 256
    move-object/from16 v20, v10

    .line 258
    move/from16 v10, v17

    .line 260
    move-object/from16 p1, v11

    .line 262
    move/from16 v11, v18

    .line 264
    move/from16 v12, v19

    .line 266
    move-object/from16 v21, v13

    .line 268
    move v13, v4

    .line 269
    move-object/from16 v17, v14

    .line 271
    move-object/from16 v14, v16

    .line 273
    :try_start_2
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 276
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 280
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 282
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_4

    .line 292
    goto :goto_3

    .line 293
    :cond_4
    new-instance v7, Landroid/content/Intent;

    .line 295
    const-string v5, "android.intent.action.USER_STOPPED"

    .line 297
    invoke-direct {v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    const/high16 v5, 0x50000000

    .line 302
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    const-string v5, "android.intent.extra.user_handle"

    .line 307
    invoke-virtual {v7, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    iget-object v6, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 312
    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 317
    move-result v12

    .line 318
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 321
    move-result v13

    .line 322
    const/4 v10, 0x0

    .line 323
    const/4 v14, -0x1

    .line 324
    const/4 v8, 0x0

    .line 325
    const/4 v9, 0x0

    .line 326
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 329
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 332
    move-result-object v5

    .line 333
    if-eqz v5, :cond_5

    .line 335
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_5

    .line 341
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 343
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 350
    move-result-object v5

    .line 351
    if-eqz v5, :cond_5

    .line 353
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 355
    const-string v6, "android.intent.action.PROFILE_INACCESSIBLE"

    .line 357
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    .line 360
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 363
    goto :goto_5

    .line 364
    :catchall_1
    move-exception v0

    .line 365
    goto :goto_4

    .line 366
    :catchall_2
    move-exception v0

    .line 367
    move-object/from16 v20, v10

    .line 369
    :goto_4
    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 370
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 373
    throw v0

    .line 374
    :cond_6
    move-object/from16 p1, v11

    .line 376
    move-object/from16 v21, v13

    .line 378
    move-object/from16 v17, v14

    .line 380
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 383
    move-result-object v5

    .line 384
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    move-result v6

    .line 388
    if-eqz v6, :cond_8

    .line 390
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    move-result-object v6

    .line 394
    check-cast v6, Landroid/app/IStopUserCallback;

    .line 396
    if-eqz v2, :cond_7

    .line 398
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 400
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    const-string/jumbo v8, "stopCallbacks.userStopped-"

    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    const-string v8, "-[stopUser]"

    .line 414
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    move-result-object v7
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 421
    move-object/from16 v8, p1

    .line 423
    :try_start_5
    invoke-virtual {v8, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 426
    invoke-interface {v6, v4}, Landroid/app/IStopUserCallback;->userStopped(I)V

    .line 429
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 432
    goto :goto_7

    .line 433
    :catch_0
    move-object/from16 v8, p1

    .line 435
    goto :goto_7

    .line 436
    :cond_7
    move-object/from16 v8, p1

    .line 438
    new-instance v7, Ljava/lang/StringBuilder;

    .line 440
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    const-string/jumbo v9, "stopCallbacks.userStopAborted-"

    .line 446
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    const-string v9, "-[stopUser]"

    .line 454
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    move-result-object v7

    .line 461
    invoke-virtual {v8, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 464
    invoke-interface {v6, v4}, Landroid/app/IStopUserCallback;->userStopAborted(I)V

    .line 467
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 470
    :catch_1
    :goto_7
    move-object/from16 p1, v8

    .line 472
    goto :goto_6

    .line 473
    :cond_8
    move-object/from16 v8, p1

    .line 475
    const/16 v5, 0xc8

    .line 477
    if-eqz v2, :cond_c

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    .line 481
    const-string/jumbo v6, "systemServiceManagerOnUserStopped-"

    .line 484
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    const-string v6, "-[stopUser]"

    .line 492
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v8, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 502
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 504
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 506
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 508
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    const/16 v6, 0x7587

    .line 513
    invoke-static {v6, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 516
    const-string v6, "Cleanup"

    .line 518
    invoke-virtual {v2, v4, v6}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    .line 521
    iget-object v6, v2, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 523
    monitor-enter v6

    .line 524
    :try_start_6
    iget-object v2, v2, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 526
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 529
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 530
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    .line 535
    const-string/jumbo v6, "taskSupervisorRemoveUser-"

    .line 538
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    const-string v6, "-[stopUser]"

    .line 546
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    move-result-object v2

    .line 553
    invoke-virtual {v8, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 556
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 558
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 560
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 562
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 564
    iget-object v6, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 566
    iget-object v7, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 568
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 571
    monitor-enter v7

    .line 572
    :try_start_7
    iget-object v6, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 574
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 576
    iget-object v6, v6, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 578
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 581
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 583
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 585
    invoke-virtual {v2, v4}, Lcom/android/server/wm/PackageConfigPersister;->removeUser(I)V

    .line 588
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 589
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 592
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 595
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 598
    move-result v2

    .line 599
    if-eqz v2, :cond_9

    .line 601
    iget-boolean v2, v15, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 603
    if-nez v2, :cond_9

    .line 605
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 607
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 610
    move-result-object v2

    .line 611
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 614
    :cond_9
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 616
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 619
    move-result-object v2

    .line 620
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 622
    const/4 v6, -0x1

    .line 623
    const/4 v7, 0x5

    .line 624
    invoke-virtual {v2, v6, v15, v7, v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 627
    move-result-object v2

    .line 628
    if-eqz v2, :cond_a

    .line 630
    iget-object v6, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 632
    invoke-virtual {v6, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 635
    :cond_a
    if-eqz v3, :cond_b

    .line 637
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 640
    move-result-object v2

    .line 641
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;

    .line 643
    const/4 v5, 0x1

    .line 644
    move-object/from16 v6, v21

    .line 646
    invoke-direct {v3, v0, v1, v6, v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    .line 649
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 652
    :cond_b
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->resumePendingUserStarts(I)V

    .line 655
    goto :goto_8

    .line 656
    :catchall_3
    move-exception v0

    .line 657
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 658
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 661
    throw v0

    .line 662
    :catchall_4
    move-exception v0

    .line 663
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 664
    throw v0

    .line 665
    :cond_c
    const/4 v7, 0x5

    .line 666
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 668
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 671
    move-result-object v1

    .line 672
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 674
    invoke-virtual {v1, v4, v7}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 677
    move-result-object v1

    .line 678
    if-eqz v1, :cond_d

    .line 680
    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 682
    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 685
    :cond_d
    :goto_8
    return-void

    .line 686
    :goto_9
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 687
    throw v0
.end method

.method public final finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 3
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x7578

    .line 9
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 12
    iget v1, p1, Lcom/android/server/am/UserState;->state:I

    .line 14
    const-string/jumbo v2, "finishUserUnlockedCompleted"

    .line 17
    const-string v3, "NULL"

    .line 19
    const/4 v10, 0x2

    .line 20
    invoke-static {v0, v1, v10, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "ActivityManager"

    .line 25
    const-string v2, "UserController event: finishUserUnlockedCompleted("

    .line 27
    const-string v3, ")"

    .line 29
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 37
    iget-object v3, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 39
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    if-eq v2, p1, :cond_0

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_2

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 58
    move-result-object v11

    .line 59
    if-nez v11, :cond_1

    .line 61
    return-void

    .line 62
    :cond_1
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_2

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo p1, "dev.boot."

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string p1, ".user_unlocked"

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    const-string p1, "FAIL-finishUserUnlockedCompleted"

    .line 90
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string p0, "ActivityManager"

    .line 95
    const-string p1, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlockedCompleted"

    .line 97
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 101
    :cond_2
    iget v1, p1, Lcom/android/server/am/UserState;->state:I

    .line 103
    const-string/jumbo v2, "finishUserUnlockedCompleted"

    .line 106
    const-string v3, "OK StorageManager.isUserKeyUnlocked"

    .line 108
    const/4 v4, 0x1

    .line 109
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 114
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 121
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    .line 123
    const/4 v2, 0x1

    .line 124
    invoke-direct {v1, p0, v11, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Object;I)V

    .line 127
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isInitialized()Z

    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_4

    .line 133
    const-string v2, "ActivityManager"

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    const-string v4, "Initializing user #"

    .line 139
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v3

    .line 149
    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v2, v11, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 154
    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->run()V

    .line 159
    goto :goto_0

    .line 160
    :cond_3
    if-eqz v0, :cond_4

    .line 162
    const-string v2, "android.intent.action.USER_INITIALIZE"

    .line 164
    const/high16 v3, 0x11000000

    .line 166
    invoke-static {v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 169
    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 172
    new-instance v4, Lcom/android/server/am/UserController$2;

    .line 174
    invoke-direct {v4, v1}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V

    .line 177
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 182
    move-result v7

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 186
    move-result v8

    .line 187
    const/4 v5, 0x0

    .line 188
    const/4 v9, 0x0

    .line 189
    move-object v1, v3

    .line 190
    move-object v3, v4

    .line 191
    move-object v4, v5

    .line 192
    move-object v5, v9

    .line 193
    move v9, v0

    .line 194
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 197
    :cond_4
    :goto_0
    iget-boolean v1, v11, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 199
    if-eqz v1, :cond_5

    .line 201
    const-string p1, "ActivityManager"

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "Stopping pre-created user "

    .line 207
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    .line 226
    const/4 v5, 0x0

    .line 227
    const/4 v6, 0x0

    .line 228
    const/4 v3, 0x1

    .line 229
    const/4 v4, 0x0

    .line 230
    move-object v1, p0

    .line 231
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 234
    return-void

    .line 235
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 242
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 248
    if-eqz v1, :cond_6

    .line 250
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 253
    move-result-object v2

    .line 254
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    .line 256
    const/4 v4, 0x2

    .line 257
    invoke-direct {v3, v0, v4, v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    .line 260
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 265
    const/16 v2, 0x69

    .line 267
    const/4 v3, 0x0

    .line 268
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 275
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_7

    .line 281
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_7

    .line 287
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_7

    .line 293
    const-string p0, "ActivityManager"

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "Skipping BOOT_COMPLETED for private profile user #"

    .line 299
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object p1

    .line 309
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 313
    :cond_7
    const-string v1, "ActivityManager"

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    .line 317
    const-string v3, "Posting BOOT_COMPLETED user #"

    .line 319
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object v2

    .line 329
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-nez v0, :cond_9

    .line 334
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 336
    iget-object v2, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 338
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 340
    iget-boolean v2, v2, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 342
    if-nez v2, :cond_9

    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 350
    move-result-object v1

    .line 351
    :try_start_1
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    .line 354
    move-result v2

    .line 355
    if-nez v2, :cond_9

    .line 357
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    .line 360
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    if-eqz v1, :cond_8

    .line 363
    goto :goto_1

    .line 364
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 367
    move-result-wide v1

    .line 368
    const/16 v3, 0xf0

    .line 370
    const/16 v4, 0xd

    .line 372
    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 375
    goto :goto_1

    .line 376
    :catch_0
    move-exception p0

    .line 377
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 380
    move-result-object p0

    .line 381
    throw p0

    .line 382
    :cond_9
    :goto_1
    new-instance v3, Landroid/content/Intent;

    .line 384
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 386
    const/4 v2, 0x0

    .line 387
    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    const-string v1, "android.intent.extra.user_handle"

    .line 392
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const/high16 v1, -0x77000000

    .line 397
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 403
    move-result v5

    .line 404
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 407
    move-result v6

    .line 408
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 411
    move-result-object v7

    .line 412
    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;

    .line 414
    move-object v1, v8

    .line 415
    move-object v2, p0

    .line 416
    move v4, v0

    .line 417
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    .line 420
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    iget p0, p1, Lcom/android/server/am/UserState;->state:I

    .line 425
    const-string/jumbo p1, "finishUserUnlockedCompleted"

    .line 428
    const-string/jumbo v1, "send BOOT COMPLETED and complete NULL"

    .line 431
    invoke-static {v0, p0, v10, p1, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void

    .line 435
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    throw p0
.end method

.method public final getCurrentOrTargetUserIdLU()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 3
    const/16 v1, -0x2710

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    iget p0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 12
    :goto_0
    return p0
.end method

.method public final getCurrentProfileIds()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

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

.method public final getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    .line 4
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 6
    const/16 v1, -0x2710

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 27
    move-result-object p0

    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final getCurrentUserId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

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

.method public getRunningUsersLU()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 24
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v4

    .line 30
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/am/UserState;

    .line 36
    if-nez v3, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    .line 41
    const/4 v4, 0x4

    .line 42
    if-eq v3, v4, :cond_0

    .line 44
    const/4 v4, 0x5

    .line 45
    if-ne v3, v4, :cond_2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-object v0
.end method

.method public final getStartedUserState(I)Lcom/android/server/am/UserState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/am/UserState;

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

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

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getUsers()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    new-array p0, p0, [I

    .line 17
    const/4 v0, 0x0

    .line 18
    aput v0, p0, v0

    .line 20
    :goto_0
    return-object p0
.end method

.method public final handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v7, p2

    .line 5
    move/from16 v8, p3

    .line 7
    move/from16 v9, p5

    .line 9
    move-object/from16 v10, p7

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v11

    .line 15
    if-ne v11, v8, :cond_0

    .line 17
    return v8

    .line 18
    :cond_0
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    if-eqz v8, :cond_2

    .line 26
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 32
    if-nez v11, :cond_3

    .line 34
    :cond_2
    return v8

    .line 35
    :cond_3
    const/4 v1, -0x2

    .line 36
    const/4 v12, -0x3

    .line 37
    if-eq v8, v1, :cond_5

    .line 39
    if-ne v8, v12, :cond_4

    .line 41
    goto :goto_0

    .line 42
    :cond_4
    move v13, v8

    .line 43
    goto :goto_1

    .line 44
    :cond_5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 47
    move-result v1

    .line 48
    move v13, v1

    .line 49
    :goto_1
    const/4 v14, 0x3

    .line 50
    if-eqz v7, :cond_15

    .line 52
    const/16 v1, 0x3e8

    .line 54
    if-eq v7, v1, :cond_15

    .line 56
    const/16 v1, 0x1482

    .line 58
    if-eq v7, v1, :cond_15

    .line 60
    invoke-virtual {v0, v11, v13}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    .line 63
    move-result v15

    .line 64
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 66
    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 68
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 70
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 72
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 74
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 77
    move-result v1

    .line 78
    const-string v6, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 80
    const/4 v5, 0x2

    .line 81
    const/4 v4, 0x1

    .line 82
    if-eqz v1, :cond_6

    .line 84
    if-eqz v15, :cond_6

    .line 86
    move v12, v5

    .line 87
    move-object/from16 v20, v6

    .line 89
    goto/16 :goto_5

    .line 91
    :cond_6
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    const/16 v16, -0x1

    .line 98
    const/16 v17, 0x1

    .line 100
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 102
    const/16 v18, 0x0

    .line 104
    move/from16 v1, p1

    .line 106
    move/from16 v2, p2

    .line 108
    move v12, v4

    .line 109
    move/from16 v4, v18

    .line 111
    move v12, v5

    .line 112
    move/from16 v5, v16

    .line 114
    move-object/from16 v19, v6

    .line 116
    move/from16 v6, v17

    .line 118
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_8

    .line 124
    move-object/from16 v20, v19

    .line 126
    :cond_7
    :goto_2
    const/4 v4, 0x1

    .line 127
    goto :goto_5

    .line 128
    :cond_8
    const/16 v16, 0x0

    .line 130
    if-ne v9, v12, :cond_9

    .line 132
    move/from16 v4, v16

    .line 134
    move-object/from16 v20, v19

    .line 136
    goto :goto_5

    .line 137
    :cond_9
    if-eq v9, v14, :cond_a

    .line 139
    :goto_3
    move/from16 v2, p1

    .line 141
    move-object/from16 v6, v19

    .line 143
    goto :goto_4

    .line 144
    :cond_a
    if-nez v15, :cond_b

    .line 146
    goto :goto_3

    .line 147
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 149
    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 151
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 153
    move/from16 v2, p1

    .line 155
    move-object/from16 v6, v19

    .line 157
    invoke-static {v1, v6, v2, v7, v10}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_c

    .line 163
    move-object/from16 v20, v6

    .line 165
    goto :goto_2

    .line 166
    :cond_c
    :goto_4
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    const/4 v5, -0x1

    .line 172
    const/16 v17, 0x1

    .line 174
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    .line 176
    const/4 v4, 0x0

    .line 177
    move/from16 v1, p1

    .line 179
    move/from16 v2, p2

    .line 181
    move-object/from16 v20, v6

    .line 183
    move/from16 v6, v17

    .line 185
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_d

    .line 191
    move/from16 v4, v16

    .line 193
    goto :goto_5

    .line 194
    :cond_d
    if-eqz v9, :cond_7

    .line 196
    if-ne v9, v14, :cond_e

    .line 198
    goto :goto_2

    .line 199
    :cond_e
    const/4 v1, 0x1

    .line 200
    if-ne v9, v1, :cond_f

    .line 202
    move v4, v15

    .line 203
    goto :goto_5

    .line 204
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 206
    const-string v1, "Unknown mode: "

    .line 208
    invoke-static {v9, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    throw v0

    .line 216
    :goto_5
    if-nez v4, :cond_15

    .line 218
    const/4 v1, -0x3

    .line 219
    if-ne v8, v1, :cond_10

    .line 221
    goto :goto_6

    .line 222
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    const/16 v1, 0x80

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    const-string v1, "Permission Denial: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    move-object/from16 v1, p6

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    if-eqz v10, :cond_11

    .line 241
    const-string v1, " from "

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_11
    const-string v1, " asks to run as user "

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, " but is calling from uid "

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {v0, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 265
    const-string v1, "; this requires "

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    if-eq v9, v12, :cond_14

    .line 277
    const-string v1, " or "

    .line 279
    if-eqz v9, :cond_12

    .line 281
    if-eq v9, v14, :cond_12

    .line 283
    const/4 v2, 0x1

    .line 284
    if-ne v9, v2, :cond_13

    .line 286
    if-eqz v15, :cond_13

    .line 288
    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_13
    if-eqz v15, :cond_14

    .line 298
    if-ne v9, v14, :cond_14

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    move-object/from16 v1, v20

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v0

    .line 312
    const-string v1, "ActivityManager"

    .line 314
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v1, Ljava/lang/SecurityException;

    .line 319
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 322
    throw v1

    .line 323
    :cond_15
    move v11, v13

    .line 324
    :goto_6
    if-nez p4, :cond_17

    .line 326
    if-ltz v11, :cond_16

    .line 328
    goto :goto_7

    .line 329
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 331
    const-string v1, "Call does not support special user #"

    .line 333
    invoke-static {v11, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 336
    move-result-object v1

    .line 337
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 340
    throw v0

    .line 341
    :cond_17
    :goto_7
    const/16 v1, 0x7d0

    .line 343
    if-ne v7, v1, :cond_19

    .line 345
    if-ltz v11, :cond_19

    .line 347
    const-string/jumbo v1, "no_debugging_features"

    .line 350
    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 353
    move-result v0

    .line 354
    if-nez v0, :cond_18

    .line 356
    goto :goto_8

    .line 357
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    .line 359
    const-string v1, "Shell does not have permission to access user "

    .line 361
    const-string v2, "\n "

    .line 363
    invoke-static {v11, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    move-result-object v1

    .line 367
    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    move-result-object v1

    .line 378
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 381
    throw v0

    .line 382
    :cond_19
    :goto_8
    return v11
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    iget v2, v0, Landroid/os/Message;->what:I

    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x6

    .line 9
    const/16 v5, 0xc8

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x3

    .line 13
    const/16 v8, 0x1388

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x2

    .line 17
    const/4 v11, 0x1

    .line 18
    sparse-switch v2, :sswitch_data_0

    .line 21
    :cond_0
    :goto_0
    move v1, v9

    .line 22
    goto/16 :goto_17

    .line 24
    :sswitch_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    check-cast v0, Landroid/util/Pair;

    .line 28
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 30
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 32
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 34
    invoke-virtual {v1, v2, v11}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 37
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 39
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 41
    move-object v12, v3

    .line 42
    check-cast v12, Landroid/content/pm/UserInfo;

    .line 44
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 46
    move-object v13, v3

    .line 47
    check-cast v13, Landroid/content/pm/UserInfo;

    .line 49
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 51
    monitor-enter v3

    .line 52
    :try_start_0
    iget-object v14, v1, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 54
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 57
    monitor-enter v4

    .line 58
    :try_start_1
    iget-object v15, v1, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 60
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    .line 63
    const/4 v4, 0x3

    .line 64
    invoke-direct {v3, v1, v0, v4}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Object;I)V

    .line 67
    iget-object v0, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 69
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    move-result-object v0

    .line 75
    const-string v1, "android.hardware.type.automotive"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 83
    const-string v0, "ActivityManager"

    .line 85
    const-string v1, "Showing user switch dialog on UserController, it could cause a race condition if it\'s shown by CarSystemUI as well"

    .line 87
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    .line 92
    monitor-enter v1

    .line 93
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/android/server/am/UserController$Injector;->dismissUserSwitchingDialog(Ljava/lang/Runnable;)V

    .line 96
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog;

    .line 98
    iget-object v4, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 100
    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 102
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 104
    move-object v10, v0

    .line 105
    move-object/from16 v16, v4

    .line 107
    invoke-direct/range {v10 .. v16}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    .line 110
    iput-object v0, v2, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    .line 112
    invoke-virtual {v0, v3}, Lcom/android/server/am/UserSwitchingDialog;->show(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V

    .line 115
    monitor-exit v1

    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw v0

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    throw v0

    .line 123
    :catchall_2
    move-exception v0

    .line 124
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    throw v0

    .line 126
    :sswitch_1
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 128
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 131
    move-result-object v2

    .line 132
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 134
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 136
    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 138
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 141
    iget-object v1, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 143
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 148
    goto :goto_0

    .line 149
    :sswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    check-cast v0, Ljava/lang/Integer;

    .line 153
    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->processScheduledStopOfBackgroundUser(Ljava/lang/Integer;)V

    .line 156
    goto/16 :goto_0

    .line 158
    :sswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    check-cast v0, Ljava/lang/Integer;

    .line 162
    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->reportOnUserCompletedEvent(Ljava/lang/Integer;)V

    .line 165
    goto/16 :goto_0

    .line 167
    :sswitch_4
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 169
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 171
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/UserController;->completeUserSwitch(II)V

    .line 174
    goto/16 :goto_0

    .line 176
    :sswitch_5
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 178
    invoke-virtual {v1, v2, v10}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 181
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 183
    invoke-static {}, Landroid/multiuser/Flags;->setPowerModeDuringUserSwitch()Z

    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_2

    .line 189
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 191
    invoke-virtual {v2, v11}, Lcom/android/server/am/UserController$Injector;->setPerformancePowerMode(Z)V

    .line 194
    :cond_2
    invoke-virtual {v1, v0, v11}, Lcom/android/server/am/UserController;->startUser(II)Z

    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_0

    .line 200
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 202
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 204
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 206
    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 209
    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;

    .line 211
    const/4 v2, 0x0

    .line 212
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/UserController;I)V

    .line 215
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 217
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;

    .line 219
    invoke-direct {v3, v1, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    .line 222
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    goto/16 :goto_0

    .line 227
    :sswitch_6
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 229
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 231
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 234
    move-result v2

    .line 235
    move v3, v9

    .line 236
    :goto_1
    if-ge v3, v2, :cond_3

    .line 238
    :try_start_5
    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 240
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 243
    move-result-object v4

    .line 244
    check-cast v4, Landroid/app/IUserSwitchObserver;

    .line 246
    invoke-interface {v4, v0}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 249
    :catch_0
    add-int/lit8 v3, v3, 0x1

    .line 251
    goto :goto_1

    .line 252
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 254
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 257
    goto/16 :goto_0

    .line 259
    :sswitch_7
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 261
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 263
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 265
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    const/16 v5, 0x7585

    .line 272
    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 275
    const-string v5, "Unlocked"

    .line 277
    invoke-virtual {v2, v3, v5}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    .line 280
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 282
    iget v3, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 284
    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 286
    if-ne v3, v5, :cond_4

    .line 288
    goto :goto_2

    .line 289
    :cond_4
    const/16 v8, 0x3e8

    .line 291
    :goto_2
    invoke-virtual {v1, v2, v10, v8}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 294
    iget-object v1, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 296
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 299
    move-result-object v1

    .line 300
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 302
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 304
    invoke-virtual {v1, v0, v4, v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 307
    goto/16 :goto_0

    .line 309
    :sswitch_8
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 311
    const-string v5, "SYSTEM_USER_UNLOCK_MSG"

    .line 313
    const-string v6, "NULL"

    .line 315
    invoke-static {v2, v3, v9, v5, v6}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 320
    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 322
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 324
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    const/16 v6, 0x7584

    .line 329
    invoke-static {v6, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 332
    const-string v6, "Unlocking"

    .line 334
    invoke-virtual {v5, v2, v6}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    .line 337
    const-string v5, "SYSTEM_USER_UNLOCK_MSG"

    .line 339
    const-string v6, "Done mSystemServiceManager.onUserUnlocking"

    .line 341
    invoke-static {v2, v3, v11, v5, v6}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 347
    move-result-object v5

    .line 348
    new-instance v6, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    .line 350
    const/4 v8, 0x0

    .line 351
    invoke-direct {v6, v2, v8, v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    .line 354
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 359
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 362
    move-result-object v5

    .line 363
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 365
    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 367
    const/4 v8, 0x5

    .line 368
    invoke-virtual {v5, v6, v8, v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 371
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 373
    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 376
    move-result-object v5

    .line 377
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 379
    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 381
    invoke-virtual {v5, v6, v4, v11}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 384
    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 386
    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    .line 391
    const-string/jumbo v6, "finishUserUnlocked-"

    .line 394
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    move-result-object v5

    .line 404
    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 407
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    move-object v5, v0

    .line 410
    check-cast v5, Lcom/android/server/am/UserState;

    .line 412
    iget-object v0, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 414
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 417
    move-result v6

    .line 418
    const/16 v0, 0x7577

    .line 420
    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 423
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 425
    const-string/jumbo v8, "finishUserUnlocked"

    .line 428
    const-string v12, "NULL"

    .line 430
    invoke-static {v6, v0, v9, v8, v12}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 433
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 435
    const-string/jumbo v8, "finishUserUnlocked"

    .line 438
    const-string v12, "Try StorageManager.isUserKeyUnlocked"

    .line 440
    invoke-static {v6, v0, v11, v8, v12}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "ActivityManager"

    .line 445
    new-instance v8, Ljava/lang/StringBuilder;

    .line 447
    const-string v12, "UserController event: finishUserUnlocked("

    .line 449
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    const-string v12, ")"

    .line 457
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    move-result-object v8

    .line 464
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 470
    move-result v0

    .line 471
    if-nez v0, :cond_6

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    .line 475
    const-string/jumbo v5, "dev.boot."

    .line 478
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    const-string v5, ".user_unlocked"

    .line 486
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    move-result-object v0

    .line 493
    const-string v5, "FAIL-finishUserUnlocked"

    .line 495
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v0, "ActivityManager"

    .line 500
    const-string v5, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlocked"

    .line 502
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, v1, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 507
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 510
    move-result v0

    .line 511
    if-nez v0, :cond_5

    .line 513
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 515
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 517
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 519
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    const-string/jumbo v0, "dumpstate.process"

    .line 525
    const-string/jumbo v1, "unlockfail"

    .line 528
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string/jumbo v0, "bugreport.mode"

    .line 534
    const-string/jumbo v1, "booting_delay"

    .line 537
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string/jumbo v0, "ctl.start"

    .line 543
    const-string/jumbo v1, "bugreportm"

    .line 546
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_5
    :goto_3
    move v5, v10

    .line 550
    goto/16 :goto_10

    .line 552
    :cond_6
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 554
    const-string/jumbo v8, "finishUserUnlocked"

    .line 557
    const-string v12, "OK StorageManager.isUserKeyUnlocked"

    .line 559
    invoke-static {v6, v0, v11, v8, v12}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v8, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 564
    monitor-enter v8

    .line 565
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 567
    iget-object v12, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 569
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    .line 572
    move-result v12

    .line 573
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 576
    move-result-object v0

    .line 577
    if-eq v0, v5, :cond_7

    .line 579
    monitor-exit v8

    .line 580
    goto :goto_3

    .line 581
    :catchall_3
    move-exception v0

    .line 582
    goto/16 :goto_13

    .line 584
    :cond_7
    invoke-virtual {v5, v10, v7}, Lcom/android/server/am/UserState;->setState(II)Z

    .line 587
    move-result v0

    .line 588
    if-nez v0, :cond_8

    .line 590
    monitor-exit v8

    .line 591
    goto :goto_3

    .line 592
    :cond_8
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 593
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 595
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 598
    move-result-object v0

    .line 599
    iget v7, v5, Lcom/android/server/am/UserState;->state:I

    .line 601
    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 604
    iget-object v0, v5, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 606
    invoke-virtual {v0}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 609
    if-nez v6, :cond_9

    .line 611
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 613
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 615
    const/high16 v7, 0x40000

    .line 617
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService;->startPersistentApps(I)V

    .line 620
    :cond_9
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 622
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 624
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    .line 626
    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 628
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 630
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 633
    monitor-enter v7

    .line 634
    :try_start_7
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 636
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 638
    iget-object v8, v8, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 640
    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 643
    move-result-object v8

    .line 644
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 647
    move-result v12

    .line 648
    move v13, v9

    .line 649
    :goto_4
    if-ge v13, v12, :cond_d

    .line 651
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 654
    move-result-object v14

    .line 655
    check-cast v14, Landroid/util/SparseArray;

    .line 657
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 660
    move-result v15

    .line 661
    move v3, v9

    .line 662
    :goto_5
    if-ge v3, v15, :cond_c

    .line 664
    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 667
    move-result-object v16

    .line 668
    move-object/from16 v10, v16

    .line 670
    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 672
    iget v9, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 674
    if-ne v9, v6, :cond_b

    .line 676
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 678
    if-eqz v9, :cond_b

    .line 680
    iget-boolean v9, v10, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    .line 682
    if-eqz v9, :cond_a

    .line 684
    goto :goto_6

    .line 685
    :cond_a
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 687
    new-instance v11, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;

    .line 689
    invoke-direct {v11, v0, v10}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V

    .line 692
    invoke-virtual {v9, v11}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 695
    goto :goto_6

    .line 696
    :catchall_4
    move-exception v0

    .line 697
    goto/16 :goto_12

    .line 699
    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 701
    const/4 v9, 0x0

    .line 702
    const/4 v10, 0x2

    .line 703
    const/4 v11, 0x1

    .line 704
    goto :goto_5

    .line 705
    :cond_c
    add-int/lit8 v13, v13, 0x1

    .line 707
    const/4 v3, -0x1

    .line 708
    const/4 v9, 0x0

    .line 709
    const/4 v10, 0x2

    .line 710
    const/4 v11, 0x1

    .line 711
    goto :goto_4

    .line 712
    :cond_d
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 713
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 716
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 718
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 725
    move-result v0

    .line 726
    const/high16 v3, 0x50000000

    .line 728
    if-nez v0, :cond_e

    .line 730
    new-instance v13, Landroid/content/Intent;

    .line 732
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 734
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    const-string v0, "android.intent.extra.user_handle"

    .line 739
    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    invoke-virtual {v13, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    iget-object v12, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 747
    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 749
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 752
    move-result v18

    .line 753
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 756
    move-result v19

    .line 757
    const/4 v15, 0x0

    .line 758
    const/16 v16, 0x0

    .line 760
    const/4 v14, 0x0

    .line 761
    move/from16 v20, v6

    .line 763
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 766
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 768
    const-string/jumbo v7, "finishUserUnlocked"

    .line 771
    const-string/jumbo v8, "send USER UNLOCKED"

    .line 774
    const/4 v9, 0x1

    .line 775
    invoke-static {v6, v0, v9, v7, v8}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_e
    invoke-virtual {v1, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 781
    move-result-object v0

    .line 782
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 785
    move-result v7

    .line 786
    if-eqz v7, :cond_10

    .line 788
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 790
    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 793
    move-result-object v7

    .line 794
    invoke-virtual {v7, v6}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 797
    move-result-object v7

    .line 798
    if-eqz v7, :cond_10

    .line 800
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 802
    const-string v9, "android.intent.action.PROFILE_ACCESSIBLE"

    .line 804
    invoke-virtual {v1, v6, v8, v9}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 810
    move-result v8

    .line 811
    if-nez v8, :cond_f

    .line 813
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 816
    move-result v0

    .line 817
    if-eqz v0, :cond_10

    .line 819
    :cond_f
    new-instance v9, Landroid/content/Intent;

    .line 821
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 823
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    const-string v0, "android.intent.extra.USER"

    .line 828
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 831
    move-result-object v8

    .line 832
    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 835
    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 838
    iget-object v8, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 840
    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 842
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 845
    move-result v14

    .line 846
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 849
    move-result v15

    .line 850
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    .line 852
    const/4 v11, 0x0

    .line 853
    const/4 v12, 0x0

    .line 854
    const/4 v10, 0x0

    .line 855
    move/from16 v16, v0

    .line 857
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 860
    :cond_10
    invoke-virtual {v1, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 863
    move-result-object v3

    .line 864
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 866
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 868
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 870
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    const-string v7, "DUMMY"

    .line 875
    sget-object v8, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    .line 877
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 880
    move-result v0

    .line 881
    const-string v9, "ActivityManagerServiceExt"

    .line 883
    if-eqz v0, :cond_11

    .line 885
    new-instance v0, Ljava/lang/RuntimeException;

    .line 887
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 890
    const-string/jumbo v10, "csc version of property is wrong"

    .line 893
    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    :cond_11
    :try_start_8
    new-instance v10, Ljava/io/FileInputStream;

    .line 898
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    .line 900
    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 903
    :try_start_9
    new-instance v11, Ljava/io/DataInputStream;

    .line 905
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 907
    const/16 v12, 0x400

    .line 909
    invoke-direct {v0, v10, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 912
    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 915
    :try_start_a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 918
    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 919
    :try_start_b
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 922
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 925
    goto :goto_b

    .line 926
    :catch_1
    move-exception v0

    .line 927
    goto :goto_a

    .line 928
    :catchall_5
    move-exception v0

    .line 929
    move-object v11, v0

    .line 930
    goto :goto_8

    .line 931
    :catchall_6
    move-exception v0

    .line 932
    move-object v12, v0

    .line 933
    :try_start_d
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 936
    goto :goto_7

    .line 937
    :catchall_7
    move-exception v0

    .line 938
    move-object v11, v0

    .line 939
    :try_start_e
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 942
    :goto_7
    throw v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 943
    :goto_8
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 946
    goto :goto_9

    .line 947
    :catchall_8
    move-exception v0

    .line 948
    move-object v10, v0

    .line 949
    :try_start_10
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 952
    :goto_9
    throw v11
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    .line 953
    :goto_a
    const-string v10, "Failure reading pre boot csc"

    .line 955
    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 958
    :catch_2
    :goto_b
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 961
    move-result v0

    .line 962
    const/4 v7, 0x1

    .line 963
    xor-int/2addr v0, v7

    .line 964
    iget-object v7, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 966
    sget-object v8, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 968
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 971
    move-result v7

    .line 972
    if-eqz v7, :cond_13

    .line 974
    const-string/jumbo v7, "persist.pm.mock-upgrade"

    .line 977
    const/4 v8, 0x0

    .line 978
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 981
    move-result v7

    .line 982
    if-nez v7, :cond_13

    .line 984
    if-eqz v0, :cond_12

    .line 986
    goto :goto_c

    .line 987
    :cond_12
    invoke-virtual {v1, v5}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    .line 990
    goto :goto_f

    .line 991
    :cond_13
    :goto_c
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 994
    move-result v7

    .line 995
    if-nez v7, :cond_15

    .line 997
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 1000
    move-result v3

    .line 1001
    if-eqz v3, :cond_14

    .line 1003
    goto :goto_d

    .line 1004
    :cond_14
    const/4 v3, 0x0

    .line 1005
    goto :goto_e

    .line 1006
    :cond_15
    :goto_d
    const/4 v3, 0x1

    .line 1007
    :goto_e
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1009
    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda20;

    .line 1011
    invoke-direct {v8, v1, v0, v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/UserController;ZLcom/android/server/am/UserState;)V

    .line 1014
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1017
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1020
    move-result-object v0

    .line 1021
    const-string v1, "android.intent.action.PRE_BOOT_COMPLETED"

    .line 1023
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 1026
    move-result-object v0

    .line 1027
    const/16 v1, 0x7581

    .line 1029
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1032
    new-instance v0, Lcom/android/server/am/UserController$Injector$1;

    .line 1034
    iget-object v1, v7, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1036
    invoke-direct {v0, v1, v6, v3, v8}, Lcom/android/server/am/UserController$Injector$1;-><init>(Lcom/android/server/am/ActivityManagerService;IZLcom/android/server/am/UserController$$ExternalSyntheticLambda20;)V

    .line 1039
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector$1;->sendNext()V

    .line 1042
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 1044
    const-string/jumbo v1, "finishUserUnlocked"

    .line 1047
    const-string v3, "OK sendPreBootBroadcast"

    .line 1049
    const/4 v7, 0x1

    .line 1050
    invoke-static {v6, v0, v7, v1, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1053
    :goto_f
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    .line 1055
    const-string/jumbo v1, "finishUserUnlocked"

    .line 1058
    const-string v3, "NULL"

    .line 1060
    const/4 v5, 0x2

    .line 1061
    invoke-static {v6, v0, v5, v1, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 1067
    move-result-object v0

    .line 1068
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda21;

    .line 1070
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1073
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1076
    :goto_10
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1079
    const-string v0, "SYSTEM_USER_UNLOCK_MSG"

    .line 1081
    const-string v1, "NULL"

    .line 1083
    const/4 v3, -0x1

    .line 1084
    invoke-static {v2, v3, v5, v0, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_16
    :goto_11
    const/4 v1, 0x0

    .line 1088
    goto/16 :goto_17

    .line 1090
    :goto_12
    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1091
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1094
    throw v0

    .line 1095
    :goto_13
    :try_start_12
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1096
    throw v0

    .line 1097
    :sswitch_9
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1099
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1101
    const-string v3, "User switch timeout: from "

    .line 1103
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 1105
    monitor-enter v4

    .line 1106
    :try_start_13
    iget-object v5, v1, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1108
    if-eqz v5, :cond_17

    .line 1110
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1113
    move-result v5

    .line 1114
    if-nez v5, :cond_17

    .line 1116
    const-string v5, "ActivityManager"

    .line 1118
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1120
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1126
    const-string v2, " to "

    .line 1128
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1134
    const-string v0, ". Observers that didn\'t respond: "

    .line 1136
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    iget-object v0, v1, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1141
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1147
    move-result-object v0

    .line 1148
    invoke-static {v5, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iput-object v6, v1, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1153
    goto :goto_14

    .line 1154
    :catchall_9
    move-exception v0

    .line 1155
    goto :goto_15

    .line 1156
    :cond_17
    :goto_14
    monitor-exit v4

    .line 1157
    goto :goto_11

    .line 1158
    :goto_15
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 1159
    throw v0

    .line 1160
    :sswitch_a
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1162
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1164
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(II)V

    .line 1167
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1169
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 1172
    move-result-object v2

    .line 1173
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 1175
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1177
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1179
    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1182
    move-result-object v0

    .line 1183
    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserSwitchJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 1186
    move-result-object v0

    .line 1187
    if-eqz v0, :cond_16

    .line 1189
    iget-object v1, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 1191
    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1194
    goto :goto_11

    .line 1195
    :sswitch_b
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1197
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 1199
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1202
    move-result v2

    .line 1203
    const/4 v8, 0x0

    .line 1204
    :goto_16
    if-ge v8, v2, :cond_18

    .line 1206
    :try_start_14
    iget-object v3, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 1208
    invoke-virtual {v3, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1211
    move-result-object v3

    .line 1212
    check-cast v3, Landroid/app/IUserSwitchObserver;

    .line 1214
    invoke-interface {v3, v0}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_3

    .line 1217
    :catch_3
    add-int/lit8 v8, v8, 0x1

    .line 1219
    goto :goto_16

    .line 1220
    :cond_18
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 1222
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1225
    goto/16 :goto_11

    .line 1227
    :sswitch_c
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1229
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1231
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1234
    move-result-object v3

    .line 1235
    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 1237
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1239
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1241
    const/16 v5, 0x4008

    .line 1243
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1246
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1248
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1250
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1253
    move-result-object v3

    .line 1254
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1256
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1258
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1260
    const v5, 0x8008

    .line 1263
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1266
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1268
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1270
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1272
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1274
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1276
    invoke-virtual {v2, v3, v4}, Lcom/android/server/SystemServiceManager;->onUserSwitching(II)V

    .line 1279
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1281
    const/4 v2, 0x4

    .line 1282
    invoke-virtual {v1, v0, v2, v8}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 1285
    goto/16 :goto_11

    .line 1287
    :sswitch_d
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1289
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1291
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1294
    move-result-object v3

    .line 1295
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1297
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1299
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1301
    const v5, 0x8007

    .line 1304
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1307
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1309
    invoke-virtual {v1, v2, v7}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 1312
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1314
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1316
    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->onUserStarting(I)V

    .line 1319
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1321
    const/4 v3, 0x1

    .line 1322
    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 1325
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1327
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 1330
    move-result-object v2

    .line 1331
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 1333
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1335
    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1338
    move-result-object v0

    .line 1339
    const/4 v3, -0x1

    .line 1340
    invoke-virtual {v2, v3, v0, v7, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 1343
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1348
    goto/16 :goto_11

    .line 1350
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 1353
    goto/16 :goto_11

    .line 1355
    :sswitch_f
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1357
    check-cast v2, Lcom/android/server/am/UserState;

    .line 1359
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1361
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1363
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 1366
    goto/16 :goto_11

    .line 1368
    :sswitch_10
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1370
    check-cast v2, Lcom/android/server/am/UserState;

    .line 1372
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1374
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1376
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 1379
    goto/16 :goto_11

    .line 1381
    :sswitch_11
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1383
    check-cast v2, Lcom/android/server/am/UserState;

    .line 1385
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1387
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1389
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 1392
    goto/16 :goto_11

    .line 1394
    :goto_17
    return v1

    .line 1395
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_11
        0x14 -> :sswitch_10
        0x1e -> :sswitch_f
        0x28 -> :sswitch_e
        0x32 -> :sswitch_d
        0x3c -> :sswitch_c
        0x46 -> :sswitch_b
        0x50 -> :sswitch_a
        0x5a -> :sswitch_9
        0x64 -> :sswitch_8
        0x69 -> :sswitch_7
        0x6e -> :sswitch_6
        0x78 -> :sswitch_5
        0x82 -> :sswitch_4
        0x8c -> :sswitch_3
        0x96 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final hasStartedUserState(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final hasUserRestriction(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final informUserSwitchObservers(Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 5
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 8
    move-result v14

    .line 9
    if-nez v14, :cond_0

    .line 11
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 14
    iget-object v0, v0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 16
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v15, Landroid/util/ArraySet;

    .line 22
    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 25
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iput-object v15, v0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    invoke-direct {v13, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 36
    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    .line 39
    move-result v1

    .line 40
    int-to-long v11, v1

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    move-result-wide v16

    .line 45
    const/4 v9, 0x0

    .line 46
    move v10, v9

    .line 47
    :goto_0
    if-ge v10, v14, :cond_1

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    move-result-wide v5

    .line 53
    const-string v1, "#"

    .line 55
    const-string v2, " "

    .line 57
    invoke-static {v10, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object v1

    .line 61
    iget-object v2, v0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 63
    invoke-virtual {v2, v10}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v7

    .line 74
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 76
    monitor-enter v1

    .line 77
    :try_start_1
    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    new-instance v8, Lcom/android/server/am/UserController$7;

    .line 83
    move-object v1, v8

    .line 84
    move-object/from16 v2, p0

    .line 86
    move-object/from16 v3, p3

    .line 88
    move-object v4, v7

    .line 89
    move-object/from16 v19, v8

    .line 91
    move/from16 v18, v14

    .line 93
    move-object v14, v7

    .line 94
    move-wide/from16 v7, v16

    .line 96
    move v0, v9

    .line 97
    move/from16 v20, v10

    .line 99
    move-wide v9, v11

    .line 100
    move-wide/from16 v21, v11

    .line 102
    move-object v11, v15

    .line 103
    move-object v12, v13

    .line 104
    move-object/from16 v23, v13

    .line 106
    move-object/from16 v13, p2

    .line 108
    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;Ljava/lang/String;Ljava/lang/String;JJJLandroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    move-object/from16 v2, p3

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v3, "-"

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V

    .line 136
    move v3, v0

    .line 137
    move-object/from16 v0, p0

    .line 139
    iget-object v1, v0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 141
    move/from16 v9, v20

    .line 143
    invoke-virtual {v1, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroid/app/IUserSwitchObserver;

    .line 149
    move-object/from16 v4, p1

    .line 151
    move-object/from16 v5, v19

    .line 153
    invoke-interface {v4, v1, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    add-int/lit8 v10, v9, 0x1

    .line 158
    move v9, v3

    .line 159
    move/from16 v14, v18

    .line 161
    move-wide/from16 v11, v21

    .line 163
    move-object/from16 v13, v23

    .line 165
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    throw v0

    .line 169
    :cond_1
    iget-object v0, v0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 171
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 174
    return-void

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    throw v0
.end method

.method public final isSameProfileGroup(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 10
    const/16 v3, -0x2710

    .line 12
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 15
    move-result p1

    .line 16
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 18
    invoke-virtual {p0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    move-result p0

    .line 22
    if-eq p1, v3, :cond_1

    .line 24
    if-ne p1, p0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    monitor-exit v1

    .line 29
    return v0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final isSystemUserStarted()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/am/UserState;

    .line 13
    if-nez p0, :cond_0

    .line 15
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq p0, v2, :cond_1

    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq p0, v3, :cond_1

    .line 27
    const/4 v3, 0x3

    .line 28
    if-ne p0, v3, :cond_2

    .line 30
    :cond_1
    move v1, v2

    .line 31
    :cond_2
    monitor-exit v0

    .line 32
    return v1

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final isUserOrItsParentRunning(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 11
    monitor-exit v0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 18
    const/16 v3, -0x2710

    .line 20
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 23
    move-result p1

    .line 24
    if-ne p1, v3, :cond_1

    .line 26
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    .line 31
    move-result p0

    .line 32
    monitor-exit v0

    .line 33
    return p0

    .line 34
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final isUserRunning(II)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 8
    return v0

    .line 9
    :cond_0
    and-int/lit8 v1, p2, 0x1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    return v2

    .line 15
    :cond_1
    and-int/lit8 v1, p2, 0x2

    .line 17
    if-eqz v1, :cond_3

    .line 19
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 21
    if-eqz p0, :cond_2

    .line 23
    if-eq p0, v2, :cond_2

    .line 25
    return v0

    .line 26
    :cond_2
    return v2

    .line 27
    :cond_3
    and-int/lit8 v1, p2, 0x8

    .line 29
    const/4 v3, 0x3

    .line 30
    const/4 v4, 0x5

    .line 31
    const/4 v5, 0x4

    .line 32
    if-eqz v1, :cond_6

    .line 34
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 36
    const/4 p2, 0x2

    .line 37
    if-eq p0, p2, :cond_5

    .line 39
    if-eq p0, v3, :cond_5

    .line 41
    if-eq p0, v5, :cond_4

    .line 43
    if-eq p0, v4, :cond_4

    .line 45
    return v0

    .line 46
    :cond_4
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_5
    return v2

    .line 52
    :cond_6
    and-int/2addr p2, v5

    .line 53
    if-eqz p2, :cond_9

    .line 55
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 57
    if-eq p0, v3, :cond_8

    .line 59
    if-eq p0, v5, :cond_7

    .line 61
    if-eq p0, v4, :cond_7

    .line 63
    return v0

    .line 64
    :cond_7
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 67
    move-result p0

    .line 68
    return p0

    .line 69
    :cond_8
    return v2

    .line 70
    :cond_9
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 72
    if-eq p0, v5, :cond_a

    .line 74
    if-eq p0, v4, :cond_a

    .line 76
    move v0, v2

    .line 77
    :cond_a
    return v0
.end method

.method public final logUserJourneyBegin(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0xc8

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 24
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 39
    move-result-object p1

    .line 40
    const-wide/32 v0, 0x15f90

    .line 43
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 46
    return-void
.end method

.method public final maybeUnlockUser(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    const-string/jumbo v2, "maybeUnlockUser"

    const-string v3, "NULL and no exit"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(ILandroid/os/IProgressListener;)Z

    return-void
.end method

.method public final maybeUnlockUser(ILandroid/os/IProgressListener;)Z
    .locals 11

    .line 3
    const-string/jumbo v0, "maybeUnlockUser"

    const-string v1, "NULL"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    const-string p0, "ActivityManager"

    const-string v0, "Not unlocking user %d yet because boot hasn\'t completed"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p2, p1, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v3

    .line 7
    :cond_1
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserKeyIfUnsecured(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UserState;

    if-eqz v4, :cond_3

    .line 11
    iget-object v5, v4, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v5, p2}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    .line 12
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    if-nez v4, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    :try_start_2
    invoke-interface {p2, p1, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 14
    :catch_1
    :goto_2
    const-string/jumbo p0, "unlockUserCleared"

    const-string p2, "NULL and return"

    invoke-static {p1, v2, v0, p0, p2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    return v3

    .line 15
    :cond_5
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "finishUserUnlocking-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 17
    iget-object v5, v4, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/16 v6, 0x7576

    .line 18
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(II)I

    .line 19
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 20
    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    .line 21
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v7, 0x5

    const/4 v8, 0x1

    .line 22
    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 23
    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v9, "finishUserUnlocking"

    const-string v10, "NULL"

    invoke-static {v5, v6, v3, v9, v10}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v6, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UserController event: finishUserUnlocking("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x4d

    if-eq v6, v5, :cond_7

    .line 26
    const-string v6, "ActivityManager"

    const-string v7, "Do not unlock user "

    const-string v9, " in Maintenance mode"

    .line 27
    invoke-static {v5, v7, v9, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    move v5, v3

    goto/16 :goto_5

    .line 28
    :cond_7
    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "dev.boot."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".user_unlocked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FAIL-finishUserUnlocking"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v6, "ActivityManager"

    const-string v7, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlocking"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 32
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-string/jumbo v5, "dumpstate.process"

    const-string/jumbo v6, "unlockfail"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v5, "bugreport.mode"

    const-string/jumbo v6, "booting_delay"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v5, "ctl.start"

    const-string/jumbo v6, "bugreportm"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :cond_8
    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v9, "finishUserUnlocking"

    const-string v10, "OK StorageManager.isUserKeyUnlocked"

    invoke-static {v5, v6, v8, v9, v10}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 38
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_a

    iget v9, v4, Lcom/android/server/am/UserState;->state:I

    if-eq v9, v8, :cond_9

    goto :goto_4

    .line 39
    :cond_9
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    const-string/jumbo v6, "finishUserUnlocking"

    const-string/jumbo v10, "mUnlockProgress.start()"

    invoke-static {v5, v9, v8, v6, v10}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v6, v4, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v6}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 42
    iget-object v6, v4, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    iget-object v9, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 43
    iget-object v9, v9, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 44
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x10401bd

    .line 45
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 46
    invoke-virtual {v6, v7, v9}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 47
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;

    const/4 v9, 0x0

    invoke-direct {v7, p0, v5, v4, v9}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v7, "finishUserUnlocking"

    const-string v9, "NULL"

    invoke-static {v5, v6, v0, v7, v9}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    .line 49
    :cond_a
    :goto_4
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    .line 50
    :goto_5
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v5, :cond_c

    if-nez p2, :cond_b

    goto :goto_6

    .line 51
    :cond_b
    :try_start_5
    invoke-interface {p2, p1, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :goto_6
    return v3

    .line 52
    :cond_c
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 53
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    move v5, v3

    :goto_7
    if-ge v5, v1, :cond_d

    .line 54
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_9

    .line 55
    :cond_d
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_8
    if-ge v3, v1, :cond_f

    .line 56
    aget p2, v2, v3

    .line 57
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 58
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, p1, :cond_e

    if-eq p2, p1, :cond_e

    .line 59
    const-string v6, "ActivityManager"

    const-string v7, "User "

    const-string v9, " (parent "

    .line 60
    invoke-static {p2, v7, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 61
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 63
    :cond_f
    iget p0, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo p2, "unlockUserCleared"

    const-string v1, "NULL"

    invoke-static {p1, p0, v0, p2, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    return v8

    .line 64
    :goto_9
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    .line 65
    :goto_a
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    .line 66
    :goto_b
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public final moveUserToForeground(ILcom/android/server/am/UserState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 7
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 9
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->switchUser(ILcom/android/server/am/UserState;)Z

    .line 24
    move-result p2

    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    if-eqz p2, :cond_0

    .line 31
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 33
    const-string/jumbo p2, "moveUserToForeground"

    .line 36
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 38
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 46
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 48
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 54
    :goto_0
    const/16 p0, 0x7559

    .line 56
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    throw p0
.end method

.method public final onBootComplete(Lcom/android/server/am/ActivityManagerService$12;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "onBootComplete"

    .line 4
    const-string v1, "NULL"

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-static {v2, v3, v2, v0, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->setAllowUserUnlocking(Z)V

    .line 15
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 23
    move-result-object v4

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v2

    .line 33
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 36
    move v0, v2

    .line 37
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 40
    move-result v1

    .line 41
    if-ge v0, v1, :cond_2

    .line 43
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 46
    move-result v1

    .line 47
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/android/server/am/UserState;

    .line 53
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_1

    .line 64
    invoke-virtual {p0, v5, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$12;)V

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerService$12;I)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    .line 74
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const-string/jumbo p0, "onBootComplete"

    .line 80
    const-string p1, "NULL"

    .line 82
    const/4 v0, 0x2

    .line 83
    invoke-static {v2, v3, v0, p0, p1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p0
.end method

.method public processScheduledStopOfBackgroundUser(Ljava/lang/Integer;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result v1

    .line 5
    const-string v0, "ActivityManager"

    .line 7
    const-string v2, "Considering stopping background user %d due to inactivity"

    .line 9
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 13
    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v6

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_0

    .line 25
    monitor-exit v6

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    monitor-exit v6

    .line 38
    return-void

    .line 39
    :cond_1
    const-string v0, "ActivityManager"

    .line 41
    const-string v2, "Stopping background user %d due to inactivity"

    .line 43
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v3, 0x1

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v0, p0

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 58
    monitor-exit v6

    .line 59
    return-void

    .line 60
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public reportOnUserCompletedEvent(Ljava/lang/Integer;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 3
    const/16 v1, 0x8c

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v4

    .line 28
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v2

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v4

    .line 41
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/am/UserState;

    .line 47
    if-eqz v0, :cond_0

    .line 49
    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    .line 51
    const/4 v5, 0x5

    .line 52
    if-eq v4, v5, :cond_0

    .line 54
    const/4 v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 60
    iget v0, v0, Lcom/android/server/am/UserState;->state:I

    .line 62
    const/4 v4, 0x3

    .line 63
    if-ne v0, v4, :cond_1

    .line 65
    or-int/lit8 v3, v3, 0x2

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v0

    .line 71
    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 73
    if-ne v0, v4, :cond_2

    .line 75
    or-int/lit8 v3, v3, 0x4

    .line 77
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const-string v0, "ActivityManager"

    .line 80
    const-string/jumbo v2, "reportOnUserCompletedEvent(%d): stored=%s, eligible=%s"

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 86
    move-result-object v4

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 91
    filled-new-array {p1, v4, v5}, [Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    invoke-static {v0, v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    and-int v0, v1, v3

    .line 100
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v1

    .line 106
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 108
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object p0

    .line 117
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 120
    move-result-object p0

    .line 121
    const/16 p1, 0x7588

    .line 123
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 126
    if-nez v0, :cond_3

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    .line 132
    move-result-object v6

    .line 133
    if-nez v6, :cond_4

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 139
    move-result-object v3

    .line 140
    new-instance v7, Lcom/android/server/SystemService$UserCompletedEventType;

    .line 142
    invoke-direct {v7, v0}, Lcom/android/server/SystemService$UserCompletedEventType;-><init>(I)V

    .line 145
    const-string v4, "CompletedEvent"

    .line 147
    const/4 v5, 0x0

    .line 148
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    .line 151
    :goto_1
    return-void

    .line 152
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    throw p0

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    throw p0
.end method

.method public final resumePendingUserStarts(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/am/UserController$PendingUserStart;

    .line 29
    iget v4, v3, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    .line 31
    if-ne v4, p1, :cond_0

    .line 33
    const-string v4, "ActivityManager"

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string/jumbo v6, "resumePendingUserStart for"

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    invoke-static {v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    .line 60
    const/4 v6, 0x2

    .line 61
    invoke-direct {v5, p0, v3, v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Object;I)V

    .line 64
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 75
    check-cast p0, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public scheduleOnUserCompletedEvent(III)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 12
    move-result v2

    .line 13
    or-int/2addr p2, v2

    .line 14
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 28
    const/16 v0, 0x8c

    .line 30
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 33
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 38
    move-result-object p1

    .line 39
    int-to-long p2, p3

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 43
    return-void
.end method

.method public final scheduleStopOfBackgroundUser(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/multiuser/Flags;->scheduleStopOfBackgroundUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mBackgroundUserScheduledStopTimeSecs:I

    .line 10
    if-lez v0, :cond_4

    .line 12
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-nez p1, :cond_2

    .line 21
    return-void

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 24
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 31
    move-result v1

    .line 32
    const-string v2, "ActivityManager"

    .line 34
    if-ne p1, v1, :cond_3

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p0

    .line 40
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    const-string p1, "Exempting user %d from being stopped due to inactivity by virtue of it being the main user"

    .line 46
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void

    .line 50
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v3

    .line 58
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    const-string v3, "Scheduling to stop user %d in %d seconds"

    .line 64
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    mul-int/lit16 v0, v0, 0x3e8

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 75
    const/16 v2, 0x96

    .line 77
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 80
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 85
    move-result-object p1

    .line 86
    int-to-long v0, v0

    .line 87
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 90
    :cond_4
    :goto_0
    return-void
.end method

.method public final sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3
    const-string v1, "ActivityManager"

    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v2, "sendContinueUserSwitchLU-"

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "-to-"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 37
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 39
    const/16 v2, 0x1e

    .line 41
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 46
    const/16 v1, 0x14

    .line 48
    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 58
    return-void
.end method

.method public final sendLockedBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerService$12;I)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    const-string p1, "Skipping LOCKED_BOOT_COMPLETED for private profile user #"

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    const-string p1, "ActivityManager"

    .line 41
    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 45
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 47
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    const-string v0, "android.intent.extra.user_handle"

    .line 55
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const/high16 v0, -0x77000000

    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 65
    const-string p0, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 67
    filled-new-array {p0}, [Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 73
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 79
    if-eqz p0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 84
    move-result-wide v4

    .line 85
    :goto_0
    move-wide v7, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const-wide/16 v4, 0x2710

    .line 89
    goto :goto_0

    .line 90
    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 93
    move-result-object p0

    .line 94
    const/4 v9, 0x0

    .line 95
    const-string v11, ""

    .line 97
    const/16 v10, 0xca

    .line 99
    move-object v6, p0

    .line 100
    invoke-virtual/range {v6 .. v11}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 106
    move-result-object v4

    .line 107
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 112
    move-result v6

    .line 113
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 116
    move-result v7

    .line 117
    move-object v2, p1

    .line 118
    move v8, p2

    .line 119
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 122
    return-void
.end method

.method public final sendUserStartedBroadcast(III)V
    .locals 10

    .line 1
    if-nez p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarted:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarted:Z

    .line 17
    monitor-exit v0

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    .line 23
    const-string v0, "android.intent.action.USER_STARTED"

    .line 25
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    const/high16 v0, 0x50000000

    .line 30
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    const-string v0, "android.intent.extra.user_handle"

    .line 35
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 40
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    move v7, p2

    .line 46
    move v8, p3

    .line 47
    move v9, p1

    .line 48
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 51
    return-void
.end method

.method public final sendUserStartingBroadcast(III)V
    .locals 10

    .line 1
    if-nez p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarting:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarting:Z

    .line 17
    monitor-exit v0

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    .line 23
    const-string v0, "android.intent.action.USER_STARTING"

    .line 25
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    .line 30
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    const-string v0, "android.intent.extra.user_handle"

    .line 35
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 40
    new-instance v3, Lcom/android/server/am/UserController$8;

    .line 42
    invoke-direct {v3}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 45
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 47
    filled-new-array {p0}, [Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 53
    const/4 v9, -0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    move v7, p2

    .line 56
    move v8, p3

    .line 57
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 60
    return-void
.end method

.method public final sendUserSwitchBroadcasts(II)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v12

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    move-result v13

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v14

    .line 19
    const-string v11, "android.intent.extra.USER"

    .line 21
    const-string v10, "android.intent.extra.user_handle"

    .line 23
    const/high16 v9, 0x50000000

    .line 25
    const/4 v8, 0x0

    .line 26
    if-ltz v1, :cond_0

    .line 28
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 30
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3, v1, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v7

    .line 44
    move v6, v8

    .line 45
    :goto_0
    if-ge v6, v7, :cond_0

    .line 47
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 53
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 55
    new-instance v4, Landroid/content/Intent;

    .line 57
    const-string v3, "android.intent.action.USER_BACKGROUND"

    .line 59
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v4, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 77
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 79
    const/16 v17, 0x0

    .line 81
    const/16 v18, 0x0

    .line 83
    const/16 v19, 0x0

    .line 85
    move/from16 v20, v5

    .line 87
    move-object/from16 v5, v19

    .line 89
    move/from16 v19, v6

    .line 91
    move-object/from16 v6, v17

    .line 93
    move/from16 v17, v7

    .line 95
    move-object/from16 v7, v18

    .line 97
    move/from16 v8, v16

    .line 99
    move v9, v12

    .line 100
    move-object/from16 v21, v10

    .line 102
    move v10, v13

    .line 103
    move-object/from16 p1, v1

    .line 105
    move-object v1, v11

    .line 106
    move/from16 v11, v20

    .line 108
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 111
    add-int/lit8 v6, v19, 0x1

    .line 113
    move-object v11, v1

    .line 114
    move/from16 v7, v17

    .line 116
    move-object/from16 v10, v21

    .line 118
    const/4 v8, 0x0

    .line 119
    const/high16 v9, 0x50000000

    .line 121
    move-object/from16 v1, p1

    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto/16 :goto_2

    .line 127
    :cond_0
    move-object/from16 v21, v10

    .line 129
    move-object v1, v11

    .line 130
    if-ltz v2, :cond_2

    .line 132
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 134
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 137
    move-result-object v3

    .line 138
    const/4 v4, 0x0

    .line 139
    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 142
    move-result-object v3

    .line 143
    move-object v11, v3

    .line 144
    check-cast v11, Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 149
    move-result v10

    .line 150
    move v9, v4

    .line 151
    :goto_1
    if-ge v9, v10, :cond_1

    .line 153
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 159
    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    .line 161
    new-instance v4, Landroid/content/Intent;

    .line 163
    const-string v3, "android.intent.action.USER_FOREGROUND"

    .line 165
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    const/high16 v7, 0x50000000

    .line 170
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    move-object/from16 v6, v21

    .line 175
    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 187
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 189
    const/16 v17, 0x0

    .line 191
    const/16 v18, 0x0

    .line 193
    const/4 v5, 0x0

    .line 194
    move-object/from16 v22, v6

    .line 196
    move-object/from16 v6, v17

    .line 198
    move-object/from16 v7, v18

    .line 200
    move/from16 v17, v8

    .line 202
    move/from16 v8, v16

    .line 204
    move/from16 v16, v9

    .line 206
    move v9, v12

    .line 207
    move/from16 v18, v10

    .line 209
    move v10, v13

    .line 210
    move-object/from16 v19, v11

    .line 212
    move/from16 v11, v17

    .line 214
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 217
    add-int/lit8 v9, v16, 0x1

    .line 219
    move/from16 v10, v18

    .line 221
    move-object/from16 v11, v19

    .line 223
    move-object/from16 v21, v22

    .line 225
    goto :goto_1

    .line 226
    :cond_1
    move-object/from16 v22, v21

    .line 228
    new-instance v3, Landroid/content/Intent;

    .line 230
    const-string v4, "android.intent.action.USER_SWITCHED"

    .line 232
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    const/high16 v4, 0x50000000

    .line 237
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    move-object/from16 v4, v22

    .line 242
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 254
    const-string v1, "android.permission.MANAGE_USERS"

    .line 256
    filled-new-array {v1}, [Ljava/lang/String;

    .line 259
    move-result-object v4

    .line 260
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 262
    const/4 v2, 0x0

    .line 263
    const/4 v6, 0x0

    .line 264
    const/4 v8, -0x1

    .line 265
    move-object v1, v3

    .line 266
    move-object v3, v4

    .line 267
    move-object v4, v6

    .line 268
    move v6, v12

    .line 269
    move v7, v13

    .line 270
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    goto :goto_3

    .line 274
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    throw v0

    .line 278
    :cond_2
    :goto_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    return-void
.end method

.method public setAllowUserUnlocking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    .line 3
    return-void
.end method

.method public final shouldStopUserOnSwitch()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eq v1, v3, :cond_1

    .line 11
    if-ne v1, v4, :cond_0

    .line 13
    move v2, v4

    .line 14
    :cond_0
    const-string p0, "ActivityManager"

    .line 16
    const-string/jumbo v1, "shouldStopUserOnSwitch(): returning overridden value (%b)"

    .line 19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v3

    .line 23
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {p0, v1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    monitor-exit v0

    .line 31
    return v2

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-string/jumbo v0, "fw.stop_bg_users_on_switch"

    .line 38
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result v0

    .line 42
    if-ne v0, v3, :cond_2

    .line 44
    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    if-ne v0, v4, :cond_3

    .line 49
    move v2, v4

    .line 50
    :cond_3
    :goto_0
    return v2

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method

.method public final startProfile(IZLandroid/os/IProgressListener;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    const-string v1, "android.permission.MANAGE_USERS"

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 16
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 18
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    if-eq v0, v1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 29
    const-string p1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to start a profile"

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez v0, :cond_2

    .line 54
    if-nez p2, :cond_2

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p0

    .line 60
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 64
    const-string p1, "ActivityManager"

    .line 66
    const-string p2, "Cannot start disabled profile #%d"

    .line 68
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return v1

    .line 72
    :cond_2
    const/4 p2, 0x3

    .line 73
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    const-string p2, "User "

    .line 82
    const-string p3, " is not a profile"

    .line 84
    invoke-static {p1, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p0
.end method

.method public final startProfiles()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 7
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v4

    .line 24
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 43
    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 45
    const/16 v6, 0x10

    .line 47
    and-int/2addr v5, v6

    .line 48
    if-ne v5, v6, :cond_0

    .line 50
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 52
    if-eq v5, v0, :cond_0

    .line 54
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 56
    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_0

    .line 66
    invoke-virtual {v5}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_0

    .line 78
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v0

    .line 86
    :goto_1
    if-ge v2, v0, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 90
    monitor-enter v1

    .line 91
    :try_start_0
    iget v4, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    add-int/lit8 v4, v4, -0x1

    .line 96
    if-ge v2, v4, :cond_2

    .line 98
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 104
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 106
    const/4 v4, 0x3

    .line 107
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/UserController;->startUser(II)Z

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_2
    if-ge v2, v0, :cond_3

    .line 118
    const-string p0, "ActivityManager"

    .line 120
    const-string v0, "More profiles than MAX_RUNNING_USERS"

    .line 122
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    return-void
.end method

.method public startUser(II)Z
    .locals 2

    .line 1
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "startUser"

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final startUserInternal(IIILandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v9, p1

    .line 5
    move/from16 v1, p2

    .line 7
    move/from16 v5, p3

    .line 9
    move-object/from16 v6, p4

    .line 11
    move-object/from16 v2, p5

    .line 13
    const-string v3, "Cannot start pre-created user #"

    .line 15
    const-string v4, "Cannot switch to User #"

    .line 17
    const-string v7, "No user info for user #"

    .line 19
    const/4 v10, 0x1

    .line 20
    if-ne v5, v10, :cond_0

    .line 22
    move v11, v10

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v11, 0x0

    .line 25
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    move v12, v10

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v12, 0x0

    .line 30
    :goto_1
    if-eqz v12, :cond_2

    .line 32
    xor-int/lit8 v13, v11, 0x1

    .line 34
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v14

    .line 38
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v15

    .line 42
    filled-new-array {v14, v15}, [Ljava/lang/Object;

    .line 45
    move-result-object v14

    .line 46
    const-string v15, "Cannot start user %d in foreground AND on secondary display (%d)"

    .line 48
    invoke-static {v13, v15, v14}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v13

    .line 55
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v14

    .line 59
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v15

    .line 63
    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    .line 66
    move-result-object v13

    .line 67
    const/16 v14, 0x757c

    .line 69
    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 72
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 75
    move-result v13

    .line 76
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 79
    move-result v14

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 83
    move-result-wide v15

    .line 84
    :try_start_0
    const-string/jumbo v8, "getStartedUserState"

    .line 87
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 93
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const-string v10, "ActivityManager"

    .line 96
    if-ne v8, v9, :cond_7

    .line 98
    move/from16 v17, v14

    .line 100
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    .line 103
    move-result-object v14

    .line 104
    if-nez v14, :cond_3

    .line 106
    const-string v14, "Current user has no UserState"

    .line 108
    invoke-static {v10, v14}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    move/from16 v18, v13

    .line 113
    goto :goto_3

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto/16 :goto_5

    .line 117
    :cond_3
    if-nez v9, :cond_4

    .line 119
    move/from16 v18, v13

    .line 121
    iget v13, v14, Lcom/android/server/am/UserState;->state:I

    .line 123
    if-nez v13, :cond_4

    .line 125
    goto :goto_3

    .line 126
    :cond_4
    iget v0, v14, Lcom/android/server/am/UserState;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    const/4 v1, 0x3

    .line 129
    if-ne v0, v1, :cond_6

    .line 131
    if-nez v6, :cond_5

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    const/4 v0, 0x0

    .line 135
    :try_start_2
    invoke-interface {v6, v9, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :catch_0
    :cond_6
    :goto_2
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    const/4 v0, 0x1

    .line 145
    return v0

    .line 146
    :cond_7
    move/from16 v18, v13

    .line 148
    move/from16 v17, v14

    .line 150
    :goto_3
    :try_start_4
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 153
    if-eqz v11, :cond_8

    .line 155
    const-string/jumbo v13, "clearAllLockedTasks"

    .line 158
    invoke-virtual {v2, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 161
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 163
    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks()V

    .line 166
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 169
    :cond_8
    const-string/jumbo v13, "getUserInfo"

    .line 172
    invoke-virtual {v2, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 178
    move-result-object v13

    .line 179
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 182
    if-nez v13, :cond_9

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    invoke-static {v10, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    const/4 v0, 0x0

    .line 203
    return v0

    .line 204
    :cond_9
    if-eqz v11, :cond_a

    .line 206
    :try_start_5
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 209
    move-result v7

    .line 210
    if-eqz v7, :cond_a

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ": not a full user"

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 229
    invoke-static {v10, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    const/4 v0, 0x0

    .line 236
    return v0

    .line 237
    :cond_a
    if-nez v11, :cond_b

    .line 239
    if-eqz v12, :cond_c

    .line 241
    :cond_b
    :try_start_6
    iget-boolean v4, v13, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 243
    if-eqz v4, :cond_c

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, " in foreground or on secondary display"

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v0

    .line 262
    invoke-static {v10, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 265
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    const/4 v0, 0x0

    .line 269
    return v0

    .line 270
    :cond_c
    :try_start_7
    const-string v3, "assignUserToDisplayOnStart"

    .line 272
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 275
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 277
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 280
    move-result-object v3

    .line 281
    iget v4, v13, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 283
    invoke-virtual {v3, v9, v4, v5, v1}, Lcom/android/server/pm/UserManagerInternal;->assignUserToDisplayOnStart(IIII)I

    .line 286
    move-result v3

    .line 287
    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 290
    const/4 v2, -0x1

    .line 291
    if-ne v3, v2, :cond_d

    .line 293
    const-string v0, "%s user(%d) / display (%d) assignment failed: %s"

    .line 295
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    .line 298
    move-result-object v2

    .line 299
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    move-result-object v4

    .line 303
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    move-result-object v1

    .line 307
    const-class v5, Lcom/android/server/pm/UserManagerInternal;

    .line 309
    const-string v6, "USER_ASSIGNMENT_RESULT_"

    .line 311
    invoke-static {v5, v6, v3}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 314
    move-result-object v3

    .line 315
    filled-new-array {v2, v4, v1, v3}, [Ljava/lang/Object;

    .line 318
    move-result-object v1

    .line 319
    invoke-static {v10, v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 322
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    const/4 v0, 0x0

    .line 326
    return v0

    .line 327
    :cond_d
    :try_start_8
    new-instance v10, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;

    .line 329
    move-object v1, v10

    .line 330
    move-object/from16 v2, p0

    .line 332
    move-object v3, v13

    .line 333
    move v4, v8

    .line 334
    move/from16 v5, p3

    .line 336
    move-object/from16 v6, p4

    .line 338
    move/from16 v7, v18

    .line 340
    move/from16 v8, v17

    .line 342
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;IILandroid/os/IProgressListener;II)V

    .line 345
    if-eqz v11, :cond_e

    .line 347
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 349
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    .line 351
    invoke-direct {v2, v0, v9, v10}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserController$$ExternalSyntheticLambda4;)V

    .line 354
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    goto :goto_4

    .line 358
    :cond_e
    invoke-virtual {v10}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->run()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 361
    :goto_4
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    const/4 v0, 0x1

    .line 365
    return v0

    .line 366
    :goto_5
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    throw v0
.end method

.method public final startUserNoChecks(IIILandroid/os/IProgressListener;)Z
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3
    invoke-direct {v6}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 14
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 16
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 18
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 20
    const-string v0, "PersonaServiceHelper"

    .line 22
    const-string/jumbo v1, "blocking when device compromised : "

    .line 25
    const-string/jumbo v2, "shouldBlockUserStart() "

    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v3

    .line 32
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 57
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 59
    if-eqz v5, :cond_0

    .line 61
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_0

    .line 67
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_0

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    const/4 p0, 0x0

    .line 92
    return p0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    goto :goto_1

    .line 99
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw p0

    .line 103
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "UserController.startUser-"

    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    if-nez p2, :cond_2

    .line 115
    const-string v1, ""

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    const-string v1, "-display-"

    .line 120
    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "-"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/4 v1, 0x1

    .line 133
    if-ne p3, v1, :cond_3

    .line 135
    const-string/jumbo v1, "fg"

    .line 138
    goto :goto_3

    .line 139
    :cond_3
    const-string v1, "bg"

    .line 141
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "-start-mode-"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v6, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 159
    move-object v0, p0

    .line 160
    move v1, p1

    .line 161
    move v2, p2

    .line 162
    move v3, p3

    .line 163
    move-object v4, p4

    .line 164
    move-object v5, v6

    .line 165
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->startUserInternal(IIILandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z

    .line 168
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 172
    return p0

    .line 173
    :catchall_1
    move-exception p0

    .line 174
    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 177
    throw p0
.end method

.method public final stopExcessRunningUsersLU(ILandroid/util/ArraySet;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    if-le v2, p1, :cond_2

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v3

    .line 37
    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 39
    if-eq v3, v4, :cond_0

    .line 41
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v3

    .line 56
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    const-string v4, "ActivityManager"

    .line 62
    const-string v5, "Too many running users (%d). Attempting to stop user %d"

    .line 64
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v7

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x1

    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    move-object v6, p0

    .line 76
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_0

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return-void
.end method

.method public final stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "UserController"

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    if-eqz p2, :cond_0

    .line 15
    const-string v2, "-stopProfileRegardlessOfParent"

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, ""

    .line 20
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    if-eqz p3, :cond_1

    .line 25
    const-string v2, "-allowDelayedLocking"

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const-string v2, ""

    .line 30
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    if-eqz p4, :cond_2

    .line 35
    const-string v2, "-withStopUserCallback"

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const-string v2, ""

    .line 40
    :goto_2
    const-string v3, "-"

    .line 42
    const-string v4, "-[stopUser]"

    .line 44
    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 51
    :try_start_0
    const-string/jumbo v1, "stopUser"

    .line 54
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 56
    filled-new-array {v2}, [Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    if-ltz p1, :cond_3

    .line 65
    const/4 v1, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/4 v1, 0x0

    .line 68
    :goto_3
    const-string v2, "Invalid user id %d"

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v3

    .line 74
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(I)V

    .line 84
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 86
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    .line 90
    move-result p0

    .line 91
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 95
    return p0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 103
    throw p0
.end method

.method public final stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 3
    move/from16 v7, p1

    .line 5
    if-nez v7, :cond_0

    .line 7
    const/4 v0, -0x3

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 12
    move-result v0

    .line 13
    if-ne v7, v0, :cond_1

    .line 15
    const/4 v0, -0x2

    .line 16
    return v0

    .line 17
    :cond_1
    const/4 v0, -0x4

    .line 18
    const/16 v1, -0x2710

    .line 20
    if-nez p2, :cond_3

    .line 22
    iget-object v2, v6, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {v2, v7, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 27
    move-result v2

    .line 28
    if-eq v2, v1, :cond_3

    .line 30
    if-eq v2, v7, :cond_3

    .line 32
    if-eqz v2, :cond_2

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 37
    move-result v3

    .line 38
    if-ne v2, v3, :cond_3

    .line 40
    :cond_2
    return v0

    .line 41
    :cond_3
    iget-object v2, v6, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 46
    move-result v2

    .line 47
    new-instance v3, Landroid/util/IntArray;

    .line 49
    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 52
    invoke-virtual {v3, v7}, Landroid/util/IntArray;->add(I)V

    .line 55
    iget-object v4, v6, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 57
    invoke-virtual {v4, v7, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 60
    move-result v4

    .line 61
    const/4 v8, 0x1

    .line 62
    const/4 v9, 0x0

    .line 63
    if-ne v4, v7, :cond_8

    .line 65
    move v5, v9

    .line 66
    :goto_0
    if-ge v5, v2, :cond_8

    .line 68
    iget-object v10, v6, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 73
    move-result-object v10

    .line 74
    check-cast v10, Lcom/android/server/am/UserState;

    .line 76
    iget-object v10, v10, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 78
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    .line 81
    move-result v10

    .line 82
    iget-object v11, v6, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 84
    invoke-virtual {v11, v10, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 87
    move-result v11

    .line 88
    if-eq v4, v1, :cond_4

    .line 90
    if-ne v4, v11, :cond_4

    .line 92
    move v11, v8

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move v11, v9

    .line 95
    :goto_1
    if-ne v10, v7, :cond_5

    .line 97
    move v12, v8

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move v12, v9

    .line 100
    :goto_2
    if-eqz v11, :cond_7

    .line 102
    if-eqz v12, :cond_6

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    invoke-virtual {v3, v10}, Landroid/util/IntArray;->add(I)V

    .line 108
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_8
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    .line 114
    move-result-object v10

    .line 115
    array-length v1, v10

    .line 116
    move v2, v9

    .line 117
    :goto_4
    const-string v11, "ActivityManager"

    .line 119
    if-ge v2, v1, :cond_b

    .line 121
    aget v3, v10, v2

    .line 123
    if-eqz v3, :cond_a

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    .line 128
    move-result v4

    .line 129
    if-ne v3, v4, :cond_9

    .line 131
    goto :goto_5

    .line 132
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 134
    goto :goto_4

    .line 135
    :cond_a
    :goto_5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v1

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v2

    .line 143
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 146
    move-result-object v1

    .line 147
    const-string v2, "Cannot stop user %d because it is related to user %d. "

    .line 149
    invoke-static {v11, v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return v0

    .line 153
    :cond_b
    new-instance v12, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 155
    invoke-direct {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 158
    array-length v13, v10

    .line 159
    move v14, v9

    .line 160
    :goto_6
    if-ge v14, v13, :cond_19

    .line 162
    aget v15, v10, v14

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v1, "stopSingleUserLU-"

    .line 169
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "-[stopUser]"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 187
    if-ne v15, v7, :cond_c

    .line 189
    move-object/from16 v2, p4

    .line 191
    goto :goto_7

    .line 192
    :cond_c
    const/4 v2, 0x0

    .line 193
    :goto_7
    if-ne v15, v7, :cond_d

    .line 195
    move-object/from16 v3, p5

    .line 197
    goto :goto_8

    .line 198
    :cond_d
    const/4 v3, 0x0

    .line 199
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v5, "stopSingleUserLU userId="

    .line 204
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v4

    .line 214
    invoke-static {v11, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Landroid/multiuser/Flags;->scheduleStopOfBackgroundUser()Z

    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_e

    .line 223
    iget-object v4, v6, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 225
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object v5

    .line 229
    const/16 v0, 0x96

    .line 231
    invoke-virtual {v4, v0, v5}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 234
    :cond_e
    iget-object v0, v6, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 236
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 239
    move-result-object v0

    .line 240
    move-object v4, v0

    .line 241
    check-cast v4, Lcom/android/server/am/UserState;

    .line 243
    if-nez v4, :cond_12

    .line 245
    invoke-virtual {v6, v15}, Lcom/android/server/am/UserController;->canDelayDataLockingForUser(I)Z

    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_11

    .line 251
    if-eqz p3, :cond_f

    .line 253
    if-eqz v3, :cond_f

    .line 255
    const-string v0, "allowDelayedLocking set with KeyEvictedCallback, ignore it and lock user:"

    .line 257
    invoke-static {v15, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 260
    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/RuntimeException;

    .line 263
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 266
    invoke-static {v11, v0, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    move v0, v9

    .line 270
    goto :goto_9

    .line 271
    :cond_f
    move/from16 v0, p3

    .line 273
    :goto_9
    if-nez v0, :cond_11

    .line 275
    iget-object v0, v6, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 277
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_11

    .line 287
    if-eqz v3, :cond_10

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    .line 291
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    goto :goto_a

    .line 298
    :cond_10
    const/4 v0, 0x0

    .line 299
    :goto_a
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 302
    move-result-object v1

    .line 303
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;

    .line 305
    const/4 v4, 0x1

    .line 306
    invoke-direct {v3, v6, v15, v0, v4}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    .line 309
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    :cond_11
    if-eqz v2, :cond_18

    .line 314
    iget-object v0, v6, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 316
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    .line 318
    const/4 v3, 0x1

    .line 319
    invoke-direct {v1, v15, v3, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    .line 322
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    goto/16 :goto_d

    .line 327
    :cond_12
    const/4 v0, 0x5

    .line 328
    invoke-virtual {v6, v15, v0}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 331
    if-eqz v2, :cond_13

    .line 333
    iget-object v5, v4, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    .line 335
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_13
    if-eqz v3, :cond_14

    .line 340
    iget-object v2, v4, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    .line 342
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_14
    invoke-virtual {v6, v15}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 348
    move-result-object v2

    .line 349
    if-eqz v2, :cond_16

    .line 351
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 354
    move-result v2

    .line 355
    if-nez v2, :cond_15

    .line 357
    goto :goto_b

    .line 358
    :cond_15
    move v2, v9

    .line 359
    goto :goto_c

    .line 360
    :cond_16
    :goto_b
    move v2, v8

    .line 361
    :goto_c
    iget-object v3, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 363
    iget-object v3, v3, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 365
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 367
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 369
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 371
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 373
    new-instance v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda2;

    .line 375
    invoke-direct {v8, v3, v15, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZ)V

    .line 378
    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    iget v2, v4, Lcom/android/server/am/UserState;->state:I

    .line 383
    const/4 v3, 0x4

    .line 384
    if-eq v2, v3, :cond_18

    .line 386
    if-eq v2, v0, :cond_18

    .line 388
    invoke-virtual {v4, v3}, Lcom/android/server/am/UserState;->setState(I)V

    .line 391
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 393
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 396
    move-result-object v0

    .line 397
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 399
    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    .line 404
    const-string/jumbo v5, "setUserState-STATE_STOPPING-"

    .line 407
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 423
    iget v3, v4, Lcom/android/server/am/UserState;->state:I

    .line 425
    invoke-virtual {v0, v15, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 428
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    .line 433
    const-string/jumbo v5, "unassignUserFromDisplayOnStop-"

    .line 436
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerInternal;->unassignUserFromDisplayOnStop(I)V

    .line 455
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 461
    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 463
    const/4 v5, 0x0

    .line 464
    move-object v0, v8

    .line 465
    move-object/from16 v1, p0

    .line 467
    move v2, v15

    .line 468
    move-object v3, v4

    .line 469
    move/from16 v4, p3

    .line 471
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    .line 474
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 476
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    .line 483
    move-result v0

    .line 484
    if-eqz v0, :cond_17

    .line 486
    invoke-virtual {v8}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->run()V

    .line 489
    goto :goto_d

    .line 490
    :cond_17
    iget-object v0, v6, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 492
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    .line 494
    invoke-direct {v1, v6, v15, v8}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;)V

    .line 497
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    :cond_18
    :goto_d
    invoke-virtual {v12}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 503
    add-int/lit8 v14, v14, 0x1

    .line 505
    const/4 v8, 0x1

    .line 506
    goto/16 :goto_6

    .line 508
    :cond_19
    return v9
.end method

.method public final switchUser(I)Z
    .locals 13

    .line 1
    const-string v0, "There is already an ongoing user switch to User #"

    .line 3
    const-string v1, "Cannot switch to User #"

    .line 5
    const-string v2, "Cannot switch to User #"

    .line 7
    const-string v3, "Cannot switch to User #"

    .line 9
    const-string v4, "No user info for user #"

    .line 11
    const-string/jumbo v5, "user #"

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(I)V

    .line 17
    const/16 v6, 0x757b

    .line 19
    invoke-static {v6, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 22
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 25
    move-result v6

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 29
    move-result-object v7

    .line 30
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    .line 33
    move-result v8

    .line 34
    const/4 v9, 0x0

    .line 35
    if-eqz v8, :cond_0

    .line 37
    const/16 v8, 0x4d

    .line 39
    if-eq v8, p1, :cond_0

    .line 41
    const-string p0, "ActivityManager"

    .line 43
    const-string v0, "Cannot switch to User #"

    .line 45
    const-string v1, " in Maintenance mode"

    .line 47
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return v9

    .line 51
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 53
    monitor-enter v8

    .line 54
    const/16 v10, -0x2710

    .line 56
    const/4 v11, 0x1

    .line 57
    if-ne p1, v6, :cond_1

    .line 59
    :try_start_0
    iget v12, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 61
    if-ne v12, v10, :cond_1

    .line 63
    const-string p0, "ActivityManager"

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string p1, " is already the current user"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v8

    .line 86
    return v11

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto/16 :goto_1

    .line 90
    :cond_1
    if-nez v7, :cond_2

    .line 92
    const-string p0, "ActivityManager"

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-exit v8

    .line 110
    return v9

    .line 111
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_3

    .line 117
    const-string p0, "ActivityManager"

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string p1, ": not supported"

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    monitor-exit v8

    .line 140
    return v9

    .line 141
    :cond_3
    sget-object v3, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_4

    .line 149
    const-string p0, "ActivityManager"

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string p1, ": factory reset in progress"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v8

    .line 172
    return v9

    .line 173
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    .line 175
    if-nez v2, :cond_5

    .line 177
    const-string p0, "ActivityManager"

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string p1, ": UserController not ready yet"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p1

    .line 196
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v8

    .line 200
    return v9

    .line 201
    :cond_5
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 203
    if-eq v1, v10, :cond_6

    .line 205
    const-string v1, "ActivityManager"

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v0, ". User #"

    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v0, " will be added to the queue."

    .line 227
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p0, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v8

    .line 247
    return v11

    .line 248
    :cond_6
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 250
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 252
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    if-eqz v0, :cond_7

    .line 255
    invoke-virtual {p0, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 258
    move-result-object p1

    .line 259
    new-instance v0, Landroid/util/Pair;

    .line 261
    invoke-direct {v0, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 266
    const/16 v1, 0x3e8

    .line 268
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 273
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    goto :goto_0

    .line 281
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 283
    const/16 v1, 0x78

    .line 285
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 290
    invoke-virtual {p0, v1, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    :goto_0
    return v11

    .line 298
    :goto_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    throw p0
.end method

.method public final timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5

    .line 1
    const-string v0, "User switch timeout: from "

    .line 3
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 5
    const-string v2, "ActivityManager"

    .line 7
    invoke-direct {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v3, "timeoutUserSwitch-"

    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, "-to-"

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 38
    monitor-enter v2

    .line 39
    :try_start_0
    const-string v3, "ActivityManager"

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v0, " to "

    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 66
    iput-object v0, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 68
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 70
    const/16 v3, 0x5a

    .line 72
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 78
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-virtual {p0, v3, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 83
    move-result-object p1

    .line 84
    const-wide/16 p2, 0x1388

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0
.end method

.method public final unlockUser(ILandroid/os/IProgressListener;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const-string/jumbo v2, "unlockUser"

    .line 6
    const-string v3, "NULL"

    .line 8
    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 20
    const/16 v0, 0x757d

    .line 22
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v3

    .line 29
    :try_start_0
    const-string/jumbo v0, "call maybeUnlockUser"

    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-static {p1, v1, v5, v2, v0}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->maybeUnlockUser(ILandroid/os/IProgressListener;)Z

    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw p0
.end method

.method public final updateProfileRelatedCaches()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v1

    .line 22
    new-array v3, v1, [I

    .line 24
    move v4, v2

    .line 25
    :goto_0
    if-ge v4, v1, :cond_0

    .line 27
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 33
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 35
    aput v5, v3, v4

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 42
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1, v2, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 53
    monitor-enter v1

    .line 54
    :try_start_0
    iput-object v3, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 56
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 58
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 61
    :goto_1
    move-object v3, v0

    .line 62
    check-cast v3, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v4

    .line 68
    if-ge v2, v4, :cond_2

    .line 70
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 76
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 78
    const/16 v5, -0x2710

    .line 80
    if-eq v4, v5, :cond_1

    .line 82
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 84
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 86
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    monitor-exit v1

    .line 96
    return-void

    .line 97
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final updateStartedUserArrayLU()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x5

    .line 11
    const/4 v5, 0x4

    .line 12
    if-ge v1, v3, :cond_1

    .line 14
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/am/UserState;

    .line 22
    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    .line 24
    if-eq v3, v5, :cond_0

    .line 26
    if-eq v3, v4, :cond_0

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-array v1, v2, [I

    .line 35
    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 37
    move v1, v0

    .line 38
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 43
    move-result v2

    .line 44
    if-ge v0, v2, :cond_3

    .line 46
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/server/am/UserState;

    .line 54
    iget v2, v2, Lcom/android/server/am/UserState;->state:I

    .line 56
    if-eq v2, v5, :cond_2

    .line 58
    if-eq v2, v4, :cond_2

    .line 60
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 62
    add-int/lit8 v3, v1, 0x1

    .line 64
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 69
    move-result v6

    .line 70
    aput v6, v2, v1

    .line 72
    move v1, v3

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return-void
.end method

.method public final updateUserToLockLU(IZ)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->canDelayDataLockingForUser(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_2

    .line 19
    const-string/jumbo p2, "no_run_in_background"

    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-boolean p2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 31
    const-string/jumbo v0, "finishUserStopped: should stop user "

    .line 34
    const-string v1, "ActivityManager"

    .line 36
    if-eqz p2, :cond_1

    .line 38
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p2, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 57
    iget-object p2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 62
    move-result p2

    .line 63
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v2

    .line 69
    add-int/2addr v2, p2

    .line 70
    iget p2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 72
    if-le v2, p2, :cond_1

    .line 74
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v2

    .line 80
    add-int/lit8 v2, v2, -0x1

    .line 82
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Ljava/lang/Integer;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result p2

    .line 92
    iget-object p0, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 97
    move-result v2

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 100
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string p1, " but should lock user "

    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return p2

    .line 127
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string p1, " but without any locking"

    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 p0, -0x2710

    .line 149
    return p0

    .line 150
    :cond_2
    :goto_0
    return p1
.end method
