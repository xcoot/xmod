.class public final Lcom/android/server/telecom/TelecomLoaderService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SERVICE_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultSimCallManagerRequests:Landroid/util/IntArray;

.field public final mLock:Ljava/lang/Object;

.field public final mSamsungTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

.field public mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

.field public mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string v1, "com.android.server.telecom"

    .line 4
    .line 5
    const-string v2, "com.android.server.telecom.components.TelecomService"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, p0, v3}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/telecom/TelecomLoaderService;I)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 30
    .line 31
    iget-object v4, v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v4

    .line 34
    :try_start_0
    iput-object v2, v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 35
    .line 36
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 37
    new-instance v2, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-direct {v2, p0, v3}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/telecom/TelecomLoaderService;I)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 46
    .line 47
    iget-object v5, v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v5

    .line 50
    :try_start_1
    iput-object v2, v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 51
    .line 52
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    new-instance v2, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    invoke-direct {v2, p0, v3}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/telecom/TelecomLoaderService;I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 62
    .line 63
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v3

    .line 66
    :try_start_2
    iput-object v2, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 67
    .line 68
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    new-instance v1, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    .line 70
    .line 71
    invoke-direct {v1, p1, v0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mSamsungTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    throw p0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    throw p0

    .line 83
    :catchall_2
    move-exception p0

    .line 84
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 85
    throw p0
.end method


# virtual methods
.method public final connectToTelecom()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/content/Intent;

    .line 25
    .line 26
    const-string v3, "com.android.ITelecomService"

    .line 27
    .line 28
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v3, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 39
    .line 40
    const v5, 0x4000041

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2, v1, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 50
    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 8

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v0, Landroid/app/role/RoleManager;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/app/role/RoleManager;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 24
    .line 25
    .line 26
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1, v4}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/android/server/telecom/TelecomLoaderService$1;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Lcom/android/server/telecom/TelecomLoaderService$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    new-instance v5, Landroid/content/IntentFilter;

    .line 39
    .line 40
    const-string p1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 41
    .line 42
    invoke-direct {v5, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-class p1, Lcom/android/server/DeviceIdleInternal;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/android/server/DeviceIdleInternal;

    .line 57
    .line 58
    new-instance v0, Lcom/android/server/telecom/InternalServiceRepository;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lcom/android/server/telecom/InternalServiceRepository;-><init>(Lcom/android/server/DeviceIdleInternal;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mSamsungTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->connectToSamsungTelecom()V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateSimCallManagerPermissions(I)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v1, "telecom"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v2, "updating sim call manager permissions for userId:"

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "TelecomLoaderService"

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 59
    .line 60
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method
