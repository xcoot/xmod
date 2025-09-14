.class public final Lcom/android/server/am/mars/MARsBigData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public PLEVdata:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mHQM:Landroid/os/SemHqmManager;

.field public mIntentReceiver:Lcom/android/server/am/mars/MARsBigData$1;


# virtual methods
.method public final sendBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string v5, "1.0"

    .line 8
    const-string/jumbo v6, "sec"

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "Sluggish"

    .line 14
    const-string/jumbo v4, "ph"

    .line 17
    const-string v7, ""

    .line 19
    const-string v9, ""

    .line 21
    move-object v3, p1

    .line 22
    move-object v8, p2

    .line 23
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    return-void
.end method

.method public final sendFGSTypeBigData()V
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    sget v1, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    .line 8
    sget-object v1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 10
    iget-object v1, v1, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/am/mars/ForegroundServiceRecord;

    .line 32
    :try_start_0
    const-string v3, "PKGN"

    .line 34
    iget-object v4, v2, Lcom/android/server/am/mars/ForegroundServiceRecord;->mPackageName:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    move-result-object v3

    .line 40
    const-string v4, "UID"

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    move-result-object v3

    .line 47
    const-string v4, "NUSD"

    .line 49
    iget v5, v2, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    .line 51
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    move-result-object v3

    .line 55
    const-string v4, "BUSE"

    .line 57
    iget v2, v2, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    .line 59
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x1

    .line 76
    sub-int/2addr v3, v4

    .line 77
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    const-string v3, "FGSN"

    .line 83
    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    sget-object p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 89
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 94
    return-void
.end method

.method public final updateBigdataInfo()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    new-array v2, v1, [Lcom/android/server/am/mars/MARsBigData$LevelInfo;

    .line 5
    const/4 v3, 0x0

    .line 6
    move v4, v3

    .line 7
    :goto_0
    if-ge v4, v1, :cond_0

    .line 9
    new-instance v5, Lcom/android/server/am/mars/MARsBigData$LevelInfo;

    .line 11
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v3, v5, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    .line 16
    aput-object v5, v2, v4

    .line 18
    add-int/2addr v4, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 22
    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 24
    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 26
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 28
    monitor-enter v5

    .line 29
    :try_start_0
    iget-object v6, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 31
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 34
    move-result v6

    .line 35
    move v7, v3

    .line 36
    :goto_1
    iget-object v8, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 38
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 41
    move-result v8

    .line 42
    if-ge v7, v8, :cond_6

    .line 44
    iget-object v8, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 46
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Landroid/util/SparseArray;

    .line 52
    move v9, v3

    .line 53
    :goto_2
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 56
    move-result v10

    .line 57
    if-ge v9, v10, :cond_5

    .line 59
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    move-result-object v10

    .line 63
    check-cast v10, Lcom/android/server/am/MARsPackageInfo;

    .line 65
    iget v11, v10, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 67
    if-eqz v11, :cond_4

    .line 69
    if-eq v11, v0, :cond_4

    .line 71
    const/4 v12, 0x2

    .line 72
    if-eq v11, v12, :cond_3

    .line 74
    const/4 v13, 0x3

    .line 75
    if-eq v11, v13, :cond_2

    .line 77
    if-ne v11, v1, :cond_1

    .line 79
    aget-object v10, v2, v13

    .line 81
    iget v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    .line 83
    add-int/2addr v11, v0

    .line 84
    iput v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    .line 86
    goto :goto_3

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_4

    .line 89
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v1, "Unexpected value: "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, v10, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p0

    .line 114
    :cond_2
    aget-object v10, v2, v12

    .line 116
    iget v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    .line 118
    add-int/2addr v11, v0

    .line 119
    iput v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    aget-object v10, v2, v0

    .line 124
    iget v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    .line 126
    add-int/2addr v11, v0

    .line 127
    iput v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    aget-object v10, v2, v3

    .line 132
    iget v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    .line 134
    add-int/2addr v11, v0

    .line 135
    iput v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    .line 137
    :goto_3
    add-int/2addr v9, v0

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    add-int/2addr v7, v0

    .line 140
    goto :goto_1

    .line 141
    :cond_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    new-instance v0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;

    .line 144
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>(Ljava/lang/String;[Lcom/android/server/am/mars/MARsBigData$LevelInfo;)V

    .line 151
    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 157
    return-void

    .line 158
    :goto_4
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    throw p0
.end method
