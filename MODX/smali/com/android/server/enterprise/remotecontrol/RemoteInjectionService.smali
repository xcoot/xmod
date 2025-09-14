.class public final Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayHeight:I

.field public mCurrentDisplayWidth:I

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

.field public mKnoxRemoteScreenSessionOwnerUid:I

.field public final mRemoteControlDisabled:Landroid/util/SparseArray;

.field public mRemoteScreenHeight:I

.field public mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

.field public mRemoteScreenWidth:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;-><init>()V

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 19
    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 23
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 27
    const-string/jumbo v0, "window"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/WindowManager;

    .line 36
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 38
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 46
    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 52
    iget v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 57
    :goto_0
    iput v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 59
    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 65
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 70
    :goto_1
    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 72
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 74
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 79
    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 82
    const-class p1, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    .line 84
    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;

    .line 86
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    .line 89
    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getDownTime()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getEventTime()J

    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    move-result v9

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    move-result v10

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 20
    move-result v11

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getMetaState()I

    .line 24
    move-result v12

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 28
    move-result v13

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getScanCode()I

    .line 32
    move-result v14

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getSource()I

    .line 36
    move-result v4

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getFlags()I

    .line 40
    move-result v5

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 44
    move-result v15

    .line 45
    if-nez v4, :cond_0

    .line 47
    const/16 v4, 0x101

    .line 49
    :cond_0
    move/from16 v16, v4

    .line 51
    const-wide/16 v6, 0x0

    .line 53
    cmp-long v4, v2, v6

    .line 55
    if-nez v4, :cond_1

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 60
    move-result-wide v2

    .line 61
    :cond_1
    cmp-long v4, v0, v6

    .line 63
    if-nez v4, :cond_2

    .line 65
    move-wide v0, v2

    .line 66
    :cond_2
    new-instance v7, Landroid/view/KeyEvent;

    .line 68
    or-int/lit8 v17, v5, 0x8

    .line 70
    move-object v4, v7

    .line 71
    move-wide v5, v0

    .line 72
    move-object v0, v7

    .line 73
    move-wide v7, v2

    .line 74
    move v1, v15

    .line 75
    move/from16 v15, v17

    .line 77
    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 83
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 86
    move-result-object v1

    .line 87
    if-eqz p1, :cond_3

    .line 89
    const/4 v2, 0x2

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const/4 v2, 0x1

    .line 92
    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 95
    move-result v0

    .line 96
    return v0
.end method

.method public static isInPortrait(Landroid/view/Display;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 14
    :goto_1
    return p0
.end method


# virtual methods
.method public final addRemoteScreenWatcherCallback(Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 8

    .line 1
    if-eqz p3, :cond_1

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    .line 5
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 21
    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 25
    iget-object v0, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 35
    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    .line 42
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    .line 45
    filled-new-array {v0}, [Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 58
    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 62
    iget-object v0, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 72
    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 75
    move-result-object p1

    .line 76
    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 81
    move-result-wide v6

    .line 82
    const/4 p3, 0x0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    const-string v1, "RESTRICTION"

    .line 87
    const-string v5, "allowRemoteControl"

    .line 89
    const/4 v4, 0x0

    .line 90
    move v2, p1

    .line 91
    move v3, p2

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_3

    .line 98
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 101
    move-result p1

    .line 102
    iget-object p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    .line 107
    move-result p0

    .line 108
    xor-int/lit8 p0, p0, 0x1

    .line 110
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    goto :goto_2

    .line 124
    :catch_0
    :try_start_1
    const-string p0, "RemoteInjection"

    .line 126
    const-string p1, "RemoteInjection.allowRemoteControl() exception : "

    .line 128
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    goto :goto_1

    .line 132
    :goto_2
    return p3

    .line 133
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "android.permission.DUMP"

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const-string p0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    move-result p3

    .line 26
    const-string v0, "RemoteControl disallowed userId : "

    .line 28
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    move v1, v0

    .line 33
    :goto_0
    if-ge v0, p3, :cond_2

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 41
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 43
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 49
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-nez v1, :cond_3

    .line 59
    const-string p0, "None"

    .line 61
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    :cond_3
    return-void
.end method

.method public final injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v7

    .line 9
    const/4 v8, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide p0

    .line 16
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 19
    move-result v4

    .line 20
    const-string v5, "RemoteInjectionService"

    .line 22
    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 24
    const/4 v2, 0x4

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v1, 0x5

    .line 27
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    return v8

    .line 34
    :catchall_0
    move-exception p2

    .line 35
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    throw p2

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    const-string v2, "INJECT_KEY_EVENT"

    .line 42
    invoke-static {v1, v2}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    move-result-wide v9

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    .line 52
    move-result p0

    .line 53
    const-string v0, "RemoteInjection"

    .line 55
    if-eqz p0, :cond_1

    .line 57
    const-string p0, "Remote Control is disabled, couldnt inject key event"

    .line 59
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 65
    move-result v4

    .line 66
    const/4 v2, 0x4

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v1, 0x5

    .line 69
    const-string v5, "RemoteInjectionService"

    .line 71
    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 73
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 76
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    return v8

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 83
    move-result p0

    .line 84
    const/4 v1, 0x2

    .line 85
    if-eq p0, v1, :cond_2

    .line 87
    invoke-virtual {p1, v8}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 90
    :cond_2
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z

    .line 93
    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception p0

    .line 96
    const-string p1, "Error injecting key event : "

    .line 98
    invoke-static {p0, p1, v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    if-eqz v8, :cond_3

    .line 103
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 106
    move-result v4

    .line 107
    const/4 v2, 0x4

    .line 108
    const/4 v3, 0x1

    .line 109
    const/4 v1, 0x5

    .line 110
    const-string v5, "RemoteInjectionService"

    .line 112
    const-string v6, "Remotely injecting a keystroke event into the UI succeeded"

    .line 114
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 121
    move-result v4

    .line 122
    const/4 v2, 0x4

    .line 123
    const/4 v3, 0x0

    .line 124
    const/4 v1, 0x5

    .line 125
    const-string v5, "RemoteInjectionService"

    .line 127
    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 129
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 132
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    return v8
.end method

.method public final injectKeyEventDex(Landroid/view/KeyEvent;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "INJECT_KEY_EVENT_DEX"

    .line 4
    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 17
    const-string p1, "RemoteInjection"

    .line 19
    const-string p2, "Error injecting Key event in dex screen"

    .line 21
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return p0
.end method

.method public final injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "INJECT_POINTER_EVENT"

    .line 4
    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v8

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v9

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    .line 22
    move-result v1

    .line 23
    const-string v2, "RemoteInjection"

    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 28
    const-string p0, "Remote Control is disabled, couldnt inject pointer event"

    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 36
    move-result v5

    .line 37
    const/4 v3, 0x4

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v2, 0x5

    .line 40
    const-string v6, "RemoteInjectionService"

    .line 42
    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 44
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 47
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    return v11

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 65
    move-result p1

    .line 66
    const/4 v1, 0x2

    .line 67
    and-int/2addr p1, v1

    .line 68
    if-nez p1, :cond_1

    .line 70
    const/16 p1, 0x1002

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 75
    :cond_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 78
    move-result-object p1

    .line 79
    if-eqz p2, :cond_2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, 0x1

    .line 83
    :goto_0
    invoke-virtual {p1, p0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 86
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception p0

    .line 89
    const-string p1, "Error injecting trackball event : "

    .line 91
    invoke-static {p0, p1, v2}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    if-eqz v11, :cond_3

    .line 96
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 99
    move-result v5

    .line 100
    const/4 v3, 0x4

    .line 101
    const/4 v4, 0x1

    .line 102
    const/4 v2, 0x5

    .line 103
    const-string v6, "RemoteInjectionService"

    .line 105
    const-string v7, "Remotely injecting a pointer (touch) event into the UI succeeded"

    .line 107
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 114
    move-result v5

    .line 115
    const/4 v3, 0x4

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v2, 0x5

    .line 118
    const-string v6, "RemoteInjectionService"

    .line 120
    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 122
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 125
    :goto_2
    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 130
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    return v11
.end method

.method public final injectPointerEventDex(Landroid/view/MotionEvent;Z)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "INJECT_POINTER_EVENT_DEX"

    .line 4
    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v8

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v9

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    .line 22
    move-result v1

    .line 23
    const-string v2, "RemoteInjection"

    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 28
    const-string p0, "Remote Control is disabled, couldnt inject pointer event"

    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 36
    move-result v5

    .line 37
    const/4 v3, 0x4

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v2, 0x5

    .line 40
    const-string v6, "RemoteInjectionService"

    .line 42
    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 44
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 47
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    return v11

    .line 51
    :cond_0
    const/4 v1, 0x2

    .line 52
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x1

    .line 60
    if-nez v3, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 65
    move-result v3

    .line 66
    if-eq v3, v1, :cond_1

    .line 68
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 81
    move-result-object p0

    .line 82
    const/16 p1, 0x2002

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 87
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 90
    move-result-object p1

    .line 91
    if-eqz p2, :cond_2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v1, v4

    .line 95
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 98
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_3

    .line 100
    :goto_2
    const-string p1, "Error injecting pointer event in dex screen : "

    .line 102
    invoke-static {p0, p1, v2}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_3
    if-eqz v11, :cond_3

    .line 107
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 110
    move-result v5

    .line 111
    const/4 v3, 0x4

    .line 112
    const/4 v4, 0x1

    .line 113
    const/4 v2, 0x5

    .line 114
    const-string v6, "RemoteInjectionService"

    .line 116
    const-string v7, "Remotely injecting a pointer (touch) event into the UI succeeded"

    .line 118
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 121
    goto :goto_4

    .line 122
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 125
    move-result v5

    .line 126
    const/4 v3, 0x4

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v2, 0x5

    .line 129
    const-string v6, "RemoteInjectionService"

    .line 131
    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 133
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 136
    :goto_4
    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 141
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    return v11
.end method

.method public final injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "INJECT_TRACKBALL_EVENT"

    .line 4
    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v8

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v9

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    .line 22
    move-result v1

    .line 23
    const-string v2, "RemoteInjection"

    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 28
    const-string p0, "Remote Control is disabled, couldnt inject track ball event"

    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 36
    move-result v5

    .line 37
    const/4 v3, 0x4

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v2, 0x5

    .line 40
    const-string v6, "RemoteInjectionService"

    .line 42
    const-string v7, "Remotely injecting a trackball event into the UI failed"

    .line 44
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 47
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    return v11

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 62
    move-result p1

    .line 63
    and-int/lit8 p1, p1, 0x4

    .line 65
    if-nez p1, :cond_1

    .line 67
    const p1, 0x10004

    .line 70
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 73
    :cond_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 76
    move-result-object p1

    .line 77
    if-eqz p2, :cond_2

    .line 79
    const/4 p2, 0x2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 p2, 0x1

    .line 82
    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 85
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    const-string p1, "Error injecting trackball event : "

    .line 90
    invoke-static {p0, p1, v2}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_1
    if-eqz v11, :cond_3

    .line 95
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 98
    move-result v5

    .line 99
    const/4 v3, 0x4

    .line 100
    const/4 v4, 0x1

    .line 101
    const/4 v2, 0x5

    .line 102
    const-string v6, "RemoteInjectionService"

    .line 104
    const-string v7, "Remotely injecting a trackball event into the UI succeeded"

    .line 106
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 113
    move-result v5

    .line 114
    const/4 v3, 0x4

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v2, 0x5

    .line 117
    const-string v6, "RemoteInjectionService"

    .line 119
    const-string v7, "Remotely injecting a trackball event into the UI failed"

    .line 121
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 124
    :goto_2
    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 129
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    return v11
.end method

.method public final isRemoteControlAllowed(I)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "allowRemoteControl"

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    move v0, p1

    goto :goto_0

    .line 4
    :catch_0
    const-string p0, "RemoteInjection"

    const-string p1, "RemoteInjection.isRemoteControlAllowed() exception : "

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public final isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result p0

    return p0
.end method

.method public final isRemoteControlDisabled(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final isRemoteControlDisabledInternal(II)Z
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 7
    if-ne p1, p2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    sget-object p2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 20
    const-class v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 22
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 28
    check-cast p2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    .line 36
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz p2, :cond_2

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    move p1, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    :goto_1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/Boolean;

    .line 54
    if-nez p0, :cond_3

    .line 56
    return v2

    .line 57
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p0
.end method

.method public final isRemoteInjectionDisabled(I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 23
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    :try_start_1
    const-string p0, "RemoteInjection"

    .line 35
    const-string p1, "Failed to get top activity user id"

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return v2

    .line 44
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    throw p0
.end method

.method public final isUsingKnoxRemoteScreen()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    move-result v1

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    .line 14
    move-result p0

    .line 15
    xor-int/lit8 p0, p0, 0x1

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final systemReady()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    .line 5
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method

.method public final transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 13
    move v2, v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v3

    .line 16
    :goto_0
    iget-object v5, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 18
    if-nez v5, :cond_1

    .line 20
    iget-object v5, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 22
    iget-object v5, v5, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    .line 24
    const-string/jumbo v6, "window"

    .line 27
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Landroid/view/WindowManager;

    .line 33
    iput-object v5, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 35
    :cond_1
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 42
    move-result v6

    .line 43
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 49
    move-result v12

    .line 50
    new-array v14, v12, [Landroid/view/MotionEvent$PointerCoords;

    .line 52
    new-array v13, v12, [Landroid/view/MotionEvent$PointerProperties;

    .line 54
    move v6, v3

    .line 55
    :goto_1
    if-ge v6, v12, :cond_5

    .line 57
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    .line 59
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 62
    aput-object v7, v14, v6

    .line 64
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    .line 66
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 69
    aput-object v7, v13, v6

    .line 71
    aget-object v7, v14, v6

    .line 73
    invoke-virtual {v1, v6, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 76
    aget-object v7, v13, v6

    .line 78
    invoke-virtual {v1, v6, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 81
    aget-object v7, v13, v6

    .line 83
    iput v4, v7, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_4

    .line 91
    invoke-static {v5}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_2

    .line 97
    iget v7, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 99
    :goto_2
    int-to-float v7, v7

    .line 100
    goto :goto_3

    .line 101
    :cond_2
    iget v7, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 103
    goto :goto_2

    .line 104
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v9, "getRemoteWidth() : "

    .line 109
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v8

    .line 119
    const-string v9, "RemoteInjection"

    .line 121
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {v5}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_3

    .line 130
    iget v8, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 132
    :goto_4
    int-to-float v8, v8

    .line 133
    goto :goto_5

    .line 134
    :cond_3
    iget v8, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 136
    goto :goto_4

    .line 137
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v11, "getRemoteHeight() : "

    .line 142
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v10

    .line 152
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    aget-object v9, v14, v6

    .line 157
    iget v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 159
    iget v11, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 161
    int-to-float v11, v11

    .line 162
    div-float/2addr v11, v7

    .line 163
    mul-float/2addr v11, v10

    .line 164
    iput v11, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 166
    iget v7, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 168
    iget v10, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 170
    int-to-float v10, v10

    .line 171
    div-float/2addr v10, v8

    .line 172
    mul-float/2addr v10, v7

    .line 173
    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 175
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 177
    goto :goto_1

    .line 178
    :cond_5
    if-nez v2, :cond_6

    .line 180
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    .line 183
    move-result v3

    .line 184
    :cond_6
    move/from16 v22, v3

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 189
    move-result-wide v7

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 193
    move-result-wide v9

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 197
    move-result v11

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 201
    move-result v15

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 205
    move-result v16

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 209
    move-result v17

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 213
    move-result v18

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 217
    move-result v19

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 221
    move-result v20

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 225
    move-result v21

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 229
    move-result v23

    .line 230
    invoke-static/range {v7 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    .line 233
    move-result-object v0

    .line 234
    return-object v0
.end method

.method public final updateCurrentDisplayDimensions(I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 5
    const-string/jumbo v1, "display"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 22
    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 26
    iget-object v0, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    .line 28
    const-string/jumbo v1, "window"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/WindowManager;

    .line 37
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 39
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 42
    move-result-object v0

    .line 43
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    .line 45
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 48
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 50
    const-string v3, "RemoteInjection"

    .line 52
    if-eqz v2, :cond_4

    .line 54
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2, p1, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    const-string/jumbo p1, "getInitialDisplaySize() exception!!"

    .line 65
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_1
    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 74
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    iget p1, v1, Landroid/graphics/Point;->y:I

    .line 79
    :goto_2
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 81
    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 87
    iget p1, v1, Landroid/graphics/Point;->y:I

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 92
    :goto_3
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 98
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 100
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 102
    iget p1, v1, Landroid/graphics/Point;->y:I

    .line 104
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 106
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v0, "mCurrentDisplayWidth : "

    .line 111
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, ", mCurrentDisplayHeight : "

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 126
    invoke-static {p1, p0, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 129
    return-void
.end method

.method public final updateDexScreenDimensions(III)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 11
    const-string v0, "RemoteInjectionService: updateDexScreenDimensions() width : "

    .line 13
    const-string v1, ", height : "

    .line 15
    const-string v2, "RemoteInjection"

    .line 17
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput p3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 22
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 33
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 36
    const-string p1, "Can only be called by system user"

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
.end method

.method public final updateRemoteScreenDimensionsAndCallerUid(III)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_3

    .line 11
    const-string v0, "RemoteInjectionService: updateRemoteScreenDimensions() width : "

    .line 13
    const-string v1, ", height : "

    .line 15
    const-string v2, ", uid "

    .line 17
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "RemoteInjection"

    .line 23
    invoke-static {v0, p3, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    iput p3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 28
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_0

    .line 34
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 36
    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 43
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 45
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 47
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 49
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 51
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    .line 53
    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 61
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    .line 63
    invoke-interface {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;->onRemoteScreenStart()V

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    .line 71
    invoke-interface {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;->onRemoteScreenStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    :cond_2
    :goto_2
    return-void

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 81
    const-string p1, "Can only be called by system user"

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0
.end method
