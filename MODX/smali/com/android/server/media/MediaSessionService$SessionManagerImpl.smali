.class public final Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mKeyCustomizerRunnable:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

.field public final mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field public final mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field public mSkippedFirstKeyFromKeyCustomizer:Z

.field public final mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field public mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public static -$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z
    .locals 1

    .line 1
    const/16 v0, 0x4f

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 7
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/16 p0, 0x55

    .line 13
    if-ne p1, p0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 6
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V

    .line 12
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 14
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V

    .line 20
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 22
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 24
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 26
    invoke-direct {v0, p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    .line 29
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 31
    new-instance p1, Lcom/android/server/utils/EventLogger;

    .line 33
    const/16 v0, 0x50

    .line 35
    const-string v1, "MediaSession events"

    .line 37
    invoke-direct {p1, v0, v1}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 42
    new-instance p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-direct {p1, v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 48
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyCustomizerRunnable:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 50
    return-void
.end method


# virtual methods
.method public final addOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .locals 10

    .line 1
    const-string v0, "Only the full user can add the listener, userId="

    .line 3
    const-string v1, "The MediaKeyEventDispatchedListener ("

    .line 5
    if-nez p1, :cond_0

    .line 7
    const-string p0, "MediaSessionService"

    .line 9
    const-string p1, "addOnMediaKeyEventDispatchedListener: listener is null, ignoring"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    move-result v2

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    move-result v4

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    move-result-wide v5

    .line 35
    :try_start_0
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 37
    invoke-virtual {v7, v2, v3}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 43
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 45
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 47
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 50
    invoke-virtual {v7, v4}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 53
    move-result-object v7

    .line 54
    if-eqz v7, :cond_2

    .line 56
    iget v8, v7, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 58
    if-eq v8, v4, :cond_1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    .line 64
    move-result-object v0

    .line 65
    new-instance v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 67
    invoke-direct {v4, v7, p1, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyEventDispatchedListener;I)V

    .line 70
    iget-object v8, v7, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 72
    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    const/4 v8, 0x0

    .line 76
    :try_start_2
    invoke-interface {v0, v4, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v4

    .line 81
    :try_start_3
    const-string v8, "MediaSessionService"

    .line 83
    const-string v9, "Failed to add listener"

    .line 85
    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    iget-object v4, v7, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 90
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_0
    const-string v0, "MediaSessionService"

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string p1, ") is added by "

    .line 109
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 114
    invoke-static {p0, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    return-void

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    :goto_1
    :try_start_4
    const-string p0, "MediaSessionService"

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    return-void

    .line 157
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    :try_start_6
    throw p0

    .line 159
    :catchall_1
    move-exception p0

    .line 160
    goto :goto_3

    .line 161
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 163
    const-string p1, "MEDIA_CONTENT_CONTROL permission is required to  add MediaKeyEventDispatchedListener"

    .line 165
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 168
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 169
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    throw p0
.end method

.method public final addOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Only the full user can add the listener, userId="

    .line 3
    const-string v1, "The MediaKeyEventSessionChangedListener ("

    .line 5
    if-nez p1, :cond_0

    .line 7
    const-string p0, "MediaSessionService"

    .line 9
    const-string p1, "addOnMediaKeyEventSessionChangedListener: listener is null, ignoring"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    move-result v2

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    move-result v4

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    move-result-wide v5

    .line 35
    :try_start_0
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 37
    iget-object v7, v7, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {v7, p2, v3}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 42
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 44
    invoke-virtual {v7, v2, v3, v4, p2}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(IIILjava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 49
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 51
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 54
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_2

    .line 60
    iget v7, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 62
    if-eq v7, v4, :cond_1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    .line 68
    move-result-object v0

    .line 69
    new-instance v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    .line 71
    invoke-direct {v4, p0, p1, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V

    .line 74
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 76
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    const/4 v3, 0x0

    .line 80
    :try_start_2
    invoke-interface {v0, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v3

    .line 88
    :try_start_3
    const-string v4, "MediaSessionService"

    .line 90
    const-string v7, "Failed to add listener"

    .line 92
    invoke-static {v4, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 97
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_0
    const-string p0, "MediaSessionService"

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string p1, ") is added by "

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    :goto_1
    :try_start_4
    const-string p0, "MediaSessionService"

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    return-void

    .line 158
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    throw p0
.end method

.method public final addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-string p0, "MediaSessionService"

    .line 5
    const-string p1, "addSession2TokensListener: listener is null, ignoring"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    move-result v1

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v2

    .line 23
    const/4 v4, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p0, v0, v1, p2, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    .line 27
    move-result p2

    .line 28
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 30
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 35
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    .line 38
    move-result v1

    .line 39
    if-ltz v1, :cond_1

    .line 41
    const-string p0, "MediaSessionService"

    .line 43
    const-string p1, "addSession2TokensListener: listener is already added, ignoring"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 57
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 59
    new-instance v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    .line 61
    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;I)V

    .line 64
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    return-void

    .line 74
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    throw p0
.end method

.method public final addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-string p0, "MediaSessionService"

    .line 5
    const-string p1, "addSessionsListener: listener is null, ignoring"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    move-result v5

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    move-result v6

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v7

    .line 23
    if-eqz p2, :cond_1

    .line 25
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 31
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {v1, v0, v6}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0, v5, v6, p3, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    .line 41
    move-result v4

    .line 42
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 44
    invoke-virtual {p3, v5, v6, v4, v0}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(IIILjava/lang/String;)V

    .line 47
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 49
    iget-object p3, p3, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 51
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 54
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    .line 57
    move-result v0

    .line 58
    const/4 v1, -0x1

    .line 59
    if-eq v0, v1, :cond_2

    .line 61
    const-string p0, "MediaSessionService"

    .line 63
    const-string p1, "ActiveSessionsListener is already added, ignoring"

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :try_start_2
    new-instance v9, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 77
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 79
    move-object v0, v9

    .line 80
    move-object v2, p1

    .line 81
    move-object v3, p2

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    .line 88
    move-result-object p1

    .line 89
    const/4 p2, 0x0

    .line 90
    invoke-interface {p1, v9, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :try_start_4
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 95
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    return-void

    .line 105
    :catch_0
    move-exception p0

    .line 106
    :try_start_5
    const-string p1, "MediaSessionService"

    .line 108
    const-string p2, "ActiveSessionsListener is dead, ignoring it"

    .line 110
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    return-void

    .line 118
    :goto_1
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    throw p0
.end method

.method public final adjustVolumeForRotation(I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getVolumeButtonRotationState()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 15
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 17
    const-string/jumbo v1, "window"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/WindowManager;

    .line 26
    if-eqz v0, :cond_2

    .line 28
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 35
    move-result v0

    .line 36
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 38
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 47
    move-result-object p0

    .line 48
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 50
    const/4 v1, 0x2

    .line 51
    if-ne p0, v1, :cond_1

    .line 53
    const/4 p0, 0x1

    .line 54
    if-eq v0, p0, :cond_0

    .line 56
    if-ne v0, v1, :cond_2

    .line 58
    :cond_0
    :goto_0
    mul-int/lit8 p1, p1, -0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    if-eq v0, v1, :cond_0

    .line 63
    const/4 p0, 0x3

    .line 64
    if-ne v0, p0, :cond_2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    :goto_1
    return p1
.end method

.method public final createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v1

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v8

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 15
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {v0, p1, v2}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    invoke-virtual {p0, v1, v2, p5, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    .line 23
    move-result v3

    .line 24
    if-eqz p2, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 28
    move-object v4, p1

    .line 29
    move-object v5, p2

    .line 30
    move-object v6, p3

    .line 31
    move-object v7, p4

    .line 32
    invoke-static/range {v0 .. v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mcreateSessionInternal(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    .line 35
    move-result-object p0

    .line 36
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz p0, :cond_0

    .line 40
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return-object p0

    .line 44
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    const-string p1, "Invalid session record"

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string p1, "Controller callback cannot be null"

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_0
    :try_start_2
    const-string p1, "MediaSessionService"

    .line 66
    const-string p2, "Exception in creating a new session"

    .line 68
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    throw p0
.end method

.method public final dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v4

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v5

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v11

    .line 13
    move-object v0, p0

    .line 14
    :try_start_0
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 16
    iget-object v13, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object/from16 v3, p2

    .line 25
    move/from16 v7, p3

    .line 27
    move/from16 v8, p4

    .line 29
    move/from16 v9, p5

    .line 31
    :try_start_1
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    .line 34
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw v0
.end method

.method public final dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v10, p1

    .line 3
    move/from16 v5, p4

    .line 5
    move/from16 v7, p6

    .line 7
    move/from16 v8, p7

    .line 9
    move/from16 v9, p8

    .line 11
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 13
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 21
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 26
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 28
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 30
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;

    .line 33
    move-result-object v1

    .line 34
    :goto_0
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-ltz v7, :cond_1

    .line 38
    const/4 v4, 0x5

    .line 39
    if-gt v7, v4, :cond_1

    .line 41
    invoke-static {v7, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 47
    move v4, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v4, v3

    .line 50
    :goto_1
    if-eqz v1, :cond_3

    .line 52
    const-string/jumbo v6, "com.samsung.android.audiomirroring"

    .line 55
    iget-object v11, v1, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 57
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_3

    .line 63
    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 65
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misMirroringPackage(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)Z

    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_2

    .line 71
    if-eqz v4, :cond_2

    .line 73
    move v4, v2

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move v4, v3

    .line 76
    :cond_3
    :goto_2
    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 78
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_6

    .line 84
    const-string/jumbo v6, "com.android.systemui"

    .line 87
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v6

    .line 91
    if-nez v6, :cond_6

    .line 93
    if-eqz v1, :cond_6

    .line 95
    iget v6, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 97
    if-eq v6, v5, :cond_6

    .line 99
    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 101
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 103
    iget-object v11, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 105
    monitor-enter v11

    .line 106
    :try_start_0
    iget-object v12, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 108
    check-cast v12, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 113
    move-result v12

    .line 114
    if-nez v12, :cond_4

    .line 116
    iget-object v6, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 118
    check-cast v6, Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Ljava/lang/Integer;

    .line 126
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 129
    move-result v6

    .line 130
    if-ne v5, v6, :cond_4

    .line 132
    goto :goto_3

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    move v2, v3

    .line 136
    :goto_3
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-eqz v2, :cond_6

    .line 139
    invoke-static {}, Lcom/android/media/flags/Flags;->adjustVolumeForForegroundAppPlayingAudioWithoutMediaSession()Z

    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_5

    .line 145
    const-string v2, "MediaSessionService"

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    const-string v11, "Ignoring session="

    .line 151
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, " and adjusting suggestedStream="

    .line 159
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, " instead"

    .line 167
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    .line 178
    goto :goto_5

    .line 179
    :cond_5
    const-string v2, "MediaSessionService"

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    .line 183
    const-string v11, "Session="

    .line 185
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    const-string v11, " will not be not ignored and will receive the volume adjustment event"

    .line 193
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v6

    .line 200
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    goto :goto_5

    .line 204
    :goto_4
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    throw v0

    .line 206
    :cond_6
    :goto_5
    if-eqz v1, :cond_8

    .line 208
    if-eqz v4, :cond_7

    .line 210
    goto :goto_6

    .line 211
    :cond_7
    const-string v0, "MediaSessionService"

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 215
    const-string v3, "Adjusting "

    .line 217
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    const-string v3, " by "

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v3, ". flags="

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v3, ", suggestedStream="

    .line 238
    const-string v6, ", preferSuggestedStream="

    .line 240
    invoke-static {v9, v7, v3, v6, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 243
    invoke-static {v0, v2, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 246
    const/4 v11, 0x1

    .line 247
    move-object v0, v1

    .line 248
    move-object v1, p1

    .line 249
    move-object v2, p2

    .line 250
    move/from16 v3, p3

    .line 252
    move/from16 v4, p4

    .line 254
    move/from16 v5, p5

    .line 256
    move/from16 v6, p7

    .line 258
    move/from16 v7, p8

    .line 260
    move v8, v11

    .line 261
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    .line 264
    goto :goto_7

    .line 265
    :cond_8
    :goto_6
    const-string v2, "MediaSessionService"

    .line 267
    const-string v6, "Adjusting suggestedStream="

    .line 269
    const-string v11, " by "

    .line 271
    const-string v12, ". flags="

    .line 273
    invoke-static {v7, v8, v6, v11, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    move-result-object v6

    .line 277
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v11, ", preferSuggestedStream="

    .line 282
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    const-string v4, ", session="

    .line 290
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 300
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-eqz p9, :cond_9

    .line 305
    const/4 v1, 0x3

    .line 306
    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_9

    .line 312
    invoke-static {v3, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 315
    move-result v1

    .line 316
    if-nez v1, :cond_9

    .line 318
    const/16 v1, 0xb

    .line 320
    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 323
    move-result v1

    .line 324
    if-nez v1, :cond_9

    .line 326
    const-string v0, "MediaSessionService"

    .line 328
    const-string v1, "Nothing is playing on the music stream. Skipping volume event, flags="

    .line 330
    invoke-static {v9, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void

    .line 334
    :cond_9
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 336
    iget-object v11, v1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 338
    new-instance v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;

    .line 340
    move-object v1, v12

    .line 341
    move-object v2, p0

    .line 342
    move/from16 v3, p5

    .line 344
    move-object v4, p2

    .line 345
    move/from16 v5, p4

    .line 347
    move/from16 v6, p3

    .line 349
    move/from16 v7, p6

    .line 351
    move/from16 v8, p7

    .line 353
    move/from16 v9, p8

    .line 355
    move-object v10, p1

    .line 356
    invoke-direct/range {v1 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIIILjava/lang/String;)V

    .line 359
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    :goto_7
    return-void
.end method

.method public final dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v9, p1

    .line 5
    move/from16 v10, p2

    .line 7
    move-object/from16 v11, p3

    .line 9
    const-string/jumbo v12, "dispatchMediaKeyEvent called by BT, "

    .line 12
    const-string v13, "Failed to send "

    .line 14
    const-string v1, "Send "

    .line 16
    const-string v2, "MediaKeyEvt,pkg="

    .line 18
    const-string/jumbo v3, "dispatchMediaKeyEvent, pkg="

    .line 21
    if-eqz v11, :cond_7

    .line 23
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 33
    goto/16 :goto_5

    .line 35
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 38
    move-result v14

    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    move-result v15

    .line 43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    move-result-wide v16

    .line 47
    :try_start_0
    sget v4, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 49
    const-string v4, "MediaSessionService"

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v3, " pid="

    .line 61
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, ", uid="

    .line 69
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v3, ", asSystem="

    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, ", event="

    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 100
    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v2, " pid="

    .line 112
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, ",uid="

    .line 120
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, ",asSystem="

    .line 128
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, ",code="

    .line 136
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 142
    move-result v2

    .line 143
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, ",act:"

    .line 152
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 158
    move-result v2

    .line 159
    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v2

    .line 170
    invoke-direct {v4, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 176
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 178
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 183
    move-result-object v2

    .line 184
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 186
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 189
    move-result v3

    .line 190
    const-string/jumbo v4, "user_setup_complete"

    .line 193
    const/4 v5, 0x0

    .line 194
    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_6

    .line 200
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 202
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 207
    move-result-object v2

    .line 208
    const-string/jumbo v3, "device_provisioned"

    .line 211
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_5

    .line 217
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 219
    iget-object v8, v2, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 221
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 222
    :try_start_1
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 224
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 227
    move-result v18

    .line 228
    if-eqz v18, :cond_1

    .line 230
    const/16 v2, 0x3e8

    .line 232
    if-eq v15, v2, :cond_1

    .line 234
    const-string v0, "MediaSessionService"

    .line 236
    const-string v1, "Only the system can dispatch media key event to the global priority session."

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    return-void

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    move-object/from16 v19, v8

    .line 249
    goto/16 :goto_3

    .line 251
    :cond_1
    if-nez v18, :cond_2

    .line 253
    :try_start_2
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 255
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 257
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    .line 259
    if-eqz v2, :cond_2

    .line 261
    const-string v2, "MediaSessionService"

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, " to the media key listener"

    .line 273
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 285
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 287
    iget-object v7, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    .line 289
    new-instance v6, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    move-object v1, v6

    .line 292
    move-object/from16 v2, p0

    .line 294
    move-object/from16 v3, p1

    .line 296
    move v4, v14

    .line 297
    move v5, v15

    .line 298
    move-object v9, v6

    .line 299
    move/from16 v6, p2

    .line 301
    move-object v10, v7

    .line 302
    move-object/from16 v7, p3

    .line 304
    move-object/from16 v19, v8

    .line 306
    move/from16 v8, p4

    .line 308
    :try_start_4
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 311
    invoke-interface {v10, v11, v9}, Landroid/media/session/IOnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 314
    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 315
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    return-void

    .line 319
    :catchall_1
    move-exception v0

    .line 320
    goto/16 :goto_3

    .line 322
    :catch_0
    move-object/from16 v19, v8

    .line 324
    :catch_1
    :try_start_6
    const-string v1, "MediaSessionService"

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    const-string v3, " to the media key listener"

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v2

    .line 343
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    goto :goto_0

    .line 347
    :cond_2
    move-object/from16 v19, v8

    .line 349
    :goto_0
    if-eqz v18, :cond_3

    .line 351
    move-object/from16 v1, p0

    .line 353
    move-object/from16 v2, p1

    .line 355
    move v3, v14

    .line 356
    move v4, v15

    .line 357
    move/from16 v5, p2

    .line 359
    move-object/from16 v6, p3

    .line 361
    move/from16 v7, p4

    .line 363
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 366
    goto :goto_2

    .line 367
    :cond_3
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 369
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->isMultiSoundOn()Z

    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_4

    .line 375
    const/16 v1, 0x3ea

    .line 377
    if-ne v15, v1, :cond_4

    .line 379
    const-string v1, "MediaSessionService"

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    move-result-object v2

    .line 393
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/high16 v1, 0x20000000

    .line 398
    invoke-static {v11, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 401
    move-result-object v1

    .line 402
    move-object v5, v1

    .line 403
    goto :goto_1

    .line 404
    :cond_4
    move-object v5, v11

    .line 405
    :goto_1
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 407
    const/4 v7, 0x0

    .line 408
    const/4 v8, 0x0

    .line 409
    const/4 v9, 0x0

    .line 410
    move-object/from16 v1, p1

    .line 412
    move v2, v14

    .line 413
    move v3, v15

    .line 414
    move/from16 v4, p2

    .line 416
    move/from16 v6, p4

    .line 418
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 421
    :goto_2
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 422
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 425
    return-void

    .line 426
    :goto_3
    :try_start_7
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 427
    :try_start_8
    throw v0

    .line 428
    :catchall_2
    move-exception v0

    .line 429
    goto :goto_4

    .line 430
    :cond_5
    const-string v0, "AS.PlatformTypeUtils"

    .line 432
    const-string/jumbo v1, "don\'t call VoiceInteraction during setup-wizard"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v0, "MediaSessionService"

    .line 440
    const-string/jumbo v1, "dispatchMediaKeyEvent: voice key is ignored"

    .line 443
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 446
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 449
    return-void

    .line 450
    :cond_6
    :try_start_9
    const-string v0, "MediaSessionService"

    .line 452
    const-string v1, "Not dispatching media key event because user setup is in progress."

    .line 454
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 457
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 460
    return-void

    .line 461
    :goto_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    throw v0

    .line 465
    :cond_7
    :goto_5
    const-string v0, "MediaSessionService"

    .line 467
    const-string v1, "Attempted to dispatch null or non-media key event."

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method public final dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 6
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 8
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    .line 11
    move-result-object v3

    .line 12
    instance-of v3, v3, Lcom/android/server/media/MediaSession2Record;

    .line 14
    if-eqz v3, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 24
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 26
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 32
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 34
    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->isMultiSoundOn()Z

    .line 37
    move-result v4

    .line 38
    const-string v5, "MediaSessionService"

    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v4, :cond_15

    .line 43
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    const-wide/16 v8, 0x0

    .line 50
    const/high16 v10, 0x10000

    .line 52
    const/high16 v11, 0x20000000

    .line 54
    if-eqz v3, :cond_1

    .line 56
    iget-wide v12, v3, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    .line 58
    int-to-long v14, v10

    .line 59
    and-long/2addr v12, v14

    .line 60
    cmp-long v12, v12, v8

    .line 62
    if-eqz v12, :cond_1

    .line 64
    goto/16 :goto_8

    .line 66
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 69
    move-result v12

    .line 70
    invoke-static {v12}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 73
    move-result-object v12

    .line 74
    if-nez v12, :cond_2

    .line 76
    goto/16 :goto_8

    .line 78
    :cond_2
    const-string v13, "Headset"

    .line 80
    invoke-virtual {v12}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 83
    move-result-object v12

    .line 84
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v12

    .line 88
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getFlags()I

    .line 91
    move-result v13

    .line 92
    if-ne v13, v11, :cond_3

    .line 94
    move v13, v2

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move v13, v6

    .line 97
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getCurrentUserId()I

    .line 100
    move-result v14

    .line 101
    invoke-virtual {v4, v14}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 104
    move-result-object v15

    .line 105
    if-nez v15, :cond_4

    .line 107
    const-string/jumbo v4, "getFullUserRecordLocked failed. No user with id="

    .line 110
    invoke-static {v14, v4, v5}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    goto/16 :goto_8

    .line 115
    :cond_4
    iget-object v15, v15, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 117
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    new-instance v7, Ljava/util/ArrayList;

    .line 122
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v11, Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v15, v14, v6}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(IZ)Ljava/util/List;

    .line 130
    move-result-object v14

    .line 131
    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    new-instance v14, Ljava/util/ArrayList;

    .line 136
    iget-object v8, v15, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 138
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    new-instance v9, Ljava/util/ArrayList;

    .line 143
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v10, v8, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 148
    monitor-enter v10

    .line 149
    :try_start_0
    iget-object v8, v8, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 151
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-direct {v14, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    iget-object v8, v15, Lcom/android/server/media/MediaSessionStack;->mPrevPlayedUids:Ljava/util/List;

    .line 160
    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 163
    move-result-object v8

    .line 164
    new-instance v9, Lcom/android/server/media/MediaSessionStack$$ExternalSyntheticLambda0;

    .line 166
    invoke-direct {v9, v14}, Lcom/android/server/media/MediaSessionStack$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    .line 169
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 172
    move-result-object v8

    .line 173
    new-instance v9, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;

    .line 175
    invoke-direct {v9, v2, v14}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 178
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 181
    iget-object v8, v15, Lcom/android/server/media/MediaSessionStack;->mPrevPlayedUids:Ljava/util/List;

    .line 183
    check-cast v8, Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 188
    move v8, v6

    .line 189
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 192
    move-result v9

    .line 193
    const/4 v10, 0x5

    .line 194
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 197
    move-result v9

    .line 198
    if-ge v8, v9, :cond_5

    .line 200
    iget-object v9, v15, Lcom/android/server/media/MediaSessionStack;->mPrevPlayedUids:Ljava/util/List;

    .line 202
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    move-result-object v10

    .line 206
    check-cast v10, Ljava/lang/Integer;

    .line 208
    check-cast v9, Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/2addr v8, v2

    .line 214
    goto :goto_1

    .line 215
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 218
    move-result v8

    .line 219
    sub-int/2addr v8, v2

    .line 220
    :goto_2
    if-ltz v8, :cond_8

    .line 222
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    move-result-object v9

    .line 226
    check-cast v9, Ljava/lang/Integer;

    .line 228
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 231
    move-result v9

    .line 232
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 235
    move-result-object v10

    .line 236
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    move-result v20

    .line 240
    if-eqz v20, :cond_7

    .line 242
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    move-result-object v20

    .line 246
    move-object/from16 v2, v20

    .line 248
    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 250
    iget v1, v2, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 252
    if-ne v1, v9, :cond_6

    .line 254
    invoke-virtual {v7, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 257
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 260
    :cond_6
    const/4 v2, 0x1

    .line 261
    goto :goto_3

    .line 262
    :cond_7
    const/4 v1, -0x1

    .line 263
    add-int/2addr v8, v1

    .line 264
    const/4 v2, 0x1

    .line 265
    goto :goto_2

    .line 266
    :cond_8
    const/4 v1, -0x1

    .line 267
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 273
    move-result-object v2

    .line 274
    const/4 v8, 0x0

    .line 275
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    move-result v9

    .line 279
    if-eqz v9, :cond_11

    .line 281
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    move-result-object v9

    .line 285
    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    .line 287
    iget-wide v10, v9, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    .line 289
    move-object/from16 v19, v2

    .line 291
    const/high16 v14, 0x10000

    .line 293
    int-to-long v1, v14

    .line 294
    and-long/2addr v1, v10

    .line 295
    const-wide/16 v10, 0x0

    .line 297
    cmp-long v1, v1, v10

    .line 299
    if-eqz v1, :cond_a

    .line 301
    const-string/jumbo v1, "skip global session"

    .line 304
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_9
    :goto_5
    move-object/from16 v2, v19

    .line 309
    const/4 v1, -0x1

    .line 310
    goto :goto_4

    .line 311
    :cond_a
    iget-object v1, v4, Lcom/android/server/media/MediaSessionService;->mAudioServiceInternal:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 313
    iget v2, v9, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 315
    iget-object v1, v1, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->mAudioService:Ljava/lang/ref/WeakReference;

    .line 317
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Lcom/android/server/audio/AudioService;

    .line 323
    if-nez v1, :cond_b

    .line 325
    move v1, v6

    .line 326
    goto :goto_6

    .line 327
    :cond_b
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 329
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    .line 332
    move-result v1

    .line 333
    :goto_6
    if-eqz v1, :cond_c

    .line 335
    goto :goto_7

    .line 336
    :cond_c
    iget v1, v4, Lcom/android/server/media/MediaSessionService;->mDevice:I

    .line 338
    :goto_7
    if-eqz v13, :cond_d

    .line 340
    const/16 v2, 0x80

    .line 342
    if-eq v1, v2, :cond_f

    .line 344
    :cond_d
    if-eqz v12, :cond_e

    .line 346
    const/16 v2, 0x8

    .line 348
    if-eq v1, v2, :cond_f

    .line 350
    :cond_e
    iget-boolean v2, v4, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    .line 352
    if-eqz v2, :cond_9

    .line 354
    const v2, 0x8000

    .line 357
    if-eq v1, v2, :cond_9

    .line 359
    :cond_f
    if-eqz v8, :cond_10

    .line 361
    iget v1, v8, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 363
    iget v2, v9, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 365
    if-ne v1, v2, :cond_9

    .line 367
    iget-object v1, v4, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 369
    invoke-virtual {v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    .line 372
    move-result v1

    .line 373
    invoke-virtual {v9, v1}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_9

    .line 379
    :cond_10
    move-object v8, v9

    .line 380
    goto :goto_5

    .line 381
    :cond_11
    if-eqz v8, :cond_13

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    .line 385
    const-string/jumbo v2, "package "

    .line 388
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    iget-object v2, v8, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 393
    const-string v4, " is selected"

    .line 395
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    if-eq v3, v8, :cond_12

    .line 400
    invoke-virtual {v15, v8}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 403
    :cond_12
    move-object v3, v8

    .line 404
    goto :goto_8

    .line 405
    :cond_13
    if-nez v3, :cond_14

    .line 407
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_14

    .line 413
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 416
    move-result-object v1

    .line 417
    move-object v3, v1

    .line 418
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 420
    :cond_14
    :goto_8
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getFlags()I

    .line 423
    move-result v1

    .line 424
    const/high16 v2, 0x20000000

    .line 426
    if-ne v1, v2, :cond_15

    .line 428
    move-object/from16 v1, p5

    .line 430
    invoke-static {v1, v6}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 433
    move-result-object v1

    .line 434
    goto :goto_9

    .line 435
    :cond_15
    move-object/from16 v1, p5

    .line 437
    goto :goto_9

    .line 438
    :catchall_0
    move-exception v0

    .line 439
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    throw v0

    .line 441
    :goto_9
    if-nez v3, :cond_16

    .line 443
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 445
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 447
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 449
    goto :goto_a

    .line 450
    :cond_16
    const/4 v2, 0x0

    .line 451
    :goto_a
    if-nez v2, :cond_17

    .line 453
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 455
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 457
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 459
    :cond_17
    const-string v4, "Sending "

    .line 461
    if-eqz v3, :cond_1c

    .line 463
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    .line 466
    move-result v7

    .line 467
    if-nez v7, :cond_18

    .line 469
    iget-object v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 471
    iget-object v7, v7, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 473
    if-nez v7, :cond_1c

    .line 475
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 477
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    const-string v4, " to "

    .line 485
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    move-result-object v2

    .line 495
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 500
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 502
    iget-boolean v4, v2, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 504
    if-eqz v4, :cond_19

    .line 506
    iget-object v4, v3, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 508
    iget v6, v3, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 510
    invoke-virtual {v2, v6, v4}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 513
    move-result v4

    .line 514
    if-eqz v4, :cond_19

    .line 516
    iget-object v4, v3, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 518
    iget v6, v3, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 520
    const-string v7, "MediaKeyEvent"

    .line 522
    invoke-virtual {v2, v6, v4, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_19
    if-eqz p6, :cond_1a

    .line 527
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 529
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->acquireWakeLockLocked()V

    .line 532
    :cond_1a
    if-eqz p6, :cond_1b

    .line 534
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 536
    iget v2, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I

    .line 538
    move/from16 v17, v2

    .line 540
    goto :goto_b

    .line 541
    :cond_1b
    const/16 v17, -0x1

    .line 543
    :goto_b
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 545
    move-object v11, v3

    .line 546
    move-object/from16 v12, p1

    .line 548
    move/from16 v13, p2

    .line 550
    move/from16 v14, p3

    .line 552
    move/from16 v15, p4

    .line 554
    move-object/from16 v16, v1

    .line 556
    move-object/from16 v18, v2

    .line 558
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 561
    :try_start_2
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 563
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 565
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 567
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 570
    move-result-object v0

    .line 571
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 574
    move-result-object v0

    .line 575
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 578
    move-result v2

    .line 579
    if-eqz v2, :cond_27

    .line 581
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 584
    move-result-object v2

    .line 585
    check-cast v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 587
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    .line 589
    iget-object v4, v3, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 591
    iget-object v6, v3, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 593
    invoke-interface {v2, v1, v4, v6}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->onMediaKeyEventDispatched(Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 596
    goto :goto_c

    .line 597
    :catch_0
    move-exception v0

    .line 598
    const-string v1, "Failed to send callback"

    .line 600
    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    goto/16 :goto_15

    .line 605
    :cond_1c
    if-nez v2, :cond_1d

    .line 607
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 609
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 611
    if-eqz v3, :cond_27

    .line 613
    :cond_1d
    if-eqz p6, :cond_1e

    .line 615
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 617
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->acquireWakeLockLocked()V

    .line 620
    :cond_1e
    if-eqz p4, :cond_1f

    .line 622
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 624
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 626
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 629
    move-result-object v3

    .line 630
    goto :goto_d

    .line 631
    :cond_1f
    move-object/from16 v3, p1

    .line 633
    :goto_d
    iget-object v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 635
    iget-object v8, v7, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 637
    const-string v9, "android.intent.extra.PACKAGE_NAME"

    .line 639
    const-string v10, "android.intent.extra.KEY_EVENT"

    .line 641
    const-string v11, "android.intent.action.MEDIA_BUTTON"

    .line 643
    const/high16 v12, 0x10000000

    .line 645
    if-eqz v8, :cond_20

    .line 647
    new-instance v6, Ljava/lang/StringBuilder;

    .line 649
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 655
    const-string v4, " to soundassistant "

    .line 657
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 662
    iget-object v4, v4, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 664
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 667
    move-result-object v4

    .line 668
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    move-result-object v4

    .line 675
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v4, Landroid/content/Intent;

    .line 680
    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 686
    invoke-virtual {v4, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 689
    invoke-virtual {v4, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 694
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 696
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 699
    move-result-object v3

    .line 700
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 706
    move-result-object v3

    .line 707
    sget-wide v6, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaButtonReceiverFgsAllowlistDurationMs:J

    .line 709
    const-string v8, ""

    .line 711
    const/4 v9, 0x0

    .line 712
    const/16 v10, 0x139

    .line 714
    move-object/from16 p1, v3

    .line 716
    move-wide/from16 p2, v6

    .line 718
    move/from16 p4, v9

    .line 720
    move/from16 p5, v10

    .line 722
    move-object/from16 p6, v8

    .line 724
    invoke-virtual/range {p1 .. p6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 727
    const/4 v6, 0x1

    .line 728
    invoke-virtual {v3, v6}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 731
    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 733
    invoke-virtual {v6}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 736
    move-result-object v6

    .line 737
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 740
    move-result-object v3

    .line 741
    const/4 v7, 0x0

    .line 742
    invoke-virtual {v6, v4, v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 745
    goto/16 :goto_10

    .line 747
    :cond_20
    if-eqz v2, :cond_27

    .line 749
    iget-object v13, v7, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 751
    if-eqz p6, :cond_21

    .line 753
    iget-object v8, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 755
    iget v8, v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I

    .line 757
    move/from16 v20, v8

    .line 759
    goto :goto_e

    .line 760
    :cond_21
    const/16 v20, -0x1

    .line 762
    :goto_e
    iget-object v14, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 764
    iget-object v7, v7, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 766
    sget-wide v17, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaButtonReceiverFgsAllowlistDurationMs:J

    .line 768
    new-instance v15, Landroid/content/Intent;

    .line 770
    invoke-direct {v15, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v15, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 776
    invoke-virtual {v15, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 779
    invoke-virtual {v15, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 785
    move-result-object v3

    .line 786
    const-string v8, ""

    .line 788
    const/4 v9, 0x0

    .line 789
    const/16 v10, 0x139

    .line 791
    move-object/from16 p1, v3

    .line 793
    move-wide/from16 p2, v17

    .line 795
    move/from16 p4, v9

    .line 797
    move/from16 p5, v10

    .line 799
    move-object/from16 p6, v8

    .line 801
    invoke-virtual/range {p1 .. p6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 804
    const/4 v8, 0x1

    .line 805
    invoke-virtual {v3, v8}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 808
    iget-object v8, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 810
    const-string v12, "PendingIntentHolder"

    .line 812
    if-eqz v8, :cond_22

    .line 814
    new-instance v6, Ljava/lang/StringBuilder;

    .line 816
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    const-string v4, " to the last known PendingIntent "

    .line 824
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    iget-object v4, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 829
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    move-result-object v4

    .line 836
    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :try_start_3
    iget-object v8, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 841
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 844
    move-result-object v3
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_2

    .line 845
    const/4 v4, 0x0

    .line 846
    move-object v9, v13

    .line 847
    move/from16 v10, v20

    .line 849
    move-object v11, v15

    .line 850
    move-object v6, v12

    .line 851
    move-object v12, v14

    .line 852
    move-object v13, v7

    .line 853
    move-object v14, v4

    .line 854
    move-object v15, v3

    .line 855
    :try_start_4
    invoke-virtual/range {v8 .. v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_1

    .line 858
    goto :goto_10

    .line 859
    :catch_1
    move-exception v0

    .line 860
    goto :goto_f

    .line 861
    :catch_2
    move-exception v0

    .line 862
    move-object v6, v12

    .line 863
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 865
    const-string v3, "Error sending key event to media button receiver "

    .line 867
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 870
    iget-object v2, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 872
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 878
    move-result-object v1

    .line 879
    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    goto/16 :goto_15

    .line 884
    :cond_22
    move-object v7, v12

    .line 885
    iget-object v8, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 887
    if-eqz v8, :cond_26

    .line 889
    new-instance v8, Ljava/lang/StringBuilder;

    .line 891
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 897
    const-string v4, " to the restored intent "

    .line 899
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    iget-object v4, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 904
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 907
    const-string v4, ", type="

    .line 909
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    iget v9, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    .line 914
    invoke-static {v8, v9, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 917
    iget-object v8, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 919
    invoke-virtual {v15, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 922
    iget v8, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 924
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 927
    move-result-object v8

    .line 928
    const/4 v10, 0x2

    .line 929
    if-eq v9, v10, :cond_24

    .line 931
    const/4 v10, 0x3

    .line 932
    if-eq v9, v10, :cond_23

    .line 934
    :try_start_5
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 937
    move-result-object v3

    .line 938
    const/4 v6, 0x0

    .line 939
    invoke-virtual {v13, v15, v8, v6, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 942
    goto :goto_10

    .line 943
    :catch_3
    move-exception v0

    .line 944
    goto :goto_14

    .line 945
    :cond_23
    invoke-virtual {v13, v8, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 948
    move-result-object v3

    .line 949
    invoke-virtual {v3, v15}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 952
    goto :goto_10

    .line 953
    :cond_24
    invoke-virtual {v13, v15, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 956
    :goto_10
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 958
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 960
    if-eqz v3, :cond_25

    .line 962
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 965
    move-result-object v2

    .line 966
    goto :goto_11

    .line 967
    :cond_25
    iget-object v2, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    .line 969
    :goto_11
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 971
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 973
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 975
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 978
    move-result-object v0

    .line 979
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 982
    move-result-object v3

    .line 983
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 986
    move-result v0

    .line 987
    if-eqz v0, :cond_27

    .line 989
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 992
    move-result-object v0

    .line 993
    move-object v4, v0

    .line 994
    check-cast v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 996
    :try_start_6
    iget-object v0, v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 998
    const/4 v6, 0x0

    .line 999
    :try_start_7
    invoke-interface {v0, v1, v2, v6}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->onMediaKeyEventDispatched(Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1002
    goto :goto_12

    .line 1003
    :catch_4
    move-exception v0

    .line 1004
    goto :goto_13

    .line 1005
    :catch_5
    move-exception v0

    .line 1006
    const/4 v6, 0x0

    .line 1007
    :goto_13
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1009
    const-string v8, "Failed notify key event dispatch, uid="

    .line 1011
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1014
    iget v4, v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    .line 1016
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1022
    move-result-object v4

    .line 1023
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    goto :goto_12

    .line 1027
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1029
    const-string v3, "Error sending media button to the restored intent "

    .line 1031
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1034
    iget-object v2, v2, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    move-result-object v1

    .line 1049
    invoke-static {v7, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    goto :goto_15

    .line 1053
    :cond_26
    const-string v0, "Shouldn\'t be happen -- pending intent or component name must be set"

    .line 1055
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_27
    :goto_15
    return-void
.end method

.method public final dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z
    .locals 12

    .line 1
    const-string/jumbo v0, "dispatchMediaKeyEventToSessionAsSystemService, pkg="

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    move-result v3

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v4

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v9

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 18
    iget-object v11, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 23
    invoke-static {p0, p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    .line 26
    move-result-object v1

    .line 27
    const-string p0, "MediaSessionService"

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ", pid="

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ", uid="

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, ", sessionToken="

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string p3, ", event="

    .line 63
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    const-string p3, ", session="

    .line 71
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p3

    .line 81
    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez v1, :cond_0

    .line 86
    const-string p0, "MediaSessionService"

    .line 88
    const-string p1, "Failed to find session to dispatch key event."

    .line 90
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    const/4 p0, 0x0

    .line 98
    return p0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v5, 0x1

    .line 104
    move-object v2, p1

    .line 105
    move-object v6, p2

    .line 106
    :try_start_2
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 109
    move-result p0

    .line 110
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    return p0

    .line 115
    :goto_0
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    throw p0
.end method

.method public final dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    move-object/from16 v9, p2

    .line 7
    move/from16 v10, p3

    .line 9
    move-object/from16 v11, p4

    .line 11
    move/from16 v12, p5

    .line 13
    move/from16 v13, p6

    .line 15
    if-eqz v11, :cond_4

    .line 17
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x18

    .line 23
    if-eq v1, v2, :cond_0

    .line 25
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 28
    move-result v1

    .line 29
    const/16 v2, 0x19

    .line 31
    if-eq v1, v2, :cond_0

    .line 33
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 36
    move-result v1

    .line 37
    const/16 v2, 0xa4

    .line 39
    if-eq v1, v2, :cond_0

    .line 41
    goto/16 :goto_2

    .line 43
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getAction()I

    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    if-nez v1, :cond_1

    .line 50
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 56
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getFlags()I

    .line 59
    move-result v1

    .line 60
    const/high16 v3, 0x10000000

    .line 62
    and-int/2addr v1, v3

    .line 63
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getFlags()I

    .line 68
    move-result v1

    .line 69
    and-int/lit16 v1, v1, 0x80

    .line 71
    if-eqz v1, :cond_1

    .line 73
    iput-boolean v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSkippedFirstKeyFromKeyCustomizer:Z

    .line 75
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 77
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 79
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyCustomizerRunnable:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 81
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 86
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 88
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyCustomizerRunnable:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    .line 90
    sget v2, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 92
    int-to-long v2, v2

    .line 93
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "Skip key cause by keycustomizer:"

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    const-string v1, "MediaSessionService"

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 116
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getFlags()I

    .line 119
    move-result v1

    .line 120
    and-int/lit16 v1, v1, 0x80

    .line 122
    if-eqz v1, :cond_2

    .line 124
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 127
    move-result v1

    .line 128
    if-ne v1, v2, :cond_2

    .line 130
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSkippedFirstKeyFromKeyCustomizer:Z

    .line 132
    if-eqz v1, :cond_2

    .line 134
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getEventTime()J

    .line 137
    move-result-wide v1

    .line 138
    const/4 v3, 0x0

    .line 139
    invoke-static {v11, v1, v2, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    .line 142
    move-result-object v5

    .line 143
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getFlags()I

    .line 146
    move-result v1

    .line 147
    and-int/lit16 v1, v1, -0x81

    .line 149
    invoke-virtual {v5, v1}, Landroid/view/KeyEvent;->setFlags(I)V

    .line 152
    move-object/from16 v1, p0

    .line 154
    move-object/from16 v2, p1

    .line 156
    move-object/from16 v3, p2

    .line 158
    move/from16 v4, p3

    .line 160
    move/from16 v6, p5

    .line 162
    move/from16 v7, p6

    .line 164
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V

    .line 167
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 170
    move-result v4

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 174
    move-result v5

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 178
    move-result-wide v14

    .line 179
    const-string v1, "MediaSessionService"

    .line 181
    const-string/jumbo v2, "dispatchVolumeKeyEvent, pkg="

    .line 184
    const-string v3, ", opPkg="

    .line 186
    const-string v6, ", pid="

    .line 188
    invoke-static {v2, v8, v3, v9, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    move-result-object v2

    .line 192
    const-string v3, ", uid="

    .line 194
    const-string v6, ", asSystem="

    .line 196
    invoke-static {v4, v5, v3, v6, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 199
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    const-string v3, ", event="

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    const-string v3, ", stream="

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, ", musicOnly="

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v2

    .line 230
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 235
    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 237
    const-string v3, "VolKeyEvt, pkg="

    .line 239
    const-string v6, ",opPkg="

    .line 241
    const-string v7, ",pid="

    .line 243
    invoke-static {v3, v8, v6, v9, v7}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    move-result-object v3

    .line 247
    const-string v6, ",uid="

    .line 249
    const-string v7, ",asSystem="

    .line 251
    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 254
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    const-string v6, ",code="

    .line 259
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 265
    move-result v6

    .line 266
    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v6, ",act:"

    .line 275
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getAction()I

    .line 281
    move-result v6

    .line 282
    invoke-static {v6}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v6, ",stream="

    .line 291
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    const-string v6, ",musicOnly="

    .line 299
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object v3

    .line 309
    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 315
    :try_start_0
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 317
    iget-object v7, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 319
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 320
    :try_start_1
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 322
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 325
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 326
    if-eqz v1, :cond_3

    .line 328
    move-object/from16 v1, p0

    .line 330
    move-object/from16 v2, p1

    .line 332
    move-object/from16 v3, p2

    .line 334
    move/from16 v6, p3

    .line 336
    move-object/from16 v16, v7

    .line 338
    move-object/from16 v7, p4

    .line 340
    move/from16 v8, p5

    .line 342
    move/from16 v9, p6

    .line 344
    :try_start_2
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 347
    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    .line 349
    goto :goto_1

    .line 350
    :cond_3
    move-object/from16 v16, v7

    .line 352
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 354
    const/4 v6, 0x0

    .line 355
    move-object/from16 v1, p1

    .line 357
    move v2, v4

    .line 358
    move v3, v5

    .line 359
    move/from16 v4, p3

    .line 361
    move-object/from16 v5, p4

    .line 363
    move-object/from16 v7, p2

    .line 365
    move/from16 v8, p5

    .line 367
    move/from16 v9, p6

    .line 369
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 372
    :goto_0
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    return-void

    .line 377
    :catchall_1
    move-exception v0

    .line 378
    move-object/from16 v16, v7

    .line 380
    :goto_1
    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 382
    :catchall_2
    move-exception v0

    .line 383
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    throw v0

    .line 387
    :cond_4
    :goto_2
    const-string v0, "MediaSessionService"

    .line 389
    const-string v1, "Attempted to dispatch null or non-volume key event."

    .line 391
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void
.end method

.method public final dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v6, p7

    .line 4
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 12
    move v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    .line 18
    move-result v4

    .line 19
    if-ne v4, v3, :cond_1

    .line 21
    move v4, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v4, v2

    .line 24
    :goto_1
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 27
    move-result v5

    .line 28
    const/16 v7, 0x18

    .line 30
    const/4 v8, -0x1

    .line 31
    if-eq v5, v7, :cond_4

    .line 33
    const/16 v7, 0x19

    .line 35
    if-eq v5, v7, :cond_3

    .line 37
    const/16 v7, 0xa4

    .line 39
    if-eq v5, v7, :cond_2

    .line 41
    move v5, v2

    .line 42
    move v7, v5

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v5, v2

    .line 45
    move v7, v3

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move v7, v2

    .line 48
    move v5, v8

    .line 49
    goto :goto_2

    .line 50
    :cond_4
    move v7, v2

    .line 51
    move v5, v3

    .line 52
    :goto_2
    if-nez v1, :cond_5

    .line 54
    if-eqz v4, :cond_16

    .line 56
    :cond_5
    iget-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 58
    iget-object v9, v9, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 60
    if-eqz v9, :cond_8

    .line 62
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_8

    .line 68
    iget-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 70
    iget-object v9, v9, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 72
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_8

    .line 78
    iget-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 80
    iget-object v9, v9, Lcom/android/server/media/MediaSessionService;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    .line 82
    iget-object v9, v9, Lcom/samsung/android/server/audio/CoverHelper;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 84
    if-nez v9, :cond_6

    .line 86
    goto :goto_3

    .line 87
    :cond_6
    invoke-virtual {v9}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 90
    move-result-object v9

    .line 91
    if-eqz v9, :cond_7

    .line 93
    invoke-virtual {v9}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_8

    .line 99
    :cond_7
    :goto_3
    move v9, v3

    .line 100
    goto :goto_4

    .line 101
    :cond_8
    move/from16 v9, p8

    .line 103
    :goto_4
    if-eqz v9, :cond_9

    .line 105
    const/16 v10, 0x1200

    .line 107
    goto :goto_5

    .line 108
    :cond_9
    const/16 v10, 0x1000

    .line 110
    :goto_5
    if-nez v9, :cond_b

    .line 112
    if-eqz v4, :cond_a

    .line 114
    or-int/lit8 v10, v10, 0x14

    .line 116
    goto :goto_6

    .line 117
    :cond_a
    or-int/lit8 v10, v10, 0x11

    .line 119
    :cond_b
    :goto_6
    if-eqz v5, :cond_15

    .line 121
    if-eqz v4, :cond_c

    .line 123
    move v5, v2

    .line 124
    :cond_c
    if-eq v5, v8, :cond_d

    .line 126
    if-ne v5, v3, :cond_e

    .line 128
    :cond_d
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->adjustVolumeForRotation(I)I

    .line 131
    move-result v4

    .line 132
    if-eq v4, v5, :cond_e

    .line 134
    const-string v5, "adjustVolumeForRotation() dir changed to "

    .line 136
    const-string v7, "MediaSessionService"

    .line 138
    invoke-static {v4, v5, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    move v7, v4

    .line 142
    goto :goto_7

    .line 143
    :cond_e
    move v7, v5

    .line 144
    :goto_7
    if-eqz v1, :cond_f

    .line 146
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_f

    .line 152
    goto :goto_8

    .line 153
    :cond_f
    move v3, v2

    .line 154
    :goto_8
    const/16 v1, 0x65

    .line 156
    if-eq v7, v1, :cond_10

    .line 158
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 160
    iget v1, v1, Lcom/android/server/media/MediaSessionService;->mSystemServerPid:I

    .line 162
    move v4, p3

    .line 163
    if-eq v4, v1, :cond_11

    .line 165
    goto :goto_9

    .line 166
    :cond_10
    move v4, p3

    .line 167
    :goto_9
    move v3, v2

    .line 168
    :cond_11
    const/16 v1, 0x1f4

    .line 170
    if-eqz v3, :cond_13

    .line 172
    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    .line 174
    if-eqz v5, :cond_12

    .line 176
    iput v6, v5, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    .line 178
    iput v7, v5, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    .line 180
    iput v1, v5, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 182
    iput-boolean v2, v5, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    .line 184
    iput v10, v5, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    .line 186
    :cond_12
    new-instance v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    .line 188
    move-object v5, p1

    .line 189
    move-object v8, p2

    .line 190
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    .line 195
    iput v6, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    .line 197
    iput v7, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    .line 199
    iput v1, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 201
    iput-boolean v3, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    .line 203
    iput v10, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    .line 205
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 208
    goto :goto_a

    .line 209
    :cond_13
    move-object v5, p1

    .line 210
    move-object v8, p2

    .line 211
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    .line 213
    if-eqz v3, :cond_14

    .line 215
    iput v6, v3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    .line 217
    iput v7, v3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    .line 219
    iput v1, v3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 221
    iput-boolean v2, v3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    .line 223
    iput v10, v3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    .line 225
    const/4 v1, 0x0

    .line 226
    iput-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    .line 228
    :cond_14
    :goto_a
    move-object v0, p0

    .line 229
    move-object v1, p1

    .line 230
    move-object v2, p2

    .line 231
    move v3, p3

    .line 232
    move v4, p4

    .line 233
    move/from16 v5, p5

    .line 235
    move/from16 v6, p7

    .line 237
    move v8, v10

    .line 238
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    .line 241
    goto :goto_b

    .line 242
    :cond_15
    move-object v5, p1

    .line 243
    move-object v8, p2

    .line 244
    move v4, p3

    .line 245
    if-eqz v7, :cond_16

    .line 247
    if-eqz v1, :cond_16

    .line 249
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_16

    .line 255
    const/16 v7, 0x65

    .line 257
    move-object v0, p0

    .line 258
    move-object v1, p1

    .line 259
    move-object v2, p2

    .line 260
    move v3, p3

    .line 261
    move v4, p4

    .line 262
    move/from16 v5, p5

    .line 264
    move/from16 v6, p7

    .line 266
    move v8, v10

    .line 267
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    .line 270
    :cond_16
    :goto_b
    return-void
.end method

.method public final dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p4

    .line 5
    const-string v2, "Session with packageName="

    .line 7
    const-string v3, "Failed to find session to dispatch key event, token="

    .line 9
    const-string/jumbo v4, "dispatchVolumeKeyEventToSessionAsSystemService, pkg="

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v8

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v9

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    move-result-wide v14

    .line 24
    :try_start_0
    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 26
    iget-object v13, v5, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 28
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 29
    :try_start_1
    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 31
    invoke-static {v5, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    .line 34
    move-result-object v5

    .line 35
    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 37
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 39
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 41
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;

    .line 44
    move-result-object v6

    .line 45
    if-eqz v6, :cond_0

    .line 47
    const-string/jumbo v7, "com.samsung.android.audiomirroring"

    .line 50
    iget-object v10, v6, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 52
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_0

    .line 58
    if-eqz v5, :cond_0

    .line 60
    iget-object v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 62
    iget-object v10, v5, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-static {v7, v10}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misMirroringPackage(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)Z

    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_0

    .line 70
    move-object v5, v6

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-object v3, v13

    .line 74
    goto/16 :goto_3

    .line 76
    :cond_0
    :goto_0
    const-string v6, "MediaSessionService"

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    move-object/from16 v4, p1

    .line 85
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v10, ", opPkg="

    .line 90
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    move-object/from16 v10, p2

    .line 95
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v11, ", pid="

    .line 100
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v11, ", uid="

    .line 108
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v11, ", sessionToken="

    .line 116
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v11, ", event="

    .line 124
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    move-object/from16 v11, p3

    .line 129
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    const-string v12, ", session="

    .line 134
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v7

    .line 144
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-nez v5, :cond_1

    .line 149
    const-string v2, "MediaSessionService"

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ". Fallbacks to the default handling."

    .line 161
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v12, 0x0

    .line 172
    const/4 v6, 0x1

    .line 173
    const/high16 v16, -0x80000000

    .line 175
    move-object/from16 v1, p0

    .line 177
    move-object/from16 v2, p1

    .line 179
    move-object/from16 v3, p2

    .line 181
    move v4, v8

    .line 182
    move v5, v9

    .line 183
    move-object/from16 v7, p3

    .line 185
    move/from16 v8, v16

    .line 187
    move v9, v12

    .line 188
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 191
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    return-void

    .line 196
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/media/flags/Flags;->fallbackToDefaultHandlingWhenMediaSessionHasFixedVolumeHandling()Z

    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->canHandleVolumeKey()Z

    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_2

    .line 208
    const-string v1, "MediaSessionService"

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object v2, v5, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 217
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v2, " doesn\'t support volume adjustment. Fallbacks to the default handling."

    .line 222
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v12, 0x0

    .line 233
    const/4 v6, 0x1

    .line 234
    const/high16 v16, -0x80000000

    .line 236
    move-object/from16 v1, p0

    .line 238
    move-object/from16 v2, p1

    .line 240
    move-object/from16 v3, p2

    .line 242
    move v4, v8

    .line 243
    move v5, v9

    .line 244
    move-object/from16 v7, p3

    .line 246
    move/from16 v8, v16

    .line 248
    move v9, v12

    .line 249
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 252
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    return-void

    .line 257
    :cond_2
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 260
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    const/4 v2, 0x1

    .line 262
    if-eqz v1, :cond_4

    .line 264
    if-eq v1, v2, :cond_3

    .line 266
    move-object v3, v13

    .line 267
    goto :goto_2

    .line 268
    :cond_3
    const/4 v0, 0x1

    .line 269
    const/4 v11, 0x0

    .line 270
    const/16 v12, 0x1014

    .line 272
    const/4 v1, 0x0

    .line 273
    move-object/from16 v6, p1

    .line 275
    move-object/from16 v7, p2

    .line 277
    move v10, v0

    .line 278
    move-object v3, v13

    .line 279
    move v13, v1

    .line 280
    :try_start_4
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    .line 283
    goto :goto_2

    .line 284
    :catchall_1
    move-exception v0

    .line 285
    goto :goto_3

    .line 286
    :cond_4
    move-object v3, v13

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 290
    move-result v1

    .line 291
    const/16 v6, 0x18

    .line 293
    if-eq v1, v6, :cond_7

    .line 295
    const/16 v2, 0x19

    .line 297
    if-eq v1, v2, :cond_6

    .line 299
    const/16 v2, 0xa4

    .line 301
    if-eq v1, v2, :cond_5

    .line 303
    const/4 v2, 0x0

    .line 304
    goto :goto_1

    .line 305
    :cond_5
    const/16 v2, 0x65

    .line 307
    goto :goto_1

    .line 308
    :cond_6
    const/4 v2, -0x1

    .line 309
    :cond_7
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->adjustVolumeForRotation(I)I

    .line 312
    move-result v11

    .line 313
    const/4 v13, 0x0

    .line 314
    const/16 v12, 0x1001

    .line 316
    const/4 v0, 0x1

    .line 317
    move-object/from16 v6, p1

    .line 319
    move-object/from16 v7, p2

    .line 321
    move v10, v0

    .line 322
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    .line 325
    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 326
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    return-void

    .line 330
    :goto_3
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 331
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 332
    :catchall_2
    move-exception v0

    .line 333
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p1, "Global priority session is "

    .line 3
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 5
    iget-object p3, p3, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 7
    const-string v0, "android.permission.DUMP"

    .line 9
    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_0

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    const-string p1, "Permission Denial: can\'t dump MediaSessionService from from pid="

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string p1, ", uid="

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string p1, " due to missing android.permission.DUMP permission"

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    return-void

    .line 54
    :cond_0
    const-string p3, "MEDIA SESSION SERVICE (dumpsys media_session)"

    .line 56
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 62
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 64
    iget-object p3, p3, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 66
    monitor-enter p3

    .line 67
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 74
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, " sessions listeners."

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 102
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 116
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 118
    if-eqz p1, :cond_1

    .line 120
    const-string v0, "  "

    .line 122
    invoke-virtual {p1, p2, v0}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 125
    goto :goto_0

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    goto/16 :goto_2

    .line 129
    :cond_1
    :goto_0
    const-string p1, "User Records:"

    .line 131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 136
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 138
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 141
    move-result p1

    .line 142
    const/4 v0, 0x0

    .line 143
    :goto_1
    if-ge v0, p1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 147
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 149
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 155
    invoke-virtual {v1, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 160
    goto :goto_1

    .line 161
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const-string/jumbo v0, "isAppCastingOn:"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 174
    iget-boolean v0, v0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    const-string/jumbo v0, "isMultiSoundOn:"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 199
    iget-boolean v0, v0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 213
    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 216
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    const-string/jumbo v0, "isSupportMediaDataPlatform:"

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    if-eqz v0, :cond_3

    .line 244
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 246
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mMediaSessionDataPlatform:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 248
    if-eqz p1, :cond_3

    .line 250
    iget-object p1, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 252
    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 255
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 258
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 260
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 262
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {p1, p0, p2}, Lcom/android/server/media/AudioPlayerStateMonitor;->dump(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 267
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const-string p0, "Media session config:"

    .line 270
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    const-string p0, "  %s: [cur: %s, def: %s]"

    .line 275
    sget-wide v0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaButtonReceiverFgsAllowlistDurationMs:J

    .line 277
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 280
    move-result-object p1

    .line 281
    const-wide/16 v0, 0x2710

    .line 283
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 286
    move-result-object p3

    .line 287
    const-string/jumbo v0, "media_button_receiver_fgs_allowlist_duration_ms"

    .line 290
    filled-new-array {v0, p1, p3}, [Ljava/lang/Object;

    .line 293
    move-result-object p1

    .line 294
    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    sget-wide v0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsAllowlistDurationMs:J

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 306
    move-result-object p1

    .line 307
    const-string/jumbo v0, "media_session_calback_fgs_allowlist_duration_ms"

    .line 310
    filled-new-array {v0, p1, p3}, [Ljava/lang/Object;

    .line 313
    move-result-object p1

    .line 314
    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    sget-wide v0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsWhileInUseTempAllowDurationMs:J

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 326
    move-result-object p1

    .line 327
    const-string/jumbo v0, "media_session_callback_fgs_while_in_use_temp_allow_duration_ms"

    .line 330
    filled-new-array {v0, p1, p3}, [Ljava/lang/Object;

    .line 333
    move-result-object p1

    .line 334
    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    return-void

    .line 342
    :goto_2
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    throw p0
.end method

.method public final expireTempEngagedSessions()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/media/flags/Flags;->enableNotifyingActivityManagerWithMediaSessionStatusChange()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 10
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 15
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForFgs:Ljava/util/Map;

    .line 17
    check-cast p0, Ljava/util/HashMap;

    .line 19
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 27
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Set;

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 55
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->expireTempEngaged()V

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final getMediaKeyEventSession(Ljava/lang/String;)Landroid/media/session/MediaSession$Token;
    .locals 7

    .line 1
    const-string v0, "No matching user record to get the media key event session, userId="

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    move-result v3

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v4

    .line 23
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 25
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {v6, p1, v2}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 30
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 32
    invoke-virtual {v6, v1, v2, v3, p1}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(IIILjava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 37
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 45
    move-result-object p0

    .line 46
    const/4 v1, 0x0

    .line 47
    if-nez p0, :cond_0

    .line 49
    const-string p0, "MediaSessionService"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return-object v1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    .line 76
    move-result-object p0

    .line 77
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    instance-of p1, p0, Lcom/android/server/media/MediaSessionRecord;

    .line 80
    if-eqz p1, :cond_1

    .line 82
    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    .line 84
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    return-object p0

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    return-object v1

    .line 96
    :goto_0
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 98
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw p0
.end method

.method public final getMediaKeyEventSessionPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "No matching user record to get the media key event session package , userId="

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    move-result v3

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v4

    .line 23
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 25
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {v6, p1, v2}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 30
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 32
    invoke-virtual {v6, v1, v2, v3, p1}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(IIILjava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 37
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 45
    move-result-object p0

    .line 46
    if-nez p0, :cond_0

    .line 48
    const-string p0, "MediaSessionService"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string p0, ""

    .line 67
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    return-object p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    .line 77
    move-result-object v0

    .line 78
    instance-of v1, v0, Lcom/android/server/media/MediaSessionRecord;

    .line 80
    if-eqz v1, :cond_1

    .line 82
    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 84
    iget-object p0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 86
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    return-object p0

    .line 91
    :cond_1
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 93
    if-eqz p0, :cond_2

    .line 95
    iget-object p0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    .line 97
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    return-object p0

    .line 102
    :cond_2
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    :try_start_5
    const-string p0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 105
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    return-object p0

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :goto_0
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 112
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 113
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    throw p0
.end method

.method public final getSessionPolicies(Landroid/media/session/MediaSession$Token;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 8
    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getSessionPolicies()I

    .line 17
    move-result p0

    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v2

    .line 13
    if-eqz p1, :cond_0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 21
    iget-object v4, v4, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {v4, p1, v1}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    .line 31
    move-result p2

    .line 32
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 34
    invoke-virtual {v4, v0, v1, p2, p1}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(IIILjava/lang/String;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 39
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 44
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 46
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p0

    .line 59
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_1

    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lcom/android/server/media/MediaSessionRecord;

    .line 71
    iget-object p2, p2, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 73
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    return-object p1

    .line 84
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw p0
.end method

.method public final handleIncomingUser(IIILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 8
    move-result v0

    .line 9
    if-ne p3, v0, :cond_0

    .line 11
    return p3

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 14
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 16
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 18
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_2

    .line 24
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 26
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 29
    move-result p0

    .line 30
    if-ne p3, p0, :cond_1

    .line 32
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_1
    return p3

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 40
    const-string p1, "Permission denied while calling from "

    .line 42
    const-string p2, " with user id: "

    .line 44
    const-string v1, "; Need to run as either the calling user id ("

    .line 46
    invoke-static {p3, p1, p4, p2, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p1

    .line 50
    const-string p2, "), or with android.permission.INTERACT_ACROSS_USERS_FULL permission"

    .line 52
    invoke-static {v0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
.end method

.method public final hasCustomMediaKeyDispatcher(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final hasCustomMediaSessionPolicyProvider(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;

    .line 5
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    move-result p0

    .line 21
    :goto_0
    return p0
.end method

.method public final hasEnabledNotificationListener(IILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "MediaSessionService"

    .line 3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq p1, v1, :cond_0

    .line 14
    return v2

    .line 15
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 17
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 30
    move-result p1

    .line 31
    if-eq p2, p1, :cond_1

    .line 33
    const-string p0, "Failed to check enabled notification listener. Package name and UID doesn\'t match"

    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return v2

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 41
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 43
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p3, p1}, Landroid/app/NotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_2
    sget p0, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string p1, " (uid="

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string p1, ") doesn\'t have an enabled notification listener"

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v2

    .line 86
    :catch_0
    const-string p0, "Failed to check enabled notification listener. Package name doesn\'t exist"

    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v2
.end method

.method public final isGlobalPriorityActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final isTrusted(Ljava/lang/String;II)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 12
    move-result v1

    .line 13
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 15
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    return v2

    .line 30
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    move-result-wide v4

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 36
    invoke-virtual {v0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_2

    .line 42
    invoke-virtual {p0, v1, p3, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasEnabledNotificationListener(IILjava/lang/String;)Z

    .line 45
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-eqz p0, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v3, v2

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    return v3

    .line 57
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    array-length v1, v0

    .line 20
    if-lez v1, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 23
    aget-object v0, v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string/jumbo v0, "com.android.shell"

    .line 29
    :goto_0
    new-instance v1, Lcom/android/server/media/MediaShellCommand;

    .line 31
    invoke-direct {v1, v0}, Lcom/android/server/media/MediaShellCommand;-><init>(Ljava/lang/String;)V

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p1

    .line 36
    move-object v4, p2

    .line 37
    move-object v5, p3

    .line 38
    move-object v6, p4

    .line 39
    move-object v7, p5

    .line 40
    move-object v8, p6

    .line 41
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 44
    return-void
.end method

.method public final registerRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "registerRemoteVolumeController uid : "

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    move-result v1

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v2

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v3

    .line 16
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 18
    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v5

    .line 21
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 23
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 25
    const-string v7, "android.permission.STATUS_BAR_SERVICE"

    .line 27
    invoke-virtual {v6, v7, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 30
    move-result v6

    .line 31
    if-nez v6, :cond_0

    .line 33
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 35
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 37
    invoke-virtual {v6, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, ", pid : "

    .line 50
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, ", rvc : "

    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {p1}, Landroid/media/IRemoteSessionCallback;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 74
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 76
    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 93
    const-string p1, "Only System UI and Settings may listen for volume changes"

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :goto_0
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw p0

    .line 103
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    throw p0
.end method

.method public final removeOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .locals 9

    .line 1
    const-string v0, "Only the full user can remove the listener, userId="

    .line 3
    const-string v1, "The MediaKeyEventDispatchedListener ("

    .line 5
    if-nez p1, :cond_0

    .line 7
    const-string p0, "MediaSessionService"

    .line 9
    const-string/jumbo p1, "removeOnMediaKeyEventDispatchedListener: listener is null, ignoring"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    move-result v2

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 31
    move-result v4

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v5

    .line 36
    :try_start_0
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 38
    invoke-virtual {v7, v2, v3}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 44
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 46
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 48
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 51
    invoke-virtual {v7, v4}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 54
    move-result-object v7

    .line 55
    if-eqz v7, :cond_2

    .line 57
    iget v8, v7, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 59
    if-eq v8, v4, :cond_1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    .line 65
    move-result-object v0

    .line 66
    iget-object v4, v7, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 68
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-interface {v0, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 78
    const-string v0, "MediaSessionService"

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const-string p1, ") is removed by "

    .line 94
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 99
    invoke-static {p0, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    :goto_0
    :try_start_2
    const-string p0, "MediaSessionService"

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    return-void

    .line 142
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :try_start_4
    throw p0

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    goto :goto_2

    .line 146
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 148
    const-string p1, "MEDIA_CONTENT_CONTROL permission is required to  remove MediaKeyEventDispatchedListener"

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    throw p0
.end method

.method public final removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .locals 9

    .line 1
    const-string v0, "Only the full user can remove the listener, userId="

    .line 3
    const-string v1, "The MediaKeyEventSessionChangedListener ("

    .line 5
    if-nez p1, :cond_0

    .line 7
    const-string p0, "MediaSessionService"

    .line 9
    const-string/jumbo p1, "removeOnMediaKeyEventSessionChangedListener: listener is null, ignoring"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    move-result v3

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    move-result-wide v4

    .line 35
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 37
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 42
    invoke-virtual {v7, v3}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 45
    move-result-object v7

    .line 46
    if-eqz v7, :cond_2

    .line 48
    iget v8, v7, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 50
    if-eq v8, v3, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    .line 56
    move-result-object v0

    .line 57
    iget-object v3, v7, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 59
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    .line 65
    const/4 v7, 0x0

    .line 66
    invoke-interface {v0, v3, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 69
    const-string v0, "MediaSessionService"

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string p1, ") is removed by "

    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 90
    invoke-static {p0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    :goto_0
    :try_start_2
    const-string p0, "MediaSessionService"

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    return-void

    .line 133
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw p0
.end method

.method public final removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 13
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 18
    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    .line 21
    move-result p1

    .line 22
    if-ltz p1, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 26
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 28
    check-cast p0, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    .line 38
    invoke-interface {p1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    .line 41
    move-result-object p1

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return-void

    .line 54
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    throw p0
.end method

.method public final removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 8
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    .line 11
    move-result p1

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq p1, v1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 17
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    .line 27
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0
.end method

.method public final setCustomMediaKeyDispatcher(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->instantiateCustomDispatcher(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final setCustomMediaSessionPolicyProvider(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->instantiateCustomProvider(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .locals 11

    .line 1
    const-string v0, "Only the full user can set the media key listener, userId="

    .line 3
    const-string v1, "Failed to set death recipient "

    .line 5
    const-string v2, "The media key listener "

    .line 7
    const-string v3, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid="

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    move-result v4

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v5

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v6

    .line 21
    :try_start_0
    iget-object v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 23
    iget-object v8, v8, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 25
    const-string v9, "android.permission.SET_MEDIA_KEY_LISTENER"

    .line 27
    invoke-virtual {v8, v9, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_4

    .line 33
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 35
    iget-object v4, v4, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 45
    move-result v8

    .line 46
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 48
    invoke-virtual {v9, v8}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 51
    move-result-object v9

    .line 52
    if-eqz v9, :cond_3

    .line 54
    iget v10, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 56
    if-eq v10, v8, :cond_0

    .line 58
    goto/16 :goto_1

    .line 60
    :cond_0
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    .line 62
    if-eqz v0, :cond_1

    .line 64
    iget v0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    .line 66
    if-eq v0, v5, :cond_1

    .line 68
    const-string p0, "MediaSessionService"

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget v0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ", uid="

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    :try_start_2
    iput-object p1, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    .line 104
    iput v5, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    .line 106
    const-string p1, "MediaSessionService"

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v2, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, " is set by "

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 125
    invoke-static {v2, v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    if-eqz p1, :cond_2

    .line 143
    :try_start_3
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyListener;->asBinder()Landroid/os/IBinder;

    .line 146
    move-result-object p1

    .line 147
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    .line 149
    const/4 v2, 0x1

    .line 150
    invoke-direct {v0, p0, v9, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V

    .line 153
    const/4 p0, 0x0

    .line 154
    invoke-interface {p1, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    goto :goto_0

    .line 158
    :catch_0
    :try_start_4
    const-string p0, "MediaSessionService"

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 p0, 0x0

    .line 178
    iput-object p0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    .line 180
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    return-void

    .line 185
    :cond_3
    :goto_1
    :try_start_5
    const-string p0, "MediaSessionService"

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p1

    .line 199
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 203
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    return-void

    .line 207
    :goto_2
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 208
    :try_start_7
    throw p0

    .line 209
    :catchall_1
    move-exception p0

    .line 210
    goto :goto_3

    .line 211
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 213
    const-string p1, "Must hold the SET_MEDIA_KEY_LISTENER permission."

    .line 215
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 218
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 219
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    throw p0
.end method

.method public final setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .locals 11

    .line 1
    const-string v0, "Only the full user can set the volume key long-press listener, userId="

    .line 3
    const-string v1, "Failed to set death recipient "

    .line 5
    const-string v2, "The volume key long-press listener "

    .line 7
    const-string v3, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener="

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    move-result v4

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v5

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v6

    .line 21
    :try_start_0
    iget-object v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 23
    iget-object v8, v8, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 25
    const-string v9, "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"

    .line 27
    invoke-virtual {v8, v9, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_4

    .line 33
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 35
    iget-object v4, v4, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 45
    move-result v8

    .line 46
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 48
    invoke-virtual {v9, v8}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 51
    move-result-object v9

    .line 52
    if-eqz v9, :cond_3

    .line 54
    iget v10, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 56
    if-eq v10, v8, :cond_0

    .line 58
    goto/16 :goto_1

    .line 60
    :cond_0
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 62
    if-eqz v0, :cond_1

    .line 64
    iget v0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    .line 66
    if-eq v0, v5, :cond_1

    .line 68
    const-string p0, "MediaSessionService"

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget v0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ", uid="

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    :try_start_2
    iput-object p1, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 104
    iput v5, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    .line 106
    const-string v0, "MediaSessionService"

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string p1, " is set by "

    .line 118
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 123
    invoke-static {p1, v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    if-eqz p1, :cond_2

    .line 141
    :try_start_3
    invoke-interface {p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->asBinder()Landroid/os/IBinder;

    .line 144
    move-result-object p1

    .line 145
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    .line 147
    const/4 v2, 0x0

    .line 148
    invoke-direct {v0, p0, v9, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V

    .line 151
    const/4 p0, 0x0

    .line 152
    invoke-interface {p1, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    goto :goto_0

    .line 156
    :catch_0
    :try_start_4
    const-string p0, "MediaSessionService"

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 p0, 0x0

    .line 176
    iput-object p0, v9, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 178
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    return-void

    .line 183
    :cond_3
    :goto_1
    :try_start_5
    const-string p0, "MediaSessionService"

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 201
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    return-void

    .line 205
    :goto_2
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    :try_start_7
    throw p0

    .line 207
    :catchall_1
    move-exception p0

    .line 208
    goto :goto_3

    .line 209
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 211
    const-string p1, "Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission."

    .line 213
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 216
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 217
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    throw p0
.end method

.method public final setSessionPolicies(Landroid/media/session/MediaSession$Token;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 7
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 12
    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 18
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v3, p1, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 22
    invoke-virtual {p0, v3}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_1

    .line 28
    iget-object v3, p1, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :try_start_2
    iput p2, p1, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    .line 33
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionPolicies()I

    .line 42
    move-result p2

    .line 43
    and-int/lit8 p2, p2, 0x2

    .line 45
    if-eqz p2, :cond_0

    .line 47
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 49
    if-ne p1, p2, :cond_1

    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :try_start_5
    throw p0

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    return-void

    .line 70
    :goto_1
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 71
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 72
    :catchall_2
    move-exception p0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw p0
.end method

.method public final unregisterRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "unregisterRemoteVolumeController uid : "

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    move-result v1

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v2

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v3

    .line 16
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 18
    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v5

    .line 21
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 23
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 25
    const-string v7, "android.permission.STATUS_BAR_SERVICE"

    .line 27
    invoke-virtual {v6, v7, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 30
    move-result v6

    .line 31
    if-nez v6, :cond_0

    .line 33
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 35
    iget-object v6, v6, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 37
    invoke-virtual {v6, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, ", pid : "

    .line 50
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, ", rvc : "

    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {p1}, Landroid/media/IRemoteSessionCallback;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 74
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 76
    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 93
    const-string p1, "Only System UI and Settings may listen for volume changes"

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :goto_0
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw p0

    .line 103
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    throw p0
.end method
