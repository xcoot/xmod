.class public final Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final checkComponentPermission(ILjava/lang/String;)I
    .locals 1

    .line 1
    const/4 p0, -0x1

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-static {p2, p1, p0, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/app/AppOpsManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/AppOpsManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getCallingPid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getCallingUid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getCallingUserId()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 0

    .line 1
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 1
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/os/UserManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/UserManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public final killUid(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string/jumbo v0, "permissions revoked"

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 19
    .line 20
    .line 21
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    :try_start_1
    invoke-interface {v3, p0, p1, v0}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
