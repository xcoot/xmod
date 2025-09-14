.class public final Lcom/android/server/power/stats/KernelWakelockReader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PROC_WAKELOCKS_FORMAT:[I

.field public static final WAKEUP_SOURCES_FORMAT:[I

.field public static sKernelWakelockUpdateVersion:I


# instance fields
.field public final mKernelWakelockBuffer:[B

.field public final mProcWakelocksData:[J

.field public final mProcWakelocksName:[Ljava/lang/String;

.field public mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/power/stats/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/power/stats/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x2009
        0x9
        0x2009
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x2109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksData:[J

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    .line 16
    .line 17
    const v0, 0x8000

    .line 18
    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "KernelWakelockReader"

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    :try_start_0
    const-string/jumbo v3, "suspend_control_internal"

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x5

    .line 13
    if-ge v0, v4, :cond_1

    .line 14
    .line 15
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iput-object v3, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iput-object v3, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p0, Landroid/os/ServiceManager$ServiceNotFoundException;

    .line 36
    .line 37
    invoke-direct {p0, v3}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_1
    const-string p1, "Required service suspend_control not available"

    .line 42
    .line 43
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_2
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    .line 48
    .line 49
    invoke-interface {v0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :catch_1
    move-exception p0

    .line 58
    goto :goto_3

    .line 59
    :catch_2
    move-exception p0

    .line 60
    goto :goto_4

    .line 61
    :goto_3
    const-string p1, "SuspendControlService got IllegalArgumentException"

    .line 62
    .line 63
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :goto_4
    const-string p1, "Failed to obtain wakelock stats from ISuspendControlService"

    .line 68
    .line 69
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    return-object v1
.end method

.method public parseProcWakelocks([BIZLcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p4

    .line 8
    .line 9
    const/4 v11, 0x0

    .line 10
    move v2, v11

    .line 11
    :goto_0
    const/16 v12, 0xa

    .line 12
    .line 13
    if-ge v2, v9, :cond_0

    .line 14
    .line 15
    aget-byte v3, v0, v2

    .line 16
    .line 17
    if-eq v3, v12, :cond_0

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v13, 0x1

    .line 25
    add-int/2addr v2, v13

    .line 26
    monitor-enter p0

    .line 27
    move v14, v2

    .line 28
    :goto_1
    if-ge v2, v9, :cond_b

    .line 29
    .line 30
    move v15, v14

    .line 31
    :goto_2
    if-ge v15, v9, :cond_1

    .line 32
    .line 33
    :try_start_0
    aget-byte v2, v0, v15

    .line 34
    .line 35
    if-eq v2, v12, :cond_1

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    add-int/lit8 v15, v15, 0x1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto/16 :goto_a

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v2, v9, -0x1

    .line 46
    .line 47
    if-le v15, v2, :cond_2

    .line 48
    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_2
    iget-object v8, v1, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 52
    .line 53
    iget-object v7, v1, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksData:[J

    .line 54
    .line 55
    move v2, v14

    .line 56
    :goto_3
    if-ge v2, v15, :cond_4

    .line 57
    .line 58
    aget-byte v3, v0, v2

    .line 59
    .line 60
    and-int/lit16 v3, v3, 0x80

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    const/16 v3, 0x3f

    .line 65
    .line 66
    aput-byte v3, v0, v2

    .line 67
    .line 68
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    if-eqz p3, :cond_5

    .line 72
    .line 73
    sget-object v2, Lcom/android/server/power/stats/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 74
    .line 75
    :goto_4
    move-object v5, v2

    .line 76
    goto :goto_5

    .line 77
    :cond_5
    sget-object v2, Lcom/android/server/power/stats/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :goto_5
    const/16 v16, 0x0

    .line 81
    .line 82
    move-object/from16 v2, p1

    .line 83
    .line 84
    move v3, v14

    .line 85
    move v4, v15

    .line 86
    move-object v6, v8

    .line 87
    move-object/from16 v17, v7

    .line 88
    .line 89
    move-object/from16 v18, v8

    .line 90
    .line 91
    move-object/from16 v8, v16

    .line 92
    .line 93
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    aget-object v3, v18, v11

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    aget-wide v4, v17, v13

    .line 104
    .line 105
    long-to-int v4, v4

    .line 106
    const/4 v5, 0x3

    .line 107
    const/4 v6, 0x2

    .line 108
    const-wide/16 v7, 0x3e8

    .line 109
    .line 110
    if-eqz p3, :cond_6

    .line 111
    .line 112
    aget-wide v18, v17, v6

    .line 113
    .line 114
    mul-long v18, v18, v7

    .line 115
    .line 116
    aget-wide v5, v17, v5

    .line 117
    .line 118
    mul-long/2addr v5, v7

    .line 119
    :goto_6
    move-wide/from16 v7, v18

    .line 120
    .line 121
    goto :goto_7

    .line 122
    :cond_6
    aget-wide v18, v17, v6

    .line 123
    .line 124
    const-wide/16 v20, 0x1f4

    .line 125
    .line 126
    add-long v18, v18, v20

    .line 127
    .line 128
    div-long v18, v18, v7

    .line 129
    .line 130
    aget-wide v5, v17, v5

    .line 131
    .line 132
    add-long v5, v5, v20

    .line 133
    .line 134
    div-long/2addr v5, v7

    .line 135
    goto :goto_6

    .line 136
    :goto_7
    if-eqz v2, :cond_9

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v16

    .line 142
    if-lez v16, :cond_9

    .line 143
    .line 144
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_7

    .line 149
    .line 150
    new-instance v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 151
    .line 152
    sget v20, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 153
    .line 154
    move-object/from16 v18, v2

    .line 155
    .line 156
    move/from16 v19, v4

    .line 157
    .line 158
    move-wide/from16 v21, v5

    .line 159
    .line 160
    move-wide/from16 v23, v7

    .line 161
    .line 162
    invoke-direct/range {v18 .. v24}, Lcom/android/server/power/stats/KernelWakelockStats$Entry;-><init>(IIJJ)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_7
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 174
    .line 175
    iget v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    .line 176
    .line 177
    sget v14, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 178
    .line 179
    if-ne v3, v14, :cond_8

    .line 180
    .line 181
    iget v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 182
    .line 183
    add-int/2addr v3, v4

    .line 184
    iput v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 185
    .line 186
    iget-wide v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 187
    .line 188
    add-long/2addr v3, v5

    .line 189
    iput-wide v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 190
    .line 191
    iput-wide v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_8
    iput v4, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 195
    .line 196
    iput-wide v5, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 197
    .line 198
    iput-wide v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    .line 199
    .line 200
    iput v14, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_9
    if-nez v2, :cond_a

    .line 204
    .line 205
    :try_start_1
    const-string v2, "KernelWakelockReader"

    .line 206
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v4, "Failed to parse proc line: "

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    new-instance v4, Ljava/lang/String;

    .line 218
    .line 219
    sub-int v5, v15, v14

    .line 220
    .line 221
    invoke-direct {v4, v0, v14, v5}, Ljava/lang/String;-><init>([BII)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .line 233
    .line 234
    goto :goto_8

    .line 235
    :catch_0
    :try_start_2
    const-string v2, "KernelWakelockReader"

    .line 236
    .line 237
    const-string v3, "Failed to parse proc line!"

    .line 238
    .line 239
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    :cond_a
    :goto_8
    add-int/lit8 v14, v15, 0x1

    .line 243
    .line 244
    move v2, v15

    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_b
    :goto_9
    monitor-exit p0

    .line 248
    return-object v10

    .line 249
    :goto_a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    throw v0
.end method

.method public final readKernelWakelockStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 10

    .line 1
    const-string v0, "/sys/class/wakeup"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-class v0, Lcom/android/server/power/stats/KernelWakelockReader;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string p0, "KernelWakelockReader"

    .line 23
    .line 24
    const-string p1, "Failed to get wakelock stats from SystemSuspend"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    monitor-exit v0

    .line 38
    return-object p0

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    .line 56
    .line 57
    const-string v6, "/proc/wakelocks"

    .line 58
    .line 59
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    move v6, v2

    .line 63
    move v7, v6

    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto/16 :goto_7

    .line 67
    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :catch_1
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    .line 72
    .line 73
    const-string v6, "/d/wakeup_sources"

    .line 74
    .line 75
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .line 77
    .line 78
    const/4 v6, 0x1

    .line 79
    move v7, v2

    .line 80
    :goto_1
    :try_start_3
    iget-object v8, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    .line 81
    .line 82
    array-length v9, v8

    .line 83
    sub-int/2addr v9, v7

    .line 84
    invoke-virtual {v5, v8, v7, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-lez v8, :cond_2

    .line 89
    .line 90
    add-int/2addr v7, v8

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    sub-long/2addr v0, v3

    .line 103
    const-wide/16 v3, 0x64

    .line 104
    .line 105
    cmp-long v3, v0, v3

    .line 106
    .line 107
    if-lez v3, :cond_3

    .line 108
    .line 109
    const-string v3, "KernelWakelockReader"

    .line 110
    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v5, "Reading wakelock stats took "

    .line 114
    .line 115
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string/jumbo v0, "ms"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_3
    if-lez v7, :cond_6

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    .line 137
    .line 138
    array-length v0, v0

    .line 139
    if-lt v7, v0, :cond_4

    .line 140
    .line 141
    const-string v0, "KernelWakelockReader"

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v3, "Kernel wake locks exceeded mKernelWakelockBuffer size "

    .line 146
    .line 147
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    .line 151
    .line 152
    array-length v3, v3

    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_4
    :goto_2
    if-ge v2, v7, :cond_6

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    .line 166
    .line 167
    aget-byte v0, v0, v2

    .line 168
    .line 169
    if-nez v0, :cond_5

    .line 170
    .line 171
    move v7, v2

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    :goto_3
    const-class v1, Lcom/android/server/power/stats/KernelWakelockReader;

    .line 177
    .line 178
    monitor-enter v1

    .line 179
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-nez v0, :cond_7

    .line 187
    .line 188
    const-string v0, "KernelWakelockReader"

    .line 189
    .line 190
    const-string v2, "Failed to get Native wakelock stats from SystemSuspend"

    .line 191
    .line 192
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :catchall_2
    move-exception p0

    .line 197
    goto :goto_5

    .line 198
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    .line 199
    .line 200
    invoke-virtual {p0, v0, v7, v6, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    monitor-exit v1

    .line 208
    return-object p0

    .line 209
    :goto_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 210
    throw p0

    .line 211
    :catch_2
    :try_start_5
    const-string p0, "KernelWakelockReader"

    .line 212
    .line 213
    const-string/jumbo p1, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    .line 214
    .line 215
    .line 216
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 220
    .line 221
    .line 222
    return-object v1

    .line 223
    :goto_6
    :try_start_6
    const-string p1, "KernelWakelockReader"

    .line 224
    .line 225
    const-string v2, "failed to read kernel wakelocks"

    .line 226
    .line 227
    invoke-static {p1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 228
    .line 229
    .line 230
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 231
    .line 232
    .line 233
    return-object v1

    .line 234
    :goto_7
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 235
    .line 236
    .line 237
    throw p0
.end method

.method public removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 20
    .line 21
    iget v0, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    .line 22
    .line 23
    sget v1, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object p1
.end method

.method public updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 0

    .line 1
    sget p0, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 2
    .line 3
    add-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    sput p0, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 6
    .line 7
    iput p0, p1, Lcom/android/server/power/stats/KernelWakelockStats;->kernelWakelockVersion:I

    .line 8
    .line 9
    return-object p1
.end method

.method public updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    if-ge v3, v2, :cond_5

    .line 8
    .line 9
    aget-object v4, v0, v3

    .line 10
    .line 11
    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const-wide/16 v6, 0x0

    .line 18
    .line 19
    const-wide/16 v8, 0x3e8

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v15, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 26
    .line 27
    iget-wide v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    .line 28
    .line 29
    long-to-int v11, v10

    .line 30
    iget-wide v12, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    .line 31
    .line 32
    mul-long v13, v12, v8

    .line 33
    .line 34
    iget-boolean v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    .line 35
    .line 36
    if-eqz v10, :cond_0

    .line 37
    .line 38
    iget-wide v6, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    .line 39
    .line 40
    mul-long/2addr v6, v8

    .line 41
    :cond_0
    sget v12, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 42
    .line 43
    move-object v10, v15

    .line 44
    move-object v4, v15

    .line 45
    move-wide v15, v6

    .line 46
    invoke-direct/range {v10 .. v16}, Lcom/android/server/power/stats/KernelWakelockStats$Entry;-><init>(IIJJ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 60
    .line 61
    iget-boolean v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    .line 62
    .line 63
    if-nez v10, :cond_3

    .line 64
    .line 65
    iget v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    .line 66
    .line 67
    sget v11, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 68
    .line 69
    if-ne v10, v11, :cond_3

    .line 70
    .line 71
    iget v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 72
    .line 73
    iget-wide v11, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    .line 74
    .line 75
    long-to-int v11, v11

    .line 76
    add-int/2addr v10, v11

    .line 77
    iput v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 78
    .line 79
    iget-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 80
    .line 81
    iget-wide v12, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    .line 82
    .line 83
    mul-long/2addr v12, v8

    .line 84
    add-long/2addr v12, v10

    .line 85
    iput-wide v12, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 86
    .line 87
    iget-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    .line 88
    .line 89
    iget-boolean v12, v4, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    .line 90
    .line 91
    if-eqz v12, :cond_2

    .line 92
    .line 93
    iget-wide v6, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    .line 94
    .line 95
    mul-long/2addr v6, v8

    .line 96
    :cond_2
    add-long/2addr v10, v6

    .line 97
    iput-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iget-wide v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    .line 101
    .line 102
    long-to-int v10, v10

    .line 103
    iput v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 104
    .line 105
    iget-wide v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    .line 106
    .line 107
    mul-long/2addr v10, v8

    .line 108
    iput-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 109
    .line 110
    iget-boolean v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    .line 111
    .line 112
    if-eqz v10, :cond_4

    .line 113
    .line 114
    iget-wide v6, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    .line 115
    .line 116
    mul-long/2addr v6, v8

    .line 117
    :cond_4
    iput-wide v6, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    .line 118
    .line 119
    sget v4, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 120
    .line 121
    iput v4, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    .line 122
    .line 123
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    return-object v1
.end method
