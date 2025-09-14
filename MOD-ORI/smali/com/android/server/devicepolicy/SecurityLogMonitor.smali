.class public final Lcom/android/server/devicepolicy/SecurityLogMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final BROADCAST_RETRY_INTERVAL_MS:J

.field static final BUFFER_ENTRIES_NOTIFICATION_LEVEL:I = 0x400

.field public static final FORCE_FETCH_THROTTLE_NS:J

.field public static final MAX_AUDIT_LOG_EVENT_AGE_NS:J

.field public static final OVERLAP_NS:J

.field public static final POLLING_INTERVAL_MS:J

.field public static final RATE_LIMIT_INTERVAL_MS:J


# instance fields
.field public mAllowedToRetrieve:Z

.field public final mAuditLogCallbacks:Landroid/util/SparseArray;

.field public mAuditLogEnabled:Z

.field public final mAuditLogEventBuffer:Ljava/util/ArrayDeque;

.field public mCriticalLevelLogged:Z

.field public mEnabledUser:I

.field public final mForceSemaphore:Ljava/util/concurrent/Semaphore;

.field public final mHandler:Landroid/os/Handler;

.field public mId:J

.field public mLastEventNanos:J

.field public final mLastEvents:Ljava/util/ArrayList;

.field public mLastForceNanos:J

.field public mLegacyLogEnabled:Z

.field public final mLock:Ljava/util/concurrent/locks/Lock;

.field public mMonitorThread:Ljava/lang/Thread;

.field public mNextAllowedRetrievalTimeMillis:J

.field public mPaused:Z

.field public mPendingLogs:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x2

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MS:J

    .line 10
    .line 11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v2, 0x1e

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    sput-wide v2, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MS:J

    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    sput-wide v1, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MS:J

    .line 28
    .line 29
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    const-wide/16 v2, 0x3

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    sput-wide v2, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    .line 38
    .line 39
    const-wide/16 v2, 0xa

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    sput-wide v1, Lcom/android/server/devicepolicy/SecurityLogMonitor;->FORCE_FETCH_THROTTLE_NS:J

    .line 46
    .line 47
    const-wide/16 v1, 0x8

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->MAX_AUDIT_LOG_EVENT_AGE_NS:J

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 32
    .line 33
    const-wide/16 v1, -0x1

    .line 34
    .line 35
    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 36
    .line 37
    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 40
    .line 41
    new-instance v1, Ljava/util/concurrent/Semaphore;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    .line 47
    .line 48
    const-wide/16 v0, 0x0

    .line 49
    .line 50
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 51
    .line 52
    new-instance v2, Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    .line 58
    .line 59
    new-instance v2, Ljava/util/ArrayDeque;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogEventBuffer:Ljava/util/ArrayDeque;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 67
    .line 68
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 75
    .line 76
    iput-object p2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mHandler:Landroid/os/Handler;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final getNextBatch(Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/app/admin/SecurityLog;->readEvents(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 25
    .line 26
    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    .line 27
    .line 28
    sub-long/2addr v0, v4

    .line 29
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    :goto_0
    invoke-static {v0, v1, p1}, Landroid/app/admin/SecurityLog;->readEventsSince(JLjava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    const/4 v0, 0x0

    .line 37
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    if-ge v0, v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    cmp-long v1, v1, v3

    .line 68
    .line 69
    if-lez v1, :cond_2

    .line 70
    .line 71
    new-instance v0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mEnabledUser:I

    .line 80
    .line 81
    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->redactEvents(Ljava/util/ArrayList;I)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final mergeBatchLocked(Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v2, v4, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v3, v4, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    iget-wide v7, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 34
    .line 35
    cmp-long v7, v5, v7

    .line 36
    .line 37
    if-lez v7, :cond_0

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    cmp-long v5, v8, v5

    .line 53
    .line 54
    if-lez v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-gez v5, :cond_2

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v7, v4}, Landroid/app/admin/SecurityLog$SecurityEvent;->eventEquals(Landroid/app/admin/SecurityLog$SecurityEvent;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {p1, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const-string v3, "SecurityLogMonitor"

    .line 100
    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 108
    .line 109
    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 110
    .line 111
    invoke-virtual {v2, v4, v5}, Landroid/app/admin/SecurityLog$SecurityEvent;->setId(J)V

    .line 112
    .line 113
    .line 114
    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 115
    .line 116
    const-wide v6, 0x7fffffffffffffffL

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    cmp-long v2, v4, v6

    .line 122
    .line 123
    if-nez v2, :cond_5

    .line 124
    .line 125
    const-string v2, "Reached maximum id value; wrapping around."

    .line 126
    .line 127
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    const-wide/16 v2, 0x0

    .line 131
    .line 132
    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    const-wide/16 v2, 0x1

    .line 136
    .line 137
    add-long/2addr v4, v2

    .line 138
    iput-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    invoke-static {}, Landroid/app/admin/flags/Flags;->securityLogV2Enabled()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    iget-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLegacyLogEnabled:Z

    .line 148
    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    :cond_7
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    .line 155
    .line 156
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_8

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_8
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    const/16 v2, 0x2400

    .line 170
    .line 171
    if-lt p1, v2, :cond_9

    .line 172
    .line 173
    iget-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 174
    .line 175
    if-nez p1, :cond_9

    .line 176
    .line 177
    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 179
    .line 180
    new-array p1, v1, [Ljava/lang/Object;

    .line 181
    .line 182
    const v2, 0x3345f

    .line 183
    .line 184
    .line 185
    invoke-static {v2, p1}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 186
    .line 187
    .line 188
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    const/16 v2, 0x2800

    .line 195
    .line 196
    if-le p1, v2, :cond_a

    .line 197
    .line 198
    new-instance p1, Ljava/util/ArrayList;

    .line 199
    .line 200
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    add-int/lit16 v4, v4, -0x1400

    .line 207
    .line 208
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 219
    .line 220
    .line 221
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 222
    .line 223
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 224
    .line 225
    const-string p1, "Pending logs buffer full. Discarding old logs."

    .line 226
    .line 227
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    :cond_a
    invoke-static {}, Landroid/app/admin/flags/Flags;->securityLogV2Enabled()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_e

    .line 235
    .line 236
    iget-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogEnabled:Z

    .line 237
    .line 238
    if-eqz p1, :cond_e

    .line 239
    .line 240
    iget-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 241
    .line 242
    if-eqz p1, :cond_b

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_c

    .line 250
    .line 251
    :goto_6
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-ge v1, p1, :cond_c

    .line 258
    .line 259
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    .line 260
    .line 261
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    .line 266
    .line 267
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Landroid/app/admin/IAuditLogEventsCallback;

    .line 272
    .line 273
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mHandler:Landroid/os/Handler;

    .line 274
    .line 275
    new-instance v4, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;

    .line 276
    .line 277
    invoke-direct {v4, p0, p1, v2, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/SecurityLogMonitor;ILandroid/app/admin/IAuditLogEventsCallback;Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    .line 282
    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_c
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogEventBuffer:Ljava/util/ArrayDeque;

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 289
    .line 290
    .line 291
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 292
    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 294
    .line 295
    .line 296
    move-result-wide v0

    .line 297
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 298
    .line 299
    .line 300
    move-result-wide v0

    .line 301
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogEventBuffer:Ljava/util/ArrayDeque;

    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_e

    .line 312
    .line 313
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 318
    .line 319
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogEventBuffer:Ljava/util/ArrayDeque;

    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    const/16 v4, 0x2710

    .line 326
    .line 327
    if-gt v3, v4, :cond_d

    .line 328
    .line 329
    invoke-virtual {v2}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    .line 330
    .line 331
    .line 332
    move-result-wide v2

    .line 333
    sub-long v2, v0, v2

    .line 334
    .line 335
    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->MAX_AUDIT_LOG_EVENT_AGE_NS:J

    .line 336
    .line 337
    cmp-long v2, v2, v4

    .line 338
    .line 339
    if-gtz v2, :cond_d

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 343
    .line 344
    .line 345
    goto :goto_7

    .line 346
    :cond_e
    :goto_8
    return-void
.end method

.method public final notifyDeviceOwnerOrProfileOwnerIfNeeded(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 13
    .line 14
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0x400

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    move p1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    :goto_0
    if-lez v0, :cond_3

    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iget-wide v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 49
    .line 50
    cmp-long v0, v0, v3

    .line 51
    .line 52
    if-ltz v0, :cond_3

    .line 53
    .line 54
    move p1, v2

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 59
    .line 60
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    sget-wide v2, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MS:J

    .line 67
    .line 68
    add-long/2addr v0, v2

    .line 69
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 72
    .line 73
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    const-string p1, "SecurityLogMonitor"

    .line 81
    .line 82
    const-string/jumbo v0, "notify DO or PO"

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    iget p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mEnabledUser:I

    .line 92
    .line 93
    const-string v1, "android.app.action.SECURITY_LOGS_AVAILABLE"

    .line 94
    .line 95
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerOrProfileOwnerCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    return-void

    .line 99
    :goto_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 100
    .line 101
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method public final resetLegacyBufferLocked()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 16
    .line 17
    const-string p0, "SecurityLogMonitor"

    .line 18
    .line 19
    const-string v0, "Legacy buffer reset."

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final run()V
    .locals 6

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "SecurityLogMonitor"

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    .line 24
    .line 25
    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MS:J

    .line 26
    .line 27
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->getNextBatch(Ljava/util/ArrayList;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 37
    .line 38
    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mergeBatchLocked(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 47
    .line 48
    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->saveLastEvents(Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/app/admin/flags/Flags;->securityLogV2Enabled()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLegacyLogEnabled:Z

    .line 66
    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    goto :goto_2

    .line 72
    :catch_1
    move-exception v1

    .line 73
    goto :goto_3

    .line 74
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerOrProfileOwnerIfNeeded(Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 80
    .line 81
    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    .line 85
    .line 86
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    :goto_2
    const-string v1, "Thread interrupted, exiting."

    .line 88
    .line 89
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :goto_3
    const-string v3, "Failed to read security log"

    .line 94
    .line 95
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    .line 103
    .line 104
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 105
    .line 106
    const-wide/16 v3, -0x1

    .line 107
    .line 108
    cmp-long v3, v0, v3

    .line 109
    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    const-wide/16 v3, 0x1

    .line 113
    .line 114
    add-long/2addr v0, v3

    .line 115
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 116
    .line 117
    :cond_3
    const-string p0, "MonitorThread exit."

    .line 118
    .line 119
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final saveLastEvents(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x2

    .line 36
    .line 37
    :goto_0
    if-ltz v0, :cond_1

    .line 38
    .line 39
    iget-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    sub-long/2addr v1, v3

    .line 52
    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    .line 53
    .line 54
    cmp-long v1, v1, v3

    .line 55
    .line 56
    if-gez v1, :cond_1

    .line 57
    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final setAuditLogEventsCallback(ILandroid/app/admin/IAuditLogEventsCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    const-string v0, "SecurityLogMonitor"

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    .line 16
    .line 17
    const-string p2, "Cleared audit log callback for UID %d"

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogEventBuffer:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v3, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/SecurityLogMonitor;ILandroid/app/admin/IAuditLogEventsCallback;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 63
    .line 64
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "Set audit log callback for UID %d"

    .line 78
    .line 79
    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 84
    .line 85
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    .line 89
    .line 90
    throw p1
.end method

.method public final start(I)V
    .locals 2

    .line 1
    const-string v0, "Starting security logging for user "

    .line 2
    .line 3
    const-string v1, "SecurityLogMonitor"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mEnabledUser:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 11
    .line 12
    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->resetLegacyBufferLocked()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->startMonitorThreadLocked()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string p1, "Security log monitor thread is already running"

    .line 31
    .line 32
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 36
    .line 37
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 44
    .line 45
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final startMonitorThreadLocked()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 7
    .line 8
    new-instance v1, Ljava/lang/Thread;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    const p0, 0x3345b

    .line 19
    .line 20
    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    const-string p0, "SecurityLogMonitor"

    .line 27
    .line 28
    const-string v0, "Security log monitor thread started"

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    const-string v0, "SecurityLogMonitor"

    .line 2
    .line 3
    const-string v1, "Stopping security logging."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->stopMonitorThreadLocked()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->resetLegacyBufferLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 29
    .line 30
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 37
    .line 38
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final stopMonitorThreadLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v2, 0x5

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const-string v1, "SecurityLogMonitor"

    .line 22
    .line 23
    const-string v2, "Interrupted while waiting for thread to stop"

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    new-array p0, p0, [Ljava/lang/Object;

    .line 33
    .line 34
    const v0, 0x3345c

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    return-void
.end method
