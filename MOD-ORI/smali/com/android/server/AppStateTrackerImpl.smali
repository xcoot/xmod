.class public final Lcom/android/server/AppStateTrackerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/AppStateTracker;


# static fields
.field static final TARGET_OP:I = 0x46


# instance fields
.field public final mActiveUids:Landroid/util/SparseBooleanArray;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppBackgroundRestrictionListener:Lcom/android/server/AppStateTrackerImpl$2;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public volatile mBackgroundRestrictedUidPackages:Ljava/util/Set;

.field public mBatterySaverEnabled:Z

.field public final mContext:Landroid/content/Context;

.field final mExemptedBucketPackages:Landroid/util/SparseSetArray;

.field mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

.field public mForceAllAppStandbyForSmallBattery:Z

.field public mForceAllAppsStandby:Z

.field public final mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

.field public mIActivityManager:Landroid/app/IActivityManager;

.field public mIsPluggedIn:Z

.field public final mListeners:Landroid/util/ArraySet;

.field public final mLock:Ljava/lang/Object;

.field public mPowerExemptAllAppIds:[I

.field public mPowerExemptUserAppIds:[I

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mReceiver:Lcom/android/server/AppStateTrackerImpl$3;

.field public final mRunAnyRestrictedPackages:Landroid/util/ArraySet;

.field public mStarted:Z

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mTempExemptAppIds:[I


# direct methods
.method public static -$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, [Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    new-array v1, v0, [I

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 29
    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 35
    .line 36
    new-instance v0, Landroid/util/SparseSetArray;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 42
    .line 43
    new-instance v0, Landroid/util/ArraySet;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 55
    .line 56
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    .line 57
    .line 58
    const-string v7, "EXEMPTED_BUCKET_CHANGED"

    .line 59
    .line 60
    const-string v8, "FORCE_ALL_CHANGED"

    .line 61
    .line 62
    const-string v1, "UID_FG_STATE_CHANGED"

    .line 63
    .line 64
    const-string v2, "UID_ACTIVE_STATE_CHANGED"

    .line 65
    .line 66
    const-string v3, "RUN_ANY_CHANGED"

    .line 67
    .line 68
    const-string v4, "ALL_UNEXEMPTED"

    .line 69
    .line 70
    const-string v5, "ALL_EXEMPTION_LIST_CHANGED"

    .line 71
    .line 72
    const-string v6, "TEMP_EXEMPTION_LIST_CHANGED"

    .line 73
    .line 74
    const-string v9, "IS_UID_ACTIVE_CACHED"

    .line 75
    .line 76
    const-string v10, "IS_UID_ACTIVE_RAW"

    .line 77
    .line 78
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 86
    .line 87
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$2;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$2;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Lcom/android/server/AppStateTrackerImpl$2;

    .line 93
    .line 94
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$3;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$3;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Lcom/android/server/AppStateTrackerImpl$3;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    new-instance p1, Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 104
    .line 105
    invoke-direct {p1, p0, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;-><init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 109
    .line 110
    return-void
.end method

.method public static isAnyAppIdUnexempt([I[I)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    const/4 v4, 0x1

    .line 6
    if-lt v1, v3, :cond_0

    .line 7
    .line 8
    move v3, v4

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    move v3, v0

    .line 11
    :goto_1
    array-length v5, p1

    .line 12
    if-lt v2, v5, :cond_1

    .line 13
    .line 14
    move v5, v4

    .line 15
    goto :goto_2

    .line 16
    :cond_1
    move v5, v0

    .line 17
    :goto_2
    if-nez v3, :cond_5

    .line 18
    .line 19
    if-eqz v5, :cond_2

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_2
    aget v3, p0, v1

    .line 23
    .line 24
    aget v5, p1, v2

    .line 25
    .line 26
    if-ne v3, v5, :cond_4

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_4
    if-ge v3, v5, :cond_3

    .line 34
    .line 35
    return v4

    .line 36
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 37
    .line 38
    return v0

    .line 39
    :cond_6
    return v5
.end method


# virtual methods
.method public final addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/AppStateTrackerImpl$1;-><init>(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

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

.method public final areAlarmsRestricted(ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 17
    .line 18
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return v1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-ltz p0, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_2
    monitor-exit v0

    .line 44
    return v1

    .line 45
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 17
    .line 18
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return v1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 41
    .line 42
    invoke-interface {v2}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 49
    .line 50
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return v1

    .line 58
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return p0

    .line 62
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final areJobsRestricted(ILjava/lang/String;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 17
    .line 18
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_5

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 25
    .line 26
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ltz v2, :cond_2

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    if-eqz p3, :cond_3

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return v1

    .line 56
    :cond_3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 61
    .line 62
    invoke-interface {p3}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    if-eqz p3, :cond_4

    .line 67
    .line 68
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 69
    .line 70
    invoke-interface {p3}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-nez p3, :cond_4

    .line 75
    .line 76
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 77
    .line 78
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return v1

    .line 86
    :cond_4
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 87
    .line 88
    monitor-exit v0

    .line 89
    return p0

    .line 90
    :cond_5
    :goto_0
    monitor-exit v0

    .line 91
    return v1

    .line 92
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Current AppStateTracker State:"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    const-string v1, "Force all apps standby: "

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 21
    .line 22
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 24
    .line 25
    .line 26
    const-string v1, "Small Battery Device: "

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 36
    .line 37
    .line 38
    const-string v1, "Force all apps standby for small battery device: "

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 46
    .line 47
    .line 48
    const-string v1, "Plugged In: "

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 56
    .line 57
    .line 58
    const-string v1, "Active uids: "

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 64
    .line 65
    const-string v2, "["

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v2, ""

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    move v4, v3

    .line 74
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-ge v4, v5, :cond_1

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_0

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v2, " "

    .line 101
    .line 102
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const-string v1, "]"

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v1, "Except-idle + user exemption list appids: "

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 116
    .line 117
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v1, "User exemption list appids: "

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 130
    .line 131
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "Temp exemption list appids: "

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 144
    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v1, "Exempted bucket packages:"

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 158
    .line 159
    .line 160
    move v1, v3

    .line 161
    :goto_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 162
    .line 163
    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-ge v1, v2, :cond_3

    .line 168
    .line 169
    const-string v2, "User "

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 187
    .line 188
    .line 189
    move v2, v3

    .line 190
    :goto_2
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 191
    .line 192
    invoke-virtual {v4, v1}, Landroid/util/SparseSetArray;->sizeAt(I)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-ge v2, v4, :cond_2

    .line 197
    .line 198
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 199
    .line 200
    invoke-virtual {v4, v1, v2}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    check-cast v4, Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 210
    .line 211
    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :catchall_0
    move-exception p0

    .line 216
    goto :goto_4

    .line 217
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 218
    .line 219
    .line 220
    add-int/lit8 v1, v1, 0x1

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 227
    .line 228
    .line 229
    const-string v1, "Restricted packages:"

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_4

    .line 248
    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Landroid/util/Pair;

    .line 254
    .line 255
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v3, Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string v3, " "

    .line 271
    .line 272
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v2, Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 287
    .line 288
    .line 289
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 290
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 295
    .line 296
    .line 297
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    return-void

    .line 299
    :catchall_1
    move-exception p0

    .line 300
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 301
    :try_start_4
    throw p0

    .line 302
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    throw p0
.end method

.method public final dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide p2

    .line 8
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 12
    .line 13
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    const-wide v3, 0x10800000001L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    :try_start_2
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-wide v2, 0x10800000006L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 35
    .line 36
    const-wide v2, 0x10800000007L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    .line 45
    .line 46
    const-wide v2, 0x10800000008L

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    move v2, v1

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-ge v2, v3, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 73
    .line 74
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    const-wide v4, 0x20500000002L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto/16 :goto_8

    .line 89
    .line 90
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 94
    .line 95
    array-length v3, v2

    .line 96
    move v4, v1

    .line 97
    :goto_2
    if-ge v4, v3, :cond_2

    .line 98
    .line 99
    aget v5, v2, v4

    .line 100
    .line 101
    const-wide v6, 0x20500000003L

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v4, v4, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 113
    .line 114
    array-length v3, v2

    .line 115
    move v4, v1

    .line 116
    :goto_3
    if-ge v4, v3, :cond_3

    .line 117
    .line 118
    aget v5, v2, v4

    .line 119
    .line 120
    const-wide v6, 0x2050000000cL

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 132
    .line 133
    array-length v3, v2

    .line 134
    move v4, v1

    .line 135
    :goto_4
    if-ge v4, v3, :cond_4

    .line 136
    .line 137
    aget v5, v2, v4

    .line 138
    .line 139
    const-wide v6, 0x20500000004L

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v4, v4, 0x1

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_4
    move v2, v1

    .line 151
    :goto_5
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 152
    .line 153
    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    const-wide v4, 0x10900000002L

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    const-wide v6, 0x10500000001L

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    if-ge v2, v3, :cond_6

    .line 168
    .line 169
    move v3, v1

    .line 170
    :goto_6
    iget-object v8, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 171
    .line 172
    invoke-virtual {v8, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-ge v3, v8, :cond_5

    .line 177
    .line 178
    const-wide v8, 0x20b0000000aL

    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    iget-object v10, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 188
    .line 189
    invoke-virtual {v10, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    .line 195
    .line 196
    iget-object v10, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 197
    .line 198
    invoke-virtual {v10, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    check-cast v10, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 208
    .line 209
    .line 210
    add-int/lit8 v3, v3, 0x1

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_6
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_7

    .line 227
    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Landroid/util/Pair;

    .line 233
    .line 234
    const-wide v8, 0x20b00000005L

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 240
    .line 241
    .line 242
    move-result-wide v8

    .line 243
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v3, Ljava/lang/Integer;

    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 252
    .line 253
    .line 254
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v2, Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_7
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 266
    .line 267
    const-wide v1, 0x10b00000009L

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 276
    .line 277
    .line 278
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    return-void

    .line 280
    :catchall_1
    move-exception p0

    .line 281
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 282
    :try_start_4
    throw p0

    .line 283
    :goto_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    throw p0
.end method

.method public final findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-ge v1, v0, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/util/Pair;

    .line 36
    .line 37
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ne v3, p1, :cond_1

    .line 46
    .line 47
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    return v1

    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 p0, -0x1

    .line 60
    return p0
.end method

.method public final handleUserRemoved(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/util/Pair;

    .line 21
    .line 22
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne v2, p1, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/lit8 v2, v2, -0x1

    .line 57
    .line 58
    :goto_2
    if-ltz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-ne v3, p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 79
    .line 80
    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method public injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 1
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public injectAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/app/AppOpsManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/AppOpsManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/usage/AppStandbyInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/usage/AppStandbyInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public injectGetGlobalSettingInt(Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public injectIActivityManager()Landroid/app/IActivityManager;
    .locals 0

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .locals 0

    .line 1
    const-string p0, "appops"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public injectPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 0

    .line 1
    const-class p0, Landroid/os/PowerManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public final isAppBackgroundRestricted(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 p1, 0x1

    .line 9
    if-ltz p0, :cond_0

    .line 10
    .line 11
    move p0, p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    xor-int/2addr p0, p1

    .line 15
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

.method public isSmallBatteryDevice()Z
    .locals 0

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isUidActive(I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final onSystemServicesReady()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIActivityManager()Landroid/app/IActivityManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppOpsManager()Landroid/app/AppOpsManager;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectPowerManagerInternal()Landroid/os/PowerManagerInternal;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 69
    .line 70
    new-instance v2, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string/jumbo v4, "forced_app_standby_for_small_battery_enabled"

    .line 84
    .line 85
    .line 86
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const/4 v5, 0x0

    .line 91
    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 95
    .line 96
    iget-object v2, v2, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 97
    .line 98
    const-string/jumbo v3, "forced_app_standby_for_small_battery_enabled"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3, v5}, Lcom/android/server/AppStateTrackerImpl;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-ne v2, v1, :cond_1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move v1, v5

    .line 109
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 110
    .line 111
    new-instance v1, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 117
    .line 118
    invoke-interface {v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Lcom/android/server/AppStateTrackerImpl$2;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    .line 129
    .line 130
    new-instance v2, Lcom/android/server/AppStateTrackerImpl$UidObserver;

    .line 131
    .line 132
    invoke-direct {v2, p0}, Lcom/android/server/AppStateTrackerImpl$UidObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    .line 133
    .line 134
    .line 135
    const/16 v3, 0x1e

    .line 136
    .line 137
    const/4 v4, -0x1

    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 143
    .line 144
    new-instance v2, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;

    .line 145
    .line 146
    invoke-direct {v2, p0}, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    .line 147
    .line 148
    .line 149
    const/16 v3, 0x46

    .line 150
    .line 151
    invoke-interface {v1, v3, v5, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    .line 154
    :catch_0
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    .line 155
    .line 156
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Lcom/android/server/AppStateTrackerImpl$3;

    .line 172
    .line 173
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    new-instance v1, Landroid/content/IntentFilter;

    .line 177
    .line 178
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 179
    .line 180
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string/jumbo v2, "package"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Lcom/android/server/AppStateTrackerImpl$3;

    .line 192
    .line 193
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->refreshForcedAppStandbyUidPackagesLocked()V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 200
    .line 201
    new-instance v2, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;

    .line 202
    .line 203
    invoke-direct {v2, p0}, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    .line 204
    .line 205
    .line 206
    const/16 v3, 0xb

    .line 207
    .line 208
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 218
    .line 219
    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 222
    .line 223
    .line 224
    monitor-exit v0

    .line 225
    return-void

    .line 226
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    throw p0
.end method

.method public final refreshForcedAppStandbyUidPackagesLocked()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 7
    .line 8
    const/16 v1, 0x46

    .line 9
    .line 10
    filled-new-array {v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_0
    if-ge v4, v2, :cond_4

    .line 28
    .line 29
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 34
    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    move v7, v3

    .line 46
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-ge v7, v8, :cond_3

    .line 51
    .line 52
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 57
    .line 58
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eq v9, v1, :cond_1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    iget-object v8, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final updateBackgroundRestrictedUidPackagesLocked()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/util/Pair;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 34
    .line 35
    return-void
.end method

.method public final updateForceAllAppStandbyState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 5
    .line 6
    const/4 v2, 0x7

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    .line 16
    .line 17
    xor-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 20
    .line 21
    if-ne v1, v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 42
    .line 43
    iget-boolean v3, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 44
    .line 45
    if-ne v1, v3, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 60
    .line 61
    .line 62
    :goto_0
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method
