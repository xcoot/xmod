.class public abstract Lcom/android/server/utils/quota/QuotaTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

.field static final MAX_WINDOW_SIZE_MS:J = 0x9a7ec800L

.field static final MIN_WINDOW_SIZE_MS:J = 0x4e20L


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastReceiver:Lcom/android/server/utils/quota/QuotaTracker$1;

.field public final mCategorizer:Lcom/android/server/utils/quota/Categorizer;

.field public final mFreeQuota:Landroid/util/SparseArrayMap;

.field public final mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

.field public final mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

.field public mIsEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mQuotaChangeListeners:Landroid/util/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "*"

    .line 2
    .line 3
    const-string v1, "QuotaTracker"

    .line 4
    .line 5
    const-string v2, ".quota_check*"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V
    .locals 7

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
    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/utils/quota/QuotaTracker$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker$1;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mCategorizer:Lcom/android/server/utils/quota/Categorizer;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 36
    .line 37
    const-class p2, Landroid/app/AlarmManager;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroid/app/AlarmManager;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 46
    .line 47
    new-instance p2, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 48
    .line 49
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;-><init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/content/Context;Landroid/os/Looper;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 61
    .line 62
    new-instance v4, Landroid/content/IntentFilter;

    .line 63
    .line 64
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string p0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 68
    .line 69
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo p0, "package"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    move-object v1, p1

    .line 86
    move-object v2, v0

    .line 87
    move-object v3, p0

    .line 88
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    new-instance v4, Landroid/content/IntentFilter;

    .line 92
    .line 93
    const-string p2, "android.intent.action.USER_REMOVED"

    .line 94
    .line 95
    invoke-direct {v4, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    .line 12
    .line 13
    .line 14
    check-cast p0, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

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

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "Current elapsed time: "

    .line 2
    .line 3
    const-string v1, "Is enabled: "

    .line 4
    .line 5
    const-string v2, "QuotaTracker:"

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "Is global quota free: false"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 74
    .line 75
    .line 76
    const-string v0, "Per-app free quota:"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    move v1, v0

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-ge v1, v3, :cond_1

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    move v4, v0

    .line 101
    :goto_1
    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 102
    .line 103
    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-ge v4, v5, :cond_0

    .line 108
    .line 109
    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 110
    .line 111
    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Ljava/lang/String;

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-static {v3, v5, v6}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v6, ": "

    .line 126
    .line 127
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v6, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 131
    .line 132
    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    goto :goto_2

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 148
    .line 149
    .line 150
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    throw p0
.end method

.method public final isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    check-cast p0, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 13
    .line 14
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2, v3}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 36
    .line 37
    if-ge p1, p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_0
    monitor-exit v0

    .line 42
    return v2

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public maybeScheduleStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/utils/quota/Uptc;

    .line 22
    .line 23
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    check-cast p0, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_1
    new-instance v0, Lcom/android/server/utils/quota/Uptc;

    .line 43
    .line 44
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast p0, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-wide p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 54
    .line 55
    invoke-virtual {v1, p0, p1, v0}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, "QuotaTracker"

    .line 4
    .line 5
    const-string p1, "Told app removed but given null package name."

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, v0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    new-array v3, v3, [Landroid/util/Pair;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, [Landroid/util/Pair;

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    const/4 v4, 0x1

    .line 32
    sub-int/2addr v3, v4

    .line 33
    const/4 v5, 0x0

    .line 34
    :goto_0
    if-ltz v3, :cond_2

    .line 35
    .line 36
    aget-object v6, v2, v3

    .line 37
    .line 38
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, Lcom/android/server/utils/quota/Uptc;

    .line 41
    .line 42
    iget v7, v6, Lcom/android/server/utils/quota/Uptc;->userId:I

    .line 43
    .line 44
    if-ne p1, v7, :cond_1

    .line 45
    .line 46
    iget-object v6, v6, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    iget-object v5, v0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 55
    .line 56
    aget-object v6, v2, v3

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move v5, v4

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    if-eqz v5, :cond_3

    .line 69
    .line 70
    iget-wide v2, v0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    .line 71
    .line 72
    iget-wide v4, v0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 73
    .line 74
    add-long/2addr v2, v4

    .line 75
    invoke-virtual {v0, v2, v3}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 76
    .line 77
    .line 78
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 80
    .line 81
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    check-cast p0, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 89
    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/util/ArrayMap;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 99
    .line 100
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroid/util/ArrayMap;

    .line 105
    .line 106
    return-void

    .line 107
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw p0
.end method
