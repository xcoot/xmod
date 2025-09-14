.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static disableDocumentsUIComponent(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Disabling google\'s documentsui launcher component for user: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "DevicePolicyManager::KnoxUtils"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Landroid/content/ComponentName;

    .line 22
    const-string/jumbo v1, "com.google.android.documentsui"

    .line 25
    const-string/jumbo v2, "com.android.documentsui.LauncherActivity"

    .line 28
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(ILandroid/content/ComponentName;)V

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    .line 36
    const-string/jumbo v1, "com.android.documentsui"

    .line 39
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(ILandroid/content/ComponentName;)V

    .line 45
    return-void
.end method

.method public static getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 9
    return-object v0
.end method

.method public static getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 9
    return-object v0
.end method

.method public static isChangeEnabled(ILjava/lang/String;J)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p2, p3, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static isDeviceRootKeyInstalled()Z
    .locals 4

    .line 1
    const-string/jumbo v0, "dar"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "DevicePolicyManager::KnoxUtils"

    .line 15
    if-eqz v0, :cond_0

    .line 17
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isDeviceRootKeyInstalled()Z

    .line 20
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string/jumbo v3, "check Device Root Key - RemoteException : "

    .line 26
    invoke-static {v3, v0, v2}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo v0, "check Device Root Key - failed. cannot get DAR Service"

    .line 33
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return v1
.end method

.method public static logUserForSDP(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static userHandleGetCallingUserId()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static verifyDeviceIntegrity()Z
    .locals 4

    .line 1
    const-string/jumbo v0, "dar"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "DevicePolicyManager::KnoxUtils"

    .line 15
    if-eqz v0, :cond_0

    .line 17
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isKnoxKeyInstallable()Z

    .line 20
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string/jumbo v3, "check Device Integrity - RemoteException : "

    .line 26
    invoke-static {v3, v0, v2}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo v0, "check Device Integrity - failed. cannot get DAR Service"

    .line 33
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return v1
.end method


# virtual methods
.method public final getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 3
    const-class v0, Landroid/app/AppOpsManager;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/AppOpsManager;

    .line 11
    return-object p0
.end method

.method public final getCrossProfileApps(I)Landroid/content/pm/CrossProfileApps;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 12
    const-class p1, Landroid/content/pm/CrossProfileApps;

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/content/pm/CrossProfileApps;

    .line 20
    return-object p0
.end method

.method public final getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 3
    const-class v0, Landroid/app/NotificationManager;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/NotificationManager;

    .line 11
    return-object p0
.end method

.method public final getPackageManager(I)Landroid/content/pm/PackageManager;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    throw p1
.end method

.method public final getPermissionControllerManager(Landroid/os/UserHandle;)Landroid/permission/PermissionControllerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 15
    const-class p1, Landroid/permission/PermissionControllerManager;

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/permission/PermissionControllerManager;

    .line 23
    return-object p0

    .line 24
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 34
    move-result-object p0

    .line 35
    const-class p1, Landroid/permission/PermissionControllerManager;

    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/permission/PermissionControllerManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-object p0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    throw p1
.end method

.method public final recoverySystemRebootWipeUserData(Ljava/lang/String;ZZZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 3
    new-instance v1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 5
    invoke-direct {v1, v0}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 10
    iput-object p0, v1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iput-object p1, v1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mReason:Ljava/lang/String;

    .line 17
    const/4 p0, 0x0

    .line 18
    iput-boolean p0, v1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mShutdown:Z

    .line 20
    const/4 p0, 0x1

    .line 21
    iput-boolean p0, v1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mForce:Z

    .line 23
    iput-boolean p2, v1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeEuicc:Z

    .line 25
    iput-boolean p3, v1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeAdoptableStorage:Z

    .line 27
    iput-boolean p4, v1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeFactoryResetProtection:Z

    .line 29
    new-instance p0, Lcom/android/server/devicepolicy/FactoryResetter;

    .line 31
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/FactoryResetter;-><init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryReset()Z

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final settingsGlobalGetInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final settingsGlobalPutInt(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10
    return-void
.end method
