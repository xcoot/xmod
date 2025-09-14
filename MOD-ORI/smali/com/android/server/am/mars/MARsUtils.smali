.class public abstract Lcom/android/server/am/mars/MARsUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 4
    .line 5
    return-void
.end method

.method public static addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "["

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    invoke-static {v4, v5}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, "] "

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, "]\n"

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object p0, v0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/HistoryBuffer;->put(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    return-void
.end method

.method public static cancelAllPolicy()V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 3
    .line 4
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 15
    .line 16
    monitor-enter v3

    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    :try_start_0
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 20
    .line 21
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/4 v7, 0x0

    .line 28
    if-ge v5, v6, :cond_6

    .line 29
    .line 30
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 31
    .line 32
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Landroid/util/SparseArray;

    .line 39
    .line 40
    move v8, v4

    .line 41
    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-ge v8, v9, :cond_5

    .line 46
    .line 47
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    check-cast v9, Lcom/android/server/am/MARsPackageInfo;

    .line 52
    .line 53
    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 54
    .line 55
    sget-object v10, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 56
    .line 57
    iget-boolean v11, v10, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 58
    .line 59
    if-eqz v11, :cond_0

    .line 60
    .line 61
    iget-object v11, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 62
    .line 63
    iget v12, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 64
    .line 65
    invoke-virtual {v10, v12, v11}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    if-eqz v11, :cond_0

    .line 70
    .line 71
    iget-object v11, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 72
    .line 73
    iget v9, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 74
    .line 75
    const-string v12, "CancelPolicy"

    .line 76
    .line 77
    invoke-virtual {v10, v9, v11, v12}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_0
    iget-object v10, v9, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 85
    .line 86
    if-eqz v10, :cond_4

    .line 87
    .line 88
    iget-boolean v10, v9, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 89
    .line 90
    if-nez v10, :cond_2

    .line 91
    .line 92
    iget v10, v9, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 93
    .line 94
    invoke-static {v10}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    iput-object v7, v9, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 102
    .line 103
    iput v4, v9, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_2
    :goto_2
    iget v10, v9, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 107
    .line 108
    invoke-static {v10}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-eqz v10, :cond_3

    .line 113
    .line 114
    iput v4, v9, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 115
    .line 116
    sget-object v10, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 117
    .line 118
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-nez v10, :cond_3

    .line 126
    .line 127
    iput v0, v9, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 128
    .line 129
    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_3
    add-int/2addr v8, v0

    .line 133
    goto :goto_1

    .line 134
    :cond_5
    add-int/2addr v5, v0

    .line 135
    goto :goto_0

    .line 136
    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    move v3, v4

    .line 138
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-ge v3, v5, :cond_8

    .line 143
    .line 144
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 145
    .line 146
    monitor-enter v5

    .line 147
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 152
    .line 153
    if-eqz v6, :cond_7

    .line 154
    .line 155
    iget-object v8, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 156
    .line 157
    iget v6, v6, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_7
    const/4 v6, -0x1

    .line 161
    move-object v8, v7

    .line 162
    :goto_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    invoke-virtual {v1, v8, v6, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 164
    .line 165
    .line 166
    add-int/2addr v3, v0

    .line 167
    goto :goto_4

    .line 168
    :catchall_1
    move-exception v0

    .line 169
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    throw v0

    .line 171
    :cond_8
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 172
    .line 173
    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 175
    .line 176
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 177
    .line 178
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-lez v2, :cond_9

    .line 183
    .line 184
    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 185
    .line 186
    iget-object v1, v1, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 189
    .line 190
    .line 191
    goto :goto_6

    .line 192
    :catchall_2
    move-exception v1

    .line 193
    goto :goto_7

    .line 194
    :cond_9
    :goto_6
    monitor-exit v0

    .line 195
    return-void

    .line 196
    :goto_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 197
    throw v1

    .line 198
    :goto_8
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    throw v0
.end method

.method public static getScreenOnState()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static isChinaPolicyEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static setAllPoliciesOnOffState(IZ)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "setAllPoliciesOnOffState on = "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "MARsPolicyManager"

    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v2, "spcm_switch : "

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "DEV"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 53
    .line 54
    if-eq v1, p0, :cond_8

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v2, 0x1

    .line 58
    if-eqz p0, :cond_6

    .line 59
    .line 60
    if-eq p0, v2, :cond_3

    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    if-eq p0, v3, :cond_2

    .line 64
    .line 65
    const p1, 0x98967f

    .line 66
    .line 67
    .line 68
    if-eq p0, p1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 101
    .line 102
    if-nez v3, :cond_4

    .line 103
    .line 104
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 105
    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 109
    .line 110
    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_5

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_7

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_0
    iput p0, v0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 139
    .line 140
    :cond_8
    return-void
.end method

.method public static setFreezeExcludeList(Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    .line 9
    .line 10
    check-cast v2, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    .line 32
    .line 33
    check-cast v3, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v3, Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_4

    .line 55
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    sget-object p0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 57
    .line 58
    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    move v3, v2

    .line 65
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-ge v3, v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 80
    .line 81
    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 82
    .line 83
    iget v7, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 84
    .line 85
    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    iput-boolean v2, v4, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    monitor-exit p0

    .line 103
    return-void

    .line 104
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    throw v0

    .line 106
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw p0
.end method

.method public static setPackagesUnusedLockingTime(I)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 3
    .line 4
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "MARsPolicyManager"

    .line 14
    .line 15
    const-string/jumbo v3, "setPackagesUnusedLockingTime hours = "

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v3, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    if-ne p0, v0, :cond_b

    .line 23
    .line 24
    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    const-class p0, Lcom/android/server/usage/AppStandbyInternal;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/usage/AppStandbyInternal;

    .line 35
    .line 36
    iput-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 37
    .line 38
    :cond_1
    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 39
    .line 40
    if-eqz p0, :cond_5

    .line 41
    .line 42
    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 43
    .line 44
    monitor-enter p0

    .line 45
    move v3, v2

    .line 46
    :goto_0
    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-ge v3, v4, :cond_4

    .line 55
    .line 56
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/util/SparseArray;

    .line 65
    .line 66
    move v5, v2

    .line 67
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ge v5, v6, :cond_3

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 78
    .line 79
    if-eqz v6, :cond_2

    .line 80
    .line 81
    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 82
    .line 83
    iget-object v8, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 84
    .line 85
    iget v6, v6, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 86
    .line 87
    const/4 v9, 0x4

    .line 88
    invoke-interface {v7, v8, v6, v9}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    :goto_2
    add-int/2addr v5, v0

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    add-int/2addr v3, v0

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    monitor-exit p0

    .line 99
    goto :goto_4

    .line 100
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw v0

    .line 102
    :cond_5
    :goto_4
    iget-boolean p0, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 103
    .line 104
    if-eqz p0, :cond_a

    .line 105
    .line 106
    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 113
    .line 114
    if-nez p0, :cond_6

    .line 115
    .line 116
    const-class p0, Lcom/android/server/usage/AppStandbyInternal;

    .line 117
    .line 118
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lcom/android/server/usage/AppStandbyInternal;

    .line 123
    .line 124
    iput-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 125
    .line 126
    :cond_6
    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 127
    .line 128
    if-eqz p0, :cond_a

    .line 129
    .line 130
    new-instance v4, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 136
    .line 137
    monitor-enter p0

    .line 138
    move v3, v2

    .line 139
    :goto_5
    :try_start_1
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 140
    .line 141
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    const/16 v7, 0x2d

    .line 148
    .line 149
    if-ge v3, v6, :cond_9

    .line 150
    .line 151
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 152
    .line 153
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 154
    .line 155
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Landroid/util/SparseArray;

    .line 160
    .line 161
    move v8, v2

    .line 162
    :goto_6
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-ge v8, v9, :cond_8

    .line 167
    .line 168
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Lcom/android/server/am/MARsPackageInfo;

    .line 173
    .line 174
    if-eqz v9, :cond_7

    .line 175
    .line 176
    new-instance v10, Landroid/app/usage/AppStandbyInfo;

    .line 177
    .line 178
    iget-object v9, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 179
    .line 180
    invoke-direct {v10, v9, v7}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_7

    .line 187
    :catchall_1
    move-exception v0

    .line 188
    goto :goto_8

    .line 189
    :cond_7
    :goto_7
    add-int/2addr v8, v0

    .line 190
    goto :goto_6

    .line 191
    :cond_8
    add-int/2addr v3, v0

    .line 192
    goto :goto_5

    .line 193
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 195
    .line 196
    .line 197
    move-result-wide v10

    .line 198
    :try_start_2
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 199
    .line 200
    const/4 v9, 0x1

    .line 201
    const/16 p0, 0x700

    .line 202
    .line 203
    const/4 v8, 0x0

    .line 204
    move v6, v7

    .line 205
    move v7, p0

    .line 206
    invoke-interface/range {v3 .. v9}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucketsForMARs(Ljava/util/List;IIIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 207
    .line 208
    .line 209
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    .line 211
    .line 212
    goto :goto_9

    .line 213
    :catchall_2
    move-exception p0

    .line 214
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    throw v0

    .line 220
    :cond_a
    :goto_9
    const-string p0, "DEV"

    .line 221
    .line 222
    const-string v2, "Auto restriction\'s battery condition changed !"

    .line 223
    .line 224
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-wide v2, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 228
    .line 229
    iput-wide v2, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    .line 230
    .line 231
    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    .line 232
    .line 233
    iput-wide v2, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 234
    .line 235
    iput-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 236
    .line 237
    const-wide/32 v2, 0x6ddd00

    .line 238
    .line 239
    .line 240
    iput-wide v2, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 241
    .line 242
    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 243
    .line 244
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 245
    .line 246
    .line 247
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 248
    .line 249
    if-eqz p0, :cond_c

    .line 250
    .line 251
    const-string p0, "MARsPolicyManager"

    .line 252
    .line 253
    const-string v0, "DEBUGGING mode turned on, skip to check battery usage !"

    .line 254
    .line 255
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto :goto_a

    .line 259
    :cond_b
    iget-wide v3, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    .line 260
    .line 261
    iput-wide v3, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 262
    .line 263
    iput-boolean v2, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 264
    .line 265
    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 266
    .line 267
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 268
    .line 269
    .line 270
    :cond_c
    :goto_a
    return-void
.end method

.method public static updateMARsTargetPackages(Ljava/util/ArrayList;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 4
    .line 5
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v4, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v5, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 21
    .line 22
    monitor-enter v6

    .line 23
    :try_start_0
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 30
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v0, "package"

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    new-instance v8, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v9, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    monitor-enter v3

    .line 63
    :try_start_1
    iget-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    monitor-exit v3

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    sget-object v0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    move-object v1, v0

    .line 76
    monitor-exit v3

    .line 77
    throw v1

    .line 78
    :cond_0
    :goto_0
    const/4 v11, 0x0

    .line 79
    const/4 v12, 0x0

    .line 80
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ge v11, v0, :cond_d

    .line 85
    .line 86
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    move-object v13, v0

    .line 91
    check-cast v13, Lcom/android/server/am/mars/database/FASEntity;

    .line 92
    .line 93
    new-instance v14, Lcom/android/server/am/MARsPackageInfo;

    .line 94
    .line 95
    invoke-direct {v14, v13}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v13}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    :try_start_2
    invoke-virtual {v13}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    move/from16 v16, v7

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v10, "MARsPolicyManager"

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    move/from16 v16, v7

    .line 123
    .line 124
    const-string v7, "NumberFormatException !"

    .line 125
    .line 126
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x0

    .line 140
    :goto_2
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 141
    .line 142
    monitor-enter v2

    .line 143
    :try_start_3
    iget-object v7, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 144
    .line 145
    iget-object v10, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 146
    .line 147
    move-object/from16 v17, v5

    .line 148
    .line 149
    iget v5, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 150
    .line 151
    invoke-static {v7, v10, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    if-eqz v5, :cond_6

    .line 156
    .line 157
    iget-boolean v7, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 158
    .line 159
    if-ne v7, v0, :cond_2

    .line 160
    .line 161
    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 162
    .line 163
    if-eq v7, v15, :cond_1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_1
    iget-boolean v0, v5, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 167
    .line 168
    if-eqz v0, :cond_b

    .line 169
    .line 170
    iget v0, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 171
    .line 172
    if-nez v0, :cond_b

    .line 173
    .line 174
    const/4 v7, 0x1

    .line 175
    iput v7, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 176
    .line 177
    goto/16 :goto_6

    .line 178
    .line 179
    :cond_2
    :goto_3
    iput v15, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 180
    .line 181
    invoke-virtual {v13}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    iput-object v7, v5, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 186
    .line 187
    const/4 v7, 0x1

    .line 188
    if-ne v0, v7, :cond_3

    .line 189
    .line 190
    const/16 v0, 0x20

    .line 191
    .line 192
    invoke-virtual {v3, v0, v5}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 193
    .line 194
    .line 195
    goto/16 :goto_6

    .line 196
    .line 197
    :catchall_1
    move-exception v0

    .line 198
    goto/16 :goto_8

    .line 199
    .line 200
    :cond_3
    const/16 v0, 0x100

    .line 201
    .line 202
    invoke-virtual {v3, v0, v5}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 203
    .line 204
    .line 205
    iget-boolean v0, v5, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 206
    .line 207
    if-nez v0, :cond_4

    .line 208
    .line 209
    iget v0, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 210
    .line 211
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_b

    .line 216
    .line 217
    :cond_4
    iget v0, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 218
    .line 219
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_5

    .line 224
    .line 225
    const/4 v7, 0x0

    .line 226
    iput v7, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 227
    .line 228
    :cond_5
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto/16 :goto_6

    .line 232
    .line 233
    :cond_6
    new-instance v0, Landroid/util/Pair;

    .line 234
    .line 235
    iget-object v5, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 236
    .line 237
    iget v7, v14, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 238
    .line 239
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-direct {v0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    iget-object v0, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 250
    .line 251
    iget v5, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 252
    .line 253
    invoke-virtual {v3, v5, v0}, Lcom/android/server/am/MARsPolicyManager;->getSharedUidName(ILjava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iput-object v0, v14, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    .line 258
    .line 259
    iget v0, v14, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 260
    .line 261
    const/4 v5, 0x1

    .line 262
    and-int/2addr v0, v5

    .line 263
    if-eqz v0, :cond_7

    .line 264
    .line 265
    iput-boolean v5, v14, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    .line 267
    :cond_7
    const/4 v0, 0x4

    .line 268
    if-eqz v6, :cond_9

    .line 269
    .line 270
    :try_start_4
    iget-object v5, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 271
    .line 272
    iget v7, v14, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 273
    .line 274
    invoke-interface {v6, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_9

    .line 279
    .line 280
    iput v0, v14, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 281
    .line 282
    iput v0, v14, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 283
    .line 284
    const/4 v5, 0x1

    .line 285
    iput-boolean v5, v14, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 286
    .line 287
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 288
    .line 289
    iput-object v0, v14, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 290
    .line 291
    iget v0, v14, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 292
    .line 293
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_8

    .line 298
    .line 299
    iget v0, v14, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 300
    .line 301
    const/16 v5, 0x10

    .line 302
    .line 303
    if-eq v0, v5, :cond_8

    .line 304
    .line 305
    const/4 v7, 0x1

    .line 306
    iput v7, v14, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 307
    .line 308
    iput v5, v14, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 309
    .line 310
    :cond_8
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 311
    .line 312
    iget-object v5, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 313
    .line 314
    iget v7, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 315
    .line 316
    invoke-virtual {v0, v5, v7, v14}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :catch_1
    move-exception v0

    .line 321
    goto :goto_4

    .line 322
    :cond_9
    iget v5, v14, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 323
    .line 324
    if-ne v5, v0, :cond_a

    .line 325
    .line 326
    iget v0, v14, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 327
    .line 328
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_a

    .line 333
    .line 334
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 335
    .line 336
    iput-object v0, v14, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 337
    .line 338
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 339
    .line 340
    iget-object v5, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 341
    .line 342
    iget v7, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 343
    .line 344
    invoke-virtual {v0, v5, v7, v14}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 345
    .line 346
    .line 347
    goto :goto_5

    .line 348
    :goto_4
    :try_start_5
    const-string v5, "MARsPolicyManager"

    .line 349
    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string/jumbo v10, "getPkgInfoFromSMToMARs exception:"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_a
    :goto_5
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->initOptionFlag()V

    .line 372
    .line 373
    .line 374
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 375
    .line 376
    iget-object v5, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 377
    .line 378
    iget v7, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 379
    .line 380
    invoke-virtual {v0, v5, v7, v14}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 381
    .line 382
    .line 383
    :cond_b
    :goto_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 384
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_c

    .line 389
    .line 390
    monitor-enter v3

    .line 391
    :try_start_6
    iget-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 392
    .line 393
    monitor-exit v3

    .line 394
    if-eqz v0, :cond_c

    .line 395
    .line 396
    iget-boolean v0, v14, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 397
    .line 398
    if-eqz v0, :cond_c

    .line 399
    .line 400
    const/4 v2, 0x1

    .line 401
    const/4 v12, 0x1

    .line 402
    goto :goto_7

    .line 403
    :catchall_2
    move-exception v0

    .line 404
    move-object v1, v0

    .line 405
    monitor-exit v3

    .line 406
    throw v1

    .line 407
    :cond_c
    const/4 v2, 0x1

    .line 408
    :goto_7
    add-int/2addr v11, v2

    .line 409
    move/from16 v7, v16

    .line 410
    .line 411
    move-object/from16 v5, v17

    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :goto_8
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 416
    throw v0

    .line 417
    :cond_d
    move-object/from16 v17, v5

    .line 418
    .line 419
    move/from16 v16, v7

    .line 420
    .line 421
    const/4 v7, 0x0

    .line 422
    :goto_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-ge v7, v0, :cond_f

    .line 427
    .line 428
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 429
    .line 430
    monitor-enter v2

    .line 431
    :try_start_8
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    check-cast v0, Lcom/android/server/am/MARsPackageInfo;

    .line 436
    .line 437
    if-eqz v0, :cond_e

    .line 438
    .line 439
    iget-object v5, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 440
    .line 441
    iget v0, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 442
    .line 443
    goto :goto_a

    .line 444
    :cond_e
    const/4 v5, 0x0

    .line 445
    const/4 v0, -0x1

    .line 446
    :goto_a
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 447
    const/4 v6, 0x0

    .line 448
    invoke-virtual {v3, v5, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 449
    .line 450
    .line 451
    const/4 v2, 0x1

    .line 452
    add-int/2addr v7, v2

    .line 453
    goto :goto_9

    .line 454
    :catchall_3
    move-exception v0

    .line 455
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 456
    throw v0

    .line 457
    :cond_f
    const/4 v6, 0x0

    .line 458
    move v7, v6

    .line 459
    :goto_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-ge v7, v0, :cond_11

    .line 464
    .line 465
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    check-cast v0, Landroid/util/Pair;

    .line 470
    .line 471
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v0, Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    check-cast v2, Landroid/util/Pair;

    .line 480
    .line 481
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v2, Ljava/lang/Integer;

    .line 484
    .line 485
    iget-object v5, v3, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    .line 486
    .line 487
    monitor-enter v5

    .line 488
    :try_start_a
    iget-object v8, v3, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    .line 489
    .line 490
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v8

    .line 494
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 495
    if-eqz v8, :cond_10

    .line 496
    .line 497
    iget-object v5, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    .line 498
    .line 499
    new-instance v10, Landroid/util/Pair;

    .line 500
    .line 501
    invoke-direct {v10, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    :cond_10
    const-string v2, "MARsPolicyManager"

    .line 508
    .line 509
    new-instance v5, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    const-string/jumbo v10, "new Package : "

    .line 512
    .line 513
    .line 514
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v0, ", SCPMTarget : "

    .line 521
    .line 522
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    const/4 v2, 0x1

    .line 536
    add-int/2addr v7, v2

    .line 537
    goto :goto_b

    .line 538
    :catchall_4
    move-exception v0

    .line 539
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 540
    throw v0

    .line 541
    :cond_11
    if-eqz v12, :cond_12

    .line 542
    .line 543
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 544
    .line 545
    iget-object v2, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 546
    .line 547
    const/16 v5, 0x9

    .line 548
    .line 549
    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 554
    .line 555
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    .line 557
    .line 558
    :cond_12
    invoke-virtual {v3, v1}, Lcom/android/server/am/MARsPolicyManager;->deletePkgInfoInMARs(Ljava/util/ArrayList;)V

    .line 559
    .line 560
    .line 561
    iget-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager;->mInitDisabledPackage:Z

    .line 562
    .line 563
    if-nez v0, :cond_13

    .line 564
    .line 565
    const/4 v1, 0x1

    .line 566
    iput-boolean v1, v3, Lcom/android/server/am/MARsPolicyManager;->mInitDisabledPackage:Z

    .line 567
    .line 568
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 569
    .line 570
    iget-object v1, v3, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 571
    .line 572
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    .line 577
    .line 578
    .line 579
    :cond_13
    move v10, v6

    .line 580
    :goto_c
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    if-ge v10, v0, :cond_14

    .line 587
    .line 588
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    .line 589
    .line 590
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    check-cast v0, Landroid/util/Pair;

    .line 595
    .line 596
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast v0, Ljava/lang/String;

    .line 599
    .line 600
    iget-object v1, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    .line 601
    .line 602
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    check-cast v1, Landroid/util/Pair;

    .line 607
    .line 608
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v1, Ljava/lang/Integer;

    .line 611
    .line 612
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-object/from16 v2, v17

    .line 616
    .line 617
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    const-string v5, "added_from_mars_auto_specific"

    .line 625
    .line 626
    invoke-virtual {v3, v1, v0, v5}, Lcom/android/server/am/MARsPolicyManager;->disablePackageForSpecific(ILjava/lang/String;Ljava/lang/String;)Z

    .line 627
    .line 628
    .line 629
    const/4 v1, 0x1

    .line 630
    add-int/2addr v10, v1

    .line 631
    goto :goto_c

    .line 632
    :cond_14
    move-object/from16 v2, v17

    .line 633
    .line 634
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-nez v0, :cond_15

    .line 639
    .line 640
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 641
    .line 642
    const-string/jumbo v1, "deepsleepspecific"

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 646
    .line 647
    .line 648
    :cond_15
    const-string v0, "MARsPolicyManager"

    .line 649
    .line 650
    const-string/jumbo v1, "updateMARsTargetPackages mMARsTargetPackages.size-"

    .line 651
    .line 652
    .line 653
    move/from16 v2, v16

    .line 654
    .line 655
    invoke-static {v2, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    return-void

    .line 659
    :catchall_5
    move-exception v0

    .line 660
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 661
    throw v0
.end method
