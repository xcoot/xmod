.class public final Lcom/android/server/am/AppBatteryTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;


# instance fields
.field public final mActiveUserIdStates:Landroid/util/SparseBooleanArray;

.field public final mBatteryUsageStatsPollingIntervalMs:J

.field public final mBatteryUsageStatsPollingMinIntervalMs:J

.field public mBatteryUsageStatsUpdatePending:Z

.field public final mBgBatteryUsageStatsCheck:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

.field public final mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

.field public final mDebugUidPercentages:Landroid/util/SparseArray;

.field public mLastBatteryUsageSamplingTs:J

.field public mLastReportTime:J

.field public final mLastUidBatteryUsage:Landroid/util/SparseArray;

.field public mLastUidBatteryUsageStartTs:J

.field public final mTmpUidBatteryUsage:Landroid/util/SparseArray;

.field public final mTmpUidBatteryUsage2:Landroid/util/SparseArray;

.field public final mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

.field public final mTmpUserIds:Landroid/util/ArraySet;

.field public final mUidBatteryUsage:Landroid/util/SparseArray;

.field public final mUidBatteryUsageInWindow:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppBatteryTracker;I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppBatteryTracker;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 26
    .line 27
    new-instance p1, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 33
    .line 34
    new-instance p1, Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 40
    .line 41
    new-instance p1, Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    .line 47
    .line 48
    new-instance p1, Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    .line 54
    .line 55
    new-instance p1, Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    .line 61
    .line 62
    new-instance p1, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 68
    .line 69
    new-instance p1, Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    .line 75
    .line 76
    const-wide/16 p1, 0x0

    .line 77
    .line 78
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    .line 79
    .line 80
    new-instance p1, Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 86
    .line 87
    const-wide/32 p1, 0x1b7740

    .line 88
    .line 89
    .line 90
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 91
    .line 92
    const-wide/32 p1, 0x493e0

    .line 93
    .line 94
    .line 95
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 98
    .line 99
    new-instance p2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 100
    .line 101
    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V

    .line 102
    .line 103
    .line 104
    iput-object p2, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 105
    .line 106
    return-void
.end method

.method public static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 4
    invoke-direct {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V
    .locals 4

    .line 6
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 7
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 9
    invoke-direct {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 10
    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)V

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v0, p2, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-wide v0, 0x20b00000002L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide v2, 0x10e00000001L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 23
    .line 24
    .line 25
    const-wide v2, 0x10100000003L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    const/4 v5, 0x2

    .line 16
    invoke-virtual {v1, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    .line 17
    .line 18
    .line 19
    move-result-wide v6

    .line 20
    const/4 v8, 0x3

    .line 21
    invoke-virtual {v1, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    .line 22
    .line 23
    .line 24
    move-result-wide v9

    .line 25
    const/4 v11, 0x4

    .line 26
    invoke-virtual {v1, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    .line 27
    .line 28
    .line 29
    move-result-wide v12

    .line 30
    const-wide/16 v14, 0x0

    .line 31
    .line 32
    cmpl-double v1, v3, v14

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    cmpl-double v1, v6, v14

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    cmpl-double v1, v9, v14

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const-wide v14, 0x20b00000001L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v14

    .line 54
    move-wide/from16 v16, v12

    .line 55
    .line 56
    const-wide v11, 0x10500000001L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    move/from16 v13, p1

    .line 62
    .line 63
    invoke-virtual {v0, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v5, v6, v7}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v8, v9, v10}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 73
    .line 74
    .line 75
    move-wide/from16 v2, v16

    .line 76
    .line 77
    const/4 v1, 0x4

    .line 78
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final checkBatteryUsageStats()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v9

    .line 7
    iget-object v0, v1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 10
    .line 11
    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 12
    .line 13
    :try_start_0
    iget-object v11, v1, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    iget-object v3, v1, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-static {v3, v11}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    iget-wide v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 25
    .line 26
    sub-long v2, v9, v2

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v12

    .line 34
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v14

    .line 38
    const/4 v7, 0x0

    .line 39
    :goto_0
    if-ge v7, v14, :cond_0

    .line 40
    .line 41
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move-object v5, v2

    .line 50
    check-cast v5, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 51
    .line 52
    iget-object v2, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 53
    .line 54
    iget v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 55
    .line 56
    move v3, v8

    .line 57
    move-object/from16 v16, v5

    .line 58
    .line 59
    move-wide v5, v12

    .line 60
    move/from16 v17, v7

    .line 61
    .line 62
    move v15, v8

    .line 63
    move-wide v7, v9

    .line 64
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IIJJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 72
    .line 73
    move-object/from16 v4, v16

    .line 74
    .line 75
    invoke-direct {v3, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v15, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 85
    .line 86
    invoke-direct {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v7, v17, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    goto :goto_2

    .line 97
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const/4 v15, 0x0

    .line 104
    :goto_1
    if-ge v15, v2, :cond_1

    .line 105
    .line 106
    iget-object v3, v1, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 107
    .line 108
    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->keyAt(I)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    iget-object v4, v1, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 119
    .line 120
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .line 122
    .line 123
    add-int/lit8 v15, v15, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    iget-wide v2, v1, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 127
    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    :goto_2
    iget-wide v2, v1, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 136
    .line 137
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 138
    .line 139
    .line 140
    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "    "

    .line 8
    .line 9
    const-string v4, "  "

    .line 10
    .line 11
    const-string v5, "  "

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v6, "APP BATTERY STATE TRACKER:"

    .line 17
    .line 18
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v6, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    const/4 v8, 0x1

    .line 31
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 35
    .line 36
    .line 37
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 38
    .line 39
    invoke-direct {v6, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iget-object v7, v0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 43
    .line 44
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    new-instance v8, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;

    .line 53
    .line 54
    invoke-direct {v8, v6}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    iget-object v6, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v6

    .line 66
    :try_start_1
    iget-object v7, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 67
    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v5, "  Last battery usage start="

    .line 84
    .line 85
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-wide v8, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 89
    .line 90
    invoke-static {v1, v8, v9}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 94
    .line 95
    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v4, "Battery usage over last "

    .line 112
    .line 113
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 129
    .line 130
    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 131
    .line 132
    check-cast v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 133
    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v18

    .line 138
    iget-wide v8, v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 139
    .line 140
    sub-long v8, v18, v8

    .line 141
    .line 142
    const-wide/16 v10, 0x0

    .line 143
    .line 144
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 145
    .line 146
    .line 147
    move-result-wide v20

    .line 148
    sub-long v8, v18, v20

    .line 149
    .line 150
    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-nez v5, :cond_0

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v3, "(none)"

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :catchall_0
    move-exception v0

    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :cond_0
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    const/4 v8, 0x0

    .line 181
    move v15, v8

    .line 182
    :goto_0
    if-ge v15, v5, :cond_1

    .line 183
    .line 184
    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->keyAt(I)I

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    move-object v14, v8

    .line 193
    check-cast v14, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 194
    .line 195
    invoke-virtual {v14, v13, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 196
    .line 197
    .line 198
    iget-object v8, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 199
    .line 200
    iget v10, v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 201
    .line 202
    move v9, v13

    .line 203
    move-wide/from16 v11, v20

    .line 204
    .line 205
    move/from16 v22, v5

    .line 206
    .line 207
    move-object/from16 v23, v7

    .line 208
    .line 209
    move v5, v13

    .line 210
    move-object v7, v14

    .line 211
    move-wide/from16 v13, v18

    .line 212
    .line 213
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IIJJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-virtual {v8, v5, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 218
    .line 219
    .line 220
    new-instance v9, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 221
    .line 222
    invoke-direct {v9, v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v9, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v5, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 229
    .line 230
    .line 231
    const-string v14, "%s%s: [%s] %s (%s) | %s (%s) | %s (%s) | %s\n"

    .line 232
    .line 233
    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    iget-object v11, v4, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 238
    .line 239
    iget-object v11, v11, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 240
    .line 241
    invoke-virtual {v11, v5}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    invoke-static {v11}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    invoke-virtual {v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v12

    .line 253
    invoke-virtual {v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    invoke-virtual {v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v16

    .line 265
    invoke-virtual {v9}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v17

    .line 269
    invoke-virtual {v9}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v24

    .line 273
    iget-object v8, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 274
    .line 275
    sget-object v9, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 276
    .line 277
    invoke-virtual {v8, v5, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 282
    .line 283
    invoke-virtual {v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    move-object v8, v3

    .line 288
    move-object v9, v10

    .line 289
    move-object v10, v11

    .line 290
    move-object v11, v12

    .line 291
    move-object v12, v7

    .line 292
    move-object v7, v14

    .line 293
    move-object/from16 v14, v16

    .line 294
    .line 295
    move/from16 v25, v15

    .line 296
    .line 297
    move-object/from16 v15, v17

    .line 298
    .line 299
    move-object/from16 v16, v24

    .line 300
    .line 301
    move-object/from16 v17, v5

    .line 302
    .line 303
    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    invoke-virtual {v1, v7, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 308
    .line 309
    .line 310
    add-int/lit8 v15, v25, 0x1

    .line 311
    .line 312
    move/from16 v5, v22

    .line 313
    .line 314
    move-object/from16 v7, v23

    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_1
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 320
    .line 321
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 322
    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v4, "  "

    .line 326
    .line 327
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    throw v0
.end method

.method public final dumpAsProto(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-static {p2, p1, p0}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    if-ge v1, p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 52
    .line 53
    invoke-static {p2, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final getTrackerInfoForStatsd(I)[B
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 20
    .line 21
    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 22
    .line 23
    invoke-virtual {v1, p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    aget-wide v0, p0, p1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    aget-wide v2, p0, p1

    .line 33
    .line 34
    add-double/2addr v0, v2

    .line 35
    const/4 p1, 0x2

    .line 36
    aget-wide v4, p0, p1

    .line 37
    .line 38
    add-double/2addr v0, v4

    .line 39
    const/4 p1, 0x3

    .line 40
    aget-wide v6, p0, p1

    .line 41
    .line 42
    add-double/2addr v0, v6

    .line 43
    const/4 p1, 0x4

    .line 44
    aget-wide p0, p0, p1

    .line 45
    .line 46
    add-double/2addr v0, p0

    .line 47
    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    .line 48
    .line 49
    invoke-direct {v8}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 50
    .line 51
    .line 52
    const-wide v9, 0x40c3880000000000L    # 10000.0

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    mul-double/2addr v0, v9

    .line 58
    const-wide v11, 0x10500000001L

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v11, v12, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 64
    .line 65
    .line 66
    const-wide v0, 0x10500000002L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    mul-double/2addr v4, v9

    .line 72
    invoke-virtual {v8, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 73
    .line 74
    .line 75
    const-wide v0, 0x10500000003L

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    mul-double/2addr v6, v9

    .line 81
    invoke-virtual {v8, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 82
    .line 83
    .line 84
    const-wide v0, 0x10500000004L

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    mul-double/2addr v2, v9

    .line 90
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 91
    .line 92
    .line 93
    const-wide v0, 0x10500000005L

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    mul-double/2addr p0, v9

    .line 99
    invoke-virtual {v8, v0, v1, p0, p1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onBackgroundRestrictionChanged(IZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p2

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/util/Pair;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, [J

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    aput-wide v0, p1, v2

    .line 34
    .line 35
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    aput-object p1, p0, v2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_0
    monitor-exit p2

    .line 46
    :goto_1
    return-void

    .line 47
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final onSystemReady()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    .line 16
    aget v4, v1, v3

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v5

    .line 27
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    invoke-virtual {v6, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 31
    .line 32
    .line 33
    monitor-exit v5

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onUidRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 17
    .line 18
    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 20
    .line 21
    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 26
    .line 27
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v1, 0x32

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne p1, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-ltz p1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 48
    .line 49
    .line 50
    move p1, v2

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 59
    .line 60
    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 63
    .line 64
    const/16 p1, 0x300

    .line 65
    .line 66
    const/4 v0, 0x3

    .line 67
    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void

    .line 71
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0
.end method

.method public final onUserRemoved(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

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
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v2, p1, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_5

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :goto_2
    if-ltz v1, :cond_3

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-ne v2, p1, :cond_2

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 75
    .line 76
    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/lit8 v1, v1, -0x1

    .line 85
    .line 86
    :goto_3
    if-ltz v1, :cond_5

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-ne v2, p1, :cond_4

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 103
    .line 104
    .line 105
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/lit8 v1, v1, -0x1

    .line 115
    .line 116
    :goto_4
    if-ltz v1, :cond_7

    .line 117
    .line 118
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-ne v2, p1, :cond_6

    .line 129
    .line 130
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 131
    .line 132
    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 133
    .line 134
    .line 135
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_7
    monitor-exit v0

    .line 139
    return-void

    .line 140
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    throw p0
.end method

.method public final onUserStarted(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

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

.method public final onUserStopped(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

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

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 17
    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsAndCheck()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final scheduleBatteryUsageStatsUpdateIfNecessary(J)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 6
    .line 7
    check-cast v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 10
    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 27
    .line 28
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    move-wide/from16 v4, p1

    .line 31
    .line 32
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v3

    .line 47
    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 48
    .line 49
    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 50
    .line 51
    check-cast v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 52
    .line 53
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    .line 54
    .line 55
    sub-long v5, v1, v5

    .line 56
    .line 57
    iget-wide v7, v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 58
    .line 59
    cmp-long v4, v5, v7

    .line 60
    .line 61
    if-gez v4, :cond_1

    .line 62
    .line 63
    monitor-exit v3

    .line 64
    goto :goto_6

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    goto :goto_4

    .line 67
    :cond_1
    iput-wide v1, v0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    .line 68
    .line 69
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v1

    .line 86
    :try_start_2
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x0

    .line 93
    :goto_1
    if-ge v3, v2, :cond_4

    .line 94
    .line 95
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 96
    .line 97
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-static {v6}, Landroid/os/UserHandle;->isCore(I)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_2

    .line 106
    .line 107
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_2

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    goto :goto_3

    .line 116
    :cond_2
    sget-object v4, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 117
    .line 118
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_3

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v0, v6}, Lcom/android/server/am/AppBatteryTracker;->getTrackerInfoForStatsd(I)[B

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 136
    .line 137
    .line 138
    move-result v17

    .line 139
    const/4 v13, 0x0

    .line 140
    const/4 v14, 0x0

    .line 141
    const/4 v15, 0x0

    .line 142
    const/16 v16, 0x0

    .line 143
    .line 144
    const/16 v18, 0x0

    .line 145
    .line 146
    const/16 v5, 0x1b9

    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    const/4 v8, 0x0

    .line 150
    const/4 v9, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    const/4 v12, 0x0

    .line 153
    invoke-static/range {v5 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    .line 154
    .line 155
    .line 156
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    monitor-exit v1

    .line 160
    goto :goto_6

    .line 161
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    throw v0

    .line 163
    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    throw v0

    .line 165
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    throw v0

    .line 167
    :cond_5
    :goto_6
    return-void
.end method

.method public final scheduleBgBatteryUsageStatsCheck()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final updateBatteryUsageStatsAndCheck()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->checkBatteryUsageStats()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    .line 25
    .line 26
    iget-wide v5, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    .line 27
    .line 28
    add-long/2addr v3, v5

    .line 29
    sub-long/2addr v3, v0

    .line 30
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 31
    .line 32
    .line 33
    monitor-exit v2

    .line 34
    :goto_0
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final updateBatteryUsageStatsIfNecessary(JZ)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    .line 5
    .line 6
    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    .line 7
    .line 8
    add-long/2addr v1, v3

    .line 9
    cmp-long v1, v1, p1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return v2

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_3

    .line 21
    :cond_1
    :goto_0
    iget-boolean p3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    :try_start_1
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :catch_0
    move p3, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    .line 34
    .line 35
    move p3, v1

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnce(J)V

    .line 40
    .line 41
    .line 42
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p3

    .line 45
    :try_start_3
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 52
    .line 53
    .line 54
    monitor-exit p3

    .line 55
    goto :goto_2

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    throw p0

    .line 59
    :cond_3
    :goto_2
    return v1

    .line 60
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    throw p0
.end method

.method public final updateBatteryUsageStatsOnce(J)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 6
    .line 7
    check-cast v2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 8
    .line 9
    iget-object v8, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    .line 10
    .line 11
    iget-object v9, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    .line 12
    .line 13
    iget-object v10, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 14
    .line 15
    iget-wide v11, v2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 16
    .line 17
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v8}, Landroid/util/ArraySet;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v13, 0x1

    .line 33
    sub-int/2addr v2, v13

    .line 34
    :goto_0
    if-ltz v2, :cond_1

    .line 35
    .line 36
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto/16 :goto_c

    .line 65
    .line 66
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 71
    .line 72
    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-wide/16 v14, 0x0

    .line 80
    .line 81
    invoke-virtual {v1, v14, v15}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-wide/16 v2, 0x0

    .line 86
    .line 87
    move-object/from16 v1, p0

    .line 88
    .line 89
    move-object v4, v9

    .line 90
    move-object v6, v8

    .line 91
    move-object v7, v10

    .line 92
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    .line 93
    .line 94
    .line 95
    move-result-object v16

    .line 96
    if-eqz v16, :cond_2

    .line 97
    .line 98
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    move-wide v6, v1

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move-wide v6, v14

    .line 105
    :goto_2
    if-eqz v16, :cond_3

    .line 106
    .line 107
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    goto :goto_3

    .line 112
    :cond_3
    move-wide/from16 v1, p1

    .line 113
    .line 114
    :goto_3
    sub-long v4, v1, v6

    .line 115
    .line 116
    cmp-long v1, v4, v11

    .line 117
    .line 118
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 119
    .line 120
    const/16 v19, 0x0

    .line 121
    .line 122
    if-ltz v1, :cond_4

    .line 123
    .line 124
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 125
    .line 126
    monitor-enter v1

    .line 127
    :try_start_1
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 128
    .line 129
    long-to-double v14, v11

    .line 130
    mul-double v14, v14, v17

    .line 131
    .line 132
    move-wide/from16 v22, v11

    .line 133
    .line 134
    long-to-double v11, v4

    .line 135
    div-double/2addr v14, v11

    .line 136
    invoke-static {v9, v2, v14, v15}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    .line 137
    .line 138
    .line 139
    monitor-exit v1

    .line 140
    move/from16 v13, v19

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :catchall_1
    move-exception v0

    .line 144
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    throw v0

    .line 146
    :cond_4
    move-wide/from16 v22, v11

    .line 147
    .line 148
    :goto_4
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    .line 149
    .line 150
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    .line 154
    .line 155
    invoke-static {v9, v1}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 159
    .line 160
    monitor-enter v2

    .line 161
    :try_start_2
    iget-wide v11, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 162
    .line 163
    iput-wide v6, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 164
    .line 165
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 166
    cmp-long v1, v6, v11

    .line 167
    .line 168
    if-lez v1, :cond_6

    .line 169
    .line 170
    const-wide/16 v1, 0x0

    .line 171
    .line 172
    cmp-long v1, v11, v1

    .line 173
    .line 174
    if-lez v1, :cond_6

    .line 175
    .line 176
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 177
    .line 178
    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1, v11, v12, v6, v7}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    const-wide/16 v2, 0x0

    .line 190
    .line 191
    move-object/from16 v1, p0

    .line 192
    .line 193
    move-wide/from16 v20, v4

    .line 194
    .line 195
    move-object v4, v9

    .line 196
    move-object v5, v14

    .line 197
    move-wide v14, v6

    .line 198
    move-object v6, v8

    .line 199
    move-object v7, v10

    .line 200
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    sub-long v6, v14, v11

    .line 205
    .line 206
    add-long v4, v6, v20

    .line 207
    .line 208
    if-eqz v1, :cond_5

    .line 209
    .line 210
    :try_start_3
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->close()V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_5
    const-string v1, "ActivityManager"

    .line 215
    .line 216
    const-string v2, "Stat was null"

    .line 217
    .line 218
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :catch_0
    const-string v1, "ActivityManager"

    .line 223
    .line 224
    const-string v2, "Failed to close a stat"

    .line 225
    .line 226
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_6
    move-wide/from16 v20, v4

    .line 231
    .line 232
    move-wide/from16 v4, v20

    .line 233
    .line 234
    :goto_5
    if-eqz v13, :cond_7

    .line 235
    .line 236
    cmp-long v1, v4, v22

    .line 237
    .line 238
    if-ltz v1, :cond_7

    .line 239
    .line 240
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 241
    .line 242
    monitor-enter v1

    .line 243
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 244
    .line 245
    move-wide/from16 v6, v22

    .line 246
    .line 247
    long-to-double v13, v6

    .line 248
    mul-double v13, v13, v17

    .line 249
    .line 250
    long-to-double v3, v4

    .line 251
    div-double/2addr v13, v3

    .line 252
    invoke-static {v9, v2, v13, v14}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    .line 253
    .line 254
    .line 255
    monitor-exit v1

    .line 256
    move/from16 v13, v19

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :catchall_2
    move-exception v0

    .line 260
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 261
    throw v0

    .line 262
    :cond_7
    move-wide/from16 v6, v22

    .line 263
    .line 264
    :goto_6
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 265
    .line 266
    monitor-enter v1

    .line 267
    :try_start_5
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    move/from16 v3, v19

    .line 272
    .line 273
    :goto_7
    if-ge v3, v2, :cond_9

    .line 274
    .line 275
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 280
    .line 281
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    iget-object v14, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    .line 286
    .line 287
    sget-object v15, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 288
    .line 289
    invoke-virtual {v14, v4, v15}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v14

    .line 293
    check-cast v14, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 294
    .line 295
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v15

    .line 299
    check-cast v15, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 300
    .line 301
    if-ltz v5, :cond_8

    .line 302
    .line 303
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 304
    .line 305
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    check-cast v4, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 310
    .line 311
    invoke-virtual {v4, v14}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-virtual {v4, v15}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 316
    .line 317
    .line 318
    goto :goto_8

    .line 319
    :catchall_3
    move-exception v0

    .line 320
    goto :goto_b

    .line 321
    :cond_8
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 322
    .line 323
    invoke-virtual {v5, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_9
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    .line 330
    .line 331
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    .line 332
    .line 333
    invoke-static {v2, v3}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 334
    .line 335
    .line 336
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 337
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    .line 338
    .line 339
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 340
    .line 341
    .line 342
    if-eqz v13, :cond_a

    .line 343
    .line 344
    sub-long v1, p1, v6

    .line 345
    .line 346
    const-wide/16 v3, 0x1

    .line 347
    .line 348
    sub-long/2addr v11, v3

    .line 349
    new-instance v3, Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 350
    .line 351
    invoke-direct {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v3, v1, v2, v11, v12}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    sub-long v2, v11, v1

    .line 363
    .line 364
    move-object/from16 v1, p0

    .line 365
    .line 366
    move-object v4, v9

    .line 367
    move-object v6, v8

    .line 368
    move-object v7, v10

    .line 369
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    .line 370
    .line 371
    .line 372
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 373
    .line 374
    monitor-enter v1

    .line 375
    :try_start_6
    iget-object v0, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 376
    .line 377
    invoke-static {v9, v0}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 378
    .line 379
    .line 380
    monitor-exit v1

    .line 381
    goto :goto_9

    .line 382
    :catchall_4
    move-exception v0

    .line 383
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 384
    throw v0

    .line 385
    :cond_a
    :goto_9
    if-eqz v16, :cond_b

    .line 386
    .line 387
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryUsageStats;->close()V

    .line 388
    .line 389
    .line 390
    goto :goto_a

    .line 391
    :cond_b
    const-string v0, "ActivityManager"

    .line 392
    .line 393
    const-string v1, "Stat was null"

    .line 394
    .line 395
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 396
    .line 397
    .line 398
    goto :goto_a

    .line 399
    :catch_1
    const-string v0, "ActivityManager"

    .line 400
    .line 401
    const-string v1, "Failed to close a stat"

    .line 402
    .line 403
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    :goto_a
    return-void

    .line 407
    :goto_b
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 408
    throw v0

    .line 409
    :catchall_5
    move-exception v0

    .line 410
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 411
    throw v0

    .line 412
    :goto_c
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 413
    throw v0
.end method

.method public final updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;
    .locals 25

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    const/4 v5, 0x2

    .line 6
    const/4 v6, 0x1

    .line 7
    const-string v7, "ActivityManager"

    .line 8
    .line 9
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArraySet;->size()I

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    const/4 v9, 0x0

    .line 14
    move v10, v9

    .line 15
    :goto_0
    if-ge v10, v8, :cond_0

    .line 16
    .line 17
    move-object/from16 v11, p5

    .line 18
    .line 19
    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    check-cast v12, Landroid/os/UserHandle;

    .line 24
    .line 25
    move-object/from16 v13, p4

    .line 26
    .line 27
    invoke-virtual {v13, v12}, Landroid/os/BatteryUsageStatsQuery$Builder;->addUser(Landroid/os/UserHandle;)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 28
    .line 29
    .line 30
    add-int/2addr v10, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object/from16 v13, p4

    .line 33
    .line 34
    new-array v8, v6, [Landroid/os/BatteryUsageStatsQuery;

    .line 35
    .line 36
    invoke-virtual/range {p4 .. p4}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    aput-object v10, v8, v9

    .line 41
    .line 42
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    move-object/from16 v10, p6

    .line 47
    .line 48
    invoke-virtual {v10, v8}, Landroid/os/BatteryStatsInternal;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    return-object v0

    .line 60
    :cond_1
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    check-cast v10, Landroid/os/BatteryUsageStats;

    .line 65
    .line 66
    move v11, v6

    .line 67
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    if-ge v11, v12, :cond_3

    .line 72
    .line 73
    :try_start_0
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    if-eqz v12, :cond_2

    .line 78
    .line 79
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    check-cast v12, Landroid/os/BatteryUsageStats;

    .line 84
    .line 85
    invoke-virtual {v12}, Landroid/os/BatteryUsageStats;->close()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    const-string v12, "Stat was null"

    .line 90
    .line 91
    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catch_0
    const-string v12, "Failed to close a stat in BatteryUsageStats List"

    .line 96
    .line 97
    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :goto_2
    add-int/2addr v11, v6

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-eqz v7, :cond_8

    .line 107
    .line 108
    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    .line 109
    .line 110
    .line 111
    move-result-wide v11

    .line 112
    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    .line 113
    .line 114
    .line 115
    move-result-wide v13

    .line 116
    const-wide/16 v15, 0x0

    .line 117
    .line 118
    cmp-long v8, v0, v15

    .line 119
    .line 120
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 121
    .line 122
    if-lez v8, :cond_4

    .line 123
    .line 124
    long-to-double v0, v0

    .line 125
    mul-double/2addr v0, v3

    .line 126
    sub-long/2addr v13, v11

    .line 127
    long-to-double v11, v13

    .line 128
    div-double/2addr v0, v11

    .line 129
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 130
    .line 131
    .line 132
    move-result-wide v3

    .line 133
    :cond_4
    move-object/from16 v0, p0

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 138
    .line 139
    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 140
    .line 141
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_8

    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Landroid/os/UidBatteryConsumer;

    .line 156
    .line 157
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer;->getUid()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    invoke-static {v8}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    if-eqz v11, :cond_5

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    invoke-static {v8}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-lez v11, :cond_6

    .line 173
    .line 174
    invoke-static {v9, v11}, Landroid/os/UserHandle;->getUid(II)I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    :cond_6
    new-instance v11, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 179
    .line 180
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 181
    .line 182
    .line 183
    iget-object v12, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    .line 184
    .line 185
    aget-object v13, v12, v9

    .line 186
    .line 187
    const-wide/16 v17, 0x0

    .line 188
    .line 189
    :try_start_1
    invoke-virtual {v7, v13}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    .line 190
    .line 191
    .line 192
    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    goto :goto_4

    .line 194
    :catch_1
    move-wide/from16 v13, v17

    .line 195
    .line 196
    :goto_4
    aget-object v15, v12, v6

    .line 197
    .line 198
    :try_start_2
    invoke-virtual {v7, v15}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    .line 199
    .line 200
    .line 201
    move-result-wide v19
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    goto :goto_5

    .line 203
    :catch_2
    move-wide/from16 v19, v17

    .line 204
    .line 205
    :goto_5
    aget-object v15, v12, v5

    .line 206
    .line 207
    :try_start_3
    invoke-virtual {v7, v15}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    .line 208
    .line 209
    .line 210
    move-result-wide v21
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 211
    :goto_6
    const/4 v15, 0x3

    .line 212
    goto :goto_7

    .line 213
    :catch_3
    move-wide/from16 v21, v17

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :goto_7
    aget-object v5, v12, v15

    .line 217
    .line 218
    :try_start_4
    invoke-virtual {v7, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    .line 219
    .line 220
    .line 221
    move-result-wide v23
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 222
    :goto_8
    const/4 v5, 0x4

    .line 223
    goto :goto_9

    .line 224
    :catch_4
    move-wide/from16 v23, v17

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :goto_9
    aget-object v12, v12, v5

    .line 228
    .line 229
    :try_start_5
    invoke-virtual {v7, v12}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    .line 230
    .line 231
    .line 232
    move-result-wide v17
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 233
    :catch_5
    const/4 v5, 0x5

    .line 234
    new-array v5, v5, [D

    .line 235
    .line 236
    aput-wide v13, v5, v9

    .line 237
    .line 238
    aput-wide v19, v5, v6

    .line 239
    .line 240
    const/4 v7, 0x2

    .line 241
    aput-wide v21, v5, v7

    .line 242
    .line 243
    const/4 v12, 0x3

    .line 244
    aput-wide v23, v5, v12

    .line 245
    .line 246
    const/4 v13, 0x4

    .line 247
    aput-wide v17, v5, v13

    .line 248
    .line 249
    iput-object v5, v11, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 250
    .line 251
    invoke-virtual {v11, v3, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-gez v5, :cond_7

    .line 259
    .line 260
    invoke-virtual {v2, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto :goto_a

    .line 264
    :cond_7
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    check-cast v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 269
    .line 270
    invoke-virtual {v5, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 271
    .line 272
    .line 273
    :goto_a
    move v5, v7

    .line 274
    goto/16 :goto_3

    .line 275
    .line 276
    :cond_8
    return-object v10
.end method
