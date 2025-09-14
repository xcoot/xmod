.class public final Lcom/android/server/power/WakefulnessSessionObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field protected static final OFF_REASON_POWER_BUTTON:I = 0x2

.field protected static final OVERRIDE_OUTCOME_CANCEL_POWER_BUTTON:I = 0x5

.field protected static final OVERRIDE_OUTCOME_CANCEL_USER_INTERACTION:I = 0x4

.field protected static final OVERRIDE_OUTCOME_TIMEOUT_SUCCESS:I = 0x1

.field protected static final OVERRIDE_OUTCOME_TIMEOUT_USER_INITIATED_REVERT:I = 0x2


# instance fields
.field public final mClock:Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mOverrideTimeoutMs:I

.field protected final mPowerGroups:Landroid/util/SparseArray;

.field public mScreenOffTimeoutMs:I

.field protected mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;


# direct methods
.method public static -$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    .line 5
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 6
    .line 7
    new-instance v1, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$Injector;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    .line 34
    .line 35
    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->updateSettingScreenOffTimeout(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    new-instance p1, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "WakefulnessSessionObserver"

    .line 55
    .line 56
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const v1, 0x10e013e

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string/jumbo v1, "screen_off_timeout"

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Lcom/android/server/power/WakefulnessSessionObserver$1;

    .line 88
    .line 89
    new-instance v3, Landroid/os/Handler;

    .line 90
    .line 91
    iget-object v4, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {v2, p0, v3}, Lcom/android/server/power/WakefulnessSessionObserver$1;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;Landroid/os/Handler;)V

    .line 101
    .line 102
    .line 103
    const/4 v3, -0x1

    .line 104
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 108
    .line 109
    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    .line 110
    .line 111
    invoke-direct {v1, p0, v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public final notifyUserActivity(IIJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    .line 26
    .line 27
    iget p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 28
    .line 29
    if-ne p2, p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 33
    .line 34
    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 35
    .line 36
    iget-wide p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    .line 37
    .line 38
    iput-wide p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    .line 39
    .line 40
    iput-wide p3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final updateSettingScreenOffTimeout(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string/jumbo v1, "screen_off_timeout"

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x3a98

    .line 12
    .line 13
    const/4 v3, -0x2

    .line 14
    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method
