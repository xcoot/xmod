.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 8
    const v1, 0x1040341

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 23
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 25
    const-string v2, "DevicePolicyManagerService"

    .line 27
    invoke-virtual {p1, v2}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;

    .line 36
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {v0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/PolicyPathProvider;)V

    .line 42
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x1

    .line 50
    new-array v2, v2, [Ljava/lang/Class;

    .line 52
    const-class v3, Landroid/content/Context;

    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object v3, v2, v4

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 60
    move-result-object v1

    .line 61
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 71
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception p0

    .line 75
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    const-string v1, "Failed to instantiate DevicePolicyManagerService with class name: "

    .line 79
    invoke-static {v1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    throw p1
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->systemReady(I)V

    .line 6
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "device_policy"

    .line 4
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isPreCreated()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handleStartUser(I)V

    .line 17
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isPreCreated()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 11
    move-result p1

    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 19
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateNetworkPreferenceForUser(ILjava/util/List;)V

    .line 26
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 28
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->stopServicesForUser(I)V

    .line 31
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminsServicesForUser(IZ)V

    .line 37
    return-void
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isPreCreated()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 22
    move-result-object v1

    .line 23
    const-string/jumbo v2, "needed"

    .line 26
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-nez v1, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 38
    const-string v1, "android.app.action.SHOW_NEW_USER_DISCLAIMER"

    .line 40
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v1, "DevicePolicyManager"

    .line 45
    const-string v2, "Dispatching ACTION_SHOW_NEW_USER_DISCLAIMER intent"

    .line 47
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 59
    :goto_0
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isPreCreated()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 11
    move-result p1

    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->startOwnerService(I)V

    .line 17
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminsServicesForUser(IZ)V

    .line 23
    return-void
.end method
