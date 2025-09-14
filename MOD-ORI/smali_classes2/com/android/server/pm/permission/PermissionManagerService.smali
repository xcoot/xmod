.class public final Lcom/android/server/pm/permission/PermissionManagerService;
.super Landroid/permission/IPermissionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

.field public mCheckPermissionDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

.field public final mContext:Landroid/content/Context;

.field public mHotwordDetectionServiceProvider:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;

.field public final mLock:Ljava/lang/Object;

.field public final mOneTimePermissionUserManagers:Landroid/util/SparseArray;

.field public final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field public final mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService;

    .line 2
    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/permission/IPermissionManager$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 35
    .line 36
    const-class v0, Landroid/app/AppOpsManager;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/app/AppOpsManager;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 45
    .line 46
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 55
    .line 56
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    .line 62
    .line 63
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    .line 66
    .line 67
    .line 68
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 69
    .line 70
    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-class v1, Landroid/permission/PermissionManagerInternal;

    .line 74
    .line 75
    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-boolean v0, Landroid/permission/PermissionManager;->USE_ACCESS_CHECKING_SERVICE:Z

    .line 79
    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 94
    .line 95
    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/util/ArrayMap;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 99
    .line 100
    :goto_0
    return-void
.end method


# virtual methods
.method public final addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final checkAutoRevokeAccess(Lcom/android/server/pm/pkg/AndroidPackage;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 17
    .line 18
    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3, p1, p2}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 36
    .line 37
    const-string p1, "Caller must either hold android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS or be the installer on record"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 46
    .line 47
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/pm/Computer;->filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    return v2

    .line 67
    :cond_4
    :goto_2
    return v1
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 15
    .line 16
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 22
    .line 23
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v6, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceInterface;)V

    .line 29
    .line 30
    .line 31
    move-object v2, p1

    .line 32
    move-object v3, p2

    .line 33
    move-object v4, p3

    .line 34
    move v5, p4

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0

    .line 43
    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final checkUidPermission(ILjava/lang/String;I)I
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPersistentDeviceId(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 18
    .line 19
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 25
    .line 26
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceInterface;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionGroups(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 4
    .line 5
    const-string v2, "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(ILjava/util/function/Consumer;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 4
    .line 5
    const-string v2, "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(ILjava/util/function/Consumer;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    new-instance v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-object v2

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    iget-object p0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    iget-object p1, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mUninstallListener:Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;

    .line 61
    .line 62
    new-instance v1, Landroid/content/IntentFilter;

    .line 63
    .line 64
    const-string v2, "android.intent.action.UID_REMOVED"

    .line 65
    .line 66
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    throw p0

    .line 75
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    throw p0
.end method

.method public final getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p3, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPersistentDeviceId(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "default:0"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 19
    .line 20
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPersistentIdForDevice(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getRegisteredAttributionSourceCount(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 6
    .line 7
    const-string v2, "getting the number of registered AttributionSources requires UPDATE_APP_OPS_STATS"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mAttributions:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v1, 0x0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/content/AttributionSource;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ne v2, p1, :cond_0

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    monitor-exit v0

    .line 62
    return v1

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final getSplitPermissions()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getSplitPermissions()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isAutoRevokeExempted(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :try_start_0
    new-instance v3, Landroid/content/AttributionSource;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-direct {v3, p2, p1, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 41
    .line 42
    const/16 p1, 0x61

    .line 43
    .line 44
    invoke-virtual {p0, p1, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    .line 45
    .line 46
    .line 47
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 p1, 0x1

    .line 49
    if-ne p0, p1, :cond_1

    .line 50
    .line 51
    move v2, p1

    .line 52
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return v2

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPersistentDeviceId(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 6
    .line 7
    invoke-interface {p0, p4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->isPermissionRevokedByPolicy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    .line 2
    .line 3
    new-instance v0, Landroid/content/AttributionSource;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->queryPermissionsByGroup(ILjava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final registerAttributionSource(Landroid/content/AttributionSourceState;)Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->serverSideAttributionRegistration()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Binder;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    .line 13
    .line 14
    new-instance v1, Landroid/content/AttributionSource;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/content/AttributionSource;->withToken(Landroid/os/IBinder;)Landroid/content/AttributionSource;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->registerAttributionSource(Landroid/content/AttributionSource;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    .line 28
    .line 29
    new-instance v0, Landroid/content/AttributionSource;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->registerAttributionSource(Landroid/content/AttributionSource;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p1, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 38
    .line 39
    return-object p0
.end method

.method public final removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removePermission(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removePermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAutoRevokeExempted(Ljava/lang/String;ZI)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZI)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final setAutoRevokeExemptedInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZI)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    new-instance v0, Landroid/content/AttributionSource;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, p3, v1, v2}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 20
    .line 21
    const/16 v2, 0x62

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v2, 0x1

    .line 42
    const/16 v3, 0x61

    .line 43
    .line 44
    invoke-virtual {p0, v3, p3, p1, p2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPersistentDeviceId(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 6
    .line 7
    invoke-interface {p0, p4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->shouldShowRequestPermissionRationale(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final startOneTimePermissionSession(Ljava/lang/String;IIJJ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/permission/IPermissionManager$Stub;->startOneTimePermissionSession_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    move-object v0, p0

    .line 12
    move v3, p3

    .line 13
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    move v4, p2

    .line 18
    move-wide v5, p4

    .line 19
    move-wide/from16 v7, p6

    .line 20
    .line 21
    move-object v9, p1

    .line 22
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->startPackageOneTimeSession(IJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final stopOneTimePermissionSession(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/permission/IPermissionManager$Stub;->stopOneTimePermissionSession_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->stopPackageOneTimeSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move-object v6, p6

    .line 9
    move v7, p7

    .line 10
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final updatePermissionFlagsForAllApps(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->updatePermissionFlagsForAllApps(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
