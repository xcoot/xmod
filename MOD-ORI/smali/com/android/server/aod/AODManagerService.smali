.class public final Lcom/android/server/aod/AODManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

.field public static final DEBUG_TURNING_ON_DELAYED:I

.field public static final GREAT_SPEN_USP_LEVEL:I

.field public static final SUPPORT_AOD:Z

.field public static final SUPPORT_AOD_LIVE_CLOCK:Z


# instance fields
.field public mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

.field public mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

.field public final mAODDozeLocks:Ljava/util/ArrayList;

.field public mAODEndTime:I

.field public final mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

.field public final mAODLogHandler:Lcom/android/server/aod/AODManagerService$2;

.field public final mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

.field public mAODStartTime:I

.field public final mAppLogger:Lcom/android/server/aod/AODLogger;

.field public mContentObserver:Lcom/android/server/aod/AODManagerService$4;

.field public final mContext:Landroid/content/Context;

.field public mContextForUser:Landroid/content/Context;

.field public mDefaultDisplayState:I

.field public final mDisplayListener:Lcom/android/server/aod/AODManagerService$3;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mIsAODAnalogLiveClock:Z

.field public mIsAODAuto:Z

.field public mIsAODModeEnabled:Z

.field public mIsAODShowForNewNoti:Z

.field public mIsAODStartStop:Z

.field public mIsAODTapToShow:Z

.field public mIsEdgeShowWhenScreenOff:Z

.field public mIsFingerScreenLock:Z

.field public mIsFingerScreenOffIconAOD:Z

.field public mIsMPSMEnabled:Z

.field public mIsSingleTouchMode:Z

.field public mIsUPSMEnabled:Z

.field public final mListeners:Ljava/util/ArrayList;

.field public final mLiveClockLogger:Lcom/android/server/aod/AODLogger;

.field public final mLock:Ljava/lang/Object;

.field public final mLooper:Landroid/os/Looper;

.field public final mScreenTurningOnLock:Ljava/lang/Object;

.field public final mScreenTurningOnRunnable:Lcom/android/server/aod/AODManagerService$1;

.field public mSpenUspLevel:I

.field public mSystemUiUid:I

.field public mTspH:I

.field public final mTspLogger:Lcom/android/server/aod/AODLogger;

.field public final mTspRects:Ljava/util/HashMap;

.field public mTspW:I

.field public mTspX:I

.field public mTspY:I

.field public final mUserManager:Landroid/os/UserManager;

.field public requestedReCalToTSP:Z


# direct methods
.method public static -$$Nest$macquireDozeInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v8, p1

    .line 3
    const-string v1, "acquireDozeInternal: mAODCallback "

    .line 4
    .line 5
    iget-object v9, v0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v9

    .line 8
    :try_start_0
    const-string v2, "AODManagerService"

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string/jumbo v1, "existed"

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    const-string/jumbo v1, "null"

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", display = "

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v1, v0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget v1, v0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    if-ne v1, v2, :cond_1

    .line 53
    .line 54
    monitor-exit v9

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    iget-object v1, v0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v10, 0x0

    .line 64
    move v2, v10

    .line 65
    :goto_1
    if-ge v2, v1, :cond_3

    .line 66
    .line 67
    iget-object v3, v0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 74
    .line 75
    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    .line 76
    .line 77
    if-ne v3, v8, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v2, -0x1

    .line 84
    :goto_2
    if-gez v2, :cond_8

    .line 85
    .line 86
    new-instance v11, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 87
    .line 88
    move-object v1, v11

    .line 89
    move-object v2, p0

    .line 90
    move-object v3, p1

    .line 91
    move-object v4, p2

    .line 92
    move-object v5, p3

    .line 93
    move/from16 v6, p4

    .line 94
    .line 95
    move/from16 v7, p5

    .line 96
    .line 97
    invoke-direct/range {v1 .. v7}, Lcom/android/server/aod/AODManagerService$AODDozeLock;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    :try_start_1
    invoke-interface {p1, v11, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    :try_start_2
    iget-object v1, v0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iget-object v2, v0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    if-nez v1, :cond_4

    .line 115
    .line 116
    monitor-exit v9

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    iget v1, v0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    if-eq v1, v2, :cond_5

    .line 122
    .line 123
    const/4 v3, 0x3

    .line 124
    if-eq v1, v3, :cond_5

    .line 125
    .line 126
    const/4 v3, 0x4

    .line 127
    if-eq v1, v3, :cond_5

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    iget-object v1, v0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 135
    .line 136
    if-nez v1, :cond_6

    .line 137
    .line 138
    const-string v0, "AODManagerService"

    .line 139
    .line 140
    const-string/jumbo v1, "onAODDozeAcquired : token is null"

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    iget-object v1, v0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    .line 157
    .line 158
    :cond_7
    :goto_3
    monitor-exit v9

    .line 159
    goto :goto_4

    .line 160
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    const-string v1, "AOD doze lock is already dead."

    .line 163
    .line 164
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_8
    const-string v0, "AODManagerService"

    .line 169
    .line 170
    const-string v1, "acquireDozeInternal: already acquired"

    .line 171
    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    monitor-exit v9

    .line 176
    :goto_4
    return-void

    .line 177
    :goto_5
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    throw v0
.end method

.method public static -$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x3e8

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p0, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "Disallowed call for uid "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static -$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x3e8

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    const-string v1, "AODManagerService"

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    array-length v0, v3

    .line 43
    const/4 v2, 0x0

    .line 44
    move v4, v2

    .line 45
    :goto_0
    if-ge v4, v0, :cond_3

    .line 46
    .line 47
    aget-object v5, v3, v4

    .line 48
    .line 49
    :try_start_1
    invoke-virtual {p0, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    and-int/lit16 v5, v5, 0x81

    .line 60
    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v6

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v8, "Could not find package ["

    .line 68
    .line 69
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, "]"

    .line 76
    .line 77
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v1, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string p0, "No known packages with uid "

    .line 91
    .line 92
    invoke-static {v0, p0, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, "Disallowed call for uid "

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_4
    :goto_1
    return-void
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "mAODCallback= "

    .line 5
    .line 6
    .line 7
    const-string v1, "AODMANAGER (dumpsys AODManagerService)"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 13
    .line 14
    .line 15
    sget-boolean v1, Lcom/android/server/aod/AODConfig;->SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

    .line 16
    .line 17
    const-string v1, " AOD Config"

    .line 18
    .line 19
    const-string v2, "  - isAODTouchDisabled="

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-boolean v2, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    .line 26
    .line 27
    const-string v3, "  - isAODDefaultOn="

    .line 28
    .line 29
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-boolean v2, Lcom/android/server/aod/AODConfig;->isFactoryBinary:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const-string v2, "OFF"

    .line 38
    .line 39
    sget-object v3, Lcom/android/server/aod/AODConfig;->AOD_MODE_DEFAULT_VALUE:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 50
    :goto_0
    const-string v3, "ActivityManager.getCurrentUser()="

    .line 51
    .line 52
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 74
    .line 75
    monitor-enter v1

    .line 76
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 110
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "AODDozeLock= "

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 137
    .line 138
    .line 139
    const-string v0, "----- Regarding AOD TSP -----"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string/jumbo v1, "mIsAODModeEnabled(tsp.cmd aod_enable)="

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 153
    .line 154
    const-string/jumbo v2, "mIsSingleTouchMode(tsp.input.enabled)="

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    .line 162
    .line 163
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 167
    .line 168
    monitor-enter v0

    .line 169
    :try_start_1
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_2

    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string/jumbo v4, "tsp touch rect(uid :"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v4, "), "

    .line 212
    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :catchall_1
    move-exception p0

    .line 232
    goto :goto_3

    .line 233
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string/jumbo v1, "tsp touch : x="

    .line 237
    .line 238
    .line 239
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v1, ", y="

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v1, ", w="

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, ", h="

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string/jumbo v0, "live clock image info : null"

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const-string v0, "Self Icon image info : null"

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    .line 296
    .line 297
    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    .line 301
    .line 302
    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    .line 303
    .line 304
    .line 305
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    .line 306
    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    throw p0

    .line 313
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    throw p0
.end method

.method public static -$$Nest$mreadyToScreenTurningOnInternal(Lcom/android/server/aod/AODManagerService;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 5
    .line 6
    .line 7
    sget-boolean v0, Lcom/android/server/aod/AODConfig;->SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "AODManagerService"

    .line 12
    .line 13
    const-string/jumbo v0, "readyToScreenTurningOn : Not allowed"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    const-string v1, "AODManagerService"

    .line 24
    .line 25
    const-string/jumbo v2, "readyToScreenTurningOn"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Lcom/android/server/aod/AODManagerService$1;

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    const-string p0, "AODManagerService"

    .line 52
    .line 53
    const-string/jumbo v1, "readyToScreenTurningOn : Do nothing, There is no Listener"

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    monitor-exit v0

    .line 60
    :goto_1
    return-void

    .line 61
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public static -$$Nest$mregisterAODDozeCallbackInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "AODManagerService"

    .line 9
    .line 10
    const-string/jumbo v2, "registerAODDozeCallbackInternal"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string p0, "AODManagerService"

    .line 35
    .line 36
    const-string/jumbo p1, "registerAODDozeCallbackInternal : already registered"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public static -$$Nest$mregisterAODListenerInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    .line 25
    .line 26
    invoke-interface {p1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const-string p0, "AODManagerService"

    .line 33
    .line 34
    const-string/jumbo p1, "registerAODListenerInternal : already registered"

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    :goto_0
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public static -$$Nest$mreleaseDozeInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "releaseDozeInternal: mAODCallback "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "AODManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo v0, "existed"

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    const-string/jumbo v0, "null"

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", display = "

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    if-eq v0, v2, :cond_7

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    if-ne v0, v3, :cond_1

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v3, 0x0

    .line 64
    move v4, v3

    .line 65
    :goto_1
    if-ge v4, v0, :cond_3

    .line 66
    .line 67
    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 74
    .line 75
    iget-object v5, v5, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    .line 76
    .line 77
    if-ne v5, p1, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v4, -0x1

    .line 84
    :goto_2
    if-gez v4, :cond_4

    .line 85
    .line 86
    const-string p0, "AODManagerService"

    .line 87
    .line 88
    const-string/jumbo p1, "releaseDozeInternal: cannot find"

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    monitor-exit v1

    .line 95
    goto :goto_5

    .line 96
    :cond_4
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 103
    .line 104
    iget-object v0, p1, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    .line 105
    .line 106
    invoke-interface {v0, p1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 123
    .line 124
    if-eqz p0, :cond_6

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 127
    .line 128
    if-nez p1, :cond_5

    .line 129
    .line 130
    const-string p0, "AODManagerService"

    .line 131
    .line 132
    const-string/jumbo p1, "onAODDozeReleased : token is null"

    .line 133
    .line 134
    .line 135
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_3
    monitor-exit v1

    .line 151
    goto :goto_5

    .line 152
    :cond_7
    :goto_4
    monitor-exit v1

    .line 153
    :goto_5
    return-void

    .line 154
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    throw p0
.end method

.method public static -$$Nest$mrequestAODToastInternal(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODToast;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "requestAODToastInternal: mAODCallback "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "AODManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo v0, "existed"

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const-string/jumbo v0, "null"

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", toast: "

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    const-string p0, "AODManagerService"

    .line 54
    .line 55
    const-string/jumbo p1, "onAODDozeReleased : token is null"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    monitor-exit v1

    .line 77
    return-void

    .line 78
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public static -$$Nest$munregisterAODDozeCallbackInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 9
    .line 10
    invoke-interface {p1, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "AODManagerService"

    .line 17
    .line 18
    const-string/jumbo v2, "unregisterAODDozeCallbackInternal"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const-string p0, "AODManagerService"

    .line 37
    .line 38
    const-string/jumbo p1, "unregisterAODDozeCallbackInternal : cannot find matched callback"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public static -$$Nest$munregisterAODListenerInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v4, v3, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    .line 26
    .line 27
    invoke-interface {p1, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    move-object v2, v3

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    if-nez v2, :cond_2

    .line 38
    .line 39
    const-string p0, "AODManagerService"

    .line 40
    .line 41
    const-string/jumbo p1, "unregisterAODListenerInternal : cannot find the matched host"

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_3
    const/4 p0, 0x0

    .line 63
    invoke-interface {p1, v2, p0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    :goto_1
    return-void

    .line 68
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public static -$$Nest$mupdateAODNotiTspRectInternal(Lcom/android/server/aod/AODManagerService;IIIILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    if-gez p3, :cond_0

    .line 11
    .line 12
    if-gez p4, :cond_0

    .line 13
    .line 14
    if-gez p1, :cond_0

    .line 15
    .line 16
    if-gez p2, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/graphics/Rect;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Landroid/graphics/Rect;

    .line 38
    .line 39
    add-int/2addr p1, p3

    .line 40
    add-int/2addr p2, p4

    .line 41
    invoke-direct {v1, p3, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p1, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iput p3, v1, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    iput p4, v1, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    add-int/2addr p3, p1

    .line 55
    iput p3, v1, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    add-int/2addr p4, p2

    .line 58
    iput p4, v1, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    :goto_0
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-lez p1, :cond_3

    .line 67
    .line 68
    new-instance p1, Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_2

    .line 88
    .line 89
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Ljava/util/Map$Entry;

    .line 94
    .line 95
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    check-cast p4, Landroid/graphics/Rect;

    .line 100
    .line 101
    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 102
    .line 103
    .line 104
    const-string p4, "AODManagerService"

    .line 105
    .line 106
    new-instance p5, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string/jumbo v1, "updateAODNotiTspRectInternal union: key : "

    .line 112
    .line 113
    .line 114
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    check-cast p3, Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p3, " rect : "

    .line 127
    .line 128
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-static {p4, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    iput p2, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    .line 145
    .line 146
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 147
    .line 148
    iput p3, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    .line 149
    .line 150
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 151
    .line 152
    sub-int/2addr p4, p2

    .line 153
    iput p4, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    .line 154
    .line 155
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 156
    .line 157
    sub-int/2addr p1, p3

    .line 158
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 161
    .line 162
    if-eqz p0, :cond_3

    .line 163
    .line 164
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setAodNotiRect(IIII)I

    .line 165
    .line 166
    .line 167
    :cond_3
    monitor-exit v0

    .line 168
    return-void

    .line 169
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    throw p0
.end method

.method public static -$$Nest$mwriteAODCommandInternal(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "writeAODCommandInternal finally Exception : "

    .line 2
    .line 3
    .line 4
    const-string v1, "AODManagerService"

    .line 5
    .line 6
    const-string/jumbo v2, "writeAODCommandInternal FileNotFoundException : "

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "writeAODCommandInternal IOException : "

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "writeAODCommandInternal file.exists() : "

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    .line 41
    .line 42
    invoke-direct {p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_1
    const-string p0, "UTF-8"

    .line 46
    .line 47
    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :catch_0
    move-exception p0

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :catch_1
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :catch_2
    move-exception p0

    .line 86
    goto :goto_3

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    move-object v6, p1

    .line 89
    move-object p1, p0

    .line 90
    move-object p0, v6

    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :catch_3
    move-exception p1

    .line 94
    move-object v6, p1

    .line 95
    move-object p1, p0

    .line 96
    move-object p0, v6

    .line 97
    goto :goto_2

    .line 98
    :catch_4
    move-exception p1

    .line 99
    move-object v6, p1

    .line 100
    move-object p1, p0

    .line 101
    move-object p0, v6

    .line 102
    goto :goto_3

    .line 103
    :cond_1
    :goto_1
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p2, " , file.canWrite() : "

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :goto_2
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    .line 152
    .line 153
    if-eqz p1, :cond_2

    .line 154
    .line 155
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :catch_5
    move-exception p0

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :goto_3
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 182
    .line 183
    .line 184
    if-eqz p1, :cond_2

    .line 185
    .line 186
    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :catch_6
    move-exception p0

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_2
    :goto_4
    return-void

    .line 199
    :goto_5
    if-eqz p1, :cond_3

    .line 200
    .line 201
    :try_start_8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 202
    .line 203
    .line 204
    goto :goto_6

    .line 205
    :catch_7
    move-exception p1

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :cond_3
    :goto_6
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "debug.aod.turningondelay"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 10
    .line 11
    const-string/jumbo v0, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    .line 19
    .line 20
    const/16 v0, 0x1e

    .line 21
    .line 22
    sput v0, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    .line 23
    .line 24
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v3, "aodversion"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sput-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD:Z

    .line 43
    .line 44
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "activeclock"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sput-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD_LIVE_CLOCK:Z

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAuto:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODShowForNewNoti:Z

    .line 40
    .line 41
    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mAODStartTime:I

    .line 42
    .line 43
    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mAODEndTime:I

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    .line 56
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v1, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    .line 75
    .line 76
    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    .line 78
    .line 79
    new-instance v2, Lcom/android/server/aod/AODLogger;

    .line 80
    .line 81
    const-string v3, "AODManagerService_App"

    .line 82
    .line 83
    const/16 v4, 0x3e8

    .line 84
    .line 85
    invoke-direct {v2, v3, v4}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    .line 89
    .line 90
    new-instance v2, Lcom/android/server/aod/AODLogger;

    .line 91
    .line 92
    const-string v3, "AODManagerService_LiveClock"

    .line 93
    .line 94
    const/16 v4, 0x96

    .line 95
    .line 96
    invoke-direct {v2, v3, v4}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    .line 100
    .line 101
    new-instance v2, Lcom/android/server/aod/AODLogger;

    .line 102
    .line 103
    const-string v3, "AODManagerService_TSP"

    .line 104
    .line 105
    invoke-direct {v2, v3, v4}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    .line 109
    .line 110
    new-instance v2, Lcom/android/server/aod/AODManagerService$1;

    .line 111
    .line 112
    invoke-direct {v2, p0}, Lcom/android/server/aod/AODManagerService$1;-><init>(Lcom/android/server/aod/AODManagerService;)V

    .line 113
    .line 114
    .line 115
    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Lcom/android/server/aod/AODManagerService$1;

    .line 116
    .line 117
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->requestedReCalToTSP:Z

    .line 118
    .line 119
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContextForUser:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mUserManager:Landroid/os/UserManager;

    .line 128
    .line 129
    new-instance v2, Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 130
    .line 131
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const/4 v4, 0x0

    .line 140
    const/4 v5, 0x1

    .line 141
    invoke-direct {v2, v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 142
    .line 143
    .line 144
    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 145
    .line 146
    new-instance v3, Landroid/os/Handler;

    .line 147
    .line 148
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    iput-object v3, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    .line 156
    .line 157
    new-instance v3, Landroid/os/HandlerThread;

    .line 158
    .line 159
    const-string v6, "AODManagerService.LogThread"

    .line 160
    .line 161
    const/16 v7, 0xa

    .line 162
    .line 163
    invoke-direct {v3, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 167
    .line 168
    .line 169
    new-instance v6, Lcom/android/server/aod/AODManagerService$2;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const/4 v7, 0x0

    .line 176
    invoke-direct {v6, p0, v3, v7}, Lcom/android/server/aod/AODManagerService$2;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 177
    .line 178
    .line 179
    iput-object v6, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 180
    .line 181
    const-string v3, "SemInputDeviceManagerService"

    .line 182
    .line 183
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 188
    .line 189
    iput-object v3, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 190
    .line 191
    new-instance v3, Lcom/android/server/aod/AODSettingHelper;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    iput v5, v3, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    iput-object v6, v3, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 203
    .line 204
    const-string v7, "aod_mode"

    .line 205
    .line 206
    const/4 v8, -0x2

    .line 207
    invoke-static {v6, v7, v1, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    sget-boolean v10, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD:Z

    .line 212
    .line 213
    if-eqz v10, :cond_1

    .line 214
    .line 215
    if-ne v9, v1, :cond_2

    .line 216
    .line 217
    sget-boolean v9, Lcom/android/server/aod/AODConfig;->isFactoryBinary:Z

    .line 218
    .line 219
    if-nez v9, :cond_0

    .line 220
    .line 221
    const-string v9, "OFF"

    .line 222
    .line 223
    sget-object v10, Lcom/android/server/aod/AODConfig;->AOD_MODE_DEFAULT_VALUE:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-nez v9, :cond_0

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_0
    move v5, v0

    .line 233
    :goto_0
    iput v5, v3, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    .line 234
    .line 235
    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_1
    invoke-static {v6, v7, v0, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 240
    .line 241
    .line 242
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 243
    .line 244
    new-instance v3, Lcom/android/server/aod/AODManagerService$SettingsObserver;

    .line 245
    .line 246
    invoke-direct {v3, p0, v2}, Lcom/android/server/aod/AODManagerService$SettingsObserver;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODHandler;)V

    .line 247
    .line 248
    .line 249
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 261
    .line 262
    .line 263
    const-string v5, "aod_show_state"

    .line 264
    .line 265
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 270
    .line 271
    .line 272
    const-string v5, "aod_tap_to_show_mode"

    .line 273
    .line 274
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 279
    .line 280
    .line 281
    const-string v5, "aod_display_mode_auto"

    .line 282
    .line 283
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 288
    .line 289
    .line 290
    const-string v5, "aod_show_for_new_noti"

    .line 291
    .line 292
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 297
    .line 298
    .line 299
    const-string v5, "aod_mode_start_time"

    .line 300
    .line 301
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 306
    .line 307
    .line 308
    const-string v5, "aod_mode_end_time"

    .line 309
    .line 310
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    .line 316
    .line 317
    const-string/jumbo v5, "fingerprint_screen_lock"

    .line 318
    .line 319
    .line 320
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 325
    .line 326
    .line 327
    const-string/jumbo v5, "fingerprint_screen_off_icon_aod"

    .line 328
    .line 329
    .line 330
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 335
    .line 336
    .line 337
    const-string/jumbo v5, "edge_lighting_show_condition"

    .line 338
    .line 339
    .line 340
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 345
    .line 346
    .line 347
    const-string/jumbo v5, "doze_always_on"

    .line 348
    .line 349
    .line 350
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 355
    .line 356
    .line 357
    const-string/jumbo v5, "low_power"

    .line 358
    .line 359
    .line 360
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 365
    .line 366
    .line 367
    const-string/jumbo v5, "ultra_powersaving_mode"

    .line 368
    .line 369
    .line 370
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    invoke-virtual {v2, v5, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 375
    .line 376
    .line 377
    const-string/jumbo v1, "observe"

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0, v1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    .line 384
    .line 385
    .line 386
    const-string/jumbo v1, "display"

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 394
    .line 395
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 396
    .line 397
    new-instance v1, Lcom/android/server/aod/AODManagerService$3;

    .line 398
    .line 399
    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$3;-><init>(Lcom/android/server/aod/AODManagerService;)V

    .line 400
    .line 401
    .line 402
    if-eqz p1, :cond_3

    .line 403
    .line 404
    invoke-virtual {p1, v1, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    if-eqz p1, :cond_3

    .line 412
    .line 413
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V

    .line 418
    .line 419
    .line 420
    :cond_3
    const-string p0, "AOD_SCREEN_TURNING_ON_TIMEOUT : 0"

    .line 421
    .line 422
    const-string p1, "AODManagerService"

    .line 423
    .line 424
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    return-void
.end method

.method public static checkSystemUid()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Disallowed call for uid "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public static displayStateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "DOZE_SUSPEND"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, "DOZE"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const-string p0, "ON"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const-string p0, "OFF"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    const-string p0, "UNKNOWN"

    .line 33
    .line 34
    return-object p0
.end method

.method public static native setActiveImage(I[B)I
.end method

.method public static native setAnalogClockInfo(IIII)I
.end method

.method public static native setAnalogClockInfoV4(IIIIII)I
.end method

.method public static native setCurrentTime(IIIIII)I
.end method

.method public static native setDigitalClockInfo(IIIIIIIIIIIIIIIIIIII)I
.end method

.method public static native setDigitalClockInfoV4(IIIIIIIIIIIIIIII)I
.end method

.method public static native setLiveClockCommand(III[I)I
.end method

.method public static native setLiveClockImage(II[B)I
.end method

.method public static native setLiveClockInfo(IJJJJJJJJ)I
.end method

.method public static native setLiveClockNeedle([B)V
.end method

.method public static native setSelfGridInfo(IIIII)I
.end method

.method public static native setSelfIconInfo(IIIIII)I
.end method

.method public static native setSelfPartialHLPMScan(IIIIIIIII)I
.end method

.method public static native turnOffSelfMove()I
.end method

.method public static native turnOnSelfMove()I
.end method


# virtual methods
.method public final addAODTspLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "AODManagerService"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getAODClockType()I
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mContextForUser:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-lez p0, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_4

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_3
    return v0

    .line 53
    :goto_4
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    .line 57
    .line 58
    :cond_2
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x258

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v0, "SemInputDeviceManagerService"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string p0, "AODManagerService"

    .line 27
    .line 28
    const-string/jumbo p1, "onBootPhase() mInputDeviceManager is null"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    const-string/jumbo v1, "com.android.systemui"

    .line 10
    .line 11
    .line 12
    const-wide/32 v2, 0x100000

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    .line 21
    .line 22
    const-string v1, "AODManagerService"

    .line 23
    .line 24
    if-gtz v0, :cond_0

    .line 25
    .line 26
    const-string v0, "SysUI package not found!"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v0, Lcom/android/server/aod/AODManagerService$BinderService;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 37
    .line 38
    .line 39
    const-class v0, Lcom/samsung/android/aod/AODManagerInternal;

    .line 40
    .line 41
    new-instance v1, Lcom/android/server/aod/AODManagerService$LocalService;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUserSwitching from="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p1, " to="

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContextForUser:Landroid/content/Context;

    .line 39
    .line 40
    sget-boolean p1, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD_LIVE_CLOCK:Z

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mUserManager:Landroid/os/UserManager;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->registerAODClockContentObserver()V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUserUnlocked: user="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "AODManagerService"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    sget-boolean p1, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD_LIVE_CLOCK:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->registerAODClockContentObserver()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final registerAODClockContentObserver()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Lcom/android/server/aod/AODManagerService$4;

    .line 8
    .line 9
    const-string v2, "AODManagerService"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string/jumbo v1, "registerAODClockContentObserver unregister before ContentObserver"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Lcom/android/server/aod/AODManagerService$4;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Lcom/android/server/aod/AODManagerService$4;

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getAODClockType()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    div-int/lit16 v1, v1, 0x2710

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-ne v1, v4, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v4, v3

    .line 39
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v4, "registerAODClockContentObserver: mIsAODAnalogLiveClock : "

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/android/server/aod/AODManagerService$4;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 64
    .line 65
    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$4;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Lcom/android/server/aod/AODManagerService$4;

    .line 69
    .line 70
    sget-object p0, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    .line 71
    .line 72
    const/4 v2, -0x2

    .line 73
    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final updateAODTspRectInternal(IIIILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    if-gez p3, :cond_0

    .line 8
    .line 9
    if-gez p4, :cond_0

    .line 10
    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    if-gez p2, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/graphics/Rect;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Landroid/graphics/Rect;

    .line 35
    .line 36
    add-int/2addr p1, p3

    .line 37
    add-int/2addr p2, p4

    .line 38
    invoke-direct {v1, p3, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {p1, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput p3, v1, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    iput p4, v1, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    add-int/2addr p3, p1

    .line 52
    iput p3, v1, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    add-int/2addr p4, p2

    .line 55
    iput p4, v1, Landroid/graphics/Rect;->bottom:I

    .line 56
    .line 57
    :goto_0
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-lez p1, :cond_3

    .line 64
    .line 65
    new-instance p1, Landroid/graphics/Rect;

    .line 66
    .line 67
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-eqz p3, :cond_2

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    check-cast p3, Ljava/util/Map$Entry;

    .line 91
    .line 92
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    check-cast p4, Landroid/graphics/Rect;

    .line 97
    .line 98
    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 99
    .line 100
    .line 101
    const-string p4, "AODManagerService"

    .line 102
    .line 103
    new-instance p5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string/jumbo v1, "updateAODTspRectInternal union: key : "

    .line 109
    .line 110
    .line 111
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    check-cast p3, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p3, " rect : "

    .line 124
    .line 125
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    invoke-static {p4, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 140
    .line 141
    iput p2, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    .line 142
    .line 143
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 144
    .line 145
    iput p3, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    .line 146
    .line 147
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 148
    .line 149
    sub-int/2addr p4, p2

    .line 150
    iput p4, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    .line 151
    .line 152
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 153
    .line 154
    sub-int/2addr p1, p3

    .line 155
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 158
    .line 159
    if-eqz p0, :cond_3

    .line 160
    .line 161
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setAodRect(IIII)I

    .line 162
    .line 163
    .line 164
    :cond_3
    monitor-exit v0

    .line 165
    return-void

    .line 166
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw p0
.end method

.method public final updateAODTspState$1()V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "updateAODTspState: [Factory Binary Mode] NOT update TSP state"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string/jumbo v0, "updateAODTspState: [Not support AOD model] NOT update TSP state"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v1, "updateAODTspState: mIsAODModeEnabled="

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", mIsEdgeShowEnabled="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    const/4 v2, 0x0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move v0, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    move v0, v1

    .line 69
    :goto_1
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 70
    .line 71
    .line 72
    sget-boolean v3, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    const-string/jumbo v0, "updateAODTspState skip -- AOD TSP"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_4
    if-nez v0, :cond_6

    .line 84
    .line 85
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 86
    .line 87
    monitor-enter v4

    .line 88
    :try_start_0
    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 89
    .line 90
    const-string/jumbo v6, "com.samsung.android.app.aodservice"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Landroid/graphics/Rect;

    .line 98
    .line 99
    if-eqz v5, :cond_5

    .line 100
    .line 101
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-nez v5, :cond_5

    .line 106
    .line 107
    const-string/jumbo v11, "com.samsung.android.app.aodservice"

    .line 108
    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v10, 0x0

    .line 114
    move-object v6, p0

    .line 115
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_3

    .line 121
    :cond_5
    :goto_2
    monitor-exit v4

    .line 122
    goto :goto_4

    .line 123
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0

    .line 125
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 126
    .line 127
    if-eqz v4, :cond_7

    .line 128
    .line 129
    invoke-virtual {v4, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setAodEnable(I)I

    .line 130
    .line 131
    .line 132
    :cond_7
    :goto_5
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    .line 133
    .line 134
    const/4 v4, -0x1

    .line 135
    if-ne v0, v4, :cond_8

    .line 136
    .line 137
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    .line 142
    .line 143
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    .line 148
    .line 149
    const-string v0, "AODManagerService"

    .line 150
    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v5, "updateAODTspState: mSpenUspLevel = "

    .line 154
    .line 155
    .line 156
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    .line 160
    .line 161
    invoke-static {v4, v5, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_8
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    .line 165
    .line 166
    sget v4, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    .line 167
    .line 168
    if-lt v0, v4, :cond_f

    .line 169
    .line 170
    const-string/jumbo v0, "updateAODWacomState"

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v0, "/sys/class/sec/sec_epen/aod_enable"

    .line 177
    .line 178
    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 179
    .line 180
    if-nez v4, :cond_a

    .line 181
    .line 182
    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    .line 183
    .line 184
    if-eqz v4, :cond_9

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_9
    move v1, v2

    .line 188
    :cond_a
    :goto_6
    const-string/jumbo v2, "updateAODWacomState -- "

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 192
    .line 193
    .line 194
    if-eqz v3, :cond_b

    .line 195
    .line 196
    const-string/jumbo v0, "updateAODWacomState skip -- AOD Wacom"

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_d

    .line 203
    .line 204
    :cond_b
    const/4 v3, 0x0

    .line 205
    :try_start_1
    new-instance v4, Ljava/io/File;

    .line 206
    .line 207
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_f

    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_c

    .line 221
    .line 222
    goto/16 :goto_d

    .line 223
    .line 224
    :cond_c
    new-instance v0, Ljava/io/FileOutputStream;

    .line 225
    .line 226
    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 227
    .line 228
    .line 229
    if-eqz v1, :cond_d

    .line 230
    .line 231
    :try_start_2
    const-string v1, "1"

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :catchall_1
    move-exception v1

    .line 235
    move-object v3, v0

    .line 236
    goto :goto_b

    .line 237
    :catch_0
    move-exception v1

    .line 238
    move-object v3, v0

    .line 239
    goto :goto_9

    .line 240
    :catch_1
    move-exception v1

    .line 241
    move-object v3, v0

    .line 242
    goto :goto_a

    .line 243
    :cond_d
    const-string v1, "0"

    .line 244
    .line 245
    :goto_7
    const-string v3, "UTF-8"

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    .line 256
    .line 257
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 258
    .line 259
    .line 260
    goto :goto_d

    .line 261
    :catch_2
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_d

    .line 282
    :catchall_2
    move-exception v1

    .line 283
    goto :goto_b

    .line 284
    :catch_3
    move-exception v1

    .line 285
    goto :goto_9

    .line 286
    :catch_4
    move-exception v1

    .line 287
    goto :goto_a

    .line 288
    :goto_9
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    const-string/jumbo v0, "updateAODWacomState -- IOException"

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 295
    .line 296
    .line 297
    if-eqz v3, :cond_f

    .line 298
    .line 299
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 300
    .line 301
    .line 302
    goto :goto_d

    .line 303
    :catch_5
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto :goto_8

    .line 310
    :goto_a
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 311
    .line 312
    .line 313
    const-string/jumbo v0, "updateAODWacomState -- FileNotFoundException"

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 317
    .line 318
    .line 319
    if-eqz v3, :cond_f

    .line 320
    .line 321
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 322
    .line 323
    .line 324
    goto :goto_d

    .line 325
    :catch_6
    move-exception v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    goto :goto_8

    .line 332
    :goto_b
    if-eqz v3, :cond_e

    .line 333
    .line 334
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 335
    .line 336
    .line 337
    goto :goto_c

    .line 338
    :catch_7
    move-exception v0

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :cond_e
    :goto_c
    throw v1

    .line 359
    :cond_f
    :goto_d
    return-void
.end method

.method public final updateDefaultDisplayState(I)V
    .locals 7

    .line 1
    const-string/jumbo v0, "updateDefaultDisplayState clear aod_show_state, previousDisplayState="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "requestReCalToTSP IsSingleTouchMode = "

    .line 5
    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eq p1, v4, :cond_4

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    if-eq p1, v5, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    :try_start_0
    const-string v5, "AODManagerService"

    .line 23
    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    .line 30
    .line 31
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "requestedReCalToTSP = "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->requestedReCalToTSP:Z

    .line 41
    .line 42
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " / previousDisplayState = "

    .line 46
    .line 47
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->displayStateToString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->requestedReCalToTSP:Z

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    const/4 v1, 0x3

    .line 70
    if-eq v2, v1, :cond_1

    .line 71
    .line 72
    const/4 v1, 0x4

    .line 73
    if-ne v2, v1, :cond_3

    .line 74
    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSyncChanged(I)I

    .line 80
    .line 81
    .line 82
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->requestedReCalToTSP:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    :goto_0
    if-eq v2, p1, :cond_5

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 92
    .line 93
    const-string v1, "aod_show_state"

    .line 94
    .line 95
    const/4 v6, -0x2

    .line 96
    invoke-static {p1, v1, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-ne p1, v4, :cond_5

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 105
    .line 106
    const-string p1, "aod_show_state"

    .line 107
    .line 108
    invoke-static {p0, p1, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 109
    .line 110
    .line 111
    const-string p0, "AODManagerService"

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->displayStateToString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    :goto_2
    monitor-exit v3

    .line 158
    return-void

    .line 159
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    throw p0
.end method

.method public final updateSettings()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string/jumbo v2, "updateSettings: changePowerSavingModeAndOthers AODMode["

    .line 4
    .line 5
    .line 6
    const-string/jumbo v3, "updateSettings: singletap_enable[0] AODMode["

    .line 7
    .line 8
    .line 9
    const-string/jumbo v4, "updateSettings: singletap_enable[1] AODMode["

    .line 10
    .line 11
    .line 12
    iget-object v5, v1, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v5

    .line 15
    :try_start_0
    iget-object v0, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 16
    .line 17
    iget-object v6, v0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 18
    .line 19
    iget v0, v0, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    .line 20
    .line 21
    const-string v7, "aod_mode"

    .line 22
    .line 23
    const/4 v8, -0x2

    .line 24
    invoke-static {v6, v7, v0, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x1

    .line 30
    if-ne v0, v7, :cond_0

    .line 31
    .line 32
    move v0, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v6

    .line 35
    :goto_0
    iget-object v9, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 36
    .line 37
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-boolean v10, Lcom/android/server/aod/AODConfig;->isTapToShowDisabled:Z

    .line 41
    .line 42
    if-eqz v10, :cond_2

    .line 43
    .line 44
    :cond_1
    move v9, v6

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v9, v9, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 47
    .line 48
    const-string v10, "aod_tap_to_show_mode"

    .line 49
    .line 50
    invoke-static {v9, v10, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-ne v9, v7, :cond_1

    .line 55
    .line 56
    move v9, v7

    .line 57
    :goto_1
    iget-object v10, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 58
    .line 59
    iget-object v10, v10, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 60
    .line 61
    const-string/jumbo v11, "fingerprint_screen_lock"

    .line 62
    .line 63
    .line 64
    invoke-static {v10, v11, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-ne v10, v7, :cond_3

    .line 69
    .line 70
    move v10, v7

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move v10, v6

    .line 73
    :goto_2
    iget-object v11, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 74
    .line 75
    iget-object v11, v11, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 76
    .line 77
    const-string/jumbo v12, "fingerprint_screen_off_icon_aod"

    .line 78
    .line 79
    .line 80
    const/4 v13, -0x1

    .line 81
    invoke-static {v11, v12, v13, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    if-ne v11, v7, :cond_4

    .line 86
    .line 87
    move v11, v7

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move v11, v6

    .line 90
    :goto_3
    iget-object v12, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 91
    .line 92
    iget-object v12, v12, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 93
    .line 94
    const-string/jumbo v13, "edge_lighting_show_condition"

    .line 95
    .line 96
    .line 97
    invoke-static {v12, v13, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-eq v12, v7, :cond_5

    .line 102
    .line 103
    move v12, v7

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    move v12, v6

    .line 106
    :goto_4
    iget-object v13, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 107
    .line 108
    iget-object v13, v13, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 109
    .line 110
    const-string/jumbo v14, "low_power"

    .line 111
    .line 112
    .line 113
    invoke-static {v13, v14, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    if-ne v13, v7, :cond_6

    .line 118
    .line 119
    move v13, v7

    .line 120
    goto :goto_5

    .line 121
    :cond_6
    move v13, v6

    .line 122
    :goto_5
    iget-object v14, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 123
    .line 124
    iget-object v14, v14, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 125
    .line 126
    const-string/jumbo v15, "ultra_powersaving_mode"

    .line 127
    .line 128
    .line 129
    invoke-static {v14, v15, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-ne v14, v7, :cond_7

    .line 134
    .line 135
    move v14, v7

    .line 136
    goto :goto_6

    .line 137
    :cond_7
    move v14, v6

    .line 138
    :goto_6
    iget-object v15, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 139
    .line 140
    iget-object v15, v15, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 141
    .line 142
    const-string v7, "aod_display_mode_auto"

    .line 143
    .line 144
    invoke-static {v15, v7, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    const/4 v15, 0x1

    .line 149
    if-ne v7, v15, :cond_8

    .line 150
    .line 151
    move v7, v15

    .line 152
    goto :goto_7

    .line 153
    :cond_8
    move v7, v6

    .line 154
    :goto_7
    iget-object v15, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 155
    .line 156
    iget-object v15, v15, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 157
    .line 158
    move-object/from16 v16, v2

    .line 159
    .line 160
    const-string v2, "aod_show_for_new_noti"

    .line 161
    .line 162
    invoke-static {v15, v2, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    const/4 v15, 0x1

    .line 167
    if-ne v2, v15, :cond_9

    .line 168
    .line 169
    const/4 v15, 0x1

    .line 170
    goto :goto_8

    .line 171
    :cond_9
    move v15, v6

    .line 172
    :goto_8
    iget-object v2, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 173
    .line 174
    iget-object v2, v2, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 175
    .line 176
    move-object/from16 v17, v3

    .line 177
    .line 178
    const-string v3, "aod_mode_start_time"

    .line 179
    .line 180
    invoke-static {v2, v3, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    iget-object v3, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 185
    .line 186
    iget-object v3, v3, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 187
    .line 188
    move-object/from16 v18, v4

    .line 189
    .line 190
    const-string v4, "aod_mode_end_time"

    .line 191
    .line 192
    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 197
    .line 198
    if-ne v4, v0, :cond_b

    .line 199
    .line 200
    iget-boolean v6, v1, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 201
    .line 202
    if-ne v6, v9, :cond_b

    .line 203
    .line 204
    iget-boolean v6, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 205
    .line 206
    if-ne v6, v10, :cond_b

    .line 207
    .line 208
    iget-boolean v6, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 209
    .line 210
    if-ne v6, v11, :cond_b

    .line 211
    .line 212
    iget-boolean v6, v1, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    .line 213
    .line 214
    if-eq v6, v12, :cond_a

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_a
    const/4 v6, 0x0

    .line 218
    goto :goto_a

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    goto/16 :goto_11

    .line 221
    .line 222
    :cond_b
    :goto_9
    const/4 v6, 0x1

    .line 223
    :goto_a
    if-nez v6, :cond_d

    .line 224
    .line 225
    iget-boolean v8, v1, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 226
    .line 227
    if-ne v8, v13, :cond_c

    .line 228
    .line 229
    iget-boolean v8, v1, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 230
    .line 231
    if-ne v8, v14, :cond_c

    .line 232
    .line 233
    iget-boolean v8, v1, Lcom/android/server/aod/AODManagerService;->mIsAODAuto:Z

    .line 234
    .line 235
    if-ne v8, v7, :cond_c

    .line 236
    .line 237
    iget-boolean v8, v1, Lcom/android/server/aod/AODManagerService;->mIsAODShowForNewNoti:Z

    .line 238
    .line 239
    if-ne v8, v15, :cond_c

    .line 240
    .line 241
    iget v8, v1, Lcom/android/server/aod/AODManagerService;->mAODStartTime:I

    .line 242
    .line 243
    if-ne v8, v2, :cond_c

    .line 244
    .line 245
    iget v8, v1, Lcom/android/server/aod/AODManagerService;->mAODEndTime:I

    .line 246
    .line 247
    if-eq v8, v3, :cond_d

    .line 248
    .line 249
    :cond_c
    const/4 v8, 0x1

    .line 250
    goto :goto_b

    .line 251
    :cond_d
    const/4 v8, 0x0

    .line 252
    :goto_b
    if-eqz v6, :cond_16

    .line 253
    .line 254
    if-ne v4, v0, :cond_f

    .line 255
    .line 256
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    .line 257
    .line 258
    if-eq v4, v12, :cond_e

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_e
    move/from16 v19, v8

    .line 262
    .line 263
    goto :goto_f

    .line 264
    :cond_f
    :goto_c
    iput-boolean v0, v1, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 265
    .line 266
    iput-boolean v12, v1, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    .line 267
    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/aod/AODManagerService;->updateAODTspState$1()V

    .line 269
    .line 270
    .line 271
    iget-object v4, v1, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .line 273
    :try_start_1
    iget-object v6, v4, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 274
    .line 275
    const-string/jumbo v12, "doze_always_on"
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .line 277
    .line 278
    move/from16 v19, v8

    .line 279
    .line 280
    const/4 v8, -0x2

    .line 281
    :try_start_2
    invoke-static {v6, v12, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 282
    .line 283
    .line 284
    move-result v6
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    const/4 v12, 0x1

    .line 286
    if-ne v6, v12, :cond_10

    .line 287
    .line 288
    move v6, v12

    .line 289
    goto :goto_d

    .line 290
    :cond_10
    const/4 v6, 0x0

    .line 291
    :goto_d
    if-eq v6, v0, :cond_12

    .line 292
    .line 293
    :try_start_3
    iget-object v0, v4, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 294
    .line 295
    const-string v6, "aod_charging_mode"

    .line 296
    .line 297
    invoke-static {v0, v6, v12, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-ne v0, v12, :cond_11

    .line 302
    .line 303
    goto :goto_f

    .line 304
    :cond_11
    iget-object v0, v4, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 305
    .line 306
    const-string v4, "aod_charging_mode"

    .line 307
    .line 308
    invoke-static {v0, v4, v12, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 309
    .line 310
    .line 311
    const-string/jumbo v0, "updateAODChargingMode: aodChargingMode = true"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    goto :goto_f

    .line 318
    :catch_0
    move-exception v0

    .line 319
    goto :goto_e

    .line 320
    :catch_1
    move-exception v0

    .line 321
    move/from16 v19, v8

    .line 322
    .line 323
    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string/jumbo v6, "updateAODChargingMode : doze_always_on doesn\'t exist. "

    .line 326
    .line 327
    .line 328
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    const-string v4, "AODManagerService"

    .line 343
    .line 344
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    :cond_12
    :goto_f
    iput-boolean v9, v1, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 348
    .line 349
    iput-boolean v10, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 350
    .line 351
    iput-boolean v11, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 352
    .line 353
    iput-boolean v13, v1, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 354
    .line 355
    iput-boolean v14, v1, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 356
    .line 357
    iput-boolean v7, v1, Lcom/android/server/aod/AODManagerService;->mIsAODAuto:Z

    .line 358
    .line 359
    iput-boolean v15, v1, Lcom/android/server/aod/AODManagerService;->mIsAODShowForNewNoti:Z

    .line 360
    .line 361
    iput v2, v1, Lcom/android/server/aod/AODManagerService;->mAODStartTime:I

    .line 362
    .line 363
    iput v3, v1, Lcom/android/server/aod/AODManagerService;->mAODEndTime:I

    .line 364
    .line 365
    iget-boolean v0, v1, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 366
    .line 367
    if-eqz v0, :cond_13

    .line 368
    .line 369
    if-nez v9, :cond_14

    .line 370
    .line 371
    :cond_13
    if-eqz v10, :cond_15

    .line 372
    .line 373
    if-eqz v11, :cond_15

    .line 374
    .line 375
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    move-object/from16 v4, v18

    .line 378
    .line 379
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 383
    .line 384
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v4, "] TapToShow["

    .line 388
    .line 389
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 393
    .line 394
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v4, "] FingerScreenLock["

    .line 398
    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 403
    .line 404
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v4, "] FingerScreenOffIconAOD["

    .line 408
    .line 409
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 413
    .line 414
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v4, "] MPSMEnabled["

    .line 418
    .line 419
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 423
    .line 424
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v4, "] UPSMEnabled["

    .line 428
    .line 429
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 433
    .line 434
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v4, "] Auto["

    .line 438
    .line 439
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsAODAuto:Z

    .line 443
    .line 444
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const-string v4, "] ForNewNoti["

    .line 448
    .line 449
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsAODShowForNewNoti:Z

    .line 453
    .line 454
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v4, "] StartTime["

    .line 458
    .line 459
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    iget v4, v1, Lcom/android/server/aod/AODManagerService;->mAODStartTime:I

    .line 463
    .line 464
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v4, "] EndTime["

    .line 468
    .line 469
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    iget v4, v1, Lcom/android/server/aod/AODManagerService;->mAODEndTime:I

    .line 473
    .line 474
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v4, "]"

    .line 478
    .line 479
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {v1, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget-object v0, v1, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 490
    .line 491
    if-eqz v0, :cond_17

    .line 492
    .line 493
    const/4 v4, 0x1

    .line 494
    invoke-virtual {v0, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSingletapEnable(I)I

    .line 495
    .line 496
    .line 497
    goto/16 :goto_10

    .line 498
    .line 499
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    move-object/from16 v4, v17

    .line 502
    .line 503
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 507
    .line 508
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    const-string v4, "] TapToShow["

    .line 512
    .line 513
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 517
    .line 518
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const-string v4, "] FingerScreenLock["

    .line 522
    .line 523
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 527
    .line 528
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v4, "] FingerScreenOffIconAOD["

    .line 532
    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 537
    .line 538
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const-string v4, "] MPSMEnabled["

    .line 542
    .line 543
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 547
    .line 548
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v4, "] UPSMEnabled["

    .line 552
    .line 553
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 557
    .line 558
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    const-string v4, "] Auto["

    .line 562
    .line 563
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsAODAuto:Z

    .line 567
    .line 568
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    const-string v4, "] ForNewNoti["

    .line 572
    .line 573
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    iget-boolean v4, v1, Lcom/android/server/aod/AODManagerService;->mIsAODShowForNewNoti:Z

    .line 577
    .line 578
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    const-string v4, "] StartTime["

    .line 582
    .line 583
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    iget v4, v1, Lcom/android/server/aod/AODManagerService;->mAODStartTime:I

    .line 587
    .line 588
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    const-string v4, "] EndTime["

    .line 592
    .line 593
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    iget v4, v1, Lcom/android/server/aod/AODManagerService;->mAODEndTime:I

    .line 597
    .line 598
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    const-string v4, "]"

    .line 602
    .line 603
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v1, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    iget-object v0, v1, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 614
    .line 615
    if-eqz v0, :cond_17

    .line 616
    .line 617
    const/4 v4, 0x0

    .line 618
    invoke-virtual {v0, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSingletapEnable(I)I

    .line 619
    .line 620
    .line 621
    goto :goto_10

    .line 622
    :cond_16
    move/from16 v19, v8

    .line 623
    .line 624
    :cond_17
    :goto_10
    if-eqz v19, :cond_18

    .line 625
    .line 626
    iput-boolean v13, v1, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 627
    .line 628
    iput-boolean v14, v1, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 629
    .line 630
    iput-boolean v7, v1, Lcom/android/server/aod/AODManagerService;->mIsAODAuto:Z

    .line 631
    .line 632
    iput-boolean v15, v1, Lcom/android/server/aod/AODManagerService;->mIsAODShowForNewNoti:Z

    .line 633
    .line 634
    iput v2, v1, Lcom/android/server/aod/AODManagerService;->mAODStartTime:I

    .line 635
    .line 636
    iput v3, v1, Lcom/android/server/aod/AODManagerService;->mAODEndTime:I

    .line 637
    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    .line 639
    .line 640
    move-object/from16 v2, v16

    .line 641
    .line 642
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    iget-boolean v2, v1, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 646
    .line 647
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    const-string v2, "] TapToShow["

    .line 651
    .line 652
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    iget-boolean v2, v1, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 656
    .line 657
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const-string v2, "] FingerScreenLock["

    .line 661
    .line 662
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    iget-boolean v2, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 666
    .line 667
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    const-string v2, "] FingerScreenOffIconAOD["

    .line 671
    .line 672
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    iget-boolean v2, v1, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 676
    .line 677
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    const-string v2, "] MPSMEnabled["

    .line 681
    .line 682
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    iget-boolean v2, v1, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 686
    .line 687
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    const-string v2, "] UPSMEnabled["

    .line 691
    .line 692
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    iget-boolean v2, v1, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 696
    .line 697
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    const-string v2, "] Auto["

    .line 701
    .line 702
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    iget-boolean v2, v1, Lcom/android/server/aod/AODManagerService;->mIsAODAuto:Z

    .line 706
    .line 707
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    const-string v2, "] ForNewNoti["

    .line 711
    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    iget-boolean v2, v1, Lcom/android/server/aod/AODManagerService;->mIsAODShowForNewNoti:Z

    .line 716
    .line 717
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    const-string v2, "] StartTime["

    .line 721
    .line 722
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    iget v2, v1, Lcom/android/server/aod/AODManagerService;->mAODStartTime:I

    .line 726
    .line 727
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    const-string v2, "] EndTime["

    .line 731
    .line 732
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    iget v2, v1, Lcom/android/server/aod/AODManagerService;->mAODEndTime:I

    .line 736
    .line 737
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    const-string v2, "]"

    .line 741
    .line 742
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v1, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    :cond_18
    monitor-exit v5

    .line 753
    return-void

    .line 754
    :goto_11
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 755
    throw v0
.end method
