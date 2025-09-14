.class Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;


# static fields
.field public static mForceNtpSetByMDM:Z = false

.field public static mNtpSetByMDM:Z = false


# instance fields
.field public final mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

.field public mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

.field public final mLocalDebugLog:Landroid/util/LocalLog;

.field public mNormalPollingIntervalMillis:I

.field public final mNtpTrustedTime:Landroid/util/NtpTrustedTime;

.field public mShortPollingIntervalMillis:I

.field public mTryAgainCounter:I

.field public mTryAgainTimesMax:I


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;IIILandroid/util/NtpTrustedTime;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LocalLog;

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLocalDebugLog:Landroid/util/LocalLog;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/util/function/Supplier;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    .line 20
    .line 21
    if-gt p3, p2, :cond_0

    .line 22
    .line 23
    iput p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    .line 24
    .line 25
    iput p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    .line 26
    .line 27
    iput p4, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    .line 28
    .line 29
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-object p1, p5

    .line 33
    check-cast p1, Landroid/util/NtpTrustedTime;

    .line 34
    .line 35
    iput-object p5, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string/jumbo p1, "shortPollingIntervalMillis ("

    .line 41
    .line 42
    .line 43
    const-string p4, ") > normalPollingIntervalMillis ("

    .line 44
    .line 45
    const-string p5, ")"

    .line 46
    .line 47
    invoke-static {p3, p2, p1, p4, p5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public static formatElapsedRealtimeMillis(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " ("

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ")"

    .line 19
    .line 20
    invoke-static {v0, p0, p1, v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/time/UnixEpochTime;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getUncertaintyMillis()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v1, v0, v2}, Lcom/android/server/timedetector/NetworkTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;I)V

    .line 21
    .line 22
    .line 23
    filled-new-array {p1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    filled-new-array {p0}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 42
    .line 43
    check-cast p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-direct {p1, p0, v1, p2}, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final logToDebugAndDumpsys(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLocalDebugLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final refreshAndRescheduleIfRequired(Landroid/net/Network;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string/jumbo v4, "refreshIfRequiredAndReschedule: network="

    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string/jumbo v0, "refreshIfRequiredAndReschedule: reason="

    .line 15
    .line 16
    .line 17
    const-string v3, ": No default network available. No refresh attempted and no next attempt scheduled."

    .line 18
    .line 19
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v5, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v6, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    .line 35
    .line 36
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Ljava/lang/Long;

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    const-wide v10, 0x7fffffffffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v5, v6, v7}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v10

    .line 58
    :goto_0
    iget v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    .line 59
    .line 60
    int-to-long v12, v12

    .line 61
    cmp-long v10, v10, v12

    .line 62
    .line 63
    const/4 v11, 0x1

    .line 64
    const/4 v12, 0x0

    .line 65
    if-ltz v10, :cond_3

    .line 66
    .line 67
    iget-object v10, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    .line 68
    .line 69
    if-nez v10, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v13

    .line 76
    iget v10, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    .line 77
    .line 78
    int-to-long v8, v10

    .line 79
    add-long/2addr v13, v8

    .line 80
    cmp-long v6, v6, v13

    .line 81
    .line 82
    if-ltz v6, :cond_3

    .line 83
    .line 84
    :goto_1
    move v6, v11

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    move v6, v12

    .line 87
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 88
    if-nez v6, :cond_5

    .line 89
    .line 90
    const-string v7, "NTP_PARAMETERS_UPDATED"

    .line 91
    .line 92
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_4

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    move v7, v12

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    sget-boolean v7, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    .line 102
    .line 103
    if-eqz v7, :cond_6

    .line 104
    .line 105
    sput-boolean v11, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mForceNtpSetByMDM:Z

    .line 106
    .line 107
    :cond_6
    iget-object v7, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    .line 108
    .line 109
    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Ljava/lang/Long;

    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 116
    .line 117
    .line 118
    monitor-enter p0

    .line 119
    :try_start_1
    iput-object v7, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    .line 120
    .line 121
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    iget-object v7, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 123
    .line 124
    invoke-virtual {v7, v0}, Landroid/util/NtpTrustedTime;->forceRefresh(Landroid/net/Network;)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    :goto_4
    monitor-enter p0

    .line 129
    :try_start_2
    iget-object v8, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 130
    .line 131
    invoke-virtual {v8}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    iget-object v9, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    .line 136
    .line 137
    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    check-cast v9, Ljava/lang/Long;

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v9

    .line 147
    if-nez v8, :cond_7

    .line 148
    .line 149
    const-wide v13, 0x7fffffffffffffffL

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_7
    invoke-virtual {v8, v9, v10}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis(J)J

    .line 156
    .line 157
    .line 158
    move-result-wide v13

    .line 159
    :goto_5
    if-eqz v6, :cond_8

    .line 160
    .line 161
    if-eqz v7, :cond_9

    .line 162
    .line 163
    iput v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 164
    .line 165
    :cond_8
    :goto_6
    move/from16 v16, v7

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto/16 :goto_c

    .line 170
    .line 171
    :cond_9
    iget v15, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    .line 172
    .line 173
    if-gez v15, :cond_a

    .line 174
    .line 175
    iput v11, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_a
    iget v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 179
    .line 180
    add-int/2addr v12, v11

    .line 181
    iput v12, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 182
    .line 183
    if-le v12, v15, :cond_8

    .line 184
    .line 185
    const/4 v11, 0x0

    .line 186
    iput v11, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 187
    .line 188
    sget-boolean v11, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mBootCompleted:Z

    .line 189
    .line 190
    if-eqz v11, :cond_8

    .line 191
    .line 192
    sget-object v11, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mMDMContext:Landroid/content/Context;

    .line 193
    .line 194
    new-instance v12, Landroid/content/Intent;

    .line 195
    .line 196
    const-string v15, "com.samsung.android.knox.intent.action.EVENT_NTP_SERVER_UNREACHABLE"

    .line 197
    .line 198
    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 202
    .line 203
    move/from16 v16, v7

    .line 204
    .line 205
    const-string v7, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    .line 206
    .line 207
    invoke-virtual {v11, v12, v15, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :goto_7
    iget v7, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    .line 211
    .line 212
    int-to-long v11, v7

    .line 213
    cmp-long v7, v13, v11

    .line 214
    .line 215
    if-gez v7, :cond_b

    .line 216
    .line 217
    const/4 v11, 0x0

    .line 218
    iput v11, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 219
    .line 220
    :cond_b
    if-gez v7, :cond_c

    .line 221
    .line 222
    invoke-static {v8, v2, v3}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V

    .line 223
    .line 224
    .line 225
    :cond_c
    iget v7, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 226
    .line 227
    if-lez v7, :cond_d

    .line 228
    .line 229
    iget v7, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    .line 230
    .line 231
    :goto_8
    int-to-long v11, v7

    .line 232
    goto :goto_9

    .line 233
    :cond_d
    iget v7, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :goto_9
    cmp-long v7, v13, v11

    .line 237
    .line 238
    if-gez v7, :cond_e

    .line 239
    .line 240
    invoke-virtual {v8}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    .line 241
    .line 242
    .line 243
    move-result-wide v13

    .line 244
    :goto_a
    add-long/2addr v13, v11

    .line 245
    goto :goto_b

    .line 246
    :cond_e
    iget-object v7, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    .line 247
    .line 248
    if-eqz v7, :cond_f

    .line 249
    .line 250
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 251
    .line 252
    .line 253
    move-result-wide v13

    .line 254
    goto :goto_a

    .line 255
    :cond_f
    const-string v7, "mLastRefreshAttemptElapsedRealtimeMillis unexpectedly missing. Scheduling using currentElapsedRealtimeMillis"

    .line 256
    .line 257
    const-string v13, "NetworkTimeUpdateService"

    .line 258
    .line 259
    invoke-static {v13, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v7}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    add-long v13, v9, v11

    .line 266
    .line 267
    :goto_b
    cmp-long v7, v13, v9

    .line 268
    .line 269
    if-gtz v7, :cond_10

    .line 270
    .line 271
    const-string/jumbo v7, "nextRefreshElapsedRealtimeMillis is a time in the past. Scheduling using currentElapsedRealtimeMillis instead"

    .line 272
    .line 273
    .line 274
    const-string v13, "NetworkTimeUpdateService"

    .line 275
    .line 276
    invoke-static {v13, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v7}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    add-long v13, v9, v11

    .line 283
    .line 284
    :cond_10
    iget-object v7, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    .line 285
    .line 286
    iget-object v15, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->mOnAlarmListener:Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

    .line 287
    .line 288
    invoke-virtual {v7, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 289
    .line 290
    .line 291
    iget-object v7, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    .line 292
    .line 293
    iget-object v3, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->mOnAlarmListener:Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

    .line 294
    .line 295
    const-string v21, "NetworkTimeUpdateService.POLL"

    .line 296
    .line 297
    const/16 v23, 0x0

    .line 298
    .line 299
    const/16 v18, 0x3

    .line 300
    .line 301
    move-object/from16 v17, v7

    .line 302
    .line 303
    move-wide/from16 v19, v13

    .line 304
    .line 305
    move-object/from16 v22, v3

    .line 306
    .line 307
    invoke-virtual/range {v17 .. v23}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 308
    .line 309
    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v0, ", reason="

    .line 319
    .line 320
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v0, ", initialTimeResult="

    .line 327
    .line 328
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v0, ", shouldAttemptRefresh="

    .line 335
    .line 336
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v0, ", refreshSuccessful="

    .line 343
    .line 344
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    move/from16 v7, v16

    .line 348
    .line 349
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v0, ", currentElapsedRealtimeMillis="

    .line 353
    .line 354
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-static {v9, v10}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->formatElapsedRealtimeMillis(J)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v0, ", latestTimeResult="

    .line 365
    .line 366
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v0, ", mTryAgainCounter="

    .line 373
    .line 374
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    iget v0, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 378
    .line 379
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v0, ", refreshAttemptDelayMillis="

    .line 383
    .line 384
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v0, ", nextRefreshElapsedRealtimeMillis="

    .line 391
    .line 392
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-static {v13, v14}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->formatElapsedRealtimeMillis(J)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v1, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    sget-boolean v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    .line 411
    .line 412
    if-eqz v0, :cond_11

    .line 413
    .line 414
    const/4 v0, 0x0

    .line 415
    sput-boolean v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mForceNtpSetByMDM:Z

    .line 416
    .line 417
    :cond_11
    return-void

    .line 418
    :goto_c
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 419
    throw v0

    .line 420
    :catchall_1
    move-exception v0

    .line 421
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 422
    throw v0

    .line 423
    :catchall_2
    move-exception v0

    .line 424
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 425
    throw v0
.end method
