.class public final Lcom/android/server/appop/DiscreteRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_DISCRETE_HISTORY_CUTOFF:J

.field public static final DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

.field public static final MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

.field public static sDiscreteFlags:I

.field public static sDiscreteHistoryCutoff:J

.field public static sDiscreteHistoryQuantization:J

.field public static sDiscreteOps:[I


# instance fields
.field public mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

.field public mDebugMode:Z

.field public final mDiscreteAccessDir:Ljava/io/File;

.field public mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

.field public final mInMemoryLock:Ljava/lang/Object;

.field public final mOnDiskLock:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$smdiscretizeDuration(J)J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 9
    .line 10
    add-long/2addr p0, v0

    .line 11
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    sub-long/2addr p0, v2

    .line 14
    div-long/2addr p0, v0

    .line 15
    mul-long/2addr v0, p0

    .line 16
    :goto_0
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x7

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    .line 12
    .line 13
    const-wide/16 v0, 0x1e

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    .line 24
    .line 25
    const-wide/16 v0, 0x1

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

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
    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 21
    .line 22
    new-instance v2, Ljava/io/File;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "appops"

    .line 29
    .line 30
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v3, "discrete"

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    const-string v2, "DiscreteRegistry"

    .line 54
    .line 55
    const-string v3, "Failed to create DiscreteRegistry directory"

    .line 56
    .line 57
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/16 v2, 0x1f9

    .line 65
    .line 66
    const/4 v3, -0x1

    .line 67
    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->readLargestChainIdFromDiskLocked()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 76
    .line 77
    invoke-direct {v2, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 81
    .line 82
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_0

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :try_start_4
    throw p0

    .line 90
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    throw p0
.end method

.method public static parseOpsList(Ljava/lang/String;)[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

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
    new-array p0, v1, [Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, ","

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    array-length v0, p0

    .line 18
    new-array v2, v0, [I

    .line 19
    .line 20
    :goto_1
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    :try_start_0
    aget-object v3, p0, v1

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Failed to parse Discrete ops list: "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "DiscreteRegistry"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const-string p0, "1,0,26,27,100,101,120,136,141"

    .line 58
    .line 59
    invoke-static {p0}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 32

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 2
    .line 3
    .line 4
    move-result-object v12

    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v13, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v12, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_18

    .line 23
    .line 24
    iget-object v2, v12, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 33
    .line 34
    iget-object v3, v12, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_1
    if-ge v5, v4, :cond_17

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 58
    .line 59
    iget-object v6, v6, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const/4 v9, 0x0

    .line 72
    :goto_2
    if-ge v9, v8, :cond_16

    .line 73
    .line 74
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 79
    .line 80
    iget-object v10, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v16

    .line 86
    check-cast v16, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    const/4 v15, 0x0

    .line 97
    :goto_3
    if-ge v15, v11, :cond_15

    .line 98
    .line 99
    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v17

    .line 103
    move/from16 v18, v0

    .line 104
    .line 105
    move-object/from16 v0, v17

    .line 106
    .line 107
    check-cast v0, Ljava/util/List;

    .line 108
    .line 109
    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v17

    .line 113
    move-object/from16 v19, v2

    .line 114
    .line 115
    move-object/from16 v2, v17

    .line 116
    .line 117
    check-cast v2, Ljava/lang/String;

    .line 118
    .line 119
    move/from16 v17, v4

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    move-object/from16 v20, v6

    .line 126
    .line 127
    const/4 v6, 0x0

    .line 128
    :goto_4
    if-ge v6, v4, :cond_14

    .line 129
    .line 130
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v21

    .line 134
    move-object/from16 v22, v0

    .line 135
    .line 136
    move-object/from16 v0, v21

    .line 137
    .line 138
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 139
    .line 140
    if-eqz v0, :cond_13

    .line 141
    .line 142
    move/from16 v21, v4

    .line 143
    .line 144
    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 145
    .line 146
    move/from16 v23, v8

    .line 147
    .line 148
    const/4 v8, -0x1

    .line 149
    if-eq v4, v8, :cond_0

    .line 150
    .line 151
    iget v8, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 152
    .line 153
    and-int/lit8 v8, v8, 0x8

    .line 154
    .line 155
    if-nez v8, :cond_2

    .line 156
    .line 157
    :cond_0
    move-object/from16 v26, v2

    .line 158
    .line 159
    move/from16 v27, v3

    .line 160
    .line 161
    move-object/from16 v28, v7

    .line 162
    .line 163
    :goto_5
    move-object/from16 v24, v10

    .line 164
    .line 165
    move/from16 v25, v11

    .line 166
    .line 167
    move-object/from16 v31, v12

    .line 168
    .line 169
    move-object/from16 v29, v13

    .line 170
    .line 171
    move/from16 v30, v14

    .line 172
    .line 173
    :cond_1
    :goto_6
    const/4 v12, 0x0

    .line 174
    goto/16 :goto_12

    .line 175
    .line 176
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-nez v8, :cond_3

    .line 185
    .line 186
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    move-object/from16 v24, v10

    .line 191
    .line 192
    new-instance v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    .line 193
    .line 194
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 195
    .line 196
    .line 197
    move/from16 v25, v11

    .line 198
    .line 199
    new-instance v11, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    iput-object v11, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 205
    .line 206
    const/4 v11, 0x0

    .line 207
    iput-object v11, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 208
    .line 209
    iput-object v11, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 210
    .line 211
    move-object/from16 v11, p12

    .line 212
    .line 213
    iput-object v11, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    .line 214
    .line 215
    invoke-virtual {v13, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_3
    move-object/from16 v24, v10

    .line 220
    .line 221
    move/from16 v25, v11

    .line 222
    .line 223
    move-object/from16 v11, p12

    .line 224
    .line 225
    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    .line 234
    .line 235
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    new-instance v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 239
    .line 240
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object v7, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    .line 244
    .line 245
    iput v3, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    .line 246
    .line 247
    iput-object v2, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 248
    .line 249
    iput v14, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpCode:I

    .line 250
    .line 251
    iput-object v0, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 252
    .line 253
    const/4 v0, 0x0

    .line 254
    :goto_8
    iget-object v10, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    if-ge v0, v10, :cond_7

    .line 261
    .line 262
    iget-object v10, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 269
    .line 270
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    move-object/from16 v26, v2

    .line 274
    .line 275
    iget-object v2, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 276
    .line 277
    move/from16 v27, v3

    .line 278
    .line 279
    iget-wide v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 280
    .line 281
    move-object/from16 v28, v7

    .line 282
    .line 283
    iget-object v7, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 284
    .line 285
    move-object/from16 v29, v13

    .line 286
    .line 287
    move/from16 v30, v14

    .line 288
    .line 289
    iget-wide v13, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 290
    .line 291
    cmp-long v2, v2, v13

    .line 292
    .line 293
    if-nez v2, :cond_5

    .line 294
    .line 295
    :cond_4
    move-object/from16 v31, v12

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_5
    iget-object v2, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    .line 299
    .line 300
    iget-object v3, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_4

    .line 307
    .line 308
    iget v2, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    .line 309
    .line 310
    iget v3, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    .line 311
    .line 312
    if-ne v2, v3, :cond_4

    .line 313
    .line 314
    iget-object v2, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 315
    .line 316
    iget-object v3, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_4

    .line 323
    .line 324
    iget v2, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpCode:I

    .line 325
    .line 326
    iget v3, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpCode:I

    .line 327
    .line 328
    if-ne v2, v3, :cond_4

    .line 329
    .line 330
    iget-object v2, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 331
    .line 332
    iget-object v3, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iget-wide v13, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 338
    .line 339
    move-object/from16 v31, v12

    .line 340
    .line 341
    iget-wide v11, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 342
    .line 343
    cmp-long v7, v11, v13

    .line 344
    .line 345
    if-nez v7, :cond_6

    .line 346
    .line 347
    iget v7, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 348
    .line 349
    iget v11, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 350
    .line 351
    if-ne v7, v11, :cond_6

    .line 352
    .line 353
    iget v7, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 354
    .line 355
    iget v11, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 356
    .line 357
    if-ne v7, v11, :cond_6

    .line 358
    .line 359
    iget v7, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 360
    .line 361
    iget v11, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 362
    .line 363
    if-ne v7, v11, :cond_6

    .line 364
    .line 365
    iget v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 366
    .line 367
    iget v3, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 368
    .line 369
    if-ne v2, v3, :cond_6

    .line 370
    .line 371
    iget-object v0, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 372
    .line 373
    iget-wide v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 374
    .line 375
    const-wide/16 v7, -0x1

    .line 376
    .line 377
    cmp-long v2, v2, v7

    .line 378
    .line 379
    if-eqz v2, :cond_1

    .line 380
    .line 381
    iput-object v0, v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 382
    .line 383
    goto/16 :goto_6

    .line 384
    .line 385
    :cond_6
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 386
    .line 387
    move-object/from16 v11, p12

    .line 388
    .line 389
    move-object/from16 v2, v26

    .line 390
    .line 391
    move/from16 v3, v27

    .line 392
    .line 393
    move-object/from16 v7, v28

    .line 394
    .line 395
    move-object/from16 v13, v29

    .line 396
    .line 397
    move/from16 v14, v30

    .line 398
    .line 399
    move-object/from16 v12, v31

    .line 400
    .line 401
    goto/16 :goto_8

    .line 402
    .line 403
    :cond_7
    move-object/from16 v26, v2

    .line 404
    .line 405
    move/from16 v27, v3

    .line 406
    .line 407
    move-object/from16 v28, v7

    .line 408
    .line 409
    move-object/from16 v31, v12

    .line 410
    .line 411
    move-object/from16 v29, v13

    .line 412
    .line 413
    move/from16 v30, v14

    .line 414
    .line 415
    iget-object v0, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-nez v0, :cond_8

    .line 422
    .line 423
    iget-object v0, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 424
    .line 425
    iget v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 426
    .line 427
    and-int/lit8 v2, v0, 0x1

    .line 428
    .line 429
    if-eqz v2, :cond_9

    .line 430
    .line 431
    :cond_8
    const/4 v12, 0x0

    .line 432
    goto :goto_d

    .line 433
    :cond_9
    and-int/lit8 v0, v0, 0x4

    .line 434
    .line 435
    if-eqz v0, :cond_a

    .line 436
    .line 437
    iget-object v0, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 438
    .line 439
    const/4 v12, 0x0

    .line 440
    invoke-virtual {v0, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    goto :goto_e

    .line 444
    :cond_a
    const/4 v12, 0x0

    .line 445
    move v0, v12

    .line 446
    :goto_a
    iget-object v2, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-ge v0, v2, :cond_f

    .line 453
    .line 454
    iget-object v2, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 461
    .line 462
    if-eqz v2, :cond_b

    .line 463
    .line 464
    iget-object v3, v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 465
    .line 466
    iget v3, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 467
    .line 468
    and-int/lit8 v3, v3, 0x4

    .line 469
    .line 470
    if-eqz v3, :cond_b

    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_b
    iget-object v3, v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 474
    .line 475
    iget-wide v10, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 476
    .line 477
    iget-object v3, v8, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 478
    .line 479
    iget-wide v13, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 480
    .line 481
    cmp-long v3, v10, v13

    .line 482
    .line 483
    if-gtz v3, :cond_e

    .line 484
    .line 485
    :goto_b
    iget-object v3, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    add-int/lit8 v3, v3, -0x1

    .line 492
    .line 493
    if-ne v0, v3, :cond_c

    .line 494
    .line 495
    if-eqz v2, :cond_c

    .line 496
    .line 497
    iget-object v2, v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 498
    .line 499
    iget v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 500
    .line 501
    and-int/lit8 v2, v2, 0x1

    .line 502
    .line 503
    if-eqz v2, :cond_c

    .line 504
    .line 505
    goto :goto_c

    .line 506
    :cond_c
    iget-object v2, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    add-int/lit8 v2, v2, -0x1

    .line 513
    .line 514
    if-ne v0, v2, :cond_d

    .line 515
    .line 516
    iget-object v0, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    goto :goto_e

    .line 522
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 523
    .line 524
    goto :goto_a

    .line 525
    :cond_e
    :goto_c
    iget-object v2, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 526
    .line 527
    invoke-virtual {v2, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    goto :goto_e

    .line 531
    :goto_d
    iget-object v0, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    :cond_f
    :goto_e
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    if-eqz v0, :cond_10

    .line 541
    .line 542
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    goto :goto_f

    .line 547
    :cond_10
    const/4 v0, 0x0

    .line 548
    :goto_f
    iput-object v0, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 549
    .line 550
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_12

    .line 555
    .line 556
    iget-object v0, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    add-int/lit8 v0, v0, -0x1

    .line 563
    .line 564
    :goto_10
    if-lez v0, :cond_12

    .line 565
    .line 566
    iget-object v2, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 573
    .line 574
    iget-object v3, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    .line 575
    .line 576
    iget-object v7, v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    .line 577
    .line 578
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-nez v3, :cond_11

    .line 583
    .line 584
    goto :goto_11

    .line 585
    :cond_11
    add-int/lit8 v0, v0, -0x1

    .line 586
    .line 587
    goto :goto_10

    .line 588
    :cond_12
    const/4 v2, 0x0

    .line 589
    :goto_11
    iput-object v2, v4, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 590
    .line 591
    goto :goto_12

    .line 592
    :cond_13
    move-object/from16 v26, v2

    .line 593
    .line 594
    move/from16 v27, v3

    .line 595
    .line 596
    move/from16 v21, v4

    .line 597
    .line 598
    move-object/from16 v28, v7

    .line 599
    .line 600
    move/from16 v23, v8

    .line 601
    .line 602
    goto/16 :goto_5

    .line 603
    .line 604
    :goto_12
    add-int/lit8 v6, v6, 0x1

    .line 605
    .line 606
    move/from16 v4, v21

    .line 607
    .line 608
    move-object/from16 v0, v22

    .line 609
    .line 610
    move/from16 v8, v23

    .line 611
    .line 612
    move-object/from16 v10, v24

    .line 613
    .line 614
    move/from16 v11, v25

    .line 615
    .line 616
    move-object/from16 v2, v26

    .line 617
    .line 618
    move/from16 v3, v27

    .line 619
    .line 620
    move-object/from16 v7, v28

    .line 621
    .line 622
    move-object/from16 v13, v29

    .line 623
    .line 624
    move/from16 v14, v30

    .line 625
    .line 626
    move-object/from16 v12, v31

    .line 627
    .line 628
    goto/16 :goto_4

    .line 629
    .line 630
    :cond_14
    move/from16 v27, v3

    .line 631
    .line 632
    move-object/from16 v28, v7

    .line 633
    .line 634
    move/from16 v23, v8

    .line 635
    .line 636
    move-object/from16 v24, v10

    .line 637
    .line 638
    move/from16 v25, v11

    .line 639
    .line 640
    move-object/from16 v31, v12

    .line 641
    .line 642
    move-object/from16 v29, v13

    .line 643
    .line 644
    move/from16 v30, v14

    .line 645
    .line 646
    const/4 v12, 0x0

    .line 647
    add-int/lit8 v15, v15, 0x1

    .line 648
    .line 649
    move/from16 v4, v17

    .line 650
    .line 651
    move/from16 v0, v18

    .line 652
    .line 653
    move-object/from16 v2, v19

    .line 654
    .line 655
    move-object/from16 v6, v20

    .line 656
    .line 657
    move-object/from16 v12, v31

    .line 658
    .line 659
    goto/16 :goto_3

    .line 660
    .line 661
    :cond_15
    move/from16 v18, v0

    .line 662
    .line 663
    move-object/from16 v19, v2

    .line 664
    .line 665
    move/from16 v27, v3

    .line 666
    .line 667
    move/from16 v17, v4

    .line 668
    .line 669
    move-object/from16 v20, v6

    .line 670
    .line 671
    move-object/from16 v28, v7

    .line 672
    .line 673
    move/from16 v23, v8

    .line 674
    .line 675
    move-object/from16 v31, v12

    .line 676
    .line 677
    move-object/from16 v29, v13

    .line 678
    .line 679
    const/4 v12, 0x0

    .line 680
    add-int/lit8 v9, v9, 0x1

    .line 681
    .line 682
    move-object/from16 v12, v31

    .line 683
    .line 684
    goto/16 :goto_2

    .line 685
    .line 686
    :cond_16
    move/from16 v18, v0

    .line 687
    .line 688
    move-object/from16 v19, v2

    .line 689
    .line 690
    move/from16 v27, v3

    .line 691
    .line 692
    move/from16 v17, v4

    .line 693
    .line 694
    move-object/from16 v31, v12

    .line 695
    .line 696
    move-object/from16 v29, v13

    .line 697
    .line 698
    const/4 v12, 0x0

    .line 699
    add-int/lit8 v5, v5, 0x1

    .line 700
    .line 701
    move-object/from16 v12, v31

    .line 702
    .line 703
    goto/16 :goto_1

    .line 704
    .line 705
    :cond_17
    move/from16 v18, v0

    .line 706
    .line 707
    move-object/from16 v31, v12

    .line 708
    .line 709
    move-object/from16 v29, v13

    .line 710
    .line 711
    const/4 v12, 0x0

    .line 712
    add-int/lit8 v1, v1, 0x1

    .line 713
    .line 714
    move-object/from16 v12, v31

    .line 715
    .line 716
    goto/16 :goto_0

    .line 717
    .line 718
    :cond_18
    move-object/from16 v31, v12

    .line 719
    .line 720
    move-object/from16 v29, v13

    .line 721
    .line 722
    const/4 v12, 0x0

    .line 723
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    sget-wide v1, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 728
    .line 729
    sget-object v3, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 730
    .line 731
    invoke-virtual {v0, v1, v2, v3}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 736
    .line 737
    .line 738
    move-result-wide v0

    .line 739
    move-wide/from16 v2, p2

    .line 740
    .line 741
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 742
    .line 743
    .line 744
    move-result-wide v1

    .line 745
    move-object/from16 v0, v31

    .line 746
    .line 747
    move-wide/from16 v3, p4

    .line 748
    .line 749
    move/from16 v5, p6

    .line 750
    .line 751
    move/from16 v6, p7

    .line 752
    .line 753
    move-object/from16 v7, p8

    .line 754
    .line 755
    move-object/from16 v8, p9

    .line 756
    .line 757
    move-object/from16 v9, p10

    .line 758
    .line 759
    move/from16 v10, p11

    .line 760
    .line 761
    const/4 v13, 0x0

    .line 762
    move-object/from16 v11, v29

    .line 763
    .line 764
    invoke-static/range {v0 .. v11}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    .line 765
    .line 766
    .line 767
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 768
    .line 769
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    move v2, v12

    .line 774
    :goto_13
    if-ge v2, v1, :cond_1f

    .line 775
    .line 776
    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 777
    .line 778
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 783
    .line 784
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 785
    .line 786
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    check-cast v4, Ljava/lang/Integer;

    .line 791
    .line 792
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 793
    .line 794
    .line 795
    move-result v4

    .line 796
    iget-object v5, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 797
    .line 798
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 799
    .line 800
    .line 801
    move-result v5

    .line 802
    move v6, v12

    .line 803
    :goto_14
    if-ge v6, v5, :cond_1e

    .line 804
    .line 805
    iget-object v7, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 806
    .line 807
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v7

    .line 811
    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 812
    .line 813
    iget-object v8, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 814
    .line 815
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v8

    .line 819
    check-cast v8, Ljava/lang/String;

    .line 820
    .line 821
    iget-object v9, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 822
    .line 823
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 824
    .line 825
    .line 826
    move-result v9

    .line 827
    move v10, v12

    .line 828
    :goto_15
    if-ge v10, v9, :cond_1d

    .line 829
    .line 830
    iget-object v11, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 831
    .line 832
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v11

    .line 836
    check-cast v11, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 837
    .line 838
    iget-object v14, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 839
    .line 840
    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v14

    .line 844
    check-cast v14, Ljava/lang/Integer;

    .line 845
    .line 846
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 847
    .line 848
    .line 849
    move-result v14

    .line 850
    iget-object v15, v11, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 851
    .line 852
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 853
    .line 854
    .line 855
    move-result v15

    .line 856
    :goto_16
    if-ge v12, v15, :cond_1c

    .line 857
    .line 858
    iget-object v13, v11, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 859
    .line 860
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v13

    .line 864
    check-cast v13, Ljava/lang/String;

    .line 865
    .line 866
    move-object/from16 v31, v0

    .line 867
    .line 868
    iget-object v0, v11, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 869
    .line 870
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    check-cast v0, Ljava/util/List;

    .line 875
    .line 876
    move/from16 p8, v1

    .line 877
    .line 878
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    move-object/from16 p9, v3

    .line 883
    .line 884
    const/4 v3, 0x0

    .line 885
    :goto_17
    if-ge v3, v1, :cond_1b

    .line 886
    .line 887
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v17

    .line 891
    move-object/from16 p10, v0

    .line 892
    .line 893
    move-object/from16 v0, v17

    .line 894
    .line 895
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 896
    .line 897
    move/from16 p11, v1

    .line 898
    .line 899
    iget v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 900
    .line 901
    move/from16 p12, v5

    .line 902
    .line 903
    const/4 v5, -0x1

    .line 904
    if-eq v1, v5, :cond_1a

    .line 905
    .line 906
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    move-object/from16 v5, v29

    .line 911
    .line 912
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    check-cast v1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    .line 917
    .line 918
    if-eqz v1, :cond_19

    .line 919
    .line 920
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    .line 921
    .line 922
    .line 923
    move-result v17

    .line 924
    if-eqz v17, :cond_19

    .line 925
    .line 926
    move-object/from16 p2, v1

    .line 927
    .line 928
    move-object/from16 p3, v8

    .line 929
    .line 930
    move/from16 p4, v4

    .line 931
    .line 932
    move-object/from16 p5, v13

    .line 933
    .line 934
    move/from16 p6, v14

    .line 935
    .line 936
    move-object/from16 p7, v0

    .line 937
    .line 938
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    .line 939
    .line 940
    .line 941
    move-result v17

    .line 942
    if-eqz v17, :cond_19

    .line 943
    .line 944
    iget-object v1, v1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 945
    .line 946
    if-eqz v1, :cond_19

    .line 947
    .line 948
    move-object/from16 v29, v5

    .line 949
    .line 950
    new-instance v5, Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 951
    .line 952
    move-object/from16 p2, v7

    .line 953
    .line 954
    iget-object v7, v1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 955
    .line 956
    move/from16 p3, v9

    .line 957
    .line 958
    iget v9, v1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    .line 959
    .line 960
    iget-object v1, v1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    .line 961
    .line 962
    invoke-direct {v5, v9, v1, v7}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    move-object/from16 v28, v5

    .line 966
    .line 967
    goto :goto_18

    .line 968
    :cond_19
    move-object/from16 v29, v5

    .line 969
    .line 970
    :cond_1a
    move-object/from16 p2, v7

    .line 971
    .line 972
    move/from16 p3, v9

    .line 973
    .line 974
    const/16 v28, 0x0

    .line 975
    .line 976
    :goto_18
    sget-wide v17, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 977
    .line 978
    move v5, v2

    .line 979
    iget-wide v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 980
    .line 981
    div-long v1, v1, v17

    .line 982
    .line 983
    mul-long v24, v1, v17

    .line 984
    .line 985
    iget-wide v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 986
    .line 987
    invoke-static {v1, v2}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    .line 988
    .line 989
    .line 990
    move-result-wide v26

    .line 991
    iget v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 992
    .line 993
    iget v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 994
    .line 995
    move-object/from16 v17, p1

    .line 996
    .line 997
    move/from16 v18, v14

    .line 998
    .line 999
    move/from16 v19, v4

    .line 1000
    .line 1001
    move-object/from16 v20, v8

    .line 1002
    .line 1003
    move-object/from16 v21, v13

    .line 1004
    .line 1005
    move/from16 v22, v1

    .line 1006
    .line 1007
    move/from16 v23, v0

    .line 1008
    .line 1009
    invoke-virtual/range {v17 .. v28}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 1010
    .line 1011
    .line 1012
    add-int/lit8 v3, v3, 0x1

    .line 1013
    .line 1014
    move-object/from16 v7, p2

    .line 1015
    .line 1016
    move/from16 v9, p3

    .line 1017
    .line 1018
    move-object/from16 v0, p10

    .line 1019
    .line 1020
    move/from16 v1, p11

    .line 1021
    .line 1022
    move v2, v5

    .line 1023
    move/from16 v5, p12

    .line 1024
    .line 1025
    goto/16 :goto_17

    .line 1026
    .line 1027
    :cond_1b
    move/from16 p12, v5

    .line 1028
    .line 1029
    move-object/from16 p2, v7

    .line 1030
    .line 1031
    move/from16 p3, v9

    .line 1032
    .line 1033
    move v5, v2

    .line 1034
    add-int/lit8 v12, v12, 0x1

    .line 1035
    .line 1036
    move/from16 v1, p8

    .line 1037
    .line 1038
    move-object/from16 v3, p9

    .line 1039
    .line 1040
    move-object/from16 v0, v31

    .line 1041
    .line 1042
    const/4 v13, 0x0

    .line 1043
    move/from16 v5, p12

    .line 1044
    .line 1045
    goto/16 :goto_16

    .line 1046
    .line 1047
    :cond_1c
    move-object/from16 v31, v0

    .line 1048
    .line 1049
    move/from16 p8, v1

    .line 1050
    .line 1051
    move-object/from16 p9, v3

    .line 1052
    .line 1053
    move/from16 p12, v5

    .line 1054
    .line 1055
    move-object/from16 p2, v7

    .line 1056
    .line 1057
    move/from16 p3, v9

    .line 1058
    .line 1059
    move v5, v2

    .line 1060
    add-int/lit8 v10, v10, 0x1

    .line 1061
    .line 1062
    const/4 v12, 0x0

    .line 1063
    const/4 v13, 0x0

    .line 1064
    move/from16 v5, p12

    .line 1065
    .line 1066
    goto/16 :goto_15

    .line 1067
    .line 1068
    :cond_1d
    move-object/from16 v31, v0

    .line 1069
    .line 1070
    move/from16 p8, v1

    .line 1071
    .line 1072
    move-object/from16 p9, v3

    .line 1073
    .line 1074
    move/from16 p12, v5

    .line 1075
    .line 1076
    move v5, v2

    .line 1077
    add-int/lit8 v6, v6, 0x1

    .line 1078
    .line 1079
    const/4 v12, 0x0

    .line 1080
    const/4 v13, 0x0

    .line 1081
    move/from16 v5, p12

    .line 1082
    .line 1083
    goto/16 :goto_14

    .line 1084
    .line 1085
    :cond_1e
    move-object/from16 v31, v0

    .line 1086
    .line 1087
    move/from16 p8, v1

    .line 1088
    .line 1089
    move v5, v2

    .line 1090
    add-int/lit8 v2, v5, 0x1

    .line 1091
    .line 1092
    const/4 v12, 0x0

    .line 1093
    const/4 v13, 0x0

    .line 1094
    goto/16 :goto_13

    .line 1095
    .line 1096
    :cond_1f
    return-void
.end method

.method public final clearHistory()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, p0, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 14
    .line 15
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_2
    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    const-string v1, "DiscreteRegistry"

    .line 41
    .line 42
    const-string v2, "Failed to create DiscreteRegistry directory"

    .line 43
    .line 44
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/16 v1, 0x1f9

    .line 54
    .line 55
    const/4 v2, -0x1

    .line 56
    invoke-static {p0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 57
    .line 58
    .line 59
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :try_start_4
    throw p0

    .line 66
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    throw p0
.end method

.method public final deleteOldDiscreteHistoryFilesLocked()V
    .locals 12

    .line 1
    const-string v0, "DiscreteRegistry"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    array-length v1, p0

    .line 12
    if-lez v1, :cond_2

    .line 13
    .line 14
    array-length v1, p0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_2

    .line 18
    .line 19
    aget-object v4, p0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string/jumbo v6, "tl"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    add-int/lit8 v6, v6, -0x2

    .line 40
    .line 41
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    sget-wide v9, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 58
    .line 59
    sget-object v11, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 60
    .line 61
    invoke-virtual {v8, v9, v10, v11}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    .line 66
    .line 67
    .line 68
    move-result-wide v8

    .line 69
    cmp-long v6, v8, v6

    .line 70
    .line 71
    if-lez v6, :cond_1

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 74
    .line 75
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v6, "Deleting file "

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v4

    .line 98
    const-string v5, "Error while cleaning timeline files: "

    .line 99
    .line 100
    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    return-void
.end method

.method public final getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 14
    .line 15
    invoke-virtual {v0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 24
    .line 25
    invoke-direct {v3, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/android/server/appop/DiscreteRegistry;->readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 39
    .line 40
    .line 41
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    return-object v0

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :try_start_4
    throw p0

    .line 46
    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    throw p0
.end method

.method public final persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    new-instance v2, Landroid/util/AtomicFile;

    .line 10
    .line 11
    new-instance v3, Ljava/io/File;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "tl"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-static {p1, p0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    const/4 p0, 0x0

    .line 54
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Error writing timeline state: "

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v0, "DiscreteRegistry"

    .line 89
    .line 90
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    if-eqz p0, :cond_0

    .line 94
    .line 95
    invoke-virtual {v2, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    :goto_1
    return-void
.end method

.method public final readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 9
    .line 10
    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    array-length v3, p0

    .line 29
    if-lez v3, :cond_2

    .line 30
    .line 31
    array-length v3, p0

    .line 32
    const/4 v4, 0x0

    .line 33
    move v5, v4

    .line 34
    :goto_0
    if-ge v5, v3, :cond_2

    .line 35
    .line 36
    aget-object v6, p0, v5

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const-string/jumbo v8, "tl"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-nez v8, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    add-int/lit8 v8, v8, -0x2

    .line 57
    .line 58
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v7

    .line 70
    cmp-long v7, v7, v1

    .line 71
    .line 72
    if-gez v7, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-static {p1, v6, v1, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/File;J)V

    .line 76
    .line 77
    .line 78
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public final readLargestChainIdFromDiskLocked()I
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_4

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    if-lez v1, :cond_4

    .line 12
    .line 13
    array-length v1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    move v5, v0

    .line 18
    move-object v6, v2

    .line 19
    :goto_0
    if-ge v5, v1, :cond_2

    .line 20
    .line 21
    aget-object v7, p0, v5

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const-string/jumbo v9, "tl"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    if-nez v9, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    add-int/lit8 v9, v9, -0x2

    .line 42
    .line 43
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    cmp-long v10, v3, v8

    .line 56
    .line 57
    if-gez v10, :cond_1

    .line 58
    .line 59
    move-object v6, v7

    .line 60
    move-wide v3, v8

    .line 61
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-nez v6, :cond_3

    .line 65
    .line 66
    return v0

    .line 67
    :cond_3
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    .line 68
    .line 69
    invoke-direct {p0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string/jumbo v3, "h"

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo v3, "lc"

    .line 83
    .line 84
    .line 85
    invoke-interface {v1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    .line 91
    .line 92
    :catch_0
    return v0

    .line 93
    :catchall_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 94
    .line 95
    .line 96
    :catch_1
    :cond_4
    return v0
.end method

.method public final recordDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    sget-object v1, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    .line 3
    .line 4
    move/from16 v3, p2

    .line 5
    .line 6
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget v1, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    .line 14
    .line 15
    and-int v1, p3, v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 24
    .line 25
    move/from16 v3, p2

    .line 26
    .line 27
    move/from16 v4, p1

    .line 28
    .line 29
    move/from16 v5, p3

    .line 30
    .line 31
    move/from16 v6, p4

    .line 32
    .line 33
    move/from16 v7, p5

    .line 34
    .line 35
    move/from16 v8, p6

    .line 36
    .line 37
    move-wide/from16 v9, p7

    .line 38
    .line 39
    move-wide/from16 v11, p9

    .line 40
    .line 41
    move-object/from16 v13, p11

    .line 42
    .line 43
    move-object/from16 v14, p12

    .line 44
    .line 45
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->addDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v0
.end method

.method public final setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "discrete_history_cutoff_millis"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 21
    .line 22
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    .line 31
    .line 32
    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 33
    .line 34
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sput-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string/jumbo v1, "discrete_history_quantization_millis"

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 63
    .line 64
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    iget-boolean p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    .line 69
    .line 70
    if-nez p0, :cond_3

    .line 71
    .line 72
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 73
    .line 74
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    sput-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 82
    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string/jumbo v0, "discrete_history_op_flags"

    .line 88
    .line 89
    .line 90
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    const/16 v1, 0xb

    .line 95
    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    sput v1, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    .line 103
    .line 104
    :cond_4
    sput v1, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string/jumbo v0, "discrete_history_ops_cslist"

    .line 111
    .line 112
    .line 113
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    const-string v1, "1,0,26,27,100,101,120,136,141"

    .line 118
    .line 119
    if-eqz p0, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    invoke-static {v1}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :goto_2
    sput-object p0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    .line 135
    .line 136
    return-void
.end method

.method public final writeAndClearAccessHistory()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "DiscreteRegistry"

    .line 9
    .line 10
    const-string v1, "State not saved - persistence not initialized."

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 23
    .line 24
    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 25
    .line 26
    iget v4, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    .line 27
    .line 28
    invoke-direct {v3, p0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 35
    .line 36
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->deleteOldDiscreteHistoryFilesLocked()V

    .line 38
    .line 39
    .line 40
    iget-object v1, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    return-void

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :try_start_4
    throw p0

    .line 56
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    throw p0
.end method
