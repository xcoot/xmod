.class public final Lcom/android/server/devicepolicy/NetworkLoggingHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FORCE_FETCH_THROTTLE_NS:J

.field static final LOG_NETWORK_EVENT_MSG:I = 0x1


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mBatchTimeoutAlarmListener:Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;

.field public final mBatches:Landroid/util/LongSparseArray;

.field public mCurrentBatchToken:J

.field public final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public mId:J

.field public mLastFinalizationNanos:J

.field public mLastRetrievedBatchToken:J

.field public mNetworkEvents:Ljava/util/ArrayList;

.field public mPaused:Z

.field public final mTargetUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->FORCE_FETCH_THROTTLE_NS:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;JI)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 7
    .line 8
    new-instance p1, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance p1, Landroid/util/LongSparseArray;

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    invoke-direct {p1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 34
    .line 35
    iget-object p1, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-class p2, Landroid/app/AlarmManager;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/app/AlarmManager;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 48
    .line 49
    iput-wide p3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 50
    .line 51
    iput p5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mTargetUserId:I

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final buildAdminMessageLocked()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string v2, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    .line 25
    .line 26
    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    const-string p0, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    .line 32
    .line 33
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final finalizeBatchAndBuildAdminMessageLocked()Landroid/os/Bundle;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "NetworkLoggingHandler"

    .line 14
    .line 15
    if-lez v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-wide/16 v3, 0x1

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/app/admin/NetworkEvent;

    .line 36
    .line 37
    iget-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 38
    .line 39
    invoke-virtual {v2, v5, v6}, Landroid/app/admin/NetworkEvent;->setId(J)V

    .line 40
    .line 41
    .line 42
    iget-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 43
    .line 44
    const-wide v7, 0x7fffffffffffffffL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmp-long v2, v5, v7

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "Reached maximum id value; wrapping around ."

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 61
    .line 62
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const-wide/16 v2, 0x0

    .line 73
    .line 74
    iput-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    add-long/2addr v5, v3

    .line 78
    iput-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x5

    .line 88
    if-lt v0, v1, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 97
    .line 98
    add-long/2addr v0, v3

    .line 99
    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 114
    .line 115
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 116
    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildAdminMessageLocked()Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v2, "Was about to finalize the batch, but there were no events to send to the DPC, the batchToken of last available batch: "

    .line 127
    .line 128
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 132
    .line 133
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    const/4 v0, 0x0

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 138
    .line 139
    .line 140
    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const-string p0, "NetworkLoggingHandler"

    .line 7
    .line 8
    const-string p1, "NetworkLoggingHandler received an unknown of message."

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string/jumbo v0, "network_event"

    .line 19
    .line 20
    .line 21
    const-class v1, Landroid/app/admin/NetworkEvent;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/app/admin/NetworkEvent;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/16 v0, 0x4b0

    .line 44
    .line 45
    if-lt p1, v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildAdminMessageLocked()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1

    .line 64
    :cond_2
    :goto_2
    return-void
.end method

.method public final notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "NetworkLoggingHandler"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Shouldn\'t be called with NetworkLoggingHandler lock held"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Sending network logging batch broadcast to device owner or profile owner, batchToken: "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    .line 23
    .line 24
    const-wide/16 v3, -0x1

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mTargetUserId:I

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 43
    .line 44
    const-string v1, "android.app.action.NETWORK_LOGS_AVAILABLE"

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerOrProfileOwnerCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final scheduleBatchFinalization()V
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x5265c0

    .line 6
    .line 7
    .line 8
    add-long v6, v0, v2

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 11
    .line 12
    const-wide/32 v8, 0x1b7740

    .line 13
    .line 14
    .line 15
    const-string v10, "NetworkLogging.batchTimeout"

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    iget-object v11, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;

    .line 19
    .line 20
    move-object v12, p0

    .line 21
    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "NetworkLoggingHandler"

    .line 25
    .line 26
    const-string v0, "Scheduled a new batch finalization alarm 5400000ms from now."

    .line 27
    .line 28
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method
