.class public final Lcom/android/server/am/FreecessHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public extras:Landroid/os/Bundle;

.field public final mFreecessController:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 6
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 8
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 10
    return-void
.end method


# virtual methods
.method public final handleFreecessResetAllState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const-string/jumbo v1, "reason"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_6

    .line 15
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v1, "FreecessController"

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    const-string v3, "!@*** unFreezeAllPackages for watchdog : Start reset all state unfreezing!!! - MARs FW Side (reason: "

    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, ")"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v1, "SoftReset"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 55
    const-string/jumbo v3, "power"

    .line 58
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/os/PowerManager;

    .line 64
    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 67
    move-result-object v1

    .line 68
    const-wide/16 v3, 0x7d0

    .line 70
    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 76
    const/4 v1, -0x1

    .line 77
    const/4 v3, 0x2

    .line 78
    const/4 v4, 0x3

    .line 79
    invoke-virtual {p0, v4, v1, v3, v1}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    .line 82
    move-result v1

    .line 83
    if-lez v1, :cond_2

    .line 85
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 87
    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 90
    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    monitor-exit v1

    .line 99
    goto :goto_2

    .line 100
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0

    .line 102
    :cond_2
    const-string v1, "FreecessController"

    .line 104
    const-string/jumbo v3, "cleanPacketMonitoredUids Exception"

    .line 107
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 112
    if-eqz v1, :cond_5

    .line 114
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 116
    monitor-enter v1

    .line 117
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 119
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 121
    const/4 v3, 0x0

    .line 122
    :goto_3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 125
    move-result v4

    .line 126
    if-ge v3, v4, :cond_4

    .line 128
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 134
    if-eqz v4, :cond_3

    .line 136
    iput v2, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 138
    goto :goto_4

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    goto :goto_5

    .line 141
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    monitor-exit v1

    .line 145
    goto :goto_6

    .line 146
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    throw p0

    .line 148
    :cond_5
    :goto_6
    const-string p0, "FreecessController"

    .line 150
    const-string v1, "!@*** unFreezeAllPackages for watchdog : End reset all state unfreezing!!! - MARs FW Side (reason: "

    .line 152
    const-string v2, ")"

    .line 154
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_6
    return-void
.end method

.method public final handleFreecessResetState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 3
    if-eqz v0, :cond_4

    .line 5
    const-string/jumbo v1, "packageName"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 15
    const-string/jumbo v2, "userId"

    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result v1

    .line 23
    if-eqz v0, :cond_4

    .line 25
    if-eq v1, v3, :cond_4

    .line 27
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 34
    monitor-enter v2

    .line 35
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 41
    monitor-exit v2

    .line 42
    goto :goto_4

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :cond_0
    iget v1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 47
    const/4 v3, 0x2

    .line 48
    const/4 v4, 0x1

    .line 49
    if-eq v1, v3, :cond_2

    .line 51
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 53
    if-eqz v1, :cond_1

    .line 55
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 57
    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 59
    if-eqz v1, :cond_1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iput v4, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 64
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 66
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v4, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 71
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 73
    const/4 v3, 0x3

    .line 74
    invoke-virtual {p0, v3, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 77
    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 79
    const/16 v1, 0x1c

    .line 81
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 87
    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 89
    if-eqz v1, :cond_3

    .line 91
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 93
    iget v3, v0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 95
    const-string v4, "UidActive"

    .line 97
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iput v4, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 103
    :goto_1
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 105
    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 107
    const/4 v1, 0x4

    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 111
    :goto_2
    monitor-exit v2

    .line 112
    goto :goto_4

    .line 113
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0

    .line 115
    :cond_4
    :goto_4
    return-void
.end method

.method public final handleFreecessSettlementPackage()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v1, "packageName"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 16
    const-string/jumbo v2, "userId"

    .line 19
    const/4 v3, -0x1

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 26
    const-string/jumbo v4, "uid"

    .line 29
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 32
    move-result v2

    .line 33
    iget-object v4, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 35
    const-string/jumbo v5, "packetMonitorFlag"

    .line 38
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result v4

    .line 42
    iget-object v5, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 44
    const-string/jumbo v6, "disableWakelockFlag"

    .line 47
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 50
    move-result v5

    .line 51
    iget-object v6, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 53
    const-string/jumbo v7, "isLcdOnTrigger"

    .line 56
    const/4 v8, 0x0

    .line 57
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    move-result v6

    .line 61
    iget-object v7, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 63
    const-string/jumbo v9, "unrestrictJobs"

    .line 66
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_1

    .line 72
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 74
    sget-object v7, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 76
    invoke-virtual {v7, v2, v8}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    .line 79
    :cond_1
    const/4 v7, 0x3

    .line 80
    const/4 v9, 0x1

    .line 81
    if-eqz v4, :cond_5

    .line 83
    if-eq v4, v9, :cond_2

    .line 85
    goto :goto_4

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 88
    invoke-virtual {v4, v7, v3, v8, v2}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    .line 91
    move-result v7

    .line 92
    if-lez v7, :cond_4

    .line 94
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 96
    monitor-enter v7

    .line 97
    :try_start_0
    iget-object v1, v4, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 99
    if-eqz v1, :cond_3

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_3

    .line 111
    iget-object v1, v4, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    :goto_0
    monitor-exit v7

    .line 124
    goto :goto_4

    .line 125
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0

    .line 127
    :cond_4
    const-string v7, "RegException"

    .line 129
    invoke-virtual {v4, v1, v0, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 135
    invoke-virtual {v1, v7, v3, v9, v2}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    .line 138
    move-result v4

    .line 139
    if-lez v4, :cond_7

    .line 141
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 143
    monitor-enter v4

    .line 144
    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 146
    if-eqz v7, :cond_6

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v10

    .line 152
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_6

    .line 158
    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    goto :goto_2

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    goto :goto_3

    .line 170
    :cond_6
    :goto_2
    monitor-exit v4

    .line 171
    goto :goto_4

    .line 172
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    throw p0

    .line 174
    :cond_7
    const-string v1, "FreecessController"

    .line 176
    const-string/jumbo v4, "deletePacketMonitoredUid Exception"

    .line 179
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_4
    if-eq v5, v3, :cond_e

    .line 184
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 186
    if-ne v5, v9, :cond_8

    .line 188
    move v8, v9

    .line 189
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 191
    if-nez v1, :cond_9

    .line 193
    const-class v1, Landroid/os/PowerManagerInternal;

    .line 195
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Landroid/os/PowerManagerInternal;

    .line 201
    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 203
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 205
    invoke-virtual {v1, v2, v8}, Landroid/os/PowerManagerInternal;->setWakeLockEnableDisable(IZ)I

    .line 208
    move-result v1

    .line 209
    if-ne v1, v9, :cond_b

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    if-eqz v8, :cond_a

    .line 218
    const-string/jumbo v1, "disable"

    .line 221
    goto :goto_5

    .line 222
    :cond_a
    const-string/jumbo v1, "enable"

    .line 225
    :goto_5
    const-string v3, " frozen app ("

    .line 227
    const-string v4, ","

    .line 229
    invoke-static {p0, v1, v3, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, ") wakelock."

    .line 234
    const-string v1, "FreecessController"

    .line 236
    invoke-static {p0, v2, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    goto :goto_6

    .line 240
    :cond_b
    const/4 v3, 0x2

    .line 241
    if-ne v1, v3, :cond_e

    .line 243
    const-string v1, "Wakelock"

    .line 245
    if-eqz v6, :cond_d

    .line 247
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 249
    if-eqz v3, :cond_c

    .line 251
    goto :goto_6

    .line 252
    :cond_c
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 255
    move-result v2

    .line 256
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    goto :goto_6

    .line 260
    :cond_d
    sget-object v3, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 262
    invoke-virtual {v3, v2}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_e

    .line 268
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 271
    move-result v2

    .line 272
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_e
    :goto_6
    return-void
.end method

.method public final handleFreezeStateChanged()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    const-string/jumbo v1, "enabled"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 15
    const-string/jumbo v2, "uid"

    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result v1

    .line 23
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 25
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 27
    if-nez v2, :cond_0

    .line 29
    const-class v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 31
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 37
    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 41
    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 43
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 45
    const/16 v4, 0x15

    .line 47
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 52
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 54
    const-wide/16 v5, 0xc8

    .line 56
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    if-nez v0, :cond_3

    .line 61
    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 63
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 65
    monitor-enter v3

    .line 66
    :try_start_0
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 68
    iget-object v4, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/util/ArrayList;

    .line 76
    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string v5, "Sending alarms blocked by MARsFreecess for uid "

    .line 87
    const-string v6, "AlarmManager"

    .line 89
    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v5, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 94
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 97
    iget-object v5, v2, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 105
    move-result-wide v5

    .line 106
    invoke-virtual {v2, v5, v6, v4}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(JLjava/util/ArrayList;)V

    .line 109
    :cond_2
    :goto_0
    monitor-exit v3

    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0

    .line 114
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 116
    if-eqz v2, :cond_5

    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 120
    if-nez v2, :cond_4

    .line 122
    const-string/jumbo v2, "location"

    .line 125
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 128
    move-result-object v2

    .line 129
    invoke-static {v2}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    .line 132
    move-result-object v2

    .line 133
    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 135
    goto :goto_2

    .line 136
    :catch_0
    move-exception p0

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 140
    if-eqz p0, :cond_5

    .line 142
    invoke-interface {p0, v0, v1}, Landroid/location/ILocationManager;->onFreezeStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    goto :goto_4

    .line 146
    :goto_3
    const-string v2, "FreecessController"

    .line 148
    const-string v3, "Error occurred while setLRs("

    .line 150
    const-string v4, ", "

    .line 152
    const-string v5, "): "

    .line 154
    invoke-static {v1, v3, v4, v5, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p0

    .line 165
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    :goto_4
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 8
    move-result-object v2

    .line 9
    iput-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 11
    iget v3, v1, Landroid/os/Message;->what:I

    .line 13
    const/4 v4, 0x2

    .line 14
    const-wide/16 v5, 0x3a98

    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, -0x1

    .line 20
    packed-switch v3, :pswitch_data_0

    .line 23
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "Unexpected value: "

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget v1, v1, Landroid/os/Message;->what:I

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 45
    :pswitch_1
    if-eqz v2, :cond_1a

    .line 47
    const-string/jumbo v1, "uid"

    .line 50
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 53
    move-result v1

    .line 54
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 56
    const-string/jumbo v3, "packageName"

    .line 59
    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 64
    const-string/jumbo v2, "delay"

    .line 67
    const-wide/16 v3, 0x0

    .line 69
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 72
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 74
    const-string/jumbo v2, "mSlientAudioApp has "

    .line 77
    const-string v3, "SILENT:"

    .line 79
    const-string v4, " endCheckSilentAudio result :"

    .line 81
    iget-object v7, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    if-nez v7, :cond_0

    .line 85
    goto/16 :goto_c

    .line 87
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 90
    iget-object v7, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 92
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    iget-object v8, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_1

    .line 105
    iget-object v8, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto/16 :goto_4

    .line 118
    :cond_1
    :goto_0
    iget-object v8, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_2

    .line 130
    monitor-exit v7

    .line 131
    goto/16 :goto_c

    .line 133
    :cond_2
    iget-object v8, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Ljava/lang/Long;

    .line 145
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 148
    move-result-wide v8

    .line 149
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    iget-object v7, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    iget-object v11, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->SILENT_AUDIO_PREX:Ljava/lang/String;

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v7, v10}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v7

    .line 173
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 175
    if-eqz v10, :cond_3

    .line 177
    const-string v10, "ActiveMusicRecordFilter"

    .line 179
    new-instance v11, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v4, " check time:"

    .line 189
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 195
    move-result-wide v12

    .line 196
    sub-long/2addr v12, v8

    .line 197
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v4

    .line 204
    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    goto :goto_5

    .line 210
    :cond_3
    :goto_1
    iget-object v4, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 212
    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :try_start_3
    const-string/jumbo v10, "true"

    .line 216
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_4

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 225
    move-result-wide v10

    .line 226
    sub-long/2addr v10, v8

    .line 227
    cmp-long v5, v10, v5

    .line 229
    if-ltz v5, :cond_5

    .line 231
    iget-object v5, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 240
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 242
    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 244
    const-string v6, "DEV"

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    .line 248
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v5, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    goto :goto_2

    .line 262
    :catchall_1
    move-exception v0

    .line 263
    goto :goto_3

    .line 264
    :cond_4
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_5

    .line 276
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 285
    :cond_5
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    :try_start_4
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 288
    if-eqz v1, :cond_1a

    .line 290
    const-string v1, "ActiveMusicRecordFilter"

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    .line 294
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 299
    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object v0

    .line 310
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 313
    goto/16 :goto_c

    .line 315
    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 316
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 317
    :goto_4
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 318
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 319
    :goto_5
    const-string v1, "ActiveMusicRecordFilter"

    .line 321
    const-string v2, " endCheckSilentAudio exception :"

    .line 323
    invoke-static {v0, v2, v1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    goto/16 :goto_c

    .line 328
    :pswitch_2
    if-eqz v2, :cond_1a

    .line 330
    const-string/jumbo v1, "uid"

    .line 333
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 336
    move-result v1

    .line 337
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 339
    const-string/jumbo v2, "packageName"

    .line 342
    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    move-result-object v0

    .line 346
    sget-object v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 348
    const-string/jumbo v3, "put "

    .line 351
    const-string v4, " startCheckSilentAudio :"

    .line 353
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 355
    if-nez v7, :cond_6

    .line 357
    goto/16 :goto_c

    .line 359
    :cond_6
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 361
    monitor-enter v7

    .line 362
    :try_start_9
    iget-object v8, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    move-result-object v9

    .line 368
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 371
    move-result v8

    .line 372
    if-eqz v8, :cond_7

    .line 374
    monitor-exit v7

    .line 375
    goto/16 :goto_c

    .line 377
    :catchall_2
    move-exception v0

    .line 378
    goto/16 :goto_8

    .line 380
    :cond_7
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 381
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 383
    if-eqz v7, :cond_8

    .line 385
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 388
    move-result v7

    .line 389
    if-nez v7, :cond_8

    .line 391
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 393
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    move-result-object v8

    .line 397
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 400
    move-result v7

    .line 401
    if-nez v7, :cond_9

    .line 403
    :cond_8
    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->isUsingAudio(ILjava/lang/String;)Z

    .line 406
    move-result v7

    .line 407
    if-eqz v7, :cond_1a

    .line 409
    :cond_9
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 411
    monitor-enter v7

    .line 412
    :try_start_a
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 414
    if-eqz v8, :cond_a

    .line 416
    const-string v8, "ActiveMusicRecordFilter"

    .line 418
    new-instance v9, Ljava/lang/StringBuilder;

    .line 420
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object v4

    .line 430
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    goto :goto_6

    .line 434
    :catchall_3
    move-exception v0

    .line 435
    goto/16 :goto_7

    .line 437
    :cond_a
    :goto_6
    iget-object v4, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 439
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    move-result-object v8

    .line 443
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 446
    move-result v4

    .line 447
    if-eqz v4, :cond_b

    .line 449
    iget-object v4, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 451
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    move-result-object v8

    .line 455
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 458
    :cond_b
    iget-object v4, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    move-result-object v8

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 467
    move-result-wide v9

    .line 468
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 471
    move-result-object v9

    .line 472
    invoke-virtual {v4, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 477
    if-eqz v4, :cond_c

    .line 479
    const-string v4, "ActiveMusicRecordFilter"

    .line 481
    new-instance v8, Ljava/lang/StringBuilder;

    .line 483
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    const-string v3, " to check at : "

    .line 491
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v3, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 499
    move-result-object v9

    .line 500
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    move-result-object v3

    .line 504
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    move-result-object v3

    .line 511
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_c
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 515
    iget-object v3, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    .line 519
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    iget-object v2, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->SILENT_AUDIO_PREX:Ljava/lang/String;

    .line 524
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 537
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 539
    iget-object v3, v2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 541
    if-nez v3, :cond_d

    .line 543
    goto/16 :goto_c

    .line 545
    :cond_d
    const/16 v4, 0x1f

    .line 547
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 550
    move-result v3

    .line 551
    if-eqz v3, :cond_e

    .line 553
    goto/16 :goto_c

    .line 555
    :cond_e
    iget-object v3, v2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 557
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 560
    move-result-object v3

    .line 561
    const-string/jumbo v4, "packageName"

    .line 564
    const-string/jumbo v7, "uid"

    .line 567
    invoke-static {v1, v4, v0, v7}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 570
    move-result-object v0

    .line 571
    const-string/jumbo v1, "delay"

    .line 574
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 577
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 580
    iget-object v0, v2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 582
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 585
    goto/16 :goto_c

    .line 587
    :goto_7
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 588
    throw v0

    .line 589
    :goto_8
    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 590
    throw v0

    .line 591
    :pswitch_3
    if-eqz v2, :cond_1a

    .line 593
    const-string/jumbo v1, "packageName"

    .line 596
    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    move-result-object v1

    .line 600
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 602
    const-string/jumbo v3, "uid"

    .line 605
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 608
    move-result v13

    .line 609
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 611
    const-string/jumbo v3, "userId"

    .line 614
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 617
    move-result v15

    .line 618
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 620
    const-string/jumbo v3, "reason"

    .line 623
    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    move-result-object v2

    .line 627
    if-eqz v1, :cond_1a

    .line 629
    if-eq v13, v10, :cond_1a

    .line 631
    if-eq v15, v10, :cond_1a

    .line 633
    if-eqz v2, :cond_1a

    .line 635
    iget-object v3, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 637
    const-string/jumbo v5, "isDelay"

    .line 640
    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 643
    move-result v3

    .line 644
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 646
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    const-string v5, "FreecessController"

    .line 651
    const-string v6, "Try to make pkg idle for fz: ("

    .line 653
    :try_start_d
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 656
    move-result-object v8

    .line 657
    if-nez v8, :cond_f

    .line 659
    goto/16 :goto_c

    .line 661
    :cond_f
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 663
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 665
    const-string v11, ", "

    .line 667
    if-eqz v10, :cond_11

    .line 669
    :try_start_e
    iget-boolean v10, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 671
    if-eqz v10, :cond_11

    .line 673
    sget-object v10, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 675
    iget v12, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 677
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 680
    move-result v10

    .line 681
    if-nez v10, :cond_11

    .line 683
    if-nez v3, :cond_11

    .line 685
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 687
    if-eqz v3, :cond_10

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    .line 691
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    const-string v6, ")."

    .line 705
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    move-result-object v3

    .line 712
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    goto :goto_9

    .line 716
    :catch_1
    move-exception v0

    .line 717
    goto/16 :goto_a

    .line 719
    :cond_10
    :goto_9
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 721
    invoke-virtual {v3, v9, v15}, Lcom/android/server/am/ActivityManagerService;->makePackageIdle(Ljava/lang/String;I)V

    .line 724
    :cond_11
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 726
    const-string v6, "<"

    .line 728
    if-eqz v3, :cond_13

    .line 730
    :try_start_f
    invoke-virtual {v0, v13, v7}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZ)Ljava/util/ArrayList;

    .line 733
    move-result-object v3

    .line 734
    new-instance v10, Ljava/util/ArrayList;

    .line 736
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 739
    iget-object v12, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 741
    invoke-virtual {v12, v3, v10}, Lcom/android/server/am/ActivityManagerService;->checkProcDiedOrComponentExecutingForFreeze(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 744
    move-result v3

    .line 745
    if-ne v3, v4, :cond_13

    .line 747
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 749
    if-eqz v0, :cond_12

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    .line 753
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    const-string v1, "> is still ES after making idle, scheduling retry."

    .line 767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 773
    move-result-object v0

    .line 774
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_12
    sget-object v11, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 779
    iget-object v12, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 781
    const/4 v14, 0x1

    .line 782
    move-object/from16 v16, v2

    .line 784
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/FreecessHandler;->sendMakePkgIdleMsg(Ljava/lang/String;IZILjava/lang/String;)V

    .line 787
    goto/16 :goto_c

    .line 789
    :cond_13
    invoke-virtual {v0, v13, v7}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZ)Ljava/util/ArrayList;

    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 796
    move-result v0

    .line 797
    if-nez v0, :cond_1a

    .line 799
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 801
    if-eqz v0, :cond_14

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    .line 805
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    const-string v1, "> Service stopped, continue."

    .line 819
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    move-result-object v0

    .line 826
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_14
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 831
    invoke-virtual {v0, v15, v9, v2}, Lcom/android/server/am/FreecessHandler;->sendChangeToFrozenMsg(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 834
    goto/16 :goto_c

    .line 836
    :goto_a
    const-string/jumbo v1, "makePkgIdleForLcdOn Exception : "

    .line 839
    invoke-static {v0, v1, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    goto/16 :goto_c

    .line 844
    :pswitch_4
    if-eqz v2, :cond_1a

    .line 846
    const-string/jumbo v1, "packageName"

    .line 849
    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 852
    move-result-object v1

    .line 853
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 855
    const-string/jumbo v3, "userId"

    .line 858
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 861
    move-result v2

    .line 862
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 864
    const-string/jumbo v3, "reason"

    .line 867
    const-string v4, ""

    .line 869
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 872
    if-eqz v1, :cond_1a

    .line 874
    if-eq v2, v10, :cond_1a

    .line 876
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 878
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 880
    invoke-virtual {v0, v2, v1, v8}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    .line 883
    goto/16 :goto_c

    .line 885
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 887
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 889
    if-eqz v1, :cond_15

    .line 891
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 893
    if-eqz v1, :cond_15

    .line 895
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRequestFocusPkg()Ljava/lang/String;

    .line 898
    move-result-object v9

    .line 899
    :cond_15
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 901
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 904
    move-result v1

    .line 905
    invoke-virtual {v0, v1, v9}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 908
    move-result v1

    .line 909
    if-eqz v1, :cond_1a

    .line 911
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 913
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 916
    move-result v1

    .line 917
    const-string/jumbo v2, "has Focus"

    .line 920
    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 923
    goto/16 :goto_c

    .line 925
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 927
    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->cancelCalmMode()V

    .line 930
    goto/16 :goto_c

    .line 932
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleRepeatCalmMode()V

    .line 935
    goto/16 :goto_c

    .line 937
    :pswitch_8
    if-eqz v2, :cond_1a

    .line 939
    const-string/jumbo v1, "list"

    .line 942
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 945
    move-result-object v1

    .line 946
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 948
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->triggerCalmMode(Ljava/util/ArrayList;)V

    .line 951
    goto/16 :goto_c

    .line 953
    :pswitch_9
    if-eqz v2, :cond_1a

    .line 955
    const-string/jumbo v1, "packageName"

    .line 958
    const-string v3, ""

    .line 960
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 963
    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 965
    const-string/jumbo v2, "uid"

    .line 968
    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 971
    move-result v1

    .line 972
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 974
    const-string/jumbo v3, "reason"

    .line 977
    const-string v4, ""

    .line 979
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 982
    move-result-object v2

    .line 983
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 985
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezeSpecialPackage(ILjava/lang/String;)V

    .line 988
    goto/16 :goto_c

    .line 990
    :pswitch_a
    if-eqz v2, :cond_1a

    .line 992
    const-string/jumbo v1, "packageName"

    .line 995
    const-string v3, ""

    .line 997
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    move-result-object v1

    .line 1001
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1003
    const-string/jumbo v3, "uid"

    .line 1006
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1009
    move-result v2

    .line 1010
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1012
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/FreecessController;->deleteRemovedPackage(ILjava/lang/String;)V

    .line 1015
    goto/16 :goto_c

    .line 1017
    :pswitch_b
    if-eqz v2, :cond_1a

    .line 1019
    const-string/jumbo v1, "packageName"

    .line 1022
    const-string v3, ""

    .line 1024
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1027
    move-result-object v1

    .line 1028
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1030
    const-string/jumbo v3, "uid"

    .line 1033
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1036
    move-result v2

    .line 1037
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1039
    invoke-virtual {v0, v2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 1042
    move-result-object v3

    .line 1043
    const-string v4, "FreecessController"

    .line 1045
    if-eqz v3, :cond_17

    .line 1047
    iget-object v5, v3, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 1049
    iget-boolean v5, v5, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 1051
    if-nez v5, :cond_16

    .line 1053
    goto :goto_b

    .line 1054
    :cond_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1057
    move-result-object v2

    .line 1058
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 1060
    invoke-virtual {v5, v2}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    .line 1063
    move-result-object v2

    .line 1064
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1066
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    new-instance v6, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;

    .line 1071
    invoke-direct {v6, v8, v5}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1074
    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/FreecessController;->canUidBeFrozen(Ljava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 1077
    move-result v2

    .line 1078
    if-nez v2, :cond_1a

    .line 1080
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1083
    move-result-object v2

    .line 1084
    const-string/jumbo v5, "unfreeze "

    .line 1087
    const-string v6, "("

    .line 1089
    invoke-static {v5, v1, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    move-result-object v1

    .line 1093
    iget v3, v3, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1095
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1098
    const-string v5, ")in postMonitoringFrozenProcs. reason : "

    .line 1100
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    move-result-object v1

    .line 1110
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1116
    goto/16 :goto_c

    .line 1118
    :cond_17
    :goto_b
    const-string/jumbo v0, "postMonitoringFrozenProcs: u="

    .line 1121
    const-string v1, " is not frozen, return."

    .line 1123
    invoke-static {v2, v0, v1, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    goto/16 :goto_c

    .line 1128
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreezeStateChanged()V

    .line 1131
    goto/16 :goto_c

    .line 1133
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleUnfreezeActivePackages()V

    .line 1136
    goto/16 :goto_c

    .line 1138
    :pswitch_e
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1140
    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->readSysfs()V

    .line 1143
    goto/16 :goto_c

    .line 1145
    :pswitch_f
    if-eqz v2, :cond_1a

    .line 1147
    const-string/jumbo v1, "type"

    .line 1150
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1153
    move-result v1

    .line 1154
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1156
    iput-boolean v8, v0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 1158
    iput-boolean v8, v0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 1160
    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(IZ)V

    .line 1163
    goto/16 :goto_c

    .line 1165
    :pswitch_10
    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1167
    invoke-virtual {v1, v10, v8}, Lcom/android/server/am/FreecessController;->restrictJobsByOlaf(IZ)V

    .line 1170
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1172
    const-string/jumbo v1, "timeout"

    .line 1175
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    .line 1178
    goto/16 :goto_c

    .line 1180
    :pswitch_11
    if-eqz v2, :cond_1a

    .line 1182
    const-string/jumbo v1, "enterFlag"

    .line 1185
    invoke-virtual {v2, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1188
    move-result v1

    .line 1189
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1191
    const-string/jumbo v3, "packageName"

    .line 1194
    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1197
    move-result-object v2

    .line 1198
    iget-object v3, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1200
    const-string/jumbo v4, "uid"

    .line 1203
    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1206
    move-result v3

    .line 1207
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1209
    if-eqz v1, :cond_18

    .line 1211
    invoke-virtual {v0, v3, v7}, Lcom/android/server/am/FreecessController;->restrictJobsByOlaf(IZ)V

    .line 1214
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1216
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1219
    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    .line 1221
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1224
    move-result v1

    .line 1225
    iput v1, v0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    .line 1227
    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/FreecessController;->triggerOLAF(ILjava/lang/String;)V

    .line 1230
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1232
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1235
    iput-object v9, v0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    .line 1237
    const/16 v1, -0xa

    .line 1239
    iput v1, v0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    .line 1241
    goto/16 :goto_c

    .line 1243
    :cond_18
    const-string v1, "Force"

    .line 1245
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v0, v10, v8}, Lcom/android/server/am/FreecessController;->restrictJobsByOlaf(IZ)V

    .line 1251
    goto/16 :goto_c

    .line 1253
    :pswitch_12
    if-eqz v2, :cond_1a

    .line 1255
    const-string/jumbo v1, "uid"

    .line 1258
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1261
    move-result v1

    .line 1262
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1264
    const/4 v2, 0x4

    .line 1265
    invoke-virtual {v0, v2, v1, v8, v8}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    .line 1268
    move-result v1

    .line 1269
    if-gez v1, :cond_1a

    .line 1271
    const-string v1, "FBException"

    .line 1273
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 1276
    goto/16 :goto_c

    .line 1278
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessSettlementPackage()V

    .line 1281
    goto/16 :goto_c

    .line 1283
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessResetAllState()V

    .line 1286
    goto/16 :goto_c

    .line 1288
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessResetState()V

    .line 1291
    goto/16 :goto_c

    .line 1293
    :pswitch_16
    if-eqz v2, :cond_1a

    .line 1295
    const-string/jumbo v1, "packageName"

    .line 1298
    const-string v3, ""

    .line 1300
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1303
    move-result-object v1

    .line 1304
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1306
    const-string/jumbo v3, "uid"

    .line 1309
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1312
    move-result v2

    .line 1313
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1315
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/FreecessController;->lcdOnFreezePackage(ILjava/lang/String;)V

    .line 1318
    goto :goto_c

    .line 1319
    :pswitch_17
    if-eqz v2, :cond_1a

    .line 1321
    const-string/jumbo v1, "packageName"

    .line 1324
    const-string v3, ""

    .line 1326
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1329
    move-result-object v1

    .line 1330
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1332
    const-string/jumbo v5, "userId"

    .line 1335
    invoke-virtual {v2, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1338
    move-result v2

    .line 1339
    iget-object v5, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1341
    const-string/jumbo v6, "reason"

    .line 1344
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1347
    move-result-object v3

    .line 1348
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1350
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(IILjava/lang/String;Ljava/lang/String;)V

    .line 1353
    goto :goto_c

    .line 1354
    :pswitch_18
    if-eqz v2, :cond_1a

    .line 1356
    const-string/jumbo v1, "packageName"

    .line 1359
    const-string v3, ""

    .line 1361
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1364
    move-result-object v1

    .line 1365
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1367
    const-string/jumbo v4, "userId"

    .line 1370
    invoke-virtual {v2, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1373
    move-result v2

    .line 1374
    iget-object v4, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1376
    const-string/jumbo v5, "reason"

    .line 1379
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1382
    move-result-object v3

    .line 1383
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1385
    invoke-virtual {v0, v7, v2, v3, v1}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(IILjava/lang/String;Ljava/lang/String;)V

    .line 1388
    goto :goto_c

    .line 1389
    :pswitch_19
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1391
    if-eqz v1, :cond_19

    .line 1393
    const-string v1, "FreecessHandler"

    .line 1395
    const-string/jumbo v2, "handle FREECESS_LCD_ON_QUICK_FREEZE_MSG...."

    .line 1398
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_19
    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1403
    if-eqz v1, :cond_1a

    .line 1405
    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1407
    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 1410
    sget-object v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 1412
    invoke-virtual {v2}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 1415
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1417
    const-string/jumbo v3, "uid"

    .line 1420
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1423
    move-result v2

    .line 1424
    iget-object v3, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1426
    const-string/jumbo v4, "packageName"

    .line 1429
    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1432
    move-result-object v3

    .line 1433
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1435
    const-string/jumbo v4, "reason"

    .line 1438
    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1441
    move-result-object v0

    .line 1442
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;Ljava/lang/String;)V

    .line 1445
    :cond_1a
    :goto_c
    return-void

    .line 1446
    nop

    .line 1447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final handleRepeatCalmMode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    const-string/jumbo v1, "packageName"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 15
    const-string/jumbo v3, "userId"

    .line 18
    const/4 v4, -0x1

    .line 19
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result v1

    .line 23
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 25
    const-string/jumbo v4, "reason"

    .line 28
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 39
    monitor-enter v3

    .line 40
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_0

    .line 52
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 54
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit v3

    .line 61
    goto :goto_2

    .line 62
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_1
    :goto_2
    return-void
.end method

.method public final handleUnfreezeActivePackages()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    const-string/jumbo v1, "reason"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_5

    .line 15
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string/jumbo v1, "screenOn-widget"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_2

    .line 30
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 35
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 40
    move-result-object v3

    .line 41
    move v4, v2

    .line 42
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 45
    move-result v5

    .line 46
    if-ge v4, v5, :cond_1

    .line 48
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    .line 54
    sget-object v6, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    .line 56
    iget-object v7, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 58
    iget v8, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 60
    iget v9, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 62
    const/4 v10, 0x4

    .line 63
    invoke-virtual {v6, v8, v9, v10, v7}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->filter(IIILjava/lang/String;)I

    .line 66
    move-result v6

    .line 67
    if-lez v6, :cond_0

    .line 69
    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    monitor-exit v1

    .line 79
    goto :goto_6

    .line 80
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_2
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 84
    monitor-enter v1

    .line 85
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 87
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 92
    move-result-object v3

    .line 93
    move v4, v2

    .line 94
    :goto_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 97
    move-result v5

    .line 98
    if-ge v4, v5, :cond_4

    .line 100
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    .line 106
    iget-object v6, v5, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 108
    iget-boolean v6, v6, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 110
    if-eqz v6, :cond_3

    .line 112
    sget-object v6, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 114
    iget v7, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 116
    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_3

    .line 122
    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 125
    goto :goto_4

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    goto :goto_5

    .line 128
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    monitor-exit v1

    .line 132
    goto :goto_6

    .line 133
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    throw p0

    .line 135
    :cond_5
    :goto_6
    return-void
.end method
