.class public final Lcom/android/server/am/mars/util/UidStateMgr$1;
.super Landroid/app/IUidObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/util/UidStateMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/util/UidStateMgr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidActive(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, v0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->addToRunningList(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 29
    .line 30
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v0, "onUidActive...uid:"

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 42
    .line 43
    if-eqz v2, :cond_6

    .line 44
    .line 45
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 46
    .line 47
    if-nez v2, :cond_6

    .line 48
    .line 49
    const v2, 0x186a0

    .line 50
    .line 51
    .line 52
    if-lt p1, v2, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_6

    .line 60
    .line 61
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/android/server/am/FreecessPkgStatus;

    .line 70
    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    monitor-exit v1

    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 84
    .line 85
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 86
    .line 87
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 88
    .line 89
    const-string v2, "CalmMode for restart"

    .line 90
    .line 91
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    monitor-exit v1

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 97
    .line 98
    const/4 v3, 0x2

    .line 99
    if-eq v2, v3, :cond_3

    .line 100
    .line 101
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 102
    .line 103
    if-eqz p0, :cond_6

    .line 104
    .line 105
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 106
    .line 107
    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 108
    .line 109
    if-eqz p0, :cond_6

    .line 110
    .line 111
    :cond_3
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 112
    .line 113
    if-eqz p0, :cond_4

    .line 114
    .line 115
    const-string p0, "FreecessController"

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, ", packageName: "

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, ", freezedState: "

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_4
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 155
    .line 156
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 157
    .line 158
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 159
    .line 160
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 161
    .line 162
    if-nez v2, :cond_5

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    const/4 v3, 0x5

    .line 166
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Landroid/os/Bundle;

    .line 170
    .line 171
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string/jumbo v4, "packageName"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string/jumbo v0, "userId"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 187
    .line 188
    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    .line 199
    .line 200
    :cond_6
    :goto_1
    monitor-exit v1

    .line 201
    :goto_2
    return-void

    .line 202
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    throw p0
.end method

.method public final onUidCachedChanged(IZ)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 27
    .line 28
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    sget-object p0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 37
    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    monitor-exit p0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 56
    .line 57
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    sget-object p0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 66
    .line 67
    monitor-enter p0

    .line 68
    :try_start_1
    monitor-exit p0

    .line 69
    goto :goto_0

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    throw p1

    .line 73
    :cond_2
    :goto_0
    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p2, p2, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p2, p2, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 27
    .line 28
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    sget-boolean p2, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 37
    .line 38
    sget-object p2, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/am/mars/EventRecorder;->onUidStop(Ljava/lang/Integer;J)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 58
    .line 59
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_1

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 73
    .line 74
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object p2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 80
    .line 81
    monitor-enter p2

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    monitor-exit p2

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 93
    .line 94
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 95
    .line 96
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    monitor-exit p2

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 107
    .line 108
    if-eqz p0, :cond_4

    .line 109
    .line 110
    const/4 p0, 0x1

    .line 111
    iput p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 112
    .line 113
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 114
    .line 115
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 121
    .line 122
    const/4 v1, 0x2

    .line 123
    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 127
    .line 128
    const/16 v1, 0x1c

    .line 129
    .line 130
    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 134
    .line 135
    const/4 v1, 0x3

    .line 136
    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 140
    .line 141
    const/4 p1, 0x4

    .line 142
    invoke-virtual {v0, p1, p0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    monitor-exit p2

    .line 146
    :goto_0
    return-void

    .line 147
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p0
.end method

.method public final onUidIdle(IZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p2, p2, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->addToRunningList(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onUidProcAdjChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 7

    .line 1
    const/4 p3, 0x3

    .line 2
    if-gt p2, p3, :cond_0

    .line 3
    .line 4
    sget-boolean p3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 5
    .line 6
    sget-object p3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 7
    .line 8
    const-string/jumbo p4, "procstate"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3, p1, p4}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p3, 0x2

    .line 15
    if-ne p2, p3, :cond_1

    .line 16
    .line 17
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    iget-object p3, p3, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 24
    .line 25
    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-nez p4, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    iget-object p3, p3, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 46
    .line 47
    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    const/4 p3, 0x4

    .line 51
    if-eq p2, p3, :cond_4

    .line 52
    .line 53
    const/4 p3, 0x5

    .line 54
    if-ne p2, p3, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    iget-object p3, p3, Lcom/android/server/am/mars/util/UidStateMgr;->mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 64
    .line 65
    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    iget-object p3, p3, Lcom/android/server/am/mars/util/UidStateMgr;->mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 76
    .line 77
    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    if-nez p4, :cond_5

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 100
    .line 101
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    if-nez p4, :cond_6

    .line 111
    .line 112
    const/4 p4, 0x0

    .line 113
    goto :goto_3

    .line 114
    :cond_6
    sget-object p5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 115
    .line 116
    iget-object v0, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 117
    .line 118
    iget p4, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 119
    .line 120
    invoke-virtual {p5, p4, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result p4

    .line 124
    :goto_3
    if-eqz p4, :cond_9

    .line 125
    .line 126
    sget-boolean p4, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 127
    .line 128
    sget-object p4, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    .line 129
    .line 130
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    sget-boolean p5, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 134
    .line 135
    if-nez p5, :cond_7

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v0

    .line 142
    iget-object p5, p4, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter p5

    .line 145
    :try_start_0
    iget-object v2, p4, Lcom/android/server/am/mars/EventRecorder;->mLatestUnfreezeEvent:Landroid/util/ArrayMap;

    .line 146
    .line 147
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 152
    .line 153
    if-eqz v2, :cond_8

    .line 154
    .line 155
    iget-wide v3, v2, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 156
    .line 157
    const-wide/16 v5, 0x1f4

    .line 158
    .line 159
    add-long/2addr v3, v5

    .line 160
    cmp-long v0, v3, v0

    .line 161
    .line 162
    if-ltz v0, :cond_8

    .line 163
    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, v2, Lcom/android/server/am/mars/EventRecorder$Event;->procStateAfterEvent:Ljava/lang/Integer;

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :catchall_0
    move-exception p0

    .line 172
    goto :goto_6

    .line 173
    :cond_8
    :goto_4
    iget-object p4, p4, Lcom/android/server/am/mars/EventRecorder;->mLatestUnfreezeEvent:Landroid/util/ArrayMap;

    .line 174
    .line 175
    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_5
    sget-object p3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 180
    .line 181
    monitor-enter p3

    .line 182
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    iput p2, p0, Lcom/android/server/am/FreecessPkgStatus;->latestProcState:I

    .line 187
    .line 188
    monitor-exit p3

    .line 189
    goto :goto_7

    .line 190
    :catchall_1
    move-exception p0

    .line 191
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    throw p0

    .line 193
    :goto_6
    :try_start_2
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    throw p0

    .line 195
    :cond_9
    :goto_7
    return-void
.end method
