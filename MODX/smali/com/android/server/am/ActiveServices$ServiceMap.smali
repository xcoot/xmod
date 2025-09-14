.class public final Lcom/android/server/am/ActiveServices$ServiceMap;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveForegroundApps:Landroid/util/ArrayMap;

.field public mActiveForegroundAppsChanged:Z

.field public final mDelayServiceList:Ljava/util/ArrayList;

.field public final mDelayedStartList:Ljava/util/ArrayList;

.field public final mPendingRemoveForegroundApps:Ljava/util/ArrayList;

.field public final mServicesByInstanceName:Landroid/util/ArrayMap;

.field public final mServicesByIntent:Landroid/util/ArrayMap;

.field public final mStartingBackground:Ljava/util/ArrayList;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 13
    new-instance p1, Landroid/util/ArrayMap;

    .line 15
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 41
    new-instance p1, Landroid/util/ArrayMap;

    .line 43
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mPendingRemoveForegroundApps:Ljava/util/ArrayList;

    .line 55
    iput p3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    .line 57
    return-void
.end method


# virtual methods
.method public final ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v1, v1, Landroid/os/Message;->what:I

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_a

    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v1, v3, :cond_2

    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_1

    .line 16
    const/16 v2, 0x65

    .line 18
    if-eq v1, v2, :cond_0

    .line 20
    goto/16 :goto_4

    .line 22
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 24
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->startDelayedServiceLocked()V

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    goto/16 :goto_4

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    throw v0

    .line 45
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 47
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 52
    monitor-enter v1

    .line 53
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    .line 56
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 60
    goto/16 :goto_4

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    throw v0

    .line 68
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 70
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 72
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 75
    monitor-enter v4

    .line 76
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 79
    move-result-wide v5

    .line 80
    iget-object v7, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mPendingRemoveForegroundApps:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v7, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 87
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 90
    move-result v7

    .line 91
    sub-int/2addr v7, v2

    .line 92
    const-wide v8, 0x7fffffffffffffffL

    .line 97
    move-wide v10, v8

    .line 98
    :goto_0
    if-ltz v7, :cond_7

    .line 100
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 102
    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 105
    move-result-object v12

    .line 106
    check-cast v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 108
    iget-wide v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 110
    const-wide/16 v15, 0x0

    .line 112
    cmp-long v13, v13, v15

    .line 114
    if-eqz v13, :cond_4

    .line 116
    invoke-virtual {v1, v12, v5, v6}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    .line 119
    move-result v13

    .line 120
    if-eqz v13, :cond_3

    .line 122
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mPendingRemoveForegroundApps:Ljava/util/ArrayList;

    .line 124
    iget-object v13, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 126
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 129
    move-result-object v13

    .line 130
    check-cast v13, Ljava/lang/String;

    .line 132
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iput-boolean v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 137
    goto :goto_1

    .line 138
    :catchall_2
    move-exception v0

    .line 139
    goto :goto_3

    .line 140
    :cond_3
    iget-wide v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 142
    cmp-long v15, v13, v10

    .line 144
    if-gez v15, :cond_4

    .line 146
    move-wide v10, v13

    .line 147
    :cond_4
    iget-boolean v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 149
    if-nez v13, :cond_6

    .line 151
    iget v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 153
    iget-object v14, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 155
    invoke-virtual {v1, v13, v14}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z

    .line 158
    move-result v13

    .line 159
    if-eqz v13, :cond_5

    .line 161
    goto :goto_1

    .line 162
    :cond_5
    iget-object v13, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 164
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 167
    move-result v13

    .line 168
    iget v14, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 170
    iget-object v12, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 172
    invoke-virtual {v1, v14, v12}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 175
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 177
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 180
    move-result v12

    .line 181
    sub-int/2addr v13, v12

    .line 182
    if-le v13, v2, :cond_6

    .line 184
    sub-int/2addr v7, v13

    .line 185
    add-int/2addr v7, v2

    .line 186
    :cond_6
    :goto_1
    add-int/lit8 v7, v7, -0x1

    .line 188
    goto :goto_0

    .line 189
    :cond_7
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mPendingRemoveForegroundApps:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 194
    move-result v1

    .line 195
    sub-int/2addr v1, v2

    .line 196
    :goto_2
    if-ltz v1, :cond_8

    .line 198
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 200
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mPendingRemoveForegroundApps:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    add-int/lit8 v1, v1, -0x1

    .line 211
    goto :goto_2

    .line 212
    :cond_8
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    cmp-long v1, v10, v8

    .line 217
    if-gez v1, :cond_9

    .line 219
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 222
    move-result-object v1

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 226
    move-result-wide v2

    .line 227
    add-long/2addr v10, v2

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 231
    move-result-wide v2

    .line 232
    sub-long/2addr v10, v2

    .line 233
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 236
    :cond_9
    const/4 v1, 0x0

    .line 237
    iput-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 239
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 240
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 243
    goto :goto_4

    .line 244
    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 245
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 248
    throw v0

    .line 249
    :cond_a
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 251
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 253
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 256
    monitor-enter v1

    .line 257
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    .line 260
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 261
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 264
    :goto_4
    return-void

    .line 265
    :catchall_3
    move-exception v0

    .line 266
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 267
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 270
    throw v0
.end method

.method public final rescheduleDelayedStartsLocked()V
    .locals 18

    .line 1
    move-object/from16 v11, p0

    .line 3
    const/4 v12, 0x1

    .line 4
    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    move-result-wide v13

    .line 11
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    const/4 v15, 0x0

    .line 18
    move v1, v15

    .line 19
    :goto_0
    const-string v10, "ActivityManager"

    .line 21
    if-ge v1, v0, :cond_1

    .line 23
    iget-object v2, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 31
    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 33
    cmp-long v3, v3, v13

    .line 35
    if-gtz v3, :cond_0

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    const-string v4, "Waited long enough for: "

    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-static {v10, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    add-int/lit8 v0, v0, -0x1

    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 63
    :cond_0
    add-int/2addr v1, v12

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v0

    .line 71
    iget-object v1, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 73
    if-lez v0, :cond_3

    .line 75
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v0

    .line 81
    iget v2, v1, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 83
    if-ge v0, v2, :cond_3

    .line 85
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    move-object v3, v0

    .line 92
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 94
    iput-boolean v15, v3, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 96
    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 101
    move-result v0

    .line 102
    if-gtz v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "**** NO PENDING STARTS! "

    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, " startReq="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-boolean v1, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, " delayedStop="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-boolean v1, v3, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    invoke-static {v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :catch_0
    move-object/from16 v16, v10

    .line 143
    goto :goto_2

    .line 144
    :cond_2
    :try_start_0
    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 152
    iget-object v1, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 154
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 156
    iget v6, v0, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    .line 158
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord$StartItem;->mCallingProcessName:Ljava/lang/String;

    .line 160
    iget v8, v0, Lcom/android/server/am/ServiceRecord$StartItem;->mCallingProcessState:I

    .line 162
    iget-boolean v9, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 164
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord$StartItem;->mCallingPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 v4, 0x0

    .line 167
    const/16 v16, 0x1

    .line 169
    move-object v0, v1

    .line 170
    move-object/from16 v1, p0

    .line 172
    move-object/from16 v17, v5

    .line 174
    move/from16 v5, v16

    .line 176
    move-object/from16 v16, v10

    .line 178
    move-object/from16 v10, v17

    .line 180
    :try_start_1
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZILjava/lang/String;IZLjava/lang/String;)Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :catch_1
    :goto_2
    move-object/from16 v10, v16

    .line 185
    goto :goto_1

    .line 186
    :cond_3
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 191
    move-result v0

    .line 192
    if-lez v0, :cond_5

    .line 194
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 202
    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 204
    cmp-long v0, v2, v13

    .line 206
    if-lez v0, :cond_4

    .line 208
    move-wide v13, v2

    .line 209
    :cond_4
    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v11, v0, v13, v14}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 216
    :cond_5
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 221
    move-result v0

    .line 222
    iget v2, v1, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 224
    if-ge v0, v2, :cond_6

    .line 226
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 228
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    :cond_6
    return-void
.end method

.method public final startDelayedServiceLocked()V
    .locals 7

    .line 1
    const/16 v0, 0x65

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 8
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 10
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->startOrBindServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v1

    .line 45
    if-lez v1, :cond_2

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    move-result-wide v3

    .line 51
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 59
    iget-wide v5, v1, Lcom/android/server/am/ServiceRecord;->delayTimeout:J

    .line 61
    cmp-long v1, v3, v5

    .line 63
    if-ltz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->startOrBindServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 80
    move-result-object v0

    .line 81
    const-wide/16 v1, 0x32

    .line 83
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 86
    :cond_2
    return-void
.end method

.method public final startOrBindServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v3, p1

    .line 5
    const-string v11, "ActivityManager"

    .line 7
    const-string/jumbo v0, "no pendingStarts or pendingBinds: "

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    iput-boolean v2, v3, Lcom/android/server/am/ServiceRecord;->delayService:Z

    .line 13
    const/4 v4, 0x1

    .line 14
    iput-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->delayServiceStop:Z

    .line 16
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->pendingBinds:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v4

    .line 22
    if-lez v4, :cond_0

    .line 24
    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->pendingBinds:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/am/ServiceRecord$BindItem;

    .line 32
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 34
    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 36
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$BindItem;->caller:Landroid/app/IApplicationThread;

    .line 38
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_2

    .line 44
    iget-object v12, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 46
    iget-object v13, v0, Lcom/android/server/am/ServiceRecord$BindItem;->caller:Landroid/app/IApplicationThread;

    .line 48
    iget-object v14, v0, Lcom/android/server/am/ServiceRecord$BindItem;->token:Landroid/os/IBinder;

    .line 50
    iget-object v15, v0, Lcom/android/server/am/ServiceRecord$BindItem;->service:Landroid/content/Intent;

    .line 52
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$BindItem;->resolvedType:Ljava/lang/String;

    .line 54
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$BindItem;->connection:Landroid/app/IServiceConnection;

    .line 56
    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord$BindItem;->flags:J

    .line 58
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord$BindItem;->instanceName:Ljava/lang/String;

    .line 60
    iget-boolean v6, v0, Lcom/android/server/am/ServiceRecord$BindItem;->isSdkSandboxService:Z

    .line 62
    iget v7, v0, Lcom/android/server/am/ServiceRecord$BindItem;->sdkSandboxClientAppUid:I

    .line 64
    iget-object v8, v0, Lcom/android/server/am/ServiceRecord$BindItem;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 66
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord$BindItem;->sdkSandboxClientApplicationThread:Landroid/app/IApplicationThread;

    .line 68
    iget-object v10, v0, Lcom/android/server/am/ServiceRecord$BindItem;->callingPackage:Ljava/lang/String;

    .line 70
    iget v0, v0, Lcom/android/server/am/ServiceRecord$BindItem;->userId:I

    .line 72
    move-object/from16 v16, v1

    .line 74
    move-object/from16 v17, v2

    .line 76
    move-wide/from16 v18, v3

    .line 78
    move-object/from16 v20, v5

    .line 80
    move/from16 v21, v6

    .line 82
    move/from16 v22, v7

    .line 84
    move-object/from16 v23, v8

    .line 86
    move-object/from16 v24, v9

    .line 88
    move-object/from16 v25, v10

    .line 90
    move/from16 v26, v0

    .line 92
    invoke-virtual/range {v12 .. v26}, Lcom/android/server/am/ActiveServices;->bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;ZILjava/lang/String;Landroid/app/IApplicationThread;Ljava/lang/String;I)I

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 101
    move-result v4

    .line 102
    if-lez v4, :cond_1

    .line 104
    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 112
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 114
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 116
    iget v6, v0, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    .line 118
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord$StartItem;->mCallingProcessName:Ljava/lang/String;

    .line 120
    iget v8, v0, Lcom/android/server/am/ServiceRecord$StartItem;->mCallingProcessState:I

    .line 122
    iget-boolean v9, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 124
    iget-object v10, v0, Lcom/android/server/am/ServiceRecord$StartItem;->mCallingPackageName:Ljava/lang/String;

    .line 126
    const/4 v5, 0x0

    .line 127
    const/4 v12, 0x1

    .line 128
    move-object v0, v2

    .line 129
    move-object/from16 v1, p0

    .line 131
    move-object v2, v4

    .line 132
    move-object/from16 v3, p1

    .line 134
    move v4, v5

    .line 135
    move v5, v12

    .line 136
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZILjava/lang/String;IZLjava/lang/String;)Landroid/content/ComponentName;

    .line 139
    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 158
    :catch_0
    const-string/jumbo v0, "start or bind delayed service fail"

    .line 161
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    :goto_0
    return-void
.end method
