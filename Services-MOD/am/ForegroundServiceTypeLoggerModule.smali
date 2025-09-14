.class public final Lcom/android/server/am/ForegroundServiceTypeLoggerModule;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUids:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 11
    return-void
.end method

.method public static convertFgsTypeToApiTypes(I)Landroid/util/IntArray;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/IntArray;

    .line 3
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 6
    and-int/lit8 v1, p0, 0x40

    .line 8
    const/16 v2, 0x40

    .line 10
    if-ne v1, v2, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 16
    :cond_0
    and-int/lit8 v1, p0, 0x10

    .line 18
    const/4 v2, 0x2

    .line 19
    const/16 v3, 0x8

    .line 21
    const/16 v4, 0x10

    .line 23
    if-ne v1, v4, :cond_1

    .line 25
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    .line 28
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 31
    const/16 v1, 0x9

    .line 33
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 36
    :cond_1
    and-int/lit8 v1, p0, 0x8

    .line 38
    if-ne v1, v3, :cond_2

    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 44
    :cond_2
    and-int/lit8 v1, p0, 0x2

    .line 46
    const/4 v3, 0x4

    .line 47
    if-ne v1, v2, :cond_3

    .line 49
    const/4 v1, 0x5

    .line 50
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 56
    :cond_3
    and-int/lit16 v1, p0, 0x80

    .line 58
    const/16 v2, 0x80

    .line 60
    if-ne v1, v2, :cond_4

    .line 62
    const/4 v1, 0x6

    .line 63
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 66
    :cond_4
    and-int/2addr p0, v3

    .line 67
    if-ne p0, v3, :cond_5

    .line 69
    const/4 p0, 0x7

    .line 70
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    .line 73
    :cond_5
    return-object v0
.end method


# virtual methods
.method public logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V
    .locals 49

    .line 1
    move-object/from16 v0, p1

    .line 3
    move/from16 v1, p4

    .line 5
    const/4 v2, 0x0

    .line 6
    move-object/from16 v3, p0

    .line 8
    iget-object v3, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 10
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 14
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 20
    if-nez v3, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 28
    move-result v4

    .line 29
    const-wide/16 v5, 0x0

    .line 31
    if-eqz v4, :cond_1

    .line 33
    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Long;

    .line 41
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 44
    move-result-wide v7

    .line 45
    sub-long v7, v7, p5

    .line 47
    move-wide/from16 v37, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-wide/from16 v37, v5

    .line 52
    :goto_0
    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 60
    iget-object v3, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/Long;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 71
    move-result-wide v3

    .line 72
    sub-long v5, p5, v3

    .line 74
    :cond_2
    move-wide/from16 v39, v5

    .line 76
    filled-new-array/range {p4 .. p4}, [I

    .line 79
    move-result-object v31

    .line 80
    const/4 v1, 0x1

    .line 81
    new-array v1, v1, [J

    .line 83
    aput-wide p5, v1, v2

    .line 85
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 87
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 89
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    .line 94
    move-result v13

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    .line 98
    move-result v14

    .line 99
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 101
    iget v15, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 103
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 105
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    .line 107
    const/4 v5, -0x1

    .line 108
    if-eqz v4, :cond_3

    .line 110
    iget v4, v4, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    .line 112
    move/from16 v18, v4

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    move/from16 v18, v5

    .line 117
    :goto_1
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 119
    iget-boolean v6, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    .line 121
    iget v7, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 123
    iget-boolean v8, v0, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    .line 125
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 127
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    .line 129
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    .line 131
    if-eqz v2, :cond_4

    .line 133
    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    .line 135
    iget v5, v5, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    .line 137
    :cond_4
    move/from16 v28, v5

    .line 139
    if-eqz v2, :cond_5

    .line 141
    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    .line 143
    iget v2, v2, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    .line 145
    move/from16 v29, v2

    .line 147
    goto :goto_2

    .line 148
    :cond_5
    const/16 v29, 0x0

    .line 150
    :goto_2
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 152
    move/from16 v41, v2

    .line 154
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 156
    move/from16 v42, v2

    .line 158
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 160
    move/from16 v43, v2

    .line 162
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 164
    move/from16 v44, v2

    .line 166
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 168
    move/from16 v45, v2

    .line 170
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 172
    move/from16 v46, v0

    .line 174
    const/16 v47, 0x0

    .line 176
    const/16 v48, 0x0

    .line 178
    const/16 v0, 0x3c

    .line 180
    move v2, v9

    .line 181
    move v9, v0

    .line 182
    const/16 v17, 0x0

    .line 184
    const/16 v21, 0x0

    .line 186
    const/16 v23, 0x0

    .line 188
    const/16 v26, 0x0

    .line 190
    const/16 v33, -0x1

    .line 192
    const/16 v34, 0x0

    .line 194
    const/16 v35, -0x1

    .line 196
    const/16 v36, 0x0

    .line 198
    move v0, v12

    .line 199
    move/from16 v12, p2

    .line 201
    move/from16 v16, v3

    .line 203
    move/from16 v19, v4

    .line 205
    move/from16 v20, v6

    .line 207
    move/from16 v22, v7

    .line 209
    move/from16 v24, v8

    .line 211
    move/from16 v25, v0

    .line 213
    move/from16 v27, v2

    .line 215
    move/from16 v30, p3

    .line 217
    move-object/from16 v32, v1

    .line 219
    invoke-static/range {v9 .. v48}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    .line 222
    return-void
.end method

.method public logFgsApiEventWithNoFgs(IIIJ)V
    .locals 42

    .line 1
    move/from16 v0, p3

    .line 3
    move-object/from16 v1, p0

    .line 5
    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 7
    move/from16 v9, p1

    .line 9
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 15
    if-nez v1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 26
    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Long;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 37
    move-result-wide v1

    .line 38
    sub-long v1, p4, v1

    .line 40
    :goto_0
    move-wide/from16 v32, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-wide/16 v1, 0x0

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    filled-new-array/range {p3 .. p3}, [I

    .line 49
    move-result-object v24

    .line 50
    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [J

    .line 53
    move-object/from16 v25, v0

    .line 55
    const/4 v1, 0x0

    .line 56
    aput-wide p4, v0, v1

    .line 58
    const/16 v40, 0x0

    .line 60
    const/16 v41, 0x0

    .line 62
    const/16 v2, 0x3c

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x4

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v12, 0x0

    .line 72
    const/4 v13, 0x0

    .line 73
    const/4 v14, 0x0

    .line 74
    const/4 v15, 0x0

    .line 75
    const/16 v16, 0x0

    .line 77
    const/16 v17, 0x0

    .line 79
    const/16 v18, 0x0

    .line 81
    const/16 v19, 0x0

    .line 83
    const/16 v20, 0x0

    .line 85
    const/16 v21, 0x0

    .line 87
    const/16 v22, 0x0

    .line 89
    const/16 v26, -0x1

    .line 91
    const/16 v27, 0x0

    .line 93
    const/16 v28, -0x1

    .line 95
    const/16 v29, 0x0

    .line 97
    const-wide/16 v30, 0x0

    .line 99
    const/16 v34, 0x0

    .line 101
    const/16 v35, 0x0

    .line 103
    const/16 v36, 0x0

    .line 105
    const/16 v37, 0x0

    .line 107
    const/16 v38, 0x0

    .line 109
    const/16 v39, 0x0

    .line 111
    move/from16 v3, p1

    .line 113
    move/from16 v9, p1

    .line 115
    move/from16 v23, p2

    .line 117
    invoke-static/range {v2 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    .line 120
    return-void
.end method

.method public final logForegroundServiceApiEventBegin(III)V
    .locals 9

    .line 1
    new-instance p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v7

    .line 7
    invoke-direct {p3, v7, v8}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(J)V

    .line 10
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 18
    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 22
    invoke-direct {v0}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz p2, :cond_1

    .line 41
    iget-object p2, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 46
    move-result p2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move p2, v1

    .line 49
    :goto_0
    const/4 v2, 0x1

    .line 50
    if-nez p2, :cond_5

    .line 52
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 54
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 57
    move-result p0

    .line 58
    if-gez p0, :cond_2

    .line 60
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 62
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 67
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 70
    move-result p0

    .line 71
    :cond_2
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_3

    .line 79
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 81
    invoke-virtual {p2, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_4

    .line 87
    :cond_3
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_4
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 94
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 97
    move-result p2

    .line 98
    add-int/2addr p2, v2

    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    return-void

    .line 103
    :cond_5
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 105
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 108
    move-result p2

    .line 109
    if-gez p2, :cond_6

    .line 111
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 113
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 118
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 121
    move-result p2

    .line 122
    :cond_6
    iget-object p3, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 124
    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 127
    move-result v1

    .line 128
    add-int/2addr v1, v2

    .line 129
    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    iget-object p3, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 134
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object p3

    .line 138
    check-cast p3, Landroid/util/ArrayMap;

    .line 140
    iget-object v0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 142
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 145
    move-result p2

    .line 146
    if-ne p2, v2, :cond_7

    .line 148
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 151
    move-result-object p2

    .line 152
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object p2

    .line 156
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_7

    .line 162
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object p3

    .line 166
    move-object v1, p3

    .line 167
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 169
    const/4 v2, 0x4

    .line 170
    const/4 v3, 0x1

    .line 171
    move-object v0, p0

    .line 172
    move v4, p1

    .line 173
    move-wide v5, v7

    .line 174
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    .line 177
    goto :goto_1

    .line 178
    :cond_7
    return-void
.end method

.method public final logForegroundServiceApiEventEnd(III)V
    .locals 9

    .line 1
    iget-object p3, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 9
    if-nez p3, :cond_0

    .line 11
    const-string p0, "ForegroundServiceTypeLoggerModule"

    .line 13
    const-string p1, "API event end called before start!"

    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 21
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-ltz v0, :cond_3

    .line 28
    iget-object v2, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 30
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 38
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 41
    move-result v3

    .line 42
    add-int/lit8 v3, v3, -0x1

    .line 44
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 55
    if-eqz v2, :cond_2

    .line 57
    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 62
    move-result v2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v2, v1

    .line 65
    :goto_0
    if-nez v2, :cond_3

    .line 67
    iget-object v2, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 69
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_3

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    move-result-wide v7

    .line 79
    const/4 v5, 0x3

    .line 80
    move-object v3, p0

    .line 81
    move v4, p2

    .line 82
    move v6, p1

    .line 83
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEventWithNoFgs(IIIJ)V

    .line 86
    iget-object p0, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 88
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 91
    return-void

    .line 92
    :cond_3
    iget-object p0, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 94
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 97
    move-result p0

    .line 98
    if-gez p0, :cond_4

    .line 100
    iget-object p0, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 102
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    :cond_4
    iget-object p0, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 107
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_6

    .line 113
    add-int/lit8 p0, p0, -0x1

    .line 115
    if-nez p0, :cond_5

    .line 117
    iget-object p2, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    .line 119
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 122
    :cond_5
    iget-object p2, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 124
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    return-void

    .line 131
    :cond_6
    new-instance p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    move-result-wide v0

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(J)V

    .line 140
    iget-object p2, p3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    .line 142
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    return-void
.end method

.method public final logForegroundServiceApiStateChanged(III)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 9
    iget-object v0, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p2, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/util/ArrayMap;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    move-result-wide v7

    .line 30
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p2

    .line 38
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 44
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    move-object v1, v0

    .line 49
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 51
    const/4 v2, 0x4

    .line 52
    move-object v0, p0

    .line 53
    move v3, p3

    .line 54
    move v4, p1

    .line 55
    move-wide v5, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public final logForegroundServiceStart(ILcom/android/server/am/ServiceRecord;)V
    .locals 12

    .line 1
    iget-object v0, p2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 12
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ":"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    iget v1, p2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 33
    const-wide/16 v2, 0x40

    .line 35
    const-string/jumbo v4, "foregroundService"

    .line 38
    invoke-static {v2, v3, v0, v4, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 49
    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 53
    invoke-direct {v0}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    :cond_1
    iget v1, p2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 63
    invoke-static {v1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_2

    .line 73
    const-string v2, "Foreground service start for UID: "

    .line 75
    const-string v3, " does not have any types"

    .line 77
    const-string v4, "ForegroundServiceTypeLoggerModule"

    .line 79
    invoke-static {p1, v2, v3, v4}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_2
    new-instance p1, Landroid/util/IntArray;

    .line 84
    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    .line 87
    new-instance v2, Landroid/util/LongArray;

    .line 89
    invoke-direct {v2}, Landroid/util/LongArray;-><init>()V

    .line 92
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 95
    move-result v3

    .line 96
    const/4 v4, 0x0

    .line 97
    move v5, v4

    .line 98
    :goto_0
    if-ge v5, v3, :cond_5

    .line 100
    invoke-virtual {v1, v5}, Landroid/util/IntArray;->get(I)I

    .line 103
    move-result v6

    .line 104
    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 106
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 109
    move-result v7

    .line 110
    if-gez v7, :cond_3

    .line 112
    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 114
    new-instance v8, Landroid/util/ArrayMap;

    .line 116
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 119
    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 124
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 127
    move-result v7

    .line 128
    iget-object v8, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    move-result-wide v9

    .line 134
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    move-result-object v9

    .line 138
    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    :cond_3
    iget-object v8, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 143
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Landroid/util/ArrayMap;

    .line 149
    iget-object v8, p2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 151
    invoke-virtual {v7, v8, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    .line 156
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->contains(I)Z

    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_4

    .line 162
    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 164
    iget-object v8, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 166
    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 169
    move-result v8

    .line 170
    invoke-virtual {v7, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 175
    invoke-virtual {v7, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    invoke-virtual {p1, v6}, Landroid/util/IntArray;->add(I)V

    .line 181
    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 186
    move-result-object v7

    .line 187
    check-cast v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 189
    iget-wide v7, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    .line 191
    invoke-virtual {v2, v7, v8}, Landroid/util/LongArray;->add(J)V

    .line 194
    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    .line 196
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 199
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 201
    goto :goto_0

    .line 202
    :cond_5
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_6

    .line 208
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 211
    move-result v0

    .line 212
    :goto_1
    if-ge v4, v0, :cond_6

    .line 214
    invoke-virtual {p1, v4}, Landroid/util/IntArray;->get(I)I

    .line 217
    move-result v9

    .line 218
    invoke-virtual {v2, v4}, Landroid/util/LongArray;->get(I)J

    .line 221
    move-result-wide v10

    .line 222
    const/4 v7, 0x4

    .line 223
    const/4 v8, 0x1

    .line 224
    move-object v5, p0

    .line 225
    move-object v6, p2

    .line 226
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    .line 229
    add-int/lit8 v4, v4, 0x1

    .line 231
    goto :goto_1

    .line 232
    :cond_6
    return-void
.end method

.method public final logForegroundServiceStop(ILcom/android/server/am/ServiceRecord;)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 3
    move-object/from16 v7, p2

    .line 5
    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v2, v7, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 16
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, ":"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const-wide/16 v2, 0x40

    .line 37
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    .line 40
    move-result v4

    .line 41
    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 44
    :cond_0
    iget v1, v7, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 46
    invoke-static {v1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    .line 49
    move-result-object v1

    .line 50
    move-object/from16 v8, p0

    .line 52
    iget-object v2, v8, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 60
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 63
    move-result v3

    .line 64
    const-string v4, "ForegroundServiceTypeLoggerModule"

    .line 66
    if-nez v3, :cond_1

    .line 68
    const-string v3, "FGS stop call for: "

    .line 70
    const-string v5, " has no types!"

    .line 72
    invoke-static {v0, v3, v5, v4}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    const-string v3, " in package "

    .line 77
    if-nez v2, :cond_2

    .line 79
    const-string v1, "FGS stop call being logged with no start call for UID for UID "

    .line 81
    invoke-static {v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    move-result-object v0

    .line 85
    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 87
    invoke-static {v0, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 91
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    .line 93
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v10, Ljava/util/ArrayList;

    .line 98
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 104
    move-result v5

    .line 105
    const/4 v6, 0x0

    .line 106
    move v11, v6

    .line 107
    :goto_0
    if-ge v11, v5, :cond_7

    .line 109
    invoke-virtual {v1, v11}, Landroid/util/IntArray;->get(I)I

    .line 112
    move-result v12

    .line 113
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 115
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v13

    .line 119
    check-cast v13, Landroid/util/ArrayMap;

    .line 121
    if-nez v13, :cond_3

    .line 123
    const-string v12, "Could not find appropriate running FGS for FGS stop for UID "

    .line 125
    invoke-static {v0, v12, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    move-result-object v12

    .line 129
    iget-object v13, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 131
    invoke-static {v12, v13, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    iget-object v14, v7, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 137
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 143
    move-result v13

    .line 144
    if-nez v13, :cond_4

    .line 146
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 148
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 151
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 156
    move-result-wide v14

    .line 157
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    move-result-object v14

    .line 161
    invoke-virtual {v13, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    :cond_4
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 166
    invoke-virtual {v13, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 169
    move-result v13

    .line 170
    if-gez v13, :cond_5

    .line 172
    const-string v12, "Logger should be tracking FGS types correctly for UID "

    .line 174
    invoke-static {v0, v12, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    move-result-object v12

    .line 178
    iget-object v13, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 180
    invoke-static {v12, v13, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    goto :goto_1

    .line 184
    :cond_5
    iget-object v14, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    .line 186
    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object v14

    .line 190
    check-cast v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 192
    if-eqz v14, :cond_6

    .line 194
    iget-object v15, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 196
    invoke-virtual {v15, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 199
    move-result v13

    .line 200
    if-nez v13, :cond_6

    .line 202
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v13

    .line 206
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-wide v13, v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    .line 211
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    move-result-object v13

    .line 215
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    .line 220
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 223
    :cond_6
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 225
    goto :goto_0

    .line 226
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_8

    .line 232
    move v11, v6

    .line 233
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 236
    move-result v0

    .line 237
    if-ge v11, v0, :cond_8

    .line 239
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Ljava/lang/Integer;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 248
    move-result v4

    .line 249
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Ljava/lang/Long;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 258
    move-result-wide v5

    .line 259
    const/4 v2, 0x4

    .line 260
    const/4 v3, 0x2

    .line 261
    move-object/from16 v0, p0

    .line 263
    move-object/from16 v1, p2

    .line 265
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    .line 268
    add-int/lit8 v11, v11, 0x1

    .line 270
    goto :goto_2

    .line 271
    :cond_8
    return-void
.end method
