.class public final Lcom/samsung/android/server/battery/WatchBatteryManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmRegistered:Z

.field public mAodShowState:I

.field public mConnected:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mProviderUriMap:Ljava/util/HashMap;

.field public mRegistered:Z

.field public mScreenOn:Z

.field public mSyncState:I

.field public mWatchPackageMap:Ljava/util/HashMap;


# virtual methods
.method public final aodShowStateChanged(I)V
    .locals 12

    .line 1
    iput p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const/16 p1, 0x3c

    .line 19
    .line 20
    int-to-long v3, p1

    .line 21
    const-wide/32 v5, 0xea60

    .line 22
    .line 23
    .line 24
    mul-long/2addr v3, v5

    .line 25
    add-long v7, v3, v1

    .line 26
    .line 27
    iget-object v5, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 28
    .line 29
    iget-object v10, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    .line 30
    .line 31
    iget-object v11, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    const-string v9, "WatchBatteryManagerAlarm"

    .line 35
    .line 36
    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 37
    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 43
    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public final checkSyncStart()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkSyncStart() / mSyncState:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " / mRegistered: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " / mScreenOn:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " / mAodShowState:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " / mConnected:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    .line 49
    .line 50
    const-string v2, "WatchBatteryManager"

    .line 51
    .line 52
    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    .line 65
    .line 66
    if-ne v0, v1, :cond_1

    .line 67
    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    .line 77
    .line 78
    .line 79
    iput v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public final checkSyncStop()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkSyncStop() / mSyncState:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " / mRegistered: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " / mScreenOn:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " / mAodShowState:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " / mConnected:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    .line 49
    .line 50
    const-string v2, "WatchBatteryManager"

    .line 51
    .line 52
    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 53
    .line 54
    .line 55
    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    if-ne v0, v1, :cond_0

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    .line 62
    .line 63
    .line 64
    iput v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public final displayStateChanged(Z)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_1

    .line 4
    .line 5
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 8
    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 16
    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 25
    .line 26
    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 31
    .line 32
    if-ne p1, v1, :cond_2

    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    const/16 p1, 0x3c

    .line 39
    .line 40
    int-to-long v4, p1

    .line 41
    const-wide/32 v6, 0xea60

    .line 42
    .line 43
    .line 44
    mul-long/2addr v4, v6

    .line 45
    add-long v8, v4, v2

    .line 46
    .line 47
    iget-object v6, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 48
    .line 49
    iget-object v11, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    .line 50
    .line 51
    iget-object v12, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    const/4 v7, 0x2

    .line 54
    const-string v10, "WatchBatteryManagerAlarm"

    .line 55
    .line 56
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method public final notifyPackageRegistered(Z)V
    .locals 3

    .line 1
    const-string v0, "isRegistered: "

    .line 2
    .line 3
    const-string v1, "/ mSyncState:"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "/ mScreenOn:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 20
    .line 21
    const-string v2, "WatchBatteryManager"

    .line 22
    .line 23
    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStop()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final removeWatchPackageInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    iget-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    .line 51
    .line 52
    iput p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    throw p0

    .line 57
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    throw p0
.end method

.method public final requestBatteryDataSync(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "requestBatteryDataSync syncData: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "WatchBatteryManager"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
