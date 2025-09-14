.class public final Lcom/android/server/am/mars/MARsFreezeStateRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public freezedTime:J

.field public initialStateTime:J

.field public isFrozen:Z

.field public isLcdOffFreezed:Z

.field public isLcdOnFreezed:Z

.field public isOLAFFreezed:Z

.field public mAvailableTokens:J

.field public mDetectionVer:I

.field public mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

.field public mFreezeCounts:[I

.field public mTokensUpdateTime:J

.field public mUnfreezeAbuseDetections:Landroid/util/ArraySet;

.field public mUnfreezeCounts:[I

.field public unfreezedReason:Ljava/lang/String;

.field public unfreezedTime:J


# virtual methods
.method public final abnormalRealtimeDetectionVer0(J)Z
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    .line 3
    sub-long v0, p1, v0

    .line 5
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 7
    const-string v3, "MARsFreezeStateRecord"

    .line 9
    if-eqz v2, :cond_0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    const-string v4, "abnormalRealtimeDetection "

    .line 15
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 20
    const-string/jumbo v5, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 23
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v4, " elapsed:"

    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 45
    :cond_0
    const-wide/16 v4, 0x0

    .line 47
    cmp-long v2, v0, v4

    .line 49
    const/4 v6, 0x0

    .line 50
    if-gez v2, :cond_1

    .line 52
    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    .line 54
    return v6

    .line 55
    :cond_1
    const/16 v2, 0xc

    .line 57
    shr-long/2addr v0, v2

    .line 58
    iget-wide v7, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    .line 60
    add-long/2addr v7, v0

    .line 61
    const-wide/16 v9, 0x200

    .line 63
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 66
    move-result-wide v7

    .line 67
    iput-wide v7, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    .line 69
    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    .line 71
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 73
    if-eqz p1, :cond_2

    .line 75
    const-string/jumbo p1, "newTokens:"

    .line 78
    const-string p2, " adjusted available tokens: "

    .line 80
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object p1

    .line 84
    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    .line 86
    invoke-static {p1, v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 89
    :cond_2
    iget-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    .line 91
    cmp-long v0, p1, v4

    .line 93
    if-lez v0, :cond_3

    .line 95
    const-wide/16 v0, 0x1

    .line 97
    sub-long/2addr p1, v0

    .line 98
    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    .line 100
    return v6

    .line 101
    :cond_3
    const/4 p0, 0x1

    .line 102
    return p0
.end method

.method public final cancelRestrictState()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "MARsFreezeStateRecord"

    .line 7
    const-string/jumbo v1, "updateRestrictState"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 15
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 17
    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    .line 19
    iget-object v2, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 21
    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v4, "cancelRestrict uid:"

    .line 31
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v4, " pkgname:"

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    const-string v4, "MARsPolicyManager"

    .line 51
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v3, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 56
    iget-object v4, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 58
    if-nez v4, :cond_1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string/jumbo v4, "pkgName"

    .line 64
    const-string/jumbo v5, "uid"

    .line 67
    invoke-static {v1, v4, v2, v5}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 70
    move-result-object v2

    .line 71
    iget-object v4, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 73
    const/16 v5, 0x13

    .line 75
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 82
    iget-object v2, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 84
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    const-string v3, "[cancel_restrict]"

    .line 91
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    const-string v2, "Abusive"

    .line 103
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 108
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 110
    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 117
    if-eqz v1, :cond_2

    .line 119
    const-string v1, "FreecessController"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v3, "removeRestrictedPackages uid: "

    .line 126
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    iget v3, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 131
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 134
    :cond_2
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 136
    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 139
    iget v3, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 141
    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 143
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 146
    move-result-object v2

    .line 147
    if-eqz v2, :cond_3

    .line 149
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 151
    iget v2, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 153
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v2, p0}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)V

    .line 158
    goto :goto_1

    .line 159
    :catchall_0
    move-exception p0

    .line 160
    goto :goto_2

    .line 161
    :cond_3
    :goto_1
    monitor-exit v1

    .line 162
    return-void

    .line 163
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p0
.end method

.method public final dumpUfzContent()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    aget-object v4, v1, v3

    .line 16
    iget-object v5, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    .line 18
    invoke-virtual {v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 21
    move-result v4

    .line 22
    aget v4, v5, v4

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v4

    .line 28
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    const-string v5, "%-4d|"

    .line 34
    const/4 v6, 0x1

    .line 35
    invoke-static {v5, v4, v0, v3, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 38
    move-result v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final handleAbnormalApp(J)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    const-string v1, "MARsFreezeStateRecord"

    .line 8
    const-string/jumbo v2, "handleAbnormalApp"

    .line 11
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    .line 25
    aget p2, p1, v0

    .line 27
    if-lez p2, :cond_1

    .line 29
    move v1, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, -0x1

    .line 32
    :goto_0
    const/4 v2, 0x2

    .line 33
    :goto_1
    array-length v3, p1

    .line 34
    if-ge v2, v3, :cond_3

    .line 36
    aget v3, p1, v2

    .line 38
    if-ge p2, v3, :cond_2

    .line 40
    move v1, v2

    .line 41
    move p2, v3

    .line 42
    :cond_2
    add-int/2addr v2, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 46
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 48
    iget-object p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    .line 50
    iget-object v0, p2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 52
    iget p2, p2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    const-string v2, "[excessive_unfreez]"

    .line 59
    const-string/jumbo v3, "updateAbusiveAppFromBartender uid:"

    .line 62
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 64
    monitor-enter v4

    .line 65
    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 67
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 70
    move-result v6

    .line 71
    invoke-static {v5, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 74
    move-result-object v5

    .line 75
    if-eqz v5, :cond_6

    .line 77
    const-string v6, "MARsPolicyManager"

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v3, " pkgname:"

    .line 89
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, " type:excessive_unfreez"

    .line 97
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 109
    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 112
    move-result v0

    .line 113
    if-ne v0, v1, :cond_4

    .line 115
    iget v0, v5, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 117
    or-int/lit8 v0, v0, 0x8

    .line 119
    iput v0, v5, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 121
    goto :goto_2

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto/16 :goto_5

    .line 125
    :cond_4
    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 127
    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 130
    move-result v0

    .line 131
    if-ne v0, v1, :cond_5

    .line 133
    iget v0, v5, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 135
    or-int/lit8 v0, v0, 0x10

    .line 137
    iput v0, v5, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 139
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 141
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 143
    iget v3, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 145
    const/4 v6, 0x0

    .line 146
    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/FreecessController;->updateAbnormalAppFirewall(IZ)V

    .line 149
    iget v0, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 151
    invoke-virtual {p1, v0}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 154
    :cond_5
    :goto_2
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 156
    iget-object v3, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 158
    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 160
    const-string/jumbo v6, "excessive_unfreeze"

    .line 163
    invoke-virtual {v0, v5, v3, v6}, Lcom/android/server/am/MARsHandler;->sendAnomalyMsgToMainHandler(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "Abusive"

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    sget-object p1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 186
    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 189
    move-result p1

    .line 190
    if-eq p1, v1, :cond_7

    .line 192
    sget-object p1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 194
    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 197
    move-result p1

    .line 198
    if-ne p1, v1, :cond_a

    .line 200
    :cond_7
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 202
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 204
    iget-object p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 211
    if-eqz v0, :cond_8

    .line 213
    const-string v0, "FreecessController"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    const-string v2, "addRestrictedPackages uid: "

    .line 219
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    iget v2, p2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 224
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 227
    :cond_8
    monitor-enter v4

    .line 228
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 230
    iget v1, p2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 232
    iget-object v0, v0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 234
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v0

    .line 238
    if-nez v0, :cond_9

    .line 240
    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 242
    iget v0, p2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 244
    iget-object v1, p2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 246
    invoke-virtual {p1, v1, v0, p2}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 249
    goto :goto_3

    .line 250
    :catchall_1
    move-exception p0

    .line 251
    goto :goto_4

    .line 252
    :cond_9
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    :cond_a
    const-wide/16 p1, 0x200

    .line 255
    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    .line 257
    return-void

    .line 258
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 259
    throw p0

    .line 260
    :goto_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    throw p0
.end method

.method public final updateUnfreezeState(JLjava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "ver:0 catch abnormal unfreeze detection at "

    .line 4
    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedTime:J

    .line 6
    iput-object p3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 10
    invoke-virtual {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    .line 16
    aget v3, v2, v1

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 20
    aput v3, v2, v1

    .line 22
    :try_start_0
    invoke-static {p3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->reasonTypeOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 29
    move-result p3

    .line 30
    aget v1, v2, p3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    aput v1, v2, p3

    .line 36
    sget-boolean p3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 38
    sget-object p3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 40
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_0

    .line 49
    sget-boolean p3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 51
    sget-object p3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 53
    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    .line 55
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    .line 61
    move-result p3

    .line 62
    if-nez p3, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->abnormalRealtimeDetectionVer0(J)Z

    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_0

    .line 70
    const-string p3, "MARsFreezeStateRecord"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 79
    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 82
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->handleAbnormalApp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :cond_0
    :goto_0
    return-void
.end method
