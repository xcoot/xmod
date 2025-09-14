.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

.field public final mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mLatencyLoggingListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;

.field public final mLoadedKeyphraseIds:Landroid/util/ArrayMap;

.field public final mRealDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVisualQueryRecognitionStatusListener:Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;

.field public final mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

.field public final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLatencyLoggingListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 32
    .line 33
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 40
    .line 41
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 47
    .line 48
    const-string/jumbo v1, "sound_model.db"

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x7

    .line 53
    invoke-direct {v0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mRealDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

    .line 59
    .line 60
    new-instance p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 66
    .line 67
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 74
    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 79
    .line 80
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 92
    .line 93
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 100
    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 105
    .line 106
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 115
    .line 116
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 123
    .line 124
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    .line 127
    .line 128
    .line 129
    iget-object p0, p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 134
    .line 135
    monitor-enter p1

    .line 136
    :try_start_0
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 137
    .line 138
    monitor-exit p1

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p0
.end method


# virtual methods
.method public final isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const-class p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 17
    .line 18
    const-class p1, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v0, 0x258

    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    iput-boolean p0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    .line 40
    .line 41
    iget-object p0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;

    .line 42
    .line 43
    iget-object p1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;

    .line 62
    .line 63
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/Handler;)V

    .line 68
    .line 69
    .line 70
    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    iput p0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 76
    .line 77
    iget-object p1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    iget-object p1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    iput-boolean p0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUserSupported:Z

    .line 95
    .line 96
    const/4 p0, 0x0

    .line 97
    invoke-virtual {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 98
    .line 99
    .line 100
    monitor-exit v0

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_1
    const/16 v0, 0x3e8

    .line 106
    .line 107
    if-ne p1, v0, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLatencyLoggingListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;

    .line 112
    .line 113
    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "voiceinteraction"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$2;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->setVoiceInteractionManagerProvider(Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    const/4 p1, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method
