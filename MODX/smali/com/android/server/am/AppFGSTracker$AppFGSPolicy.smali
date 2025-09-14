.class public final Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;
.super Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mBgFgsLocationThresholdMs:J

.field public volatile mBgFgsLongRunningThresholdMs:J

.field public volatile mBgFgsMediaPlaybackThresholdMs:J


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string v0, "APP FOREGROUND SERVICE TRACKER POLICY SETTINGS:"

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "  "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    const-string v0, "bg_fgs_long_running_threshold"

    .line 35
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    const/16 v0, 0x3d

    .line 40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 43
    iget-wide v1, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 45
    const-string v3, "bg_fgs_media_playback_threshold"

    .line 47
    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    iget-wide v1, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    .line 55
    const-string v3, "bg_fgs_location_threshold"

    .line 57
    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 63
    iget-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 68
    :cond_0
    return-void
.end method

.method public final getExemptionReasonString(IILjava/lang/String;)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 3
    const/4 v0, -0x1

    .line 4
    move/from16 v1, p2

    .line 6
    if-eq v1, v0, :cond_0

    .line 8
    invoke-static/range {p2 .. p2}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v14

    .line 17
    iget-wide v4, v7, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 19
    iget-wide v0, v7, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 21
    sub-long v0, v14, v0

    .line 23
    const-wide/16 v12, 0x0

    .line 25
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 28
    move-result-wide v16

    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    .line 31
    const-string/jumbo v0, "{mediaPlayback="

    .line 34
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    move-object/from16 v0, p0

    .line 39
    move/from16 v1, p1

    .line 41
    move-wide v2, v14

    .line 42
    move-object/from16 v6, p3

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptMediaPlaybackFGS(IJJLjava/lang/String;)Z

    .line 47
    move-result v0

    .line 48
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, ", location="

    .line 53
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, v7, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 58
    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    .line 60
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 62
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 64
    iget-object v8, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 66
    const/16 v0, 0x8

    .line 68
    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 71
    move-result v10

    .line 72
    move/from16 v9, p1

    .line 74
    move-object v0, v11

    .line 75
    move-object/from16 v11, p3

    .line 77
    move-wide v1, v12

    .line 78
    move-wide/from16 v12, v16

    .line 80
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IILjava/lang/String;JJ)J

    .line 83
    move-result-wide v3

    .line 84
    cmp-long v1, v3, v1

    .line 86
    if-lez v1, :cond_1

    .line 88
    iget-wide v1, v7, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    .line 90
    cmp-long v1, v3, v1

    .line 92
    if-ltz v1, :cond_1

    .line 94
    const/4 v1, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x0

    .line 97
    :goto_0
    const-string/jumbo v2, "}"

    .line 100
    invoke-static {v2, v0, v1}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    return-object v0
.end method

.method public final onMaxTrackingDurationChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 3
    check-cast p0, Lcom/android/server/am/AppFGSTracker;

    .line 5
    invoke-static {p0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V

    .line 8
    return-void
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "bg_fgs_media_playback_threshold"

    .line 3
    const-string v1, "bg_fgs_long_running_threshold"

    .line 5
    const-string v2, "bg_fgs_location_threshold"

    .line 7
    const-wide/32 v3, 0xdbba00

    .line 10
    const-string v5, "activity_manager"

    .line 12
    const/4 v6, -0x1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v7

    .line 17
    sparse-switch v7, :sswitch_data_0

    .line 20
    goto :goto_0

    .line 21
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v7

    .line 25
    if-nez v7, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v6, 0x2

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v7

    .line 34
    if-nez v7, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v6, 0x1

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v7

    .line 43
    if-nez v7, :cond_2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v6, 0x0

    .line 47
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 50
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onPropertiesChanged(Ljava/lang/String;)V

    .line 53
    goto :goto_1

    .line 54
    :pswitch_0
    invoke-static {v5, v0, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 57
    move-result-wide v0

    .line 58
    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    .line 60
    goto :goto_1

    .line 61
    :pswitch_1
    const-wide/32 v2, 0x44aa200

    .line 64
    invoke-static {v5, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 67
    move-result-wide v0

    .line 68
    iget-wide v2, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 70
    cmp-long p1, v0, v2

    .line 72
    if-eqz p1, :cond_3

    .line 74
    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 76
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 78
    check-cast p0, Lcom/android/server/am/AppFGSTracker;

    .line 80
    invoke-static {p0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V

    .line 83
    goto :goto_1

    .line 84
    :pswitch_2
    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 87
    move-result-wide v0

    .line 88
    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    .line 90
    :cond_3
    :goto_1
    return-void

    .line 91
    :sswitch_data_0
    .sparse-switch
        -0x774f54d8 -> :sswitch_2
        0x14fa6a2f -> :sswitch_1
        0x2fe08d09 -> :sswitch_0
    .end sparse-switch

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSystemReady()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onSystemReady()V

    .line 4
    const-string v0, "bg_fgs_long_running_threshold"

    .line 6
    const-wide/32 v1, 0x44aa200

    .line 9
    const-string v3, "activity_manager"

    .line 11
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 14
    move-result-wide v0

    .line 15
    iget-wide v4, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 17
    cmp-long v2, v0, v4

    .line 19
    if-eqz v2, :cond_0

    .line 21
    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 23
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 25
    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    .line 27
    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V

    .line 30
    :cond_0
    const-string v0, "bg_fgs_media_playback_threshold"

    .line 32
    const-wide/32 v1, 0xdbba00

    .line 35
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 38
    move-result-wide v4

    .line 39
    iput-wide v4, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    .line 41
    const-string v0, "bg_fgs_location_threshold"

    .line 43
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    .line 49
    return-void
.end method

.method public final onTrackerEnabled(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 3
    check-cast p0, Lcom/android/server/am/AppFGSTracker;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    .line 23
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 25
    new-instance v1, Landroid/content/ComponentName;

    .line 27
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 29
    const-class v2, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    .line 31
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const/4 p0, -0x1

    .line 35
    invoke-virtual {p1, v0, v1, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_0
    :try_start_3
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    .line 44
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 47
    :catch_0
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 49
    const/4 v0, 0x4

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 55
    monitor-enter p1

    .line 56
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 61
    monitor-exit p1

    .line 62
    :catch_1
    :goto_0
    return-void

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    throw p0
.end method

.method public final shouldExemptMediaPlaybackFGS(IJJLjava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 5
    check-cast v1, Lcom/android/server/am/AppFGSTracker;

    .line 7
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sub-long v2, p2, p4

    .line 14
    const-wide/16 v10, 0x0

    .line 16
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 19
    move-result-wide v12

    .line 20
    iget-object v2, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 22
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    .line 24
    const/4 v4, 0x0

    .line 25
    move/from16 v3, p1

    .line 27
    move-object/from16 v5, p6

    .line 29
    move-wide v6, v12

    .line 30
    move-wide/from16 v8, p2

    .line 32
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IILjava/lang/String;JJ)J

    .line 35
    move-result-wide v14

    .line 36
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 38
    iget-object v2, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 44
    move-result v4

    .line 45
    move/from16 v3, p1

    .line 47
    move-object/from16 v5, p6

    .line 49
    move-wide v6, v12

    .line 50
    move-wide/from16 v8, p2

    .line 52
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IILjava/lang/String;JJ)J

    .line 55
    move-result-wide v1

    .line 56
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 59
    move-result-wide v1

    .line 60
    cmp-long v3, v1, v10

    .line 62
    if-lez v3, :cond_0

    .line 64
    iget-wide v3, v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    .line 66
    cmp-long v0, v1, v3

    .line 68
    if-ltz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 71
    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 73
    return v0
.end method
