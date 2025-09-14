.class public final Lcom/android/server/am/AppStartInfoTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final APP_START_INFO_FILE:Ljava/lang/String; = "procstartinfo"

.field static final APP_START_INFO_HISTORY_LIST_SIZE:I = 0x10

.field public static final APP_START_INFO_PERSIST_INTERVAL:J

.field static final APP_START_STORE_DIR:Ljava/lang/String; = "procstartstore"

.field static final MAX_IN_PROGRESS_RECORDS:I = 0x5


# instance fields
.field mAppStartInfoHistoryListSize:I

.field mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

.field public final mCallbacks:Landroid/util/SparseArray;

.field public final mData:Lcom/android/internal/app/ProcessMap;

.field mEnabled:Z

.field public mHandler:Landroid/os/Handler;

.field final mInProgressRecords:Landroid/util/ArrayMap;

.field public mLastAppStartInfoPersistTimestamp:J

.field final mLock:Ljava/lang/Object;

.field mProcStartInfoFile:Ljava/io/File;

.field mProcStartStoreDir:Ljava/io/File;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mTemporaryInProgressIndexes:Ljava/util/ArrayList;

.field public final mTmpStartInfoList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x1e

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 17
    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    .line 37
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    .line 51
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 58
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 63
    return-void
.end method

.method public static addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 11
    iget v0, v0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 17
    invoke-virtual {p0, v2}, Landroid/app/ApplicationStartInfo;->setPid(I)V

    .line 20
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 22
    invoke-virtual {p0, v2}, Landroid/app/ApplicationStartInfo;->setRealUid(I)V

    .line 25
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 27
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 29
    invoke-virtual {p0, v2}, Landroid/app/ApplicationStartInfo;->setPackageUid(I)V

    .line 32
    if-lez v0, :cond_2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 37
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 39
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/ApplicationStartInfo;->setDefiningUid(I)V

    .line 42
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/ApplicationStartInfo;->setProcessName(Ljava/lang/String;)V

    .line 47
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 49
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/ApplicationStartInfo;->setPackageName(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->stayStopped()Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 62
    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    .line 64
    if-nez p1, :cond_3

    .line 66
    if-eqz v0, :cond_4

    .line 68
    iget p1, v0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    .line 70
    const/4 v0, 0x2

    .line 71
    if-ne p1, v0, :cond_4

    .line 73
    :cond_3
    const/4 v1, 0x1

    .line 74
    :cond_4
    invoke-virtual {p0, v1}, Landroid/app/ApplicationStartInfo;->setForceStopped(Z)V

    .line 77
    :cond_5
    return-void
.end method

.method public static dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "  package: "

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    move-object/from16 v3, p1

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    if-ge v4, v2, :cond_a

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    const-string v6, "    Historical Process Start for userId="

    .line 36
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 42
    move-result v6

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 59
    iget-boolean v6, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v7

    .line 65
    if-eqz v6, :cond_8

    .line 67
    new-instance v6, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v8, Ljava/util/ArrayList;

    .line 74
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v9, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 82
    move v10, v3

    .line 83
    :goto_1
    iget-object v11, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v11

    .line 89
    if-ge v10, v11, :cond_4

    .line 91
    iget-object v11, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v11

    .line 97
    check-cast v11, Landroid/app/ApplicationStartInfo;

    .line 99
    invoke-virtual {v11}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    .line 102
    move-result-object v12

    .line 103
    invoke-interface {v12, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 106
    move-result v13

    .line 107
    if-eqz v13, :cond_3

    .line 109
    const/4 v13, 0x4

    .line 110
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v14

    .line 114
    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 117
    move-result v14

    .line 118
    if-eqz v14, :cond_3

    .line 120
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v13

    .line 124
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v13

    .line 128
    check-cast v13, Ljava/lang/Long;

    .line 130
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 133
    move-result-wide v13

    .line 134
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object v12

    .line 138
    check-cast v12, Ljava/lang/Long;

    .line 140
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 143
    move-result-wide v15

    .line 144
    sub-long/2addr v13, v15

    .line 145
    invoke-virtual {v11}, Landroid/app/ApplicationStartInfo;->getStartType()I

    .line 148
    move-result v11

    .line 149
    const/4 v12, 0x1

    .line 150
    if-eq v11, v12, :cond_2

    .line 152
    const/4 v12, 0x2

    .line 153
    if-eq v11, v12, :cond_1

    .line 155
    const/4 v12, 0x3

    .line 156
    if-eq v11, v12, :cond_0

    .line 158
    goto :goto_2

    .line 159
    :cond_0
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    move-result-object v11

    .line 163
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    goto :goto_2

    .line 167
    :cond_1
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    goto :goto_2

    .line 175
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    move-result-object v11

    .line 179
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 184
    goto :goto_1

    .line 185
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 187
    const-string v10, "        Average Start Time in ns for Cold Starts: "

    .line 189
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 195
    move-result v10

    .line 196
    const-string v11, "No records"

    .line 198
    if-eqz v10, :cond_5

    .line 200
    move-object v6, v11

    .line 201
    goto :goto_3

    .line 202
    :cond_5
    invoke-static {v6}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->calculateAverage(Ljava/util/List;)J

    .line 205
    move-result-wide v12

    .line 206
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 209
    move-result-object v6

    .line 210
    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    .line 222
    const-string v7, "        Average Start Time in ns for Warm Starts: "

    .line 224
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_6

    .line 233
    move-object v7, v11

    .line 234
    goto :goto_4

    .line 235
    :cond_6
    invoke-static {v8}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->calculateAverage(Ljava/util/List;)J

    .line 238
    move-result-wide v7

    .line 239
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    move-result-object v7

    .line 243
    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object v6

    .line 250
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    .line 255
    const-string v7, "        Average Start Time in ns for Hot Starts: "

    .line 257
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 263
    move-result v7

    .line 264
    if-eqz v7, :cond_7

    .line 266
    goto :goto_5

    .line 267
    :cond_7
    invoke-static {v9}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->calculateAverage(Ljava/util/List;)J

    .line 270
    move-result-wide v7

    .line 271
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 274
    move-result-object v11

    .line 275
    :goto_5
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    :cond_8
    iget-object v6, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 290
    move-result v6

    .line 291
    move v7, v3

    .line 292
    :goto_6
    if-ge v7, v6, :cond_9

    .line 294
    iget-object v8, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 296
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    move-result-object v8

    .line 300
    check-cast v8, Landroid/app/ApplicationStartInfo;

    .line 302
    const-string v9, "#"

    .line 304
    invoke-static {v7, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 307
    move-result-object v9

    .line 308
    const-string v10, "        "

    .line 310
    move-object/from16 v11, p3

    .line 312
    invoke-virtual {v8, v0, v10, v9, v11}, Landroid/app/ApplicationStartInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 315
    add-int/lit8 v7, v7, 0x1

    .line 317
    goto :goto_6

    .line 318
    :cond_9
    move-object/from16 v11, p3

    .line 320
    add-int/lit8 v4, v4, 0x1

    .line 322
    goto/16 :goto_0

    .line 324
    :cond_a
    return-void
.end method

.method public static getStartTimestamp(Landroid/app/ApplicationStartInfo;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Long;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 40
    move-result-wide v0

    .line 41
    return-wide v0

    .line 42
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 44
    return-wide v0
.end method


# virtual methods
.method public final addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string p0, "ActivityManager"

    .line 11
    const-string p1, "Skipping saving the start info due to ongoing loading from storage"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Landroid/app/ApplicationStartInfo;

    .line 20
    invoke-direct {v0, p1}, Landroid/app/ApplicationStartInfo;-><init>(Landroid/app/ApplicationStartInfo;)V

    .line 23
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 25
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    .line 32
    move-result v3

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 39
    if-nez v1, :cond_1

    .line 41
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 43
    iget v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    .line 45
    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    .line 48
    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    .line 51
    move-result v2

    .line 52
    iput v2, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    .line 54
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 56
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    .line 63
    move-result p1

    .line 64
    invoke-virtual {v2, v3, p1, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1
    iget-object p1, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result p1

    .line 73
    iget-boolean v2, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 75
    if-eqz v2, :cond_2

    .line 77
    const/16 v2, 0x64

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget v2, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMaxCapacity:I

    .line 82
    :goto_0
    const/4 v3, 0x0

    .line 83
    if-lt p1, v2, :cond_5

    .line 85
    const/4 v2, -0x1

    .line 86
    const-wide v4, 0x7fffffffffffffffL

    .line 91
    move v6, v3

    .line 92
    :goto_1
    if-ge v6, p1, :cond_4

    .line 94
    iget-object v7, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v7

    .line 100
    check-cast v7, Landroid/app/ApplicationStartInfo;

    .line 102
    invoke-static {v7}, Lcom/android/server/am/AppStartInfoTracker;->getStartTimestamp(Landroid/app/ApplicationStartInfo;)J

    .line 105
    move-result-wide v8

    .line 106
    cmp-long v8, v8, v4

    .line 108
    if-gez v8, :cond_3

    .line 110
    invoke-static {v7}, Lcom/android/server/am/AppStartInfoTracker;->getStartTimestamp(Landroid/app/ApplicationStartInfo;)J

    .line 113
    move-result-wide v4

    .line 114
    move v2, v6

    .line 115
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    if-ltz v2, :cond_5

    .line 120
    iget-object p1, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    :cond_5
    iget-object p1, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object p1, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 132
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;

    .line 134
    const/4 v2, 0x2

    .line 135
    invoke-direct {v1, v2}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 138
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 144
    return-object v0
.end method

.method public final addTimestampToStart(IIJLjava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 11
    invoke-virtual {p0, p5, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 17
    if-nez p0, :cond_1

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->addTimestampToStartLocked(IJ)V

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final checkCompletenessAndCallback(Landroid/app/ApplicationStartInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getStartupState()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v1, v2, :cond_3

    .line 11
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/List;

    .line 23
    if-nez v1, :cond_0

    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v2, :cond_2

    .line 36
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_1

    .line 42
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    iget-object v4, v4, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    .line 53
    invoke-interface {v4, p1}, Landroid/app/IApplicationStartInfoCompleteListener;->onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    .line 64
    move-result p1

    .line 65
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 68
    :cond_3
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

.method public clearProcessStartInfo(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 28
    :cond_1
    if-eqz p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    .line 32
    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 39
    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 46
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 48
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final dumpHistoryProcessStartInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Last Timestamp of Persistence Into Persistent Storage: "

    .line 3
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 5
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity start-info)"

    .line 10
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    .line 15
    invoke-direct {v1}, Landroid/icu/text/SimpleDateFormat;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/Date;

    .line 28
    iget-wide v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 30
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 33
    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 53
    new-instance p2, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;

    .line 55
    invoke-direct {p2, p0, p1, v1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroid/util/SparseArray;

    .line 76
    if-eqz p0, :cond_2

    .line 78
    invoke-static {p1, p2, p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 81
    :cond_2
    :goto_0
    monitor-exit v2

    .line 82
    return-void

    .line 83
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method public final forEachPackageLocked(Ljava/util/function/BiFunction;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    :goto_0
    if-ltz v0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 21
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/util/SparseArray;

    .line 27
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v2

    .line 37
    if-eq v2, v1, :cond_2

    .line 39
    const/4 v3, 0x2

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eq v2, v3, :cond_1

    .line 43
    const/4 v3, 0x3

    .line 44
    if-eq v2, v3, :cond_0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 50
    :cond_1
    return v4

    .line 51
    :cond_2
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 54
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    return v1
.end method

.method public final getStartInfo(IILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 8
    const/16 p2, 0x10

    .line 10
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v3, :cond_3

    .line 24
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 26
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 32
    if-eqz p0, :cond_6

    .line 34
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result p1

    .line 40
    if-gt p1, p2, :cond_2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result p1

    .line 49
    sub-int v4, p1, p2

    .line 51
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p4, v4, p0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    iget-object p3, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 64
    new-instance v3, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;

    .line 66
    invoke-direct {v3, p3, p1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;I)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 72
    new-instance p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;

    .line 74
    const/4 p1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 78
    invoke-static {p3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result p0

    .line 85
    if-lez p2, :cond_4

    .line 87
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 90
    move-result p0

    .line 91
    :cond_4
    :goto_1
    if-ge v4, p0, :cond_5

    .line 93
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/app/ApplicationStartInfo;

    .line 99
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v4, v4, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 108
    :cond_6
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    return-void

    .line 113
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    :catchall_1
    move-exception p0

    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    throw p0
.end method

.method public final handleProcessBackupStart(JLcom/android/server/am/ProcessRecord;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    .line 14
    invoke-direct {v1}, Landroid/app/ApplicationStartInfo;-><init>()V

    .line 17
    invoke-static {v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 24
    invoke-virtual {v1, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 27
    const/4 p1, 0x1

    .line 28
    if-eqz p4, :cond_1

    .line 30
    move p2, p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p2, 0x2

    .line 33
    :goto_0
    invoke-virtual {v1, p2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 36
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final handleProcessContentProviderStart(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    .line 14
    invoke-direct {v1}, Landroid/app/ApplicationStartInfo;-><init>()V

    .line 17
    invoke-static {v1, p1}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 24
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 31
    const/4 p1, 0x4

    .line 32
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public loadExistingProcessStartInfo()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 15
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    .line 24
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    .line 26
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 29
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 32
    move-result-object v0

    .line 33
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    .line 35
    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 41
    move-result v3

    .line 42
    :goto_0
    const/4 v4, -0x1

    .line 43
    if-eq v3, v4, :cond_4

    .line 45
    if-eq v3, v1, :cond_3

    .line 47
    const/4 v4, 0x2

    .line 48
    if-eq v3, v4, :cond_2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    int-to-long v3, v3

    .line 52
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppStartInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_5

    .line 58
    :catch_0
    move-exception v2

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 62
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-wide v4, 0x10300000001L

    .line 68
    :try_start_1
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 71
    move-result-wide v4

    .line 72
    iput-wide v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 74
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 78
    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception v2

    .line 81
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    :cond_4
    if-eqz v0, :cond_5

    .line 85
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 88
    goto :goto_4

    .line 89
    :goto_3
    :try_start_6
    const-string v3, "ActivityManager"

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v5, "Error in loading historical app start info from persistent storage: "

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 111
    if-eqz v0, :cond_5

    .line 113
    goto :goto_2

    .line 114
    :catch_1
    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    return-void

    .line 120
    :goto_5
    if-eqz v0, :cond_6

    .line 122
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 125
    :catch_2
    :cond_6
    throw p0
.end method

.method public final loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 11

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 4
    move-result-wide p2

    .line 5
    const-string v0, ""

    .line 7
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 10
    move-result v1

    .line 11
    :goto_0
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_6

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v1, v3, :cond_5

    .line 17
    const/4 v4, 0x2

    .line 18
    if-eq v1, v4, :cond_0

    .line 20
    goto :goto_3

    .line 21
    :cond_0
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 23
    iget v5, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    .line 25
    invoke-direct {v1, p0, v5}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    .line 28
    const-wide v5, 0x20b00000002L

    .line 33
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 36
    move-result-wide v7

    .line 37
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 40
    move-result v9

    .line 41
    :goto_1
    if-eq v9, v2, :cond_4

    .line 43
    if-eq v9, v3, :cond_3

    .line 45
    if-eq v9, v4, :cond_2

    .line 47
    const/4 v10, 0x3

    .line 48
    if-eq v9, v10, :cond_1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    const-wide v9, 0x10800000003L

    .line 56
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 59
    move-result v9

    .line 60
    iput-boolean v9, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance v9, Landroid/app/ApplicationStartInfo;

    .line 65
    invoke-direct {v9}, Landroid/app/ApplicationStartInfo;-><init>()V

    .line 68
    invoke-virtual {v9, p1, v5, v6}, Landroid/app/ApplicationStartInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 71
    iget-object v10, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const-wide v9, 0x10500000001L

    .line 82
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 85
    move-result v9

    .line 86
    iput v9, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    .line 88
    :goto_2
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 91
    move-result v9

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 96
    iget v2, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    .line 98
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 100
    monitor-enter v3

    .line 101
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 103
    invoke-virtual {v4, v0, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v3

    .line 107
    goto :goto_3

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    throw p0

    .line 111
    :cond_5
    const-wide v0, 0x10900000001L

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    :goto_3
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 123
    move-result v1

    .line 124
    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 128
    return-void
.end method

.method public final maybeTrimInProgressRecordsLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    if-gt v0, v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    const/4 v0, 0x0

    .line 17
    move v2, v0

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_1

    .line 26
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 40
    new-instance v3, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;

    .line 42
    invoke-direct {v3, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    .line 45
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x6

    .line 55
    if-ne v2, v3, :cond_2

    .line 57
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 59
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Integer;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v0

    .line 71
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v2

    .line 81
    sub-int/2addr v2, v1

    .line 82
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 97
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    move-result v0

    .line 106
    add-int/lit8 v0, v0, -0x1

    .line 108
    :goto_1
    if-ltz v0, :cond_3

    .line 110
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 112
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/Integer;

    .line 120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 127
    add-int/lit8 v0, v0, -0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 135
    return-void
.end method

.method public final onActivityLaunched(JJLcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 21
    move-result p1

    .line 22
    if-gez p1, :cond_1

    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 28
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/app/ApplicationStartInfo;

    .line 34
    if-eqz p2, :cond_4

    .line 36
    if-nez p5, :cond_2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    long-to-int p3, p3

    .line 40
    invoke-virtual {p2, p3}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 43
    invoke-static {p2, p5}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 49
    move-result-object p2

    .line 50
    if-nez p2, :cond_3

    .line 52
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_0
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 67
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final onIntentStarted(Landroid/content/Intent;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    .line 14
    invoke-direct {v1}, Landroid/app/ApplicationStartInfo;-><init>()V

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 21
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 27
    invoke-virtual {v1, v2, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 30
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 41
    move-result-object p1

    .line 42
    const-string v2, "android.intent.category.LAUNCHER"

    .line 44
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 50
    const/4 p1, 0x6

    .line 51
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/16 p1, 0xb

    .line 57
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 62
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->maybeTrimInProgressRecordsLocked()V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 10
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 12
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    if-eqz p3, :cond_1

    .line 24
    const/4 p2, -0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    move-result p2

    .line 30
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(ILjava/lang/String;)V

    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 37
    monitor-exit v0

    .line 38
    goto :goto_1

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
    :cond_2
    :goto_1
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, -0x1

    .line 13
    if-ne p1, v1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 17
    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;

    .line 27
    invoke-direct {v1, p1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;-><init>(I)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 33
    :goto_0
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public persistProcessStartInfo()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    .line 8
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    .line 10
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v1

    .line 17
    const/4 v3, 0x0

    .line 18
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 21
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    .line 24
    invoke-direct {v5, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    const-wide v6, 0x10300000001L

    .line 32
    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 35
    iget-object v6, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    :try_start_2
    new-instance v7, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;

    .line 40
    invoke-direct {v7, v5}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .line 43
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_1

    .line 49
    iput-wide v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    if-eqz v7, :cond_2

    .line 57
    :try_start_3
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 60
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 63
    goto :goto_3

    .line 64
    :catch_0
    move-exception v1

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 69
    goto :goto_3

    .line 70
    :goto_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 72
    :catch_1
    move-exception v1

    .line 73
    move-object v4, v3

    .line 74
    :goto_2
    const-string v2, "ActivityManager"

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    const-string v6, "Unable to write historical app start info into persistent storage: "

    .line 80
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 96
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 98
    monitor-enter v0

    .line 99
    :try_start_6
    iput-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 105
    throw p0
.end method

.method public final removePackageLocked(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/util/SparseArray;

    .line 13
    if-nez v1, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v2, -0x1

    .line 17
    if-ne p1, v2, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 21
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 32
    move-result p0

    .line 33
    add-int/lit8 p0, p0, -0x1

    .line 35
    :goto_0
    if-ltz p0, :cond_3

    .line 37
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 44
    move-result v2

    .line 45
    if-ne v2, p1, :cond_2

    .line 47
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_4

    .line 60
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_4
    :goto_2
    return-void
.end method

.method public final removeStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    if-nez v1, :cond_1

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    if-ge v4, v2, :cond_3

    .line 32
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    .line 38
    iget-object v6, v5, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    .line 40
    if-ne v6, p1, :cond_2

    .line 42
    if-eqz p3, :cond_3

    .line 44
    invoke-interface {v6}, Landroid/app/IApplicationStartInfoCompleteListener;->asBinder()Landroid/os/IBinder;

    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1, v5, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    :goto_1
    if-ge v4, v2, :cond_4

    .line 57
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_5

    .line 66
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 71
    :cond_5
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public schedulePersistProcessStartInfo(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    if-eqz p1, :cond_4

    .line 18
    :cond_1
    if-eqz v1, :cond_2

    .line 20
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    :cond_2
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    .line 35
    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 37
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 40
    move-result-object v1

    .line 41
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    .line 43
    if-eqz p1, :cond_3

    .line 45
    const-wide/16 v2, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    sget-wide v2, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    .line 50
    :goto_0
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    :cond_4
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method
