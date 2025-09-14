.class public final Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/permission/PermissionManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final backupRuntimePermissions(I)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroid/permission/PermissionManagerInternal;->backupRuntimePermissions(I)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final checkPostNotificationsPermissionGrantedOrLegacyAccess(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    const-string p0, "No package for uid "

    .line 23
    .line 24
    const-string v1, "PermissionManagerService"

    .line 25
    .line 26
    invoke-static {p1, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :cond_0
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/16 v5, 0x17

    .line 37
    .line 38
    if-lt v4, v5, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 41
    .line 42
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 51
    .line 52
    const-string v4, "default:0"

    .line 53
    .line 54
    invoke-interface {p0, v3, v1, v4, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    and-int/lit8 p1, p0, 0x40

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    and-int/lit16 p1, p0, 0x80

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    :cond_1
    and-int/lit8 p0, p0, 0x1

    .line 67
    .line 68
    if-nez p0, :cond_2

    .line 69
    .line 70
    return v2

    .line 71
    :cond_2
    return v0
.end method

.method public final getGidsForUid(I)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getGidsForUid(I)[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 7

    .line 1
    const-string/jumbo v0, "pkg"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "params"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-gez p3, :cond_1

    .line 17
    .line 18
    if-ne p3, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v3, v2

    .line 24
    :goto_1
    const-string/jumbo v4, "userId"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 33
    .line 34
    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 35
    .line 36
    .line 37
    if-ne p3, v0, :cond_2

    .line 38
    .line 39
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p3}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    new-array v0, v2, [I

    .line 54
    .line 55
    aput p3, v0, v1

    .line 56
    .line 57
    move-object p3, v0

    .line 58
    :goto_2
    array-length v0, p3

    .line 59
    move v3, v1

    .line 60
    :goto_3
    if-ge v3, v0, :cond_6

    .line 61
    .line 62
    aget v4, p3, v3

    .line 63
    .line 64
    iget v5, p2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAutoRevokePermissionsMode:I

    .line 65
    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    if-ne v5, v2, :cond_5

    .line 69
    .line 70
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 71
    .line 72
    if-ne v5, v2, :cond_4

    .line 73
    .line 74
    move v5, v2

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    move v5, v1

    .line 77
    :goto_4
    invoke-virtual {v6, p1, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZI)Z

    .line 78
    .line 79
    .line 80
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    return-void
.end method

.method public final onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p6, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, p6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string p0, "Skipping onPackageUninstalled() for non-existent user "

    .line 24
    .line 25
    const-string p1, "PermissionManagerService"

    .line 26
    .line 27
    invoke-static {p6, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    move v2, p2

    .line 37
    move-object v3, p3

    .line 38
    move-object v4, p4

    .line 39
    move-object v5, p5

    .line 40
    move v6, p6

    .line 41
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroid/permission/PermissionManagerInternal;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final restoreRuntimePermissions([BI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroid/permission/PermissionManagerInternal;->restoreRuntimePermissions([BI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
