.class public final Lcom/android/server/accessibility/UiAutomationManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field public mUiAutomationFlags:I

.field public mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

.field public mUiAutomationServiceOwner:Landroid/os/IBinder;

.field public final mUiAutomationServiceOwnerDeathRecipient:Lcom/android/server/accessibility/UiAutomationManager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-string/jumbo v1, "com.android.server.accessibility"

    .line 6
    const-string v2, "UiAutomation"

    .line 8
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sput-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/UiAutomationManager$1;-><init>(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Lcom/android/server/accessibility/UiAutomationManager$1;

    .line 11
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public final destroyUiAutomationService()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 11
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 14
    move-result-object v1

    .line 15
    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 17
    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 20
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 22
    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onRemoved()V

    .line 25
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 27
    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resetLocked()V

    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 33
    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    .line 35
    if-eqz v3, :cond_0

    .line 37
    iget-object v4, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Lcom/android/server/accessibility/UiAutomationManager$1;

    .line 39
    invoke-interface {v3, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 42
    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 49
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 51
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 53
    invoke-virtual {p0, v2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .locals 17

    .line 1
    move-object/from16 v14, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v1, p13

    .line 7
    sget-object v2, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 9
    move-object/from16 v4, p4

    .line 11
    invoke-virtual {v4, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 14
    invoke-virtual/range {p4 .. p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v3

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 29
    move-result v5

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v5

    .line 34
    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    const-string v3, "Registering UiTestAutomationService (id=%s, flags=0x%x) when called by user %d"

    .line 40
    const-string v15, "UiAutomationManager"

    .line 42
    invoke-static {v15, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v2, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 47
    if-nez v2, :cond_1

    .line 49
    :try_start_0
    iget-object v2, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Lcom/android/server/accessibility/UiAutomationManager$1;

    .line 51
    const/4 v13, 0x0

    .line 52
    invoke-interface {v0, v2, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    iput v1, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 57
    move-object/from16 v9, p8

    .line 59
    iput-object v9, v14, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 61
    and-int/lit8 v1, v1, 0x2

    .line 63
    if-nez v1, :cond_0

    .line 65
    new-instance v12, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 67
    iget-object v7, v14, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 69
    move-object v1, v12

    .line 70
    move-object/from16 v2, p0

    .line 72
    move-object/from16 v3, p3

    .line 74
    move-object/from16 v4, p4

    .line 76
    move/from16 v5, p5

    .line 78
    move-object/from16 v6, p6

    .line 80
    move-object/from16 v8, p7

    .line 82
    move-object/from16 v9, p8

    .line 84
    move-object/from16 v10, p9

    .line 86
    move-object/from16 v11, p10

    .line 88
    move-object/from16 v16, v15

    .line 90
    move-object v15, v12

    .line 91
    move-object/from16 v12, p11

    .line 93
    move-object/from16 v13, p12

    .line 95
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;-><init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    .line 98
    iput-object v15, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 100
    iput-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    .line 102
    move-object/from16 v0, p2

    .line 104
    iput-object v0, v15, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 106
    :try_start_1
    invoke-interface/range {p2 .. p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 109
    move-result-object v0

    .line 110
    iget-object v1, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 118
    iget-object v1, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    .line 120
    new-instance v2, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;

    .line 122
    invoke-direct {v2, v0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    const-string v2, "Failed registering death link: "

    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    move-object/from16 v1, v16

    .line 146
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 152
    :cond_0
    return-void

    .line 153
    :catch_1
    move-exception v0

    .line 154
    move-object v1, v15

    .line 155
    const-string v2, "Couldn\'t register for the death of a UiTestAutomationService!"

    .line 157
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    return-void

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    const-string v2, "UiAutomationService "

    .line 167
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v2, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 172
    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "already registered!"

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 186
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    throw v0
.end method

.method public final suppressingAccessibilityServicesLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 7
    and-int/lit8 v0, v0, 0x2

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 14
    const/4 v0, 0x1

    .line 15
    and-int/2addr p0, v0

    .line 16
    if-nez p0, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    :goto_1
    return v0
.end method

.method public final unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 4

    .line 1
    const-string v0, "UiAutomationService "

    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 8
    and-int/lit8 v2, v2, 0x2

    .line 10
    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 14
    if-eqz v2, :cond_0

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 28
    iget-object v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 30
    invoke-interface {v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 33
    move-result-object v3

    .line 34
    if-ne v2, v3, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string p1, " not registered!"

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method
