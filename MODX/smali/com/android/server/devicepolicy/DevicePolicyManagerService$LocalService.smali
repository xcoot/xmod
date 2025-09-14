.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
.super Landroid/app/admin/DevicePolicyManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/admin/DevicePolicyManagerLiteInternal;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mWidgetProviderListeners:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static -$$Nest$mnotifyCrossProfileProvidersChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 12
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result p0

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-ge v0, p0, :cond_0

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 29
    invoke-interface {v2, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;->onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManagerInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 30
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 32
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .locals 9

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Sending %s broadcast to manifest receivers."

    .line 17
    const-string v2, "DevicePolicyManager"

    .line 19
    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    move-result v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 28
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 30
    const/4 v5, 0x0

    .line 31
    const-wide/16 v6, 0x400

    .line 33
    move-object v4, p1

    .line 34
    move v8, v0

    .line 35
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v1

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 59
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 62
    move-result-object v4

    .line 63
    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v0, v4, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->checkCrossProfilePackagePermissions(ILjava/lang/String;Z)Z

    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_1

    .line 71
    invoke-virtual {p0, v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->checkModifyQuietModePermission(ILjava/lang/String;)Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_0

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception p3

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    :goto_1
    const-string v5, "Sending %s broadcast to %s."

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 86
    filled-new-array {v6, v4}, [Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    invoke-static {v2, v5, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    new-instance v4, Landroid/content/Intent;

    .line 95
    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    move-result-object v3

    .line 110
    const/high16 v4, 0x1000000

    .line 112
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 118
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {v4, v3, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 124
    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    filled-new-array {v0, p3}, [Ljava/lang/Object;

    .line 131
    move-result-object p3

    .line 132
    const-string v0, "Cannot get list of broadcast receivers for %s because: %s."

    .line 134
    invoke-static {v2, v0, p3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 139
    iget-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 141
    const-string v0, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 143
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getRoleHolderPackageNameOnUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    .line 146
    move-result-object p3

    .line 147
    if-nez p3, :cond_3

    .line 149
    goto :goto_3

    .line 150
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastExplicitIntentToPackage(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 153
    :goto_3
    return-void
.end method

.method public final canSilentlyInstallPackage(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    new-instance p1, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p1, v1, p2, v1}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isUserAffiliatedWithDevice(I)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isActiveProfileOwner(I)Z

    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1

    .line 27
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 29
    invoke-virtual {p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDefaultDeviceOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 35
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isFinancedDeviceOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 43
    :cond_1
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_2
    return v0
.end method

.method public final checkCrossProfilePackagePermissions(ILjava/lang/String;Z)Z
    .locals 10

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 9
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_4

    .line 16
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCrossProfile()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    if-nez p3, :cond_1

    .line 26
    return v0

    .line 27
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    move-result v3

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    move-result-wide v8

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 37
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 45
    move-result-object v2

    .line 46
    const-wide/32 v5, 0xc0000

    .line 49
    move v4, p1

    .line 50
    move-object v7, p2

    .line 51
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 57
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 59
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz p0, :cond_2

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v0, v1

    .line 67
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    if-nez v0, :cond_3

    .line 72
    return v1

    .line 73
    :cond_3
    :try_start_1
    const-class p0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 75
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 81
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/CrossProfileAppsInternal;->verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    .line 84
    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    return p0

    .line 86
    :catch_0
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 90
    const-string p1, "DevicePolicyManager"

    .line 92
    const-string p2, "Cannot find the package %s to check for permissions."

    .line 94
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return v1

    .line 98
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw p0

    .line 102
    :cond_4
    :goto_2
    return v1
.end method

.method public final checkModifyQuietModePermission(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    move-result-object p0

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-object p1, p0

    .line 23
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 25
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 27
    const-string p1, "android.permission.MODIFY_QUIET_MODE"

    .line 29
    const/4 v1, -0x1

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-static {p1, p0, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 34
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-nez p0, :cond_0

    .line 37
    move v0, v2

    .line 38
    :cond_0
    return v0

    .line 39
    :catch_0
    const-string p0, "Cannot find the package %s to check for permissions."

    .line 41
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "DevicePolicyManager"

    .line 47
    invoke-static {p2, p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return v0
.end method

.method public final createShowAdminSupportIntent(IZ)Landroid/content/Intent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEnforcingAdminAndUserDetailsInternal(ILjava/lang/String;)Landroid/os/Bundle;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 12
    if-eqz p2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object v1

    .line 16
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createShowAdminSupportIntent(I)Landroid/content/Intent;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEnforcingAdminAndUserDetailsInternal(ILjava/lang/String;)Landroid/os/Bundle;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createShowAdminSupportIntent(I)Landroid/content/Intent;

    .line 19
    move-result-object p0

    .line 20
    const-string p1, "android.app.extra.RESTRICTION"

    .line 22
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method

.method public final enforceAuditLoggingPolicy(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/admin/flags/Flags;->securityLogV2Enabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 12
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 14
    const/4 v2, -0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 23
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    invoke-static {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$menforceLoggingPolicy(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V

    .line 32
    return-void
.end method

.method public final enforcePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforcePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    return-void
.end method

.method public final enforceSecurityLoggingPolicy(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/admin/flags/Flags;->securityLogV2Enabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 12
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 14
    const/4 v2, -0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 23
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$menforceLoggingPolicy(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V

    .line 32
    return-void
.end method

.method public final getAllCrossProfilePackages(I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllCrossProfilePackages(I)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getApplicationRestrictionsPerAdminForUser(Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    move-result v0

    .line 5
    if-ne v0, p2, :cond_0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 13
    iget-object v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 15
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda20;

    .line 17
    const/4 v4, 0x2

    .line 18
    invoke-direct {v3, v1, p1, p2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;II)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result v1

    .line 34
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 43
    move-result v0

    .line 44
    const/16 v1, 0x3e8

    .line 46
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 52
    if-nez v0, :cond_1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 57
    const-string p2, "Only system may: get application restrictions for other user/app "

    .line 59
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 67
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 69
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 71
    invoke-static {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->APPLICATION_RESTRICTIONS(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;

    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v0

    .line 92
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroid/app/admin/PolicyValue;

    .line 104
    invoke-virtual {v2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Landroid/os/Bundle;

    .line 110
    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_3

    .line 118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 124
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 126
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;

    .line 128
    invoke-direct {v2, p0, p1, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;Ljava/lang/String;ILjava/util/List;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Ljava/util/List;

    .line 140
    return-object p0
.end method

.method public final getCrossProfileWidgetProviders(I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 12
    if-nez v1, :cond_0

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    monitor-exit v0

    .line 33
    return-object p0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 39
    move-result-object p0

    .line 40
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 48
    if-eqz p0, :cond_3

    .line 50
    iget-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 52
    if-eqz p1, :cond_3

    .line 54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 63
    monitor-exit v0

    .line 64
    return-object p0

    .line 65
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 68
    move-result-object p0

    .line 69
    monitor-exit v0

    .line 70
    return-object p0

    .line 71
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final getDefaultCrossProfilePackages()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDefaultCrossProfilePackages()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDeviceOwnerComponent(Z)Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDeviceOwnerUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPolicyCache:Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    .line 5
    return-object p0
.end method

.method public final getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 5
    return-object p0
.end method

.method public final getEnforcingUsers(Ljava/util/Set;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerComponent()Landroid/content/ComponentName;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 30
    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    iget-object v3, v1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 44
    new-instance v2, Landroid/os/UserManager$EnforcingUser;

    .line 46
    const/4 v3, 0x2

    .line 47
    iget v1, v1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 49
    invoke-direct {v2, v1, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v2, Landroid/os/UserManager$EnforcingUser;

    .line 58
    iget v1, v1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 60
    const/4 v3, 0x4

    .line 61
    invoke-direct {v2, v1, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-object v0
.end method

.method public final getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 12
    const-string/jumbo v2, "no_printing"

    .line 15
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_0

    .line 26
    const-string p0, "DevicePolicyManager"

    .line 28
    const-string/jumbo v1, "printing is enabled for user %d"

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 35
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    monitor-exit v0

    .line 43
    return-object v2

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 48
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 50
    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerPackage(I)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 58
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 66
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 68
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    move-result-object v1

    .line 74
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 76
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 78
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;

    .line 80
    const/4 v5, 0x1

    .line 81
    invoke-direct {v4, v5, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda34;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 93
    if-nez p1, :cond_2

    .line 95
    const-string p0, "DevicePolicyManager"

    .line 97
    const-string/jumbo p1, "packageInfo is inexplicably null"

    .line 100
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    monitor-exit v0

    .line 104
    return-object v2

    .line 105
    :cond_2
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 107
    if-nez p1, :cond_3

    .line 109
    const-string p0, "DevicePolicyManager"

    .line 111
    const-string p1, "appInfo is inexplicably null"

    .line 113
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v0

    .line 117
    return-object v2

    .line 118
    :cond_3
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 121
    move-result-object p1

    .line 122
    if-nez p1, :cond_4

    .line 124
    const-string p0, "DevicePolicyManager"

    .line 126
    const-string p1, "appLabel is inexplicably null"

    .line 128
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    monitor-exit v0

    .line 132
    return-object v2

    .line 133
    :cond_4
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 135
    const-string v1, "Core.PRINTING_DISABLED_NAMED_ADMIN"

    .line 137
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 140
    move-result-object p1

    .line 141
    const v2, 0x1040c3a

    .line 144
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUpdatableString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 148
    monitor-exit v0

    .line 149
    return-object p0

    .line 150
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    throw p0
.end method

.method public final getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyDefinitionForUserRestriction(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 7
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;

    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 16
    move-result-object p2

    .line 17
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 19
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;)Ljava/util/LinkedHashMap;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getEnforcingUsers(Ljava/util/Set;)Ljava/util/List;

    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getEnforcingUsers(Ljava/util/Set;)Ljava/util/List;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-object v0
.end method

.method public final hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isActiveDeviceOwner(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    new-instance v0, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, p1, v1}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 9
    sget-object p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDefaultDeviceOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isActiveProfileOwner(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    new-instance v0, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, p1, v1}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isActiveSupervisionApp(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    new-instance v1, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1, v2}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 16
    return v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 26
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    move-result p1

    .line 30
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdminLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 36
    monitor-exit v0

    .line 37
    return v1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 42
    iget-object p1, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 44
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSupervisionComponentLocked(Landroid/content/ComponentName;)Z

    .line 51
    move-result p0

    .line 52
    monitor-exit v0

    .line 53
    return p0

    .line 54
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 24
    move-result v0

    .line 25
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1
.end method

.method public final isUserAffiliatedWithDevice(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isUserOrganizationManaged(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->isUserOrganizationManaged(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final notifyChangesOnWifiPolicy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getStrictestMinimumRequiredWifiSecurityLevelLocked()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->notifyMinimumRequiredWifiSecurityLevelChanged(I)V

    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCombinedWifiSsidPolicyLocked()Landroid/app/admin/WifiSsidPolicy;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->notifyWifiSsidPolicyChanged(Landroid/app/admin/WifiSsidPolicy;)V

    .line 21
    return-void
.end method

.method public final notifyUnsafeOperationStateChanged(Landroid/app/admin/DevicePolicySafetyChecker;IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    const-string/jumbo v0, "invalid checker: should be %s, was %s"

    .line 17
    invoke-static {v1, v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance p1, Landroid/os/Bundle;

    .line 22
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 25
    const-string v0, "android.app.extra.OPERATION_SAFETY_REASON"

    .line 27
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    const-string p2, "android.app.extra.OPERATION_SAFETY_STATE"

    .line 32
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 37
    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 39
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    .line 42
    move-result p2

    .line 43
    const-string p3, "android.app.action.OPERATION_SAFETY_STATE_CHANGED"

    .line 45
    if-eqz p2, :cond_1

    .line 47
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 49
    invoke-virtual {p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 52
    :cond_1
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 54
    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 56
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p2

    .line 64
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 70
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result v5

    .line 80
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 82
    iget-object v0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 84
    invoke-virtual {v0, v5}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    .line 87
    move-result-object v6

    .line 88
    const/4 v7, 0x0

    .line 89
    move-object v3, p3

    .line 90
    move-object v4, p1

    .line 91
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendActiveAdminCommand(Ljava/lang/String;Landroid/os/Bundle;ILandroid/content/ComponentName;Z)V

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    return-void
.end method

.method public final reportSeparateProfileChallengeChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 5
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;

    .line 7
    const/4 v2, 0x7

    .line 8
    invoke-direct {v1, p1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;-><init>(IILjava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 17
    const/16 v0, 0x6e

    .line 19
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSeparateProfileChallengeEnabled(I)Z

    .line 28
    move-result p0

    .line 29
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 36
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->invalidateBinderCaches()V

    .line 39
    return-void
.end method

.method public final resetOp(ILjava/lang/String;I)V
    .locals 1

    .line 1
    const/16 v0, 0x5d

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    const-class p1, Landroid/content/pm/CrossProfileAppsInternal;

    .line 7
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/content/pm/CrossProfileAppsInternal;

    .line 13
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDefaultCrossProfilePackages()Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 27
    const/4 p0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 32
    move-result p0

    .line 33
    :goto_0
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/pm/CrossProfileAppsInternal;->setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V

    .line 36
    return-void

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    const-string p2, "Unsupported op for DPM reset: "

    .line 41
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0
.end method

.method public final setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    invoke-virtual {v1, p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 16
    const-string p0, "DevicePolicyManager"

    .line 18
    const-string/jumbo p1, "setMinimumRequiredWifiSecurityLevel - admin is null!"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget v1, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    .line 35
    if-eq v1, p2, :cond_1

    .line 37
    iput p2, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    .line 39
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 46
    move-result p1

    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p3, p1, p2, p2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 51
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getStrictestMinimumRequiredWifiSecurityLevelLocked()I

    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->notifyMinimumRequiredWifiSecurityLevelChanged(I)V

    .line 60
    :cond_1
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    invoke-virtual {v1, p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 16
    const-string p0, "DevicePolicyManager"

    .line 18
    const-string/jumbo p1, "setWifiSsidPolicy - admin is null!"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget-object v1, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 35
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v1, :cond_1

    .line 42
    iput-object p2, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 44
    const/4 p2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move p2, v2

    .line 47
    :goto_0
    if-eqz p2, :cond_2

    .line 49
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 56
    move-result p1

    .line 57
    invoke-virtual {p3, p1, v2, v2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 60
    :cond_2
    if-eqz p2, :cond_3

    .line 62
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 64
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCombinedWifiSsidPolicyLocked()Landroid/app/admin/WifiSsidPolicy;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->notifyWifiSsidPolicyChanged(Landroid/app/admin/WifiSsidPolicy;)V

    .line 71
    :cond_3
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final supportsResetOp(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x5d

    .line 3
    if-ne p1, p0, :cond_0

    .line 5
    const-class p0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 7
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
