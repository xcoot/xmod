.class public final Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static final LONG_PRESS_TIMEOUT:I

.field public static final MULTI_TAP_TIMEOUT:I


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppCastingUid:I

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field public final mAudioServiceInternal:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

.field public final mContext:Landroid/content/Context;

.field public final mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

.field public mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field public mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;

.field public mDevice:I

.field public final mFgsAllowedMediaSessionRecords:Ljava/util/Set;

.field public final mFullUserIds:Landroid/util/SparseIntArray;

.field public mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field public final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field public mHasFeatureLeanback:Z

.field public mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

.field public mIsAppCastingOn:Z

.field public mIsMultiSoundOn:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLock:Ljava/lang/Object;

.field public final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mMediaNotifications:Ljava/util/Map;

.field public final mMediaSessionDataPlatform:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

.field public final mNotificationListener:Lcom/android/server/media/MediaSessionService$NotificationListener;

.field public final mNotificationListenerEnabledChangedReceiver:Lcom/android/server/media/MediaSessionService$2;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mRecordThread:Landroid/os/HandlerThread;

.field public final mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

.field public final mSession2TokenCallback:Lcom/android/server/media/MediaSessionService$1;

.field public final mSession2TokensListenerRecords:Ljava/util/List;

.field public final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field public final mSessionsListeners:Ljava/util/ArrayList;

.field public final mSystemServerPid:I

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserEngagedSessionsForFgs:Ljava/util/Map;

.field public final mUserEngagedSessionsForUsageLogging:Landroid/util/SparseArray;

.field public final mUserRecords:Landroid/util/SparseArray;

.field public mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;


# direct methods
.method public static -$$Nest$mcreateSessionInternal(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v12, p2

    .line 5
    move/from16 v4, p3

    .line 7
    move-object/from16 v13, p4

    .line 9
    const-string v14, "Created session for "

    .line 11
    const-string v1, "Created too many sessions. count="

    .line 13
    const-string v2, "Request from invalid user: "

    .line 15
    iget-object v15, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v15

    .line 18
    :try_start_0
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v3, v12, v13}, Lcom/android/server/media/MediaSessionPolicyProvider;->getSessionPoliciesForApplication(ILjava/lang/String;)I

    .line 26
    move-result v3

    .line 27
    move v11, v3

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_0
    move v11, v5

    .line 33
    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 36
    move-result-object v10

    .line 37
    if-eqz v10, :cond_3

    .line 39
    iget-object v2, v10, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mUidToSessionCount:Landroid/util/SparseIntArray;

    .line 41
    invoke-virtual {v2, v12, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 44
    move-result v9

    .line 45
    const/16 v2, 0x64

    .line 47
    if-lt v9, v2, :cond_2

    .line 49
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ")"

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_2
    :goto_1
    :try_start_1
    new-instance v8, Lcom/android/server/media/MediaSessionRecord;

    .line 81
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    .line 83
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 86
    move-result-object v16

    .line 87
    move-object v1, v8

    .line 88
    move/from16 v2, p1

    .line 90
    move/from16 v3, p2

    .line 92
    move/from16 v4, p3

    .line 94
    move-object/from16 v5, p4

    .line 96
    move-object/from16 v6, p5

    .line 98
    move-object/from16 v7, p6

    .line 100
    move-object v13, v8

    .line 101
    move-object/from16 v8, p7

    .line 103
    move/from16 v17, v9

    .line 105
    move-object/from16 v9, p0

    .line 107
    move-object/from16 v18, v14

    .line 109
    move-object v14, v10

    .line 110
    move-object/from16 v10, v16

    .line 112
    invoke-direct/range {v1 .. v11}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    iget-object v1, v14, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mUidToSessionCount:Landroid/util/SparseIntArray;

    .line 117
    add-int/lit8 v9, v17, 0x1

    .line 119
    invoke-virtual {v1, v12, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    iget-object v1, v14, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 124
    invoke-virtual {v1, v13}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 127
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 129
    invoke-virtual {v0, v13}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 132
    const-string v0, "MediaSessionService"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    move-object/from16 v2, v18

    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    move-object/from16 v3, p4

    .line 143
    move-object v2, v13

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v3, " with tag "

    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    move-object/from16 v3, p6

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v15

    .line 165
    return-object v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Ljava/lang/RuntimeException;

    .line 169
    const-string v2, "Media Session owner died prematurely."

    .line 171
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    throw v1

    .line 175
    :cond_3
    move-object v3, v13

    .line 176
    const-string v0, "MediaSessionService"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    const-string v2, ", pkg="

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    .line 203
    const-string v1, "Session request from invalid user."

    .line 205
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 208
    throw v0

    .line 209
    :goto_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    throw v0
.end method

.method public static -$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 8
    move-result v0

    .line 9
    rem-int/lit8 v0, v0, 0xf

    .line 11
    if-nez v0, :cond_0

    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 15
    const-string/jumbo v1, "com.samsung.android.intent.action.SOUND_EVENT"

    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v1, "type"

    .line 24
    const/16 v2, 0x20

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string/jumbo v1, "keyevent"

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 46
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 51
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 53
    if-nez p0, :cond_1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "Failed to send "

    .line 64
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string p1, " to volume key long-press listener"

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    const-string p1, "MediaSessionService"

    .line 81
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void
.end method

.method public static -$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    :goto_0
    if-ltz v0, :cond_1

    .line 13
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    .line 23
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    .line 25
    invoke-interface {v1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    .line 32
    move-result-object v2

    .line 33
    if-ne v1, v2, :cond_0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, -0x1

    .line 40
    :goto_1
    return v0
.end method

.method public static -$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 19
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    .line 21
    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    .line 28
    move-result-object v2

    .line 29
    if-ne v1, v2, :cond_0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, -0x1

    .line 36
    :goto_1
    return v0
.end method

.method public static -$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    array-length p1, p0

    .line 14
    if-lez p1, :cond_0

    .line 16
    const/4 p1, 0x0

    .line 17
    aget-object p0, p0, p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, ""

    .line 22
    :goto_0
    return-object p0
.end method

.method public static -$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getUid()I

    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p0, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 25
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 27
    check-cast p0, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p0

    .line 33
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 45
    instance-of v2, v1, Lcom/android/server/media/MediaSessionRecord;

    .line 47
    if-eqz v2, :cond_0

    .line 49
    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 51
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 53
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 59
    move-object v0, v1

    .line 60
    :cond_1
    return-object v0
.end method

.method public static -$$Nest$misMirroringPackage(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "MediaSessionService"

    .line 6
    const-string v1, "audiomirroring package: "

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p0

    .line 14
    const-string/jumbo v2, "content://com.samsung.android.audiomirroring"

    .line 17
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object v2

    .line 21
    const-string/jumbo v3, "request_package_name"

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    const-string/jumbo v2, "mediaPackageName"

    .line 34
    const-string v3, ""

    .line 36
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 p0, 0x1

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    const/4 p0, 0x0

    .line 72
    :goto_0
    return p0
.end method

.method public static -$$Nest$mneedVolumeKeyLongPressBroadCastLocked(Lcom/android/server/media/MediaSessionService;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "power"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/os/PowerManager;

    .line 26
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 34
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 40
    :cond_0
    const/4 p0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    :goto_0
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x32

    .line 7
    sput v0, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 9
    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    .line 20
    const-string v1, "SessionRecordThread"

    .line 22
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    .line 27
    new-instance v0, Landroid/util/SparseIntArray;

    .line 29
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    .line 36
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    .line 57
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForUsageLogging:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    .line 64
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForFgs:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    .line 71
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mMediaNotifications:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    .line 78
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFgsAllowedMediaSessionRecords:Ljava/util/Set;

    .line 83
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 85
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 90
    new-instance v0, Lcom/android/server/media/MediaSessionService$1;

    .line 92
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$1;-><init>(Lcom/android/server/media/MediaSessionService;)V

    .line 95
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokenCallback:Lcom/android/server/media/MediaSessionService$1;

    .line 97
    new-instance v0, Lcom/android/server/media/MediaSessionService$2;

    .line 99
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$2;-><init>(Lcom/android/server/media/MediaSessionService;)V

    .line 102
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationListenerEnabledChangedReceiver:Lcom/android/server/media/MediaSessionService$2;

    .line 104
    invoke-static {}, Lcom/samsung/android/server/audio/CoverHelper;->getInstance()Lcom/samsung/android/server/audio/CoverHelper;

    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    .line 110
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    .line 113
    iput v0, p0, Lcom/android/server/media/MediaSessionService;->mDevice:I

    .line 115
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    .line 117
    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/android/server/media/MediaSessionService;->mAppCastingUid:I

    .line 120
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    .line 123
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 125
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 129
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    .line 132
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 134
    const-class v0, Landroid/os/PowerManager;

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/os/PowerManager;

    .line 142
    const/4 v1, 0x1

    .line 143
    const-string/jumbo v2, "handleMediaEvent"

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 152
    const-class v0, Landroid/app/NotificationManager;

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroid/app/NotificationManager;

    .line 160
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 162
    const-class v0, Landroid/media/AudioManager;

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Landroid/media/AudioManager;

    .line 170
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;

    .line 172
    new-instance v0, Lcom/android/server/media/MediaSessionService$NotificationListener;

    .line 174
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$NotificationListener;-><init>(Lcom/android/server/media/MediaSessionService;)V

    .line 177
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationListener:Lcom/android/server/media/MediaSessionService$NotificationListener;

    .line 179
    const-class v0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    .line 181
    new-instance v1, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    .line 183
    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;-><init>(Lcom/android/server/media/MediaSessionService;)V

    .line 186
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 189
    const-class v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 191
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 197
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioServiceInternal:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 199
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 202
    move-result v0

    .line 203
    iput v0, p0, Lcom/android/server/media/MediaSessionService;->mSystemServerPid:I

    .line 205
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    .line 207
    if-eqz v0, :cond_1

    .line 209
    const-class v0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 211
    monitor-enter v0

    .line 212
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->sInstance:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 214
    if-nez v1, :cond_0

    .line 216
    new-instance v1, Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 218
    invoke-direct {v1, p1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;-><init>(Landroid/content/Context;)V

    .line 221
    sput-object v1, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->sInstance:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 223
    goto :goto_0

    .line 224
    :catchall_0
    move-exception p0

    .line 225
    goto :goto_1

    .line 226
    :cond_0
    :goto_0
    sget-object p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->sInstance:Lcom/samsung/android/server/media/MediaSessionDataPlatform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit v0

    .line 229
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mMediaSessionDataPlatform:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 231
    goto :goto_2

    .line 232
    :goto_1
    monitor-exit v0

    .line 233
    throw p0

    .line 234
    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public final destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Destroying "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MediaSessionService"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isClosed()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    const-string p0, "Destroying already destroyed session. Ignoring."

    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 39
    move-result-object v0

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v0, :cond_2

    .line 43
    instance-of v3, p1, Lcom/android/server/media/MediaSessionRecord;

    .line 45
    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 50
    move-result v3

    .line 51
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mUidToSessionCount:Landroid/util/SparseIntArray;

    .line 53
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 56
    move-result v4

    .line 57
    if-gtz v4, :cond_1

    .line 59
    const-string/jumbo v3, "destroySessionLocked: sessionCount should be positive. sessionCount="

    .line 62
    invoke-static {v4, v3, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mUidToSessionCount:Landroid/util/SparseIntArray;

    .line 68
    add-int/lit8 v4, v4, -0x1

    .line 70
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 75
    if-ne v3, p1, :cond_3

    .line 77
    const/4 v3, 0x0

    .line 78
    iput-object v3, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 80
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_4

    .line 86
    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    if-eqz v0, :cond_4

    .line 94
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 96
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 99
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->close()V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v3, "destroySessionLocked: record="

    .line 107
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, p1, v2}, Lcom/android/server/media/MediaSessionService;->reportMediaInteractionEvent(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    .line 123
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 125
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 128
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    .line 130
    if-eqz v0, :cond_5

    .line 132
    const/4 v0, 0x3

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionService;->sendChangedMessages(Lcom/android/server/media/MediaSessionRecordImpl;I)V

    .line 136
    :cond_5
    return-void
.end method

.method public final enforceMediaPermissions(IIILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    .line 5
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz p4, :cond_3

    .line 21
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    move-result p2

    .line 29
    if-eq p2, p3, :cond_2

    .line 31
    const/4 p0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string p2, "Checking whether the package "

    .line 35
    const-string p3, " has an enabled notification listener."

    .line 37
    const-string v0, "MediaSessionService"

    .line 39
    invoke-static {p2, p4, p3, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 44
    invoke-virtual {p0, p4, p1}, Landroid/app/NotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 47
    move-result p0

    .line 48
    :goto_0
    if-eqz p0, :cond_3

    .line 50
    return-void

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 53
    const-string p1, "Missing permission to control media."

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0
.end method

.method public final getActiveSessionsLocked(I)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 8
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne p1, v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v1

    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v1, :cond_4

    .line 25
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 33
    iget-object v5, v5, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 35
    iget-object v6, v5, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Ljava/util/List;

    .line 43
    if-nez v6, :cond_0

    .line 45
    invoke-virtual {v5, p1, v2}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(IZ)Ljava/util/List;

    .line 48
    move-result-object v6

    .line 49
    iget-object v5, v5, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_2

    .line 66
    const-string/jumbo p0, "getSessions failed. Unknown user "

    .line 69
    const-string v1, "MediaSessionService"

    .line 71
    invoke-static {p1, p0, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    return-object v0

    .line 75
    :cond_2
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 77
    iget-object v4, v1, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 79
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/util/List;

    .line 85
    if-nez v4, :cond_3

    .line 87
    invoke-virtual {v1, p1, v2}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(IZ)Ljava/util/List;

    .line 90
    move-result-object v4

    .line 91
    iget-object v1, v1, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6

    .line 105
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 107
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 110
    move-result v1

    .line 111
    if-eq p1, v1, :cond_5

    .line 113
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 115
    iget v1, v1, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 117
    if-ne p1, v1, :cond_6

    .line 119
    :cond_5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 121
    invoke-virtual {v0, v3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    :cond_6
    return-object v0
.end method

.method public final getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 7
    move-result p1

    .line 8
    if-gez p1, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 20
    return-object p0
.end method

.method public final getSession2TokensLocked(I)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 8
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 11
    move-result v1

    .line 12
    if-ne p1, v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 31
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 33
    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getSession2Tokens(I)Ljava/util/List;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 46
    move-result-object p0

    .line 47
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->getSession2Tokens(I)Ljava/util/List;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    :cond_1
    return-object v0
.end method

.method public final hasMediaControlPermission(II)Z
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 3
    if-eq p2, v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 7
    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 9
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo p0, "uid("

    .line 19
    const-string p1, ") hasn\'t granted MEDIA_CONTENT_CONTROL"

    .line 21
    const-string v0, "MediaSessionService"

    .line 23
    invoke-static {p2, p0, p1, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public final instantiateCustomDispatcher(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Class;

    .line 19
    const-class v2, Landroid/content/Context;

    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 30
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p0

    .line 45
    :try_start_1
    const-string p1, "MediaSessionService"

    .line 47
    const-string v1, "Encountered problem while using reflection"

    .line 49
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_0
    :goto_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method

.method public final instantiateCustomProvider(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz p1, :cond_0

    .line 9
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Ljava/lang/Class;

    .line 22
    const-class v2, Landroid/content/Context;

    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v2, v1, v3

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 30
    move-result-object p1

    .line 31
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 33
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/server/media/MediaSessionPolicyProvider;

    .line 43
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "MediaSessionService"

    .line 51
    const-string v1, "Encountered problem while using reflection"

    .line 53
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_0
    :goto_0
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    throw p0
.end method

.method public final isGlobalPriorityActiveLocked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isMultiSoundOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final monitor()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 13
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 16
    move-result v1

    .line 17
    iget-object p2, p2, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    :goto_0
    if-ltz v1, :cond_1

    .line 23
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 25
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/media/IRemoteSessionCallback;

    .line 31
    invoke-interface {v2, p2, p1}, Landroid/media/IRemoteSessionCallback;->onVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception v2

    .line 38
    :try_start_2
    const-string v3, "MediaSessionService"

    .line 40
    const-string v4, "Error sending volume change."

    .line 42
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 50
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 4
    const/16 v0, 0x226

    .line 6
    if-eq p1, v0, :cond_1

    .line 8
    const/16 v0, 0x3e8

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 15
    const-class v0, Landroid/media/MediaCommunicationManager;

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/media/MediaCommunicationManager;

    .line 23
    new-instance v0, Lcom/android/server/media/HandlerExecutor;

    .line 25
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 27
    invoke-direct {v0, v1}, Lcom/android/server/media/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokenCallback:Lcom/android/server/media/MediaSessionService$1;

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaCommunicationManager;->registerSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaCommunicationManager$SessionCallback;)V

    .line 35
    invoke-static {}, Lcom/android/media/flags/Flags;->enableNotifyingActivityManagerWithMediaSessionStatusChange()Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 41
    :try_start_0
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mNotificationListener:Lcom/android/server/media/MediaSessionService$NotificationListener;

    .line 43
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Landroid/content/ComponentName;

    .line 47
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 49
    const-class v2, Lcom/android/server/media/MediaSessionService$NotificationListener;

    .line 51
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    const/4 p0, -0x1

    .line 55
    invoke-virtual {p1, v0, v1, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 64
    move-result-object p0

    .line 65
    new-instance p1, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda0;

    .line 67
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string/jumbo v0, "media"

    .line 73
    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 76
    const/4 p0, 0x0

    .line 77
    new-array p0, p0, [Ljava/lang/String;

    .line 79
    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 86
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 89
    move-result-object p1

    .line 90
    new-instance v0, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;

    .line 92
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;-><init>(Landroid/provider/DeviceConfig$Properties;)V

    .line 95
    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 98
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 7
    move-result v1

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 11
    move-result-object p0

    .line 12
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 14
    iget-object v1, v1, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 16
    if-ne p1, v1, :cond_0

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/session/PlaybackState;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "onSessionActiveStateChanged: record="

    .line 4
    const-string v1, "Global priority session updated - user id="

    .line 6
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 12
    move-result v3

    .line 13
    invoke-virtual {p0, v3}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 16
    move-result-object v3

    .line 17
    if-nez v3, :cond_0

    .line 19
    const-string p0, "MediaSessionService"

    .line 21
    const-string p1, "Unknown session updated. Ignoring."

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    monitor-exit v2

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_2

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isSystemPriority()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 37
    const-string v4, "MediaSessionService"

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 47
    move-result v1

    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, " package="

    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getPackageName()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " active="

    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    .line 71
    move-result v1

    .line 72
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 88
    iget-object v1, v1, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 90
    check-cast v1, Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_2

    .line 98
    const-string p0, "MediaSessionService"

    .line 100
    const-string p1, "Unknown session updated. Ignoring."

    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    monitor-exit v2

    .line 106
    return-void

    .line 107
    :cond_2
    iget-object v1, v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 115
    move-result v3

    .line 116
    iget-object v4, v1, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 118
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 121
    iget-object v1, v1, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 123
    const/4 v3, -0x1

    .line 124
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    :goto_0
    const/4 v1, 0x1

    .line 128
    if-nez p2, :cond_3

    .line 130
    invoke-virtual {p1, v1}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    .line 133
    move-result v1

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->isActive()Z

    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_4

    .line 141
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_4

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    const/4 v1, 0x0

    .line 149
    :goto_1
    const-string v3, "MediaSessionService"

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    const-string v0, " playbackState="

    .line 161
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p2

    .line 171
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaSessionService;->reportMediaInteractionEvent(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    .line 177
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 182
    monitor-exit v2

    .line 183
    return-void

    .line 184
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    throw p0
.end method

.method public final onSessionMetadataChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/MediaMetadata;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onSessionMetadataChanged: record="

    .line 4
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_2

    .line 17
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 19
    iget-object v2, v2, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 21
    check-cast v2, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string v2, "MediaSessionService"

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, " mediaMetadata="

    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    .line 57
    if-eqz p2, :cond_1

    .line 59
    const/4 p2, 0x1

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->sendChangedMessages(Lcom/android/server/media/MediaSessionRecordImpl;I)V

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_0
    monitor-exit v1

    .line 67
    return-void

    .line 68
    :cond_2
    :goto_1
    const-string p0, "MediaSessionService"

    .line 70
    const-string p1, "Unknown session changed playback state. Ignoring."

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;ZLandroid/media/session/PlaybackState;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onSessionPlaybackStateChanged: record="

    .line 4
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_4

    .line 17
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 19
    iget-object v3, v3, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 32
    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/MediaSessionStack;->onPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    .line 35
    const/4 p2, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-nez p3, :cond_1

    .line 39
    invoke-virtual {p1, v2}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    .line 42
    move-result v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p3}, Landroid/media/session/PlaybackState;->isActive()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v2, p2

    .line 58
    :goto_0
    const-string v3, "MediaSessionService"

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, " playbackState="

    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p3

    .line 80
    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0, p1, v2}, Lcom/android/server/media/MediaSessionService;->reportMediaInteractionEvent(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    .line 86
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    .line 88
    if-eqz p3, :cond_3

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->sendChangedMessages(Lcom/android/server/media/MediaSessionRecordImpl;I)V

    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    :goto_1
    monitor-exit v1

    .line 97
    return-void

    .line 98
    :cond_4
    :goto_2
    const-string p0, "MediaSessionService"

    .line 100
    const-string p1, "Unknown session changed playback state. Ignoring."

    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    monitor-exit v1

    .line 106
    return-void

    .line 107
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0
.end method

.method public final onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p1, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_2

    .line 12
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 14
    iget-object v1, v1, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    .line 27
    if-eqz v1, :cond_1

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaSessionService;->sendChangedMessages(Lcom/android/server/media/MediaSessionRecordImpl;I)V

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_0
    iget p1, p1, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :cond_2
    :goto_1
    const-string p0, "MediaSessionService"

    .line 45
    const-string p1, "Unknown session changed playback type. Ignoring."

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final onStart()V
    .locals 3

    .line 1
    const-string/jumbo v0, "media_session"

    .line 4
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 18
    const-string/jumbo v1, "keyguard"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/app/KeyguardManager;

    .line 27
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 29
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 37
    new-instance v1, Lcom/android/server/media/MediaSessionService$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionService;)V

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 46
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    move-result-object v0

    .line 52
    const-string v1, "android.software.leanback"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 63
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v0

    .line 69
    const v1, 0x104002d

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->instantiateCustomProvider(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v0

    .line 85
    const v1, 0x104002c

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->instantiateCustomDispatcher(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    .line 102
    const-string v1, "android.app.action.NOTIFICATION_LISTENER_ENABLED_CHANGED"

    .line 104
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 109
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mNotificationListenerEnabledChangedReceiver:Lcom/android/server/media/MediaSessionService$2;

    .line 111
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 116
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 122
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 124
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 126
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 132
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 134
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onStartUser: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const-string v0, "MediaSessionService"

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 24
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p1

    .line 5
    const-string v0, "MediaSessionService"

    .line 7
    const-string/jumbo v1, "onCleanupUser: "

    .line 10
    invoke-static {p1, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_2

    .line 22
    iget v2, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 24
    const/4 v3, 0x0

    .line 25
    if-ne v2, p1, :cond_1

    .line 27
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 29
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 32
    move-result v2

    .line 33
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 35
    invoke-virtual {v4, v2, v3}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(IZ)Ljava/util/List;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v2

    .line 45
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 57
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 59
    invoke-virtual {v4, v3}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 73
    invoke-virtual {v2, p1, v3}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(IZ)Ljava/util/List;

    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    move-result-object p1

    .line 83
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 95
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 97
    invoke-virtual {v3, v2}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "onSwitchUser: "

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const-string p2, "MediaSessionService"

    .line 18
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 24
    return-void
.end method

.method public final pushRemoteVolumeUpdateLocked(I)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "MediaSessionService"

    .line 9
    const-string/jumbo v0, "pushRemoteVolumeUpdateLocked failed. No user with id="

    .line 12
    invoke-static {p1, v0, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 21
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 24
    move-result v2

    .line 25
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v0, p1, v3}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(IZ)Ljava/util/List;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v0

    .line 38
    const/4 v4, 0x0

    .line 39
    :goto_0
    const/4 v5, 0x0

    .line 40
    if-ge v4, v0, :cond_1

    .line 42
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    .line 48
    iget v7, v6, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 50
    if-ne v7, v3, :cond_2

    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v6, v5

    .line 56
    :cond_2
    instance-of p1, v6, Lcom/android/server/media/MediaSession2Record;

    .line 58
    if-eqz p1, :cond_3

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_4

    .line 64
    :cond_3
    if-nez v6, :cond_4

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget-object v5, v6, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_1
    sub-int/2addr v2, v3

    .line 70
    :goto_2
    if-ltz v2, :cond_5

    .line 72
    :try_start_1
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 74
    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/media/IRemoteSessionCallback;

    .line 80
    invoke-interface {p1, v5}, Landroid/media/IRemoteSessionCallback;->onSessionChanged(Landroid/media/session/MediaSession$Token;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    goto :goto_3

    .line 84
    :catch_0
    move-exception p1

    .line 85
    :try_start_2
    const-string v0, "MediaSessionService"

    .line 87
    const-string v3, "Error sending default remote volume."

    .line 89
    invoke-static {v0, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 97
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 102
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    throw p0
.end method

.method public final reportMediaInteractionEvent(Lcom/android/server/media/MediaSessionRecordImpl;Z)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/app/usage/Flags;->userInteractionTypeApi()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 15
    move-result v1

    .line 16
    const-string v2, "android.app.usage.extra.EVENT_ACTION"

    .line 18
    const-string v3, "android.media"

    .line 20
    const-string v4, "android.app.usage.extra.EVENT_CATEGORY"

    .line 22
    if-eqz p2, :cond_2

    .line 24
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForUsageLogging:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_1

    .line 32
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForUsageLogging:Landroid/util/SparseArray;

    .line 34
    new-instance v5, Ljava/util/HashSet;

    .line 36
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 39
    invoke-virtual {p2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 45
    move-result p2

    .line 46
    new-instance v5, Landroid/os/PersistableBundle;

    .line 48
    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 51
    invoke-virtual {v5, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v3, "start"

    .line 57
    invoke-virtual {v5, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 62
    invoke-virtual {v2, v0, p2, v5}, Landroid/app/usage/UsageStatsManagerInternal;->reportUserInteractionEvent(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForUsageLogging:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/util/Set;

    .line 73
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForUsageLogging:Landroid/util/SparseArray;

    .line 79
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_3

    .line 85
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForUsageLogging:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Ljava/util/Set;

    .line 93
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 96
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForUsageLogging:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Ljava/util/Set;

    .line 104
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_3

    .line 110
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 113
    move-result p1

    .line 114
    new-instance p2, Landroid/os/PersistableBundle;

    .line 116
    invoke-direct {p2}, Landroid/os/PersistableBundle;-><init>()V

    .line 119
    invoke-virtual {p2, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v3, "stop"

    .line 125
    invoke-virtual {p2, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 130
    invoke-virtual {v2, v0, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->reportUserInteractionEvent(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    .line 133
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForUsageLogging:Landroid/util/SparseArray;

    .line 135
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 138
    :cond_3
    :goto_0
    return-void
.end method

.method public final sendChangedMessages(Lcom/android/server/media/MediaSessionRecordImpl;I)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/server/media/MediaSessionRecord;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/server/media/MediaSessionRecord;

    .line 7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    :cond_0
    return-void
.end method

.method public final setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 5

    .line 1
    const-string v0, "Global priority session is changed from "

    .line 3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, p1, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 8
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 14
    if-eq v3, p1, :cond_0

    .line 16
    const-string v3, "MediaSessionService"

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, " to "

    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 45
    if-eqz v2, :cond_0

    .line 47
    iget-object p0, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 49
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 51
    check-cast p0, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_0

    .line 59
    iget-object p0, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    monitor-exit v1

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final setMultiSoundFlag(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioServiceInternal:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 8
    iget v1, p1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 10
    iget-object v0, v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->mAudioService:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/audio/AudioService;

    .line 18
    if-nez v0, :cond_1

    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    .line 27
    move-result v0

    .line 28
    :goto_0
    iget-wide v1, p1, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    .line 30
    long-to-int v1, v1

    .line 31
    const/16 v2, 0x80

    .line 33
    if-nez v0, :cond_2

    .line 35
    iget p0, p0, Lcom/android/server/media/MediaSessionService;->mDevice:I

    .line 37
    if-eq p0, v2, :cond_3

    .line 39
    :cond_2
    if-ne v0, v2, :cond_4

    .line 41
    :cond_3
    const/high16 p0, 0x20000000

    .line 43
    or-int/2addr p0, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    const p0, -0x20000001

    .line 48
    and-int/2addr p0, v1

    .line 49
    :goto_1
    :try_start_0
    iget-object p1, p1, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->setFlags(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_2

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string p1, "MediaSessionService"

    .line 58
    const-string v0, "Error setFlags"

    .line 60
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :goto_2
    return-void
.end method

.method public final startFgsDelegateLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getForegroundServiceDelegationOptions()Landroid/app/ForegroundServiceDelegationOptions;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mFgsAllowedMediaSessionRecords:Ljava/util/Set;

    .line 10
    check-cast v1, Ljava/util/HashSet;

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v1

    .line 23
    :try_start_0
    const-string p1, "MediaSessionService"

    .line 25
    const-string/jumbo v3, "startFgsDelegate: pkg=%s uid=%d"

    .line 28
    iget-object v4, v0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    .line 30
    iget v5, v0, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v5

    .line 36
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, v0, p1}, Landroid/app/ActivityManagerInternal;->startForegroundServiceDelegate(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw p0
.end method

.method public final stopFgsDelegateLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getForegroundServiceDelegationOptions()Landroid/app/ForegroundServiceDelegationOptions;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mFgsAllowedMediaSessionRecords:Ljava/util/Set;

    .line 10
    check-cast v1, Ljava/util/HashSet;

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v1

    .line 23
    :try_start_0
    const-string p1, "MediaSessionService"

    .line 25
    const-string/jumbo v3, "stopFgsDelegate: pkg=%s uid=%d"

    .line 28
    iget-object v4, v0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    .line 30
    iget v5, v0, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v5

    .line 36
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->stopForegroundServiceDelegate(Landroid/app/ForegroundServiceDelegationOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    throw p0
.end method

.method public final stopFgsIfNoSessionIsLinkedToNotification(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 7

    .line 1
    const-string v0, "MediaSessionService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "stopFgsIfNoSessionIsLinkedToNotification: record="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/android/media/flags/Flags;->enableNotifyingActivityManagerWithMediaSessionStatusChange()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getForegroundServiceDelegationOptions()Landroid/app/ForegroundServiceDelegationOptions;

    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_1

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForFgs:Ljava/util/Map;

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v3

    .line 51
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 54
    move-result-object v4

    .line 55
    check-cast v2, Ljava/util/HashMap;

    .line 57
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/Set;

    .line 63
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v2

    .line 67
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_4

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 79
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mMediaNotifications:Ljava/util/Map;

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v5

    .line 85
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 88
    move-result-object v6

    .line 89
    check-cast v4, Ljava/util/HashMap;

    .line 91
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ljava/util/Set;

    .line 97
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v4

    .line 101
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_2

    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Landroid/app/Notification;

    .line 113
    invoke-virtual {v3, v5}, Lcom/android/server/media/MediaSessionRecordImpl;->isLinkedToNotification(Landroid/app/Notification;)Z

    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_3

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 121
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->stopFgsDelegateLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 126
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0
.end method

.method public final tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    const-string/jumbo v0, "tempAllowlistTargetPkgIfPossible callingPackage:"

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {v3, p4, p6}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 13
    if-eq p1, p6, :cond_5

    .line 15
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 17
    invoke-virtual {v3, p2, p6, p4}, Landroid/app/ActivityManagerInternal;->canAllowWhileInUsePermissionInFgs(IILjava/lang/String;)Z

    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v3, :cond_1

    .line 24
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 26
    invoke-virtual {v5, p2, p6, p4}, Landroid/app/ActivityManagerInternal;->canStartForegroundService(IILjava/lang/String;)Z

    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p2, v4

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 38
    :goto_1
    const-string p6, "MediaSessionService"

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string p4, " targetPackage:"

    .line 50
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string p4, " reason:"

    .line 58
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const-string p4, ""

    .line 66
    if-eqz v3, :cond_2

    .line 68
    :try_start_1
    const-string v0, " [WIU]"

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move-object v0, p4

    .line 72
    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    if-eqz p2, :cond_3

    .line 77
    const-string p4, " [FGS]"

    .line 79
    :cond_3
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p4

    .line 86
    invoke-static {p6, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz v3, :cond_4

    .line 91
    iget-object p4, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 93
    sget-wide v5, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsWhileInUseTempAllowDurationMs:J

    .line 95
    invoke-virtual {p4, p1, v5, v6}, Landroid/app/ActivityManagerInternal;->tempAllowWhileInUsePermissionInFgs(IJ)V

    .line 98
    :cond_4
    if-eqz p2, :cond_5

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 113
    move-result-object p0

    .line 114
    const-class p1, Landroid/os/PowerExemptionManager;

    .line 116
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    move-result-object p0

    .line 120
    move-object v3, p0

    .line 121
    check-cast v3, Landroid/os/PowerExemptionManager;

    .line 123
    sget-wide v7, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsAllowlistDurationMs:J

    .line 125
    const/16 v5, 0x13d

    .line 127
    move-object v4, p3

    .line 128
    move-object v6, p5

    .line 129
    invoke-virtual/range {v3 .. v8}, Landroid/os/PowerExemptionManager;->addToTemporaryAllowList(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    return-void

    .line 136
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw p0
.end method

.method public final updateUser()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 6
    const-string/jumbo v2, "user"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/os/UserManager;

    .line 15
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 17
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_2

    .line 27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v2

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/os/UserHandle;

    .line 43
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_1

    .line 49
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 51
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 54
    move-result v3

    .line 55
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 58
    move-result v4

    .line 59
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 67
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 70
    move-result v5

    .line 71
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 74
    move-result v6

    .line 75
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 83
    move-result v5

    .line 84
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v4

    .line 88
    if-nez v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 95
    move-result v5

    .line 96
    new-instance v6, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 98
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 101
    move-result v3

    .line 102
    invoke-direct {v6, p0, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    .line 105
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 112
    move-result v1

    .line 113
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 115
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 121
    iput-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 123
    if-nez v2, :cond_3

    .line 125
    const-string v2, "MediaSessionService"

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const-string v4, "Cannot find FullUserInfo for the current user "

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v3

    .line 144
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 149
    invoke-direct {v2, p0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    .line 152
    iput-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 154
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 156
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    :cond_3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 161
    invoke-virtual {p0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 166
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw p0
.end method
