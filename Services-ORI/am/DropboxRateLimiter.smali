.class public final Lcom/android/server/am/DropboxRateLimiter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClock:Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

.field public final mErrorClusterRecords:Landroid/util/ArrayMap;

.field public mLastMapCleanUp:J

.field public mRateLimitAllowedEntries:I

.field public mRateLimitBufferDuration:J

.field public mRateLimitBufferExpiryFactor:J

.field public mStrictRateLimitBufferDuration:J

.field public mStrictRatelimitAllowedEntries:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    .line 21
    .line 22
    const-wide/32 v0, 0x927c0

    .line 23
    .line 24
    .line 25
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    .line 26
    .line 27
    const-wide/16 v0, 0x3

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    .line 30
    .line 31
    const/4 v0, 0x6

    .line 32
    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    .line 36
    .line 37
    const-wide/32 v0, 0x124f80

    .line 38
    .line 39
    .line 40
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final init()V
    .locals 4

    .line 1
    const-string v0, "DropboxRateLimiter__rate_limit_buffer_duration"

    .line 2
    .line 3
    const-wide/32 v1, 0x927c0

    .line 4
    .line 5
    .line 6
    const-string/jumbo v3, "dropbox"

    .line 7
    .line 8
    .line 9
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    .line 14
    .line 15
    const-string v0, "DropboxRateLimiter__rate_limit_buffer_expiry_factor"

    .line 16
    .line 17
    const-wide/16 v1, 0x3

    .line 18
    .line 19
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    .line 24
    .line 25
    const-string v0, "DropboxRateLimiter__rate_limit_allowed_entries"

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    .line 33
    .line 34
    const-string v0, "DropboxRateLimiter__strict_rate_limit_allowed_entries"

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    .line 42
    .line 43
    const-string v0, "DropboxRateLimiter__strict_rate_limit_buffer_duration"

    .line 44
    .line 45
    const-wide/32 v1, 0x124f80

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    .line 53
    .line 54
    return-void
.end method

.method public final maybeRemoveExpiredRecords(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    .line 8
    .line 9
    mul-long/2addr v2, v4

    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    sub-int/2addr v0, v1

    .line 23
    :goto_0
    if-ltz v0, :cond_4

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    .line 34
    .line 35
    iget-wide v4, v3, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    .line 36
    .line 37
    iget v6, v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    if-lt v6, v7, :cond_1

    .line 41
    .line 42
    move v6, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v6, 0x0

    .line 45
    :goto_1
    if-eqz v6, :cond_2

    .line 46
    .line 47
    iget-wide v6, v3, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iget-wide v6, v3, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    .line 51
    .line 52
    :goto_2
    mul-long/2addr v6, v4

    .line 53
    iget-wide v2, v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    .line 54
    .line 55
    sub-long v2, p1, v2

    .line 56
    .line 57
    cmp-long v2, v2, v6

    .line 58
    .line 59
    if-lez v2, :cond_3

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    .line 68
    .line 69
    iget v2, v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    .line 70
    .line 71
    int-to-long v2, v2

    .line 72
    const-string/jumbo v4, "stability_errors.value_dropbox_buffer_expired_count"

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v2, v3}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;J)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 87
    .line 88
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 13
    .line 14
    const-string p0, "DropboxRateLimiter"

    .line 15
    .line 16
    const-string v0, "Rate limiter reset."

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method

.method public final shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/DropboxRateLimiter;->maybeRemoveExpiredRecords(J)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    .line 43
    .line 44
    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;-><init>(Lcom/android/server/am/DropboxRateLimiter;J)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    new-instance p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    .line 68
    .line 69
    invoke-direct {p0, v4, v4}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(IZ)V

    .line 70
    .line 71
    .line 72
    monitor-exit v2

    .line 73
    return-object p0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto/16 :goto_f

    .line 76
    .line 77
    :cond_0
    iget-wide p0, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    .line 78
    .line 79
    sub-long p0, v0, p0

    .line 80
    .line 81
    iget p2, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    .line 82
    .line 83
    const/4 v5, 0x2

    .line 84
    const/4 v6, 0x1

    .line 85
    if-lt p2, v5, :cond_1

    .line 86
    .line 87
    move v7, v6

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    move v7, v4

    .line 90
    :goto_0
    iget-object v8, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    .line 91
    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    iget-wide v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-wide v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    .line 98
    .line 99
    :goto_1
    cmp-long v7, p0, v9

    .line 100
    .line 101
    if-lez v7, :cond_a

    .line 102
    .line 103
    iget v7, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    .line 104
    .line 105
    if-lt p2, v5, :cond_3

    .line 106
    .line 107
    move v9, v6

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move v9, v4

    .line 110
    :goto_2
    if-eqz v9, :cond_4

    .line 111
    .line 112
    iget v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    iget v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    .line 116
    .line 117
    :goto_3
    if-ge v7, v9, :cond_5

    .line 118
    .line 119
    move v7, v4

    .line 120
    goto :goto_5

    .line 121
    :cond_5
    if-lt p2, v5, :cond_6

    .line 122
    .line 123
    iget v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    iget v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    .line 127
    .line 128
    :goto_4
    sub-int/2addr v7, v9

    .line 129
    :goto_5
    iput-wide v0, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    .line 130
    .line 131
    iput v6, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    .line 132
    .line 133
    if-lez v7, :cond_9

    .line 134
    .line 135
    if-lt p2, v5, :cond_7

    .line 136
    .line 137
    move v0, v6

    .line 138
    goto :goto_6

    .line 139
    :cond_7
    move v0, v4

    .line 140
    :goto_6
    if-eqz v0, :cond_8

    .line 141
    .line 142
    iget-wide v0, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_8
    iget-wide v0, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    .line 146
    .line 147
    :goto_7
    const-wide/16 v8, 0x2

    .line 148
    .line 149
    mul-long/2addr v0, v8

    .line 150
    cmp-long p0, p0, v0

    .line 151
    .line 152
    if-gez p0, :cond_9

    .line 153
    .line 154
    add-int/2addr p2, v6

    .line 155
    iput p2, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_9
    iput v4, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    .line 159
    .line 160
    :goto_8
    new-instance p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    .line 161
    .line 162
    invoke-direct {p0, v7, v4}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(IZ)V

    .line 163
    .line 164
    .line 165
    monitor-exit v2

    .line 166
    return-object p0

    .line 167
    :cond_a
    iget p0, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    .line 168
    .line 169
    add-int/2addr p0, v6

    .line 170
    iput p0, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    .line 171
    .line 172
    if-lt p2, v5, :cond_b

    .line 173
    .line 174
    move p1, v6

    .line 175
    goto :goto_9

    .line 176
    :cond_b
    move p1, v4

    .line 177
    :goto_9
    if-eqz p1, :cond_c

    .line 178
    .line 179
    iget p1, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_c
    iget p1, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    .line 183
    .line 184
    :goto_a
    if-le p0, p1, :cond_11

    .line 185
    .line 186
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    .line 187
    .line 188
    if-lt p2, v5, :cond_d

    .line 189
    .line 190
    move v0, v6

    .line 191
    goto :goto_b

    .line 192
    :cond_d
    move v0, v4

    .line 193
    :goto_b
    if-eqz v0, :cond_e

    .line 194
    .line 195
    iget v0, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    .line 196
    .line 197
    goto :goto_c

    .line 198
    :cond_e
    iget v0, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    .line 199
    .line 200
    :goto_c
    if-ge p0, v0, :cond_f

    .line 201
    .line 202
    goto :goto_e

    .line 203
    :cond_f
    if-lt p2, v5, :cond_10

    .line 204
    .line 205
    iget p2, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    .line 206
    .line 207
    goto :goto_d

    .line 208
    :cond_10
    iget p2, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    .line 209
    .line 210
    :goto_d
    sub-int v4, p0, p2

    .line 211
    .line 212
    :goto_e
    invoke-direct {p1, v4, v6}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(IZ)V

    .line 213
    .line 214
    .line 215
    monitor-exit v2

    .line 216
    return-object p1

    .line 217
    :cond_11
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    new-instance p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    .line 219
    .line 220
    invoke-direct {p0, v4, v4}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(IZ)V

    .line 221
    .line 222
    .line 223
    return-object p0

    .line 224
    :goto_f
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    throw p0
.end method
