.class public final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

.field public volatile mIdle:Z

.field public final mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

.field public mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

.field public mUidObserverEnabled:Z

.field public final mWorkItems:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 13
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    .line 15
    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    .line 20
    new-instance p1, Lcom/android/server/am/ProcessList$ProcStartHandler;

    .line 22
    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$ProcStartHandler;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V

    .line 25
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    .line 27
    return-void
.end method


# virtual methods
.method public final enqueueLocked(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    .line 9
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 11
    iget v2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Long;

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    move-result-wide v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 28
    move-result-wide v3

    .line 29
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 31
    int-to-long v5, v0

    .line 32
    add-long/2addr v3, v5

    .line 33
    cmp-long v0, v1, v3

    .line 35
    if-gez v0, :cond_1

    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 40
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    iget v1, p2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 45
    const-string/jumbo v2, "pid"

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string/jumbo v1, "uid"

    .line 54
    iget v2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    iget-wide v1, p2, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 61
    const-string/jumbo v3, "timestamp"

    .line 64
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 67
    const-string/jumbo v1, "reason"

    .line 70
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo p3, "requester"

    .line 76
    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 81
    iget p3, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 83
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/util/List;

    .line 89
    if-nez p1, :cond_2

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    .line 93
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object p3, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 98
    iget p2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 100
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    .line 108
    if-nez p1, :cond_3

    .line 110
    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    .line 112
    invoke-direct {p1, p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    .line 115
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    .line 117
    new-instance p1, Landroid/content/IntentFilter;

    .line 119
    const-string p2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 121
    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 131
    iget-object p2, p2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 133
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 135
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    .line 137
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    :cond_3
    return-void
.end method

.method public final killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    iget-object v2, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 5
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 12
    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 14
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 16
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 19
    move-result-object v3

    .line 20
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v3, :cond_4

    .line 24
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 26
    if-ne v4, v1, :cond_4

    .line 28
    iget v1, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 30
    move v4, p2

    .line 31
    if-ne v1, v4, :cond_4

    .line 33
    iget-wide v4, v3, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 35
    cmp-long v1, v4, p3

    .line 37
    if-eqz v1, :cond_0

    .line 39
    goto/16 :goto_0

    .line 41
    :cond_0
    iget-object v1, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 43
    new-instance v4, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$$ExternalSyntheticLambda0;

    .line 45
    invoke-direct {v4, p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    .line 48
    invoke-virtual {v1, v4}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 54
    return v2

    .line 55
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 57
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 59
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 61
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 63
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 65
    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 77
    const/4 v0, 0x0

    .line 78
    return v0

    .line 79
    :cond_2
    const/4 v10, 0x1

    .line 80
    const/16 v5, 0xd

    .line 82
    const/16 v6, 0xf

    .line 84
    const/4 v9, 0x1

    .line 85
    move-object v4, v3

    .line 86
    move-object/from16 v7, p5

    .line 88
    move-object/from16 v8, p5

    .line 90
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 93
    iget-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 95
    if-nez v1, :cond_3

    .line 97
    iget-object v1, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    .line 99
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 101
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 106
    move-result-wide v6

    .line 107
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_3
    if-eqz p8, :cond_4

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    iget-object v0, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 126
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 128
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/server/am/ActivityManagerService;->appendDropBoxProcessHeaders(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;Ljava/lang/StringBuilder;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "Reason: "

    .line 138
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    move-object/from16 v3, p5

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v0, "\n"

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    const-string v3, "Requester UID: "

    .line 162
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    move/from16 v3, p6

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, "\n"

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string/jumbo v0, "imperceptible_app_kill"

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    move-object/from16 v3, p7

    .line 191
    invoke-virtual {v3, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_4
    :goto_0
    return v2

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    throw v0
.end method

.method public final notifyDeviceIdleness(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    .line 11
    if-eqz v0, :cond_2

    .line 13
    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 17
    iget-object p1, p1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_1

    .line 31
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    .line 33
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    goto :goto_3

    .line 44
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    throw p0

    .line 49
    :cond_2
    :goto_3
    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    .line 3
    const/4 p2, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    .line 3
    const/4 p3, 0x2

    .line 4
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
.end method

.method public final registerUidObserverIfNecessaryLocked()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    .line 16
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 18
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v3, 0x3

    .line 22
    const/4 v4, -0x1

    .line 23
    const-string v5, "android"

    .line 25
    move-object v2, p0

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    .line 32
    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    .line 45
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 47
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method
