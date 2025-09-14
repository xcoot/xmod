.class public final Lcom/android/server/permission/access/permission/PermissionService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# static fields
.field public static final BACKUP_TIMEOUT_MILLIS:J

.field public static final FULLER_PERMISSIONS:Landroid/util/ArrayMap;

.field public static final NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;


# instance fields
.field public final context:Landroid/content/Context;

.field public final devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

.field public handler:Landroid/os/Handler;

.field public handlerThread:Lcom/android/server/ServiceThread;

.field public final isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

.field public final mPackageGrantedPermissions:Landroid/util/ArrayMap;

.field public mSystemReady:Z

.field public metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mountedStorageVolumes:Landroid/util/ArraySet;

.field public onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

.field public onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

.field public packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field public permissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public platformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;

.field public final storageVolumeLock:Ljava/lang/Object;

.field public final storageVolumePackageNames:Landroid/util/ArrayMap;

.field public systemConfig:Lcom/android/server/SystemConfig;

.field public userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public userManagerService:Lcom/android/server/pm/UserManagerService;

.field public virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/permission/access/permission/PermissionService;

    .line 2
    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 9
    .line 10
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 16
    .line 17
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 23
    .line 24
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 25
    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "asList(...)"

    .line 37
    .line 38
    invoke-static {v2, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    .line 45
    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    .line 48
    const-wide/16 v1, 0x3c

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    sput-wide v0, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 5
    .line 6
    const-string/jumbo v0, "permission"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "uid"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 25
    .line 26
    const-string v0, "device-permission"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.permission.DevicePermissionPolicy"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 41
    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 54
    .line 55
    new-instance p1, Ljava/lang/Object;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    .line 61
    .line 62
    new-instance p1, Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .line 68
    .line 69
    new-instance p1, Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    .line 75
    .line 76
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 77
    .line 78
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 82
    .line 83
    return-void
.end method

.method public static final access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iget p3, p3, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 7
    .line 8
    if-eq p3, v0, :cond_3

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x0

    .line 32
    move v1, v0

    .line 33
    :goto_0
    if-ge v0, p1, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    .line 48
    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    iget v2, v3, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 52
    .line 53
    if-ne p3, v2, :cond_0

    .line 54
    .line 55
    iget-object v2, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 56
    .line 57
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget-object v3, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v3, v2

    .line 70
    add-int/2addr v3, v1

    .line 71
    move v1, v3

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    add-int/2addr p0, v1

    .line 80
    const p1, 0x8000

    .line 81
    .line 82
    .line 83
    if-gt p0, p1, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 87
    .line 88
    const-string p1, "Permission tree size cap exceeded"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_3
    :goto_1
    return-void
.end method

.method public static final access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget p2, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 24
    .line 25
    if-ne p2, p1, :cond_0

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 29
    .line 30
    const-string p1, "Calling UID "

    .line 31
    .line 32
    const-string p2, " is not allowed to add to or remove from the permission tree"

    .line 33
    .line 34
    invoke-static {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public static final access$handlePermissionStateInternal(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IIILcom/android/server/permission/access/permission/Permission;I)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v8, p2

    .line 3
    .line 4
    move/from16 v9, p3

    .line 5
    .line 6
    move/from16 v1, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 11
    .line 12
    iget-object v3, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 13
    .line 14
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-object/from16 v2, p1

    .line 20
    .line 21
    iget-object v11, v2, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 22
    .line 23
    invoke-static {v11, v8, v9, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x1

    .line 33
    if-eq v1, v13, :cond_1

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    if-eq v1, v5, :cond_0

    .line 37
    .line 38
    move v14, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v14, v12

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v14, v13

    .line 43
    :goto_0
    if-eqz v14, :cond_2

    .line 44
    .line 45
    or-int/lit8 v1, v3, 0x10

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    and-int/lit8 v1, v3, -0x11

    .line 49
    .line 50
    :goto_1
    const/4 v3, 0x4

    .line 51
    move/from16 v4, p6

    .line 52
    .line 53
    invoke-static {v10, v1, v3, v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 58
    .line 59
    iget-object v3, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 60
    .line 61
    iget-object v5, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v6, -0x1

    .line 64
    move-object/from16 v2, p1

    .line 65
    .line 66
    move/from16 v3, p2

    .line 67
    .line 68
    move/from16 v4, p3

    .line 69
    .line 70
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 74
    .line 75
    iget-object v1, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 76
    .line 77
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v11, v8, v9, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-ne v14, v0, :cond_3

    .line 91
    .line 92
    move v12, v13

    .line 93
    :cond_3
    return v12
.end method

.method public static final access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const-class v1, Landroid/os/Binder;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :catch_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public static final access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    move-object/from16 v6, p10

    .line 6
    .line 7
    iget-object v0, v7, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object/from16 v9, p1

    .line 13
    .line 14
    iget-object v0, v9, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v10, v0

    .line 31
    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    .line 32
    .line 33
    if-nez v10, :cond_1

    .line 34
    .line 35
    if-nez p9, :cond_0

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v1, "Unknown permission "

    .line 42
    .line 43
    invoke-static {v1, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    iget-object v0, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/16 v1, 0x20

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/4 v13, 0x1

    .line 75
    const-string v14, " to package "

    .line 76
    .line 77
    const-string v15, "Permission "

    .line 78
    .line 79
    if-nez v0, :cond_8

    .line 80
    .line 81
    iget-object v0, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/high16 v1, 0x4000000

    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    if-nez p7, :cond_8

    .line 96
    .line 97
    if-nez p9, :cond_2

    .line 98
    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 102
    .line 103
    const-string v1, " is managed by role"

    .line 104
    .line 105
    invoke-static {v15, v8, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_3
    iget-object v0, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-ne v0, v13, :cond_6

    .line 120
    .line 121
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    const/16 v1, 0x17

    .line 126
    .line 127
    if-ge v0, v1, :cond_4

    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_4
    if-eqz p6, :cond_8

    .line 132
    .line 133
    invoke-interface/range {p2 .. p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    iget-object v0, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/16 v1, 0x1000

    .line 150
    .line 151
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_8

    .line 156
    .line 157
    if-nez p9, :cond_5

    .line 158
    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    .line 162
    .line 163
    const-string v1, "Cannot grant non-instant permission "

    .line 164
    .line 165
    invoke-static {v1, v8, v14, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_6
    if-nez p9, :cond_7

    .line 174
    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    .line 178
    .line 179
    const-string v1, " requested by package "

    .line 180
    .line 181
    const-string v2, " is not a changeable permission type"

    .line 182
    .line 183
    invoke-static {v15, v8, v1, v12, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 192
    .line 193
    .line 194
    move-result v16

    .line 195
    move-object/from16 v0, p0

    .line 196
    .line 197
    move/from16 v1, v16

    .line 198
    .line 199
    move/from16 v2, p3

    .line 200
    .line 201
    move-object/from16 v3, p1

    .line 202
    .line 203
    move-object/from16 v4, p4

    .line 204
    .line 205
    move-object/from16 v5, p5

    .line 206
    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    const-string v2, "PermissionService"

    .line 220
    .line 221
    if-nez v1, :cond_9

    .line 222
    .line 223
    if-nez v0, :cond_9

    .line 224
    .line 225
    if-eqz p9, :cond_12

    .line 226
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v1, " isn\'t requested by package "

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    goto/16 :goto_3

    .line 251
    .line 252
    :cond_9
    const/16 v1, 0x100

    .line 253
    .line 254
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    const-string v3, " for package "

    .line 259
    .line 260
    if-eqz v1, :cond_a

    .line 261
    .line 262
    if-eqz p9, :cond_12

    .line 263
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, ": Cannot change system fixed permission "

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    goto/16 :goto_3

    .line 294
    .line 295
    :cond_a
    const/16 v1, 0x80

    .line 296
    .line 297
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-eqz v1, :cond_b

    .line 302
    .line 303
    if-nez p8, :cond_b

    .line 304
    .line 305
    if-eqz p9, :cond_12

    .line 306
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v1, ": Cannot change policy fixed permission "

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    goto/16 :goto_3

    .line 337
    .line 338
    :cond_b
    if-eqz p6, :cond_c

    .line 339
    .line 340
    const/high16 v1, 0x40000

    .line 341
    .line 342
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_c

    .line 347
    .line 348
    if-eqz p9, :cond_12

    .line 349
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v1, ": Cannot grant hard-restricted non-exempt permission "

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    goto/16 :goto_3

    .line 380
    .line 381
    :cond_c
    if-eqz p6, :cond_d

    .line 382
    .line 383
    const/high16 v1, 0x80000

    .line 384
    .line 385
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_d

    .line 390
    .line 391
    if-eqz p9, :cond_12

    .line 392
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v1, ": Cannot grant soft-restricted non-exempt permission "

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    goto :goto_3

    .line 423
    :cond_d
    if-eqz p6, :cond_e

    .line 424
    .line 425
    or-int/lit8 v1, v0, 0x10

    .line 426
    .line 427
    :goto_0
    move v3, v1

    .line 428
    goto :goto_1

    .line 429
    :cond_e
    and-int/lit8 v1, v0, -0x11

    .line 430
    .line 431
    goto :goto_0

    .line 432
    :goto_1
    if-ne v0, v3, :cond_f

    .line 433
    .line 434
    goto :goto_3

    .line 435
    :cond_f
    move-object/from16 v0, p0

    .line 436
    .line 437
    move/from16 v1, v16

    .line 438
    .line 439
    move/from16 v2, p3

    .line 440
    .line 441
    move-object/from16 v4, p1

    .line 442
    .line 443
    move-object/from16 v5, p4

    .line 444
    .line 445
    move-object/from16 v6, p5

    .line 446
    .line 447
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget-object v0, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 451
    .line 452
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-ne v0, v13, :cond_12

    .line 457
    .line 458
    if-eqz p6, :cond_10

    .line 459
    .line 460
    const/16 v0, 0x4db

    .line 461
    .line 462
    goto :goto_2

    .line 463
    :cond_10
    const/16 v0, 0x4dd

    .line 464
    .line 465
    :goto_2
    new-instance v1, Landroid/metrics/LogMaker;

    .line 466
    .line 467
    invoke-direct {v1, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1, v12}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 471
    .line 472
    .line 473
    const/16 v0, 0x4d9

    .line 474
    .line 475
    invoke-virtual {v1, v0, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 476
    .line 477
    .line 478
    iget-object v0, v7, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 479
    .line 480
    if-eqz v0, :cond_11

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 483
    .line 484
    .line 485
    goto :goto_3

    .line 486
    :cond_11
    const-string/jumbo v0, "metricsLogger"

    .line 487
    .line 488
    .line 489
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const/4 v0, 0x0

    .line 493
    throw v0

    .line 494
    :cond_12
    :goto_3
    return-void
.end method

.method public static final access$updateLicensePermissionInternalMDM(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->contains(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    new-instance v3, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v4, :cond_8

    .line 34
    .line 35
    invoke-interface {v4}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    :try_start_0
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-interface {v4, v1, v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 44
    .line 45
    .line 46
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    invoke-interface {v1, p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 48
    .line 49
    .line 50
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :try_start_2
    invoke-static {v1, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    iput-object p2, v3, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, v3, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    .line 65
    .line 66
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    check-cast v0, Lcom/android/server/permission/access/MutableUserState;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 92
    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, p3, v1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Number;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/16 v1, 0x10

    .line 108
    .line 109
    if-eqz p5, :cond_1

    .line 110
    .line 111
    or-int/lit8 p5, v0, 0x10

    .line 112
    .line 113
    :goto_0
    move v9, p5

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    and-int/lit8 p5, v0, -0x11

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :goto_1
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 119
    .line 120
    const/4 v8, -0x1

    .line 121
    move-object v4, p1

    .line 122
    move v5, p2

    .line 123
    move v6, p4

    .line 124
    move-object v7, p3

    .line 125
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object p0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 134
    .line 135
    invoke-static {p0, p2, p4, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    const/4 p1, 0x1

    .line 140
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_3

    .line 145
    .line 146
    :cond_2
    :goto_2
    move v2, p1

    .line 147
    goto :goto_3

    .line 148
    :cond_3
    const/4 p2, 0x2

    .line 149
    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_4

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    const/4 p2, 0x4

    .line 157
    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_5

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_5
    const/16 p2, 0x400

    .line 165
    .line 166
    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-nez p2, :cond_2

    .line 171
    .line 172
    const/16 p2, 0x800

    .line 173
    .line 174
    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_6

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    const/high16 p1, 0x40000

    .line 182
    .line 183
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_7

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_7
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    :goto_3
    return v2

    .line 195
    :catchall_0
    move-exception p0

    .line 196
    goto :goto_4

    .line 197
    :catchall_1
    move-exception p0

    .line 198
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 199
    :catchall_2
    move-exception p1

    .line 200
    :try_start_4
    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :goto_4
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 205
    :catchall_3
    move-exception p1

    .line 206
    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_8
    const-string/jumbo p0, "packageManagerLocal"

    .line 211
    .line 212
    .line 213
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v5
.end method

.method public static final access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    move-object/from16 v6, p4

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p8, :cond_0

    .line 7
    .line 8
    move/from16 v0, p6

    .line 9
    .line 10
    and-int/lit16 v0, v0, -0x7831

    .line 11
    .line 12
    move/from16 v1, p7

    .line 13
    .line 14
    and-int/lit16 v1, v1, -0x7831

    .line 15
    .line 16
    :goto_0
    move-object v9, p0

    .line 17
    move v7, v0

    .line 18
    move v8, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move/from16 v0, p6

    .line 21
    .line 22
    move/from16 v1, p7

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v0, v9, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-object v10, p1

    .line 31
    iget-object v0, v10, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v11, v0

    .line 48
    check-cast v11, Lcom/android/server/permission/access/permission/Permission;

    .line 49
    .line 50
    if-nez v11, :cond_2

    .line 51
    .line 52
    if-nez p9, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string v1, "Unknown permission "

    .line 58
    .line 59
    invoke-static {v1, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_2
    move-object v0, p0

    .line 68
    move v1, p2

    .line 69
    move v2, p3

    .line 70
    move-object v3, p1

    .line 71
    move-object/from16 v4, p4

    .line 72
    .line 73
    move-object/from16 v5, p5

    .line 74
    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez p10, :cond_3

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    move-object/from16 v1, p11

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ": Permission "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, " isn\'t requested by package "

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-object/from16 v1, p12

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "PermissionService"

    .line 116
    .line 117
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    invoke-static {v11, v0, v7, v8}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    move-object/from16 p6, p0

    .line 126
    .line 127
    move/from16 p7, p2

    .line 128
    .line 129
    move/from16 p8, p3

    .line 130
    .line 131
    move/from16 p9, v0

    .line 132
    .line 133
    move-object/from16 p10, p1

    .line 134
    .line 135
    move-object/from16 p11, p4

    .line 136
    .line 137
    move-object/from16 p12, p5

    .line 138
    .line 139
    invoke-virtual/range {p6 .. p12}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    return-void
.end method

.method public static dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "App ID: "

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v6, 0x0

    .line 38
    :goto_0
    if-ge v6, v4, :cond_6

    .line 39
    .line 40
    iget-object v7, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Lcom/android/server/permission/access/MutableUserState;

    .line 51
    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v10, "User: "

    .line 55
    .line 56
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 70
    .line 71
    .line 72
    const-string v7, "Permissions:"

    .line 73
    .line 74
    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 89
    .line 90
    const-string v9, ", flags="

    .line 91
    .line 92
    const-string v10, ": granted="

    .line 93
    .line 94
    if-eqz v7, :cond_0

    .line 95
    .line 96
    iget-object v11, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    const/4 v12, 0x0

    .line 103
    :goto_1
    if-ge v12, v11, :cond_0

    .line 104
    .line 105
    iget-object v13, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    iget-object v14, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    check-cast v14, Ljava/lang/Number;

    .line 118
    .line 119
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    check-cast v13, Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    invoke-static {v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v12, v12, 0x1

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v5, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 175
    .line 176
    if-eqz v5, :cond_2

    .line 177
    .line 178
    iget-object v7, v5, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 179
    .line 180
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    const/4 v11, 0x0

    .line 185
    :goto_2
    if-ge v11, v7, :cond_2

    .line 186
    .line 187
    iget-object v12, v5, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 188
    .line 189
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    invoke-virtual {v5, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    check-cast v13, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 198
    .line 199
    check-cast v12, Ljava/lang/String;

    .line 200
    .line 201
    new-instance v14, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v15, "Permissions (Device "

    .line 204
    .line 205
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v12, "):"

    .line 212
    .line 213
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-virtual {v0, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 224
    .line 225
    .line 226
    iget-object v12, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 227
    .line 228
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    const/4 v14, 0x0

    .line 233
    :goto_3
    if-ge v14, v12, :cond_1

    .line 234
    .line 235
    iget-object v15, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 236
    .line 237
    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v15

    .line 241
    move-object/from16 v16, v3

    .line 242
    .line 243
    iget-object v3, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 244
    .line 245
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    check-cast v15, Ljava/lang/String;

    .line 256
    .line 257
    move/from16 v17, v4

    .line 258
    .line 259
    invoke-static {v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    invoke-static {v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    move-object/from16 v18, v5

    .line 268
    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    add-int/lit8 v14, v14, 0x1

    .line 297
    .line 298
    move-object/from16 v3, v16

    .line 299
    .line 300
    move/from16 v4, v17

    .line 301
    .line 302
    move-object/from16 v5, v18

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_1
    move-object/from16 v16, v3

    .line 306
    .line 307
    move/from16 v17, v4

    .line 308
    .line 309
    move-object/from16 v18, v5

    .line 310
    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 312
    .line 313
    .line 314
    add-int/lit8 v11, v11, 0x1

    .line 315
    .line 316
    goto/16 :goto_2

    .line 317
    .line 318
    :cond_2
    move-object/from16 v16, v3

    .line 319
    .line 320
    move/from16 v17, v4

    .line 321
    .line 322
    const-string v3, "App ops:"

    .line 323
    .line 324
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 339
    .line 340
    const-string v5, ": mode="

    .line 341
    .line 342
    if-eqz v4, :cond_3

    .line 343
    .line 344
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 345
    .line 346
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    const/4 v9, 0x0

    .line 351
    :goto_4
    if-ge v9, v7, :cond_3

    .line 352
    .line 353
    iget-object v10, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 354
    .line 355
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    iget-object v11, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 360
    .line 361
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    check-cast v11, Ljava/lang/Number;

    .line 366
    .line 367
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result v11

    .line 371
    check-cast v10, Ljava/lang/String;

    .line 372
    .line 373
    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    new-instance v12, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    add-int/lit8 v9, v9, 0x1

    .line 399
    .line 400
    goto :goto_4

    .line 401
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 402
    .line 403
    .line 404
    if-eqz v2, :cond_5

    .line 405
    .line 406
    iget-object v4, v2, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 407
    .line 408
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    const/4 v7, 0x0

    .line 413
    :goto_5
    if-ge v7, v4, :cond_5

    .line 414
    .line 415
    iget-object v9, v2, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 416
    .line 417
    invoke-static {v9, v7}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    check-cast v9, Ljava/lang/String;

    .line 422
    .line 423
    new-instance v10, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string v11, "Package: "

    .line 426
    .line 427
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 441
    .line 442
    .line 443
    iget-object v10, v8, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 444
    .line 445
    iget-object v10, v10, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 446
    .line 447
    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 448
    .line 449
    iget-object v10, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 450
    .line 451
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    new-instance v11, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string/jumbo v12, "version="

    .line 458
    .line 459
    .line 460
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 480
    .line 481
    .line 482
    move-result-object v10

    .line 483
    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 488
    .line 489
    if-eqz v9, :cond_4

    .line 490
    .line 491
    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 492
    .line 493
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 494
    .line 495
    .line 496
    move-result v10

    .line 497
    const/4 v11, 0x0

    .line 498
    :goto_6
    if-ge v11, v10, :cond_4

    .line 499
    .line 500
    iget-object v12, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 501
    .line 502
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v12

    .line 506
    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 507
    .line 508
    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v13

    .line 512
    check-cast v13, Ljava/lang/Number;

    .line 513
    .line 514
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 515
    .line 516
    .line 517
    move-result v13

    .line 518
    check-cast v12, Ljava/lang/String;

    .line 519
    .line 520
    invoke-static {v13}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v13

    .line 524
    new-instance v14, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v12

    .line 542
    invoke-virtual {v0, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    add-int/lit8 v11, v11, 0x1

    .line 546
    .line 547
    goto :goto_6

    .line 548
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 549
    .line 550
    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 552
    .line 553
    .line 554
    add-int/lit8 v7, v7, 0x1

    .line 555
    .line 556
    goto/16 :goto_5

    .line 557
    .line 558
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 559
    .line 560
    .line 561
    add-int/lit8 v6, v6, 0x1

    .line 562
    .line 563
    move-object/from16 v3, v16

    .line 564
    .line 565
    move/from16 v4, v17

    .line 566
    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 570
    .line 571
    .line 572
    return-void
.end method

.method public static generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 6
    .line 7
    .line 8
    iget p0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 9
    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    or-int/2addr p0, v1

    .line 13
    iput p0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 14
    .line 15
    const/16 p0, 0x80

    .line 16
    .line 17
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    iput-object p0, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 25
    .line 26
    :cond_0
    const/16 p0, 0x1a

    .line 27
    .line 28
    if-ge p2, p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 p1, 0x2

    .line 35
    if-eq p0, p1, :cond_1

    .line 36
    .line 37
    iput p0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 38
    .line 39
    :cond_1
    return-object v0
.end method

.method public static isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p0, p2, v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    const/4 p2, 0x0

    .line 23
    invoke-static {p0, p2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :catchall_1
    move-exception p2

    .line 30
    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p2
.end method

.method public static isRootOrSystemUid(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x3e8

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    :goto_0
    return p0
.end method

.method public static setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v4, p2

    .line 6
    .line 7
    and-int/lit8 v2, p8, 0x20

    .line 8
    .line 9
    const/4 v12, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v2, v12

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move/from16 v2, p6

    .line 15
    .line 16
    :goto_0
    and-int/lit8 v3, p8, 0x40

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    move-object v3, v5

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object/from16 v3, p7

    .line 24
    .line 25
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    if-eqz p5, :cond_2

    .line 29
    .line 30
    const-string v6, "grantRuntimePermission"

    .line 31
    .line 32
    :goto_2
    move-object v11, v6

    .line 33
    goto :goto_3

    .line 34
    :cond_2
    const-string/jumbo v6, "revokeRuntimePermission"

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iget-object v7, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 43
    .line 44
    if-eqz v7, :cond_13

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_3

    .line 51
    .line 52
    const-string v0, "PermissionService"

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ": Unknown user "

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto/16 :goto_b

    .line 78
    .line 79
    :cond_3
    const/4 v7, 0x1

    .line 80
    invoke-virtual {v0, v11, v7, v7, v4}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;ZZI)V

    .line 81
    .line 82
    .line 83
    if-eqz p5, :cond_4

    .line 84
    .line 85
    const-string v8, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_4
    const-string v8, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 89
    .line 90
    :goto_4
    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v9, v8, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    .line 97
    invoke-direct {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 101
    .line 102
    if-eqz v9, :cond_12

    .line 103
    .line 104
    const/4 v10, 0x7

    .line 105
    invoke-virtual {v9, v10, v12}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    const-string v10, "<this>"

    .line 110
    .line 111
    invoke-static {v10, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    array-length v10, v9

    .line 115
    if-eqz v10, :cond_11

    .line 116
    .line 117
    aget-object v9, v9, v12

    .line 118
    .line 119
    iget-object v10, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 120
    .line 121
    if-eqz v10, :cond_10

    .line 122
    .line 123
    invoke-interface {v10}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    invoke-interface {v10, v6, v13}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 132
    .line 133
    .line 134
    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    invoke-interface {v13, v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 136
    .line 137
    .line 138
    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 139
    :try_start_2
    invoke-static {v13, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    iput-object v14, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 143
    .line 144
    invoke-interface {v10}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    check-cast v9, Lcom/android/server/pm/pkg/PackageState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    .line 154
    invoke-static {v10, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    iget-object v10, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    .line 160
    .line 161
    if-eqz v10, :cond_5

    .line 162
    .line 163
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    goto :goto_5

    .line 168
    :cond_5
    move-object v10, v5

    .line 169
    :goto_5
    if-nez v10, :cond_6

    .line 170
    .line 171
    const-string v0, "PermissionService"

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v3, ": Unknown package "

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    goto/16 :goto_b

    .line 197
    .line 198
    :cond_6
    invoke-static {v6}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_8

    .line 203
    .line 204
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-ne v1, v6, :cond_7

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_7
    move v9, v12

    .line 219
    goto :goto_7

    .line 220
    :cond_8
    :goto_6
    move v9, v7

    .line 221
    :goto_7
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 222
    .line 223
    const-string v6, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 224
    .line 225
    invoke-virtual {v1, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_9

    .line 230
    .line 231
    move v10, v7

    .line 232
    goto :goto_8

    .line 233
    :cond_9
    move v10, v12

    .line 234
    :goto_8
    iget-object v13, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 235
    .line 236
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    monitor-enter v14

    .line 241
    :try_start_3
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_f

    .line 246
    .line 247
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 248
    .line 249
    .line 250
    move-result-object v15

    .line 251
    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    .line 252
    .line 253
    invoke-direct {v6, v1, v15}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    .line 257
    .line 258
    if-eqz v1, :cond_e

    .line 259
    .line 260
    if-eqz v2, :cond_a

    .line 261
    .line 262
    iput-boolean v7, v1, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    .line 263
    .line 264
    :cond_a
    if-eqz v3, :cond_b

    .line 265
    .line 266
    iget-object v1, v1, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .line 267
    .line 268
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    :cond_b
    iget-object v1, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 272
    .line 273
    move-object v3, v1

    .line 274
    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    .line 275
    .line 276
    const/16 v16, 0x1

    .line 277
    .line 278
    move-object/from16 v1, p0

    .line 279
    .line 280
    move-object v2, v6

    .line 281
    move/from16 v4, p2

    .line 282
    .line 283
    move-object/from16 v5, p3

    .line 284
    .line 285
    move-object/from16 v6, p4

    .line 286
    .line 287
    move/from16 v7, p5

    .line 288
    .line 289
    move v8, v9

    .line 290
    move v9, v10

    .line 291
    move/from16 v10, v16

    .line 292
    .line 293
    invoke-static/range {v1 .. v11}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0, v15}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v13, v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 311
    .line 312
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 313
    .line 314
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    move v2, v12

    .line 319
    :goto_9
    if-ge v2, v1, :cond_d

    .line 320
    .line 321
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 322
    .line 323
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 328
    .line 329
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 334
    .line 335
    check-cast v3, Ljava/lang/String;

    .line 336
    .line 337
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 338
    .line 339
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    move v5, v12

    .line 344
    :goto_a
    if-ge v5, v3, :cond_c

    .line 345
    .line 346
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 347
    .line 348
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 353
    .line 354
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 359
    .line 360
    check-cast v6, Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    .line 364
    .line 365
    add-int/lit8 v5, v5, 0x1

    .line 366
    .line 367
    goto :goto_a

    .line 368
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_d
    monitor-exit v14

    .line 372
    :goto_b
    return-void

    .line 373
    :catchall_0
    move-exception v0

    .line 374
    goto :goto_c

    .line 375
    :cond_e
    :try_start_4
    const-string/jumbo v0, "onPermissionFlagsChangedListener"

    .line 376
    .line 377
    .line 378
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v5

    .line 382
    :cond_f
    const-string/jumbo v0, "state"

    .line 383
    .line 384
    .line 385
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 389
    :goto_c
    monitor-exit v14

    .line 390
    throw v0

    .line 391
    :goto_d
    move-object v1, v0

    .line 392
    goto :goto_e

    .line 393
    :catchall_1
    move-exception v0

    .line 394
    goto :goto_d

    .line 395
    :catchall_2
    move-exception v0

    .line 396
    move-object v1, v0

    .line 397
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 398
    :catchall_3
    move-exception v0

    .line 399
    move-object v2, v0

    .line 400
    :try_start_6
    invoke-static {v13, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 401
    .line 402
    .line 403
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 404
    :goto_e
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 405
    :catchall_4
    move-exception v0

    .line 406
    move-object v2, v0

    .line 407
    invoke-static {v10, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 408
    .line 409
    .line 410
    throw v2

    .line 411
    :cond_10
    const-string/jumbo v0, "packageManagerLocal"

    .line 412
    .line 413
    .line 414
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v5

    .line 418
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 419
    .line 420
    const-string v1, "Array is empty."

    .line 421
    .line 422
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    throw v0

    .line 426
    :cond_12
    const-string/jumbo v0, "packageManagerInternal"

    .line 427
    .line 428
    .line 429
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v5

    .line 433
    :cond_13
    const-string/jumbo v0, "userManagerInternal"

    .line 434
    .line 435
    .line 436
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v5
.end method

.method public static toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    .line 29
    .line 30
    check-cast v4, Ljava/lang/String;

    .line 31
    .line 32
    new-instance v4, Lcom/android/server/pm/permission/LegacyPermission;

    .line 33
    .line 34
    iget-object v6, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 35
    .line 36
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    .line 37
    .line 38
    iget v5, v5, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 39
    .line 40
    invoke-direct {v4, v6, v5, v2, v7}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method public static updateAdminPermissionsInternal(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "updateAdminPermissionsInternal"

    .line 2
    .line 3
    .line 4
    const-string v1, "PermissionService"

    .line 5
    .line 6
    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "enterprise_license_policy"

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-boolean v2, Lcom/android/server/pm/PmHook;->mSystemReady:Z

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :catch_1
    move-exception p0

    .line 40
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    :goto_0
    :try_start_1
    sget-boolean v2, Lcom/android/server/pm/PmHook;->mSystemReady:Z

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v2, "PM_HOOK"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    :try_start_2
    invoke-interface {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->updateAdminPermissions()V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :catch_2
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :catch_3
    move-exception v0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    const-string v0, "ENTERPRISE_LICENSE_POLICY_SERVICE is null"

    .line 69
    .line 70
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_1
    :try_start_3
    const-string v3, "NPE occurs for EnterpriseLicense"

    .line 75
    .line 76
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :catch_4
    move-exception v0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string/jumbo v3, "updateAdminPermissionsInternal error as PackageName - "

    .line 91
    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public final addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(IILjava/lang/String;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    move-object v5, v0

    .line 24
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    move-object v3, p0

    .line 35
    move-object v4, p1

    .line 36
    move v6, p3

    .line 37
    move v7, p4

    .line 38
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_2
    return v1

    .line 44
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string/jumbo p1, "permissionName cannot be null"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    .line 4
    .line 5
    const-string v2, "addOnPermissionsChangeListener"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string/jumbo p0, "onPermissionsChangeListeners"

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method

.method public final addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 9

    .line 1
    const-string v0, "Not allowed to modify non-dynamic permission "

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_b

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_a

    .line 15
    .line 16
    invoke-interface {v3}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    if-nez v2, :cond_9

    .line 28
    .line 29
    iget v2, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    const-string p1, "Label must be specified in permission"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 52
    .line 53
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    monitor-enter v5

    .line 58
    :try_start_1
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-eqz v6, :cond_8

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    new-instance v7, Lcom/android/server/permission/access/MutateStateScope;

    .line 69
    .line 70
    invoke-direct {v7, v6, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v7, v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {p0, v7, p1, v6}, Lcom/android/server/permission/access/permission/PermissionService;->access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V

    .line 78
    .line 79
    .line 80
    iget-object v7, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    iget-object v7, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    .line 100
    .line 101
    iput-object v7, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 102
    .line 103
    const/4 v8, 0x2

    .line 104
    if-eqz v7, :cond_3

    .line 105
    .line 106
    iget v7, v7, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 107
    .line 108
    if-ne v7, v8, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_3
    :goto_1
    iget-object v0, v6, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 125
    .line 126
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 131
    .line 132
    invoke-static {v0}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 137
    .line 138
    new-instance v0, Lcom/android/server/permission/access/permission/Permission;

    .line 139
    .line 140
    iget v1, v6, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 141
    .line 142
    const/4 v6, 0x1

    .line 143
    invoke-direct {v0, p1, v6, v8, v1}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 147
    .line 148
    xor-int/2addr p2, v6

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    if-eqz p2, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    move v8, v6

    .line 156
    :goto_2
    iget-object p0, v4, Lcom/android/server/permission/access/AccessState;->systemStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    check-cast p0, Lcom/android/server/permission/access/MutableSystemState;

    .line 163
    .line 164
    iget p2, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 165
    .line 166
    invoke-static {p2, v8}, Ljava/lang/Math;->max(II)I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    iput p2, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v3, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 196
    .line 197
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    const/4 p2, 0x0

    .line 204
    move v0, p2

    .line 205
    :goto_3
    if-ge v0, p1, :cond_6

    .line 206
    .line 207
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 214
    .line 215
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 220
    .line 221
    check-cast v1, Ljava/lang/String;

    .line 222
    .line 223
    iget-object v1, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 224
    .line 225
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    move v4, p2

    .line 230
    :goto_4
    if-ge v4, v1, :cond_5

    .line 231
    .line 232
    iget-object v7, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 233
    .line 234
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    iget-object v8, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 239
    .line 240
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    .line 245
    .line 246
    check-cast v7, Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v8}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .line 250
    .line 251
    add-int/lit8 v4, v4, 0x1

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_6
    monitor-exit v5

    .line 258
    iget-object p0, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 259
    .line 260
    if-nez p0, :cond_7

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_7
    move v6, p2

    .line 264
    :goto_5
    return v6

    .line 265
    :cond_8
    :try_start_2
    const-string/jumbo p0, "state"

    .line 266
    .line 267
    .line 268
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    :goto_6
    monitor-exit v5

    .line 273
    throw p0

    .line 274
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    .line 275
    .line 276
    const-string p1, "Instant apps cannot add permissions"

    .line 277
    .line 278
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p0

    .line 282
    :catchall_1
    move-exception p0

    .line 283
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 284
    :catchall_2
    move-exception p1

    .line 285
    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 286
    .line 287
    .line 288
    throw p1

    .line 289
    :cond_a
    const-string/jumbo p0, "packageManagerLocal"

    .line 290
    .line 291
    .line 292
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v4

    .line 296
    :cond_b
    const-string/jumbo p0, "permissionName cannot be null"

    .line 297
    .line 298
    .line 299
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 300
    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p1
.end method

.method public final applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1, v1, p2, v1}, Lcom/android/server/permission/access/permission/PermissionService;->applyRuntimePermissionsInternalForMDM(ILjava/lang/String;ILjava/util/List;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    const-string/jumbo p0, "userManagerInternal"

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p3, p1, p4, p2}, Lcom/android/server/permission/access/permission/PermissionService;->applyRuntimePermissionsInternalForMDM(ILjava/lang/String;ILjava/util/List;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string/jumbo p0, "userManagerInternal"

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final applyRuntimePermissionsInternalForMDM(ILjava/lang/String;ILjava/util/List;)Z
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x3e8

    .line 8
    .line 9
    const-string v3, "PermissionService"

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string p0, "Package : "

    .line 26
    .line 27
    const-string p1, " is container critical application"

    .line 28
    .line 29
    invoke-static {p0, p2, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_0
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    if-eq p1, v0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    if-eq p1, v1, :cond_1

    .line 41
    .line 42
    const-string p0, "Invalid Permission State "

    .line 43
    .line 44
    invoke-static {p1, p0, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v7, 0x4

    .line 49
    move-object v4, p0

    .line 50
    move-object v5, p2

    .line 51
    move v6, p1

    .line 52
    move v8, p3

    .line 53
    move-object v9, p4

    .line 54
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;IIILjava/util/List;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v4, 0x0

    .line 60
    move-object v1, p0

    .line 61
    move-object v2, p2

    .line 62
    move v3, p1

    .line 63
    move v5, p3

    .line 64
    move-object v6, p4

    .line 65
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;IIILjava/util/List;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_0
    return v0
.end method

.method public final backupRuntimePermissions(I)[B
    .locals 6

    .line 1
    const-string/jumbo v0, "userId cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p0, :cond_3

    .line 16
    .line 17
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-direct {v4, v5, v0}, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2, v3, v4}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    sget-wide v2, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    .line 35
    .line 36
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    move-object v1, p0

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception p0

    .line 47
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    move v0, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    instance-of v0, p0, Ljava/lang/InterruptedException;

    .line 55
    .line 56
    :goto_0
    if-eqz v0, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    instance-of v2, p0, Ljava/util/concurrent/ExecutionException;

    .line 60
    .line 61
    :goto_1
    if-eqz v2, :cond_2

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "Cannot create permission backup for user "

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "PermissionService"

    .line 78
    .line 79
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    :goto_2
    return-object v1

    .line 83
    :cond_2
    throw p0

    .line 84
    :cond_3
    const-string/jumbo p0, "permissionControllerManager"

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, -0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-interface {v0, v3, v4}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 31
    .line 32
    .line 33
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 41
    .line 42
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-direct {v4, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 51
    .line 52
    .line 53
    move-object v3, p0

    .line 54
    move v6, p4

    .line 55
    move-object v7, p2

    .line 56
    move-object v8, p3

    .line 57
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    :cond_2
    return v2

    .line 65
    :cond_3
    const-string/jumbo p0, "state"

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_4
    const-string/jumbo p0, "packageManagerLocal"

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v1

    .line 86
    :cond_5
    const-string/jumbo p0, "userManagerInternal"

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1
.end method

.method public final checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_b

    .line 9
    .line 10
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v6, -0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v6

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 19
    .line 20
    const-string/jumbo v2, "packageManagerInternal"

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_a

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v7, 0x0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p1, "checkUidPermission: PackageState not found for AndroidPackage "

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "PermissionService"

    .line 61
    .line 62
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return v6

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 67
    .line 68
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-direct {v4, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 77
    .line 78
    .line 79
    move-object v0, p0

    .line 80
    move-object v1, v4

    .line 81
    move-object v4, p2

    .line 82
    move-object v5, p3

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_2

    .line 88
    .line 89
    move v6, v7

    .line 90
    :cond_2
    return v6

    .line 91
    :cond_3
    const-string/jumbo p0, "state"

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_4
    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_5
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 103
    .line 104
    if-eqz p0, :cond_9

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Landroid/util/ArraySet;

    .line 113
    .line 114
    if-nez p0, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_7

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_8

    .line 139
    .line 140
    :goto_0
    move v6, v7

    .line 141
    :cond_8
    :goto_1
    return v6

    .line 142
    :cond_9
    const-string/jumbo p0, "systemConfig"

    .line 143
    .line 144
    .line 145
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v1

    .line 149
    :cond_a
    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :cond_b
    const-string/jumbo p0, "userManagerInternal"

    .line 154
    .line 155
    .line 156
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v1
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 8
    .line 9
    const-string v4, "PermissionService"

    .line 10
    .line 11
    invoke-static {v3, v4, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v3, Landroid/util/IndentingPrintWriter;

    .line 19
    .line 20
    const-string v4, "  "

    .line 21
    .line 22
    invoke-direct {v3, v1, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const-string/jumbo v4, "state"

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    const/4 v6, 0x0

    .line 31
    if-eqz v2, :cond_9

    .line 32
    .line 33
    array-length v7, v2

    .line 34
    if-nez v7, :cond_1

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_1
    aget-object v7, v2, v6

    .line 39
    .line 40
    const-string v8, "-a"

    .line 41
    .line 42
    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_2
    aget-object v7, v2, v6

    .line 51
    .line 52
    const-string v8, "--app-id"

    .line 53
    .line 54
    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const/4 v8, 0x1

    .line 59
    const-string v9, "."

    .line 60
    .line 61
    if-eqz v7, :cond_5

    .line 62
    .line 63
    array-length v7, v2

    .line 64
    if-ne v7, v5, :cond_5

    .line 65
    .line 66
    aget-object v2, v2, v8

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 73
    .line 74
    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0, v5}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 107
    .line 108
    invoke-static {v3, v2, v5, v0}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "Unknown app ID "

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :cond_4
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v1

    .line 139
    :cond_5
    aget-object v6, v2, v6

    .line 140
    .line 141
    const-string v7, "--package"

    .line 142
    .line 143
    invoke-static {v6, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_8

    .line 148
    .line 149
    array-length v6, v2

    .line 150
    if-ne v6, v5, :cond_8

    .line 151
    .line 152
    aget-object v2, v2, v8

    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 167
    .line 168
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 173
    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    filled-new-array {v2}, [Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-static {v2}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v3, v1, v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_6

    .line 192
    .line 193
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v1, "Unknown package "

    .line 196
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_6

    .line 214
    .line 215
    :cond_7
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v1

    .line 219
    :cond_8
    const-string v0, "Usage: dumpsys permissionmgr [--app-id <APP_ID>] [--package <PACKAGE_NAME>]"

    .line 220
    .line 221
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_6

    .line 225
    .line 226
    :cond_9
    :goto_0
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 227
    .line 228
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    if-eqz v2, :cond_11

    .line 233
    .line 234
    const-string v1, "Permissions:"

    .line 235
    .line 236
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 251
    .line 252
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    move v7, v6

    .line 257
    :goto_1
    const-string v8, ", appId="

    .line 258
    .line 259
    if-ge v7, v4, :cond_c

    .line 260
    .line 261
    iget-object v9, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 262
    .line 263
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    iget-object v10, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 268
    .line 269
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    .line 274
    .line 275
    check-cast v9, Ljava/lang/String;

    .line 276
    .line 277
    iget-object v9, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 278
    .line 279
    iget v9, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 280
    .line 281
    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    iget-object v11, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 286
    .line 287
    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 288
    .line 289
    iget v12, v10, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 290
    .line 291
    if-eqz v12, :cond_b

    .line 292
    .line 293
    if-eq v12, v5, :cond_a

    .line 294
    .line 295
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    goto :goto_2

    .line 300
    :cond_a
    const-string v12, "TYPE_DYNAMIC"

    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_b
    const-string v12, "TYPE_MANIFEST"

    .line 304
    .line 305
    :goto_2
    iget-object v13, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 306
    .line 307
    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 308
    .line 309
    iget-object v14, v10, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 310
    .line 311
    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    const-string/jumbo v15, "toString(...)"

    .line 316
    .line 317
    .line 318
    invoke-static {v15, v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    iget-object v15, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 322
    .line 323
    iget v15, v15, Landroid/content/pm/PermissionInfo;->flags:I

    .line 324
    .line 325
    invoke-static {v15}, Landroid/content/pm/PermissionInfo;->flagsToString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v15

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v11, ": type="

    .line 338
    .line 339
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v11, ", packageName="

    .line 346
    .line 347
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    iget v8, v10, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 357
    .line 358
    const-string v10, ", gids="

    .line 359
    .line 360
    const-string v11, ", protectionLevel=["

    .line 361
    .line 362
    invoke-static {v8, v10, v14, v11, v5}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v8, "], flags="

    .line 369
    .line 370
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-virtual {v3, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    add-int/lit8 v7, v7, 0x1

    .line 384
    .line 385
    const/4 v5, 0x2

    .line 386
    goto/16 :goto_1

    .line 387
    .line 388
    :cond_c
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 389
    .line 390
    .line 391
    const-string v1, "Permission groups:"

    .line 392
    .line 393
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 408
    .line 409
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    move v5, v6

    .line 414
    :goto_3
    const-string v7, ": packageName="

    .line 415
    .line 416
    if-ge v5, v4, :cond_d

    .line 417
    .line 418
    iget-object v9, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 419
    .line 420
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    iget-object v10, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 425
    .line 426
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v10

    .line 430
    check-cast v10, Landroid/content/pm/PermissionGroupInfo;

    .line 431
    .line 432
    check-cast v9, Ljava/lang/String;

    .line 433
    .line 434
    iget-object v9, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 435
    .line 436
    iget-object v10, v10, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 437
    .line 438
    new-instance v11, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    add-int/lit8 v5, v5, 0x1

    .line 460
    .line 461
    goto :goto_3

    .line 462
    :cond_d
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 463
    .line 464
    .line 465
    const-string v1, "Permission trees:"

    .line 466
    .line 467
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 482
    .line 483
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    move v5, v6

    .line 488
    :goto_4
    if-ge v5, v4, :cond_e

    .line 489
    .line 490
    iget-object v9, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 491
    .line 492
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v9

    .line 496
    iget-object v10, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 497
    .line 498
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    .line 503
    .line 504
    check-cast v9, Ljava/lang/String;

    .line 505
    .line 506
    iget-object v9, v10, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 507
    .line 508
    iget-object v11, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 509
    .line 510
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 511
    .line 512
    new-instance v12, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    iget v9, v10, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 530
    .line 531
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v9

    .line 538
    invoke-virtual {v3, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    add-int/lit8 v5, v5, 0x1

    .line 542
    .line 543
    goto :goto_4

    .line 544
    :cond_e
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 552
    .line 553
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    :goto_5
    if-ge v6, v1, :cond_10

    .line 558
    .line 559
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 560
    .line 561
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 566
    .line 567
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 572
    .line 573
    check-cast v4, Ljava/lang/Number;

    .line 574
    .line 575
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 576
    .line 577
    .line 578
    move-result v4

    .line 579
    const/4 v7, -0x1

    .line 580
    if-eq v4, v7, :cond_f

    .line 581
    .line 582
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 583
    .line 584
    .line 585
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 586
    .line 587
    goto :goto_5

    .line 588
    :cond_10
    :goto_6
    return-void

    .line 589
    :cond_11
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw v1
.end method

.method public final varargs enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ": "

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "Neither user "

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " nor current process has any of "

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ""

    .line 51
    .line 52
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 53
    .line 54
    .line 55
    array-length v0, p2

    .line 56
    move v2, v1

    .line 57
    :goto_1
    if-ge v1, v0, :cond_3

    .line 58
    .line 59
    aget-object v3, p2, v1

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    add-int/2addr v2, v4

    .line 63
    if-le v2, v4, :cond_2

    .line 64
    .line 65
    const-string v4, ", "

    .line 66
    .line 67
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 v4, 0x0

    .line 71
    invoke-static {p0, v3, v4}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__AppendableKt;->appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string/jumbo p1, "toString(...)"

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Ljava/lang/SecurityException;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method public final enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;ZZI)V
    .locals 4

    .line 1
    if-ltz p4, :cond_6

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string/jumbo v2, "toString(...)"

    .line 12
    .line 13
    .line 14
    const-string v3, ": "

    .line 15
    .line 16
    if-eq p4, v1, :cond_2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const-string p2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    .line 24
    .line 25
    :goto_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, "Neither user "

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " nor current process has "

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, " to access user "

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/lang/SecurityException;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_2
    :goto_1
    if-eqz p3, :cond_5

    .line 83
    .line 84
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    const/16 p3, 0x7d0

    .line 89
    .line 90
    if-ne p2, p3, :cond_5

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 93
    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    const-string/jumbo p2, "no_debugging_features"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-nez p0, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p1, "Shell is disallowed to access user "

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Ljava/lang/SecurityException;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_4
    const-string/jumbo p0, "userManagerInternal"

    .line 139
    .line 140
    .line 141
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 p0, 0x0

    .line 145
    throw p0

    .line 146
    :cond_5
    :goto_2
    return-void

    .line 147
    :cond_6
    const-string/jumbo p0, "userId "

    .line 148
    .line 149
    .line 150
    const-string p1, " is invalid"

    .line 151
    .line 152
    invoke-static {p4, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1
.end method

.method public final enforceRestrictedPermission(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string/jumbo p0, "permission definition for "

    .line 35
    .line 36
    .line 37
    const-string v0, " does not exist"

    .line 38
    .line 39
    const-string v1, "PermissionService"

    .line 40
    .line 41
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 46
    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :try_start_0
    iget-object v3, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 54
    .line 55
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {p1, v3}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 58
    .line 59
    .line 60
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {p1, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    return v2

    .line 67
    :cond_1
    iget-object p1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 68
    .line 69
    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    iget-object p1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 79
    .line 80
    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 81
    .line 82
    const/16 v1, 0x8

    .line 83
    .line 84
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    :cond_2
    iget-object p1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 91
    .line 92
    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 93
    .line 94
    const/16 v1, 0x10

    .line 95
    .line 96
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 103
    .line 104
    const-string p1, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 114
    .line 115
    iget-object p1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 116
    .line 117
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 118
    .line 119
    const-string v0, "Cannot modify allowlist of an immutably restricted permission: "

    .line 120
    .line 121
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 130
    return p0

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :catchall_1
    move-exception v0

    .line 134
    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_5
    const-string/jumbo p0, "packageManagerLocal"

    .line 139
    .line 140
    .line 141
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v1

    .line 145
    :cond_6
    const-string/jumbo p0, "state"

    .line 146
    .line 147
    .line 148
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v1
.end method

.method public final getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .locals 10

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p0, :cond_c

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {p0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v1, 0x0

    .line 33
    move v3, v1

    .line 34
    :goto_0
    if-ge v3, p1, :cond_6

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-object v6, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    move v7, v1

    .line 56
    :goto_1
    if-ge v7, v6, :cond_0

    .line 57
    .line 58
    iget-object v8, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 69
    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iget-object v6, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    move v7, v1

    .line 91
    :goto_2
    if-ge v7, v6, :cond_1

    .line 92
    .line 93
    iget-object v8, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 94
    .line 95
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 104
    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    add-int/lit8 v7, v7, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    iget-object v5, v4, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 116
    .line 117
    iget-object v5, v5, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 118
    .line 119
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 120
    .line 121
    iget-object v6, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    move v7, v1

    .line 128
    :goto_3
    if-ge v7, v6, :cond_3

    .line 129
    .line 130
    iget-object v8, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    iget-object v9, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 137
    .line 138
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    check-cast v9, Ljava/lang/Number;

    .line 143
    .line 144
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 145
    .line 146
    .line 147
    check-cast v8, Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    .line 154
    .line 155
    if-eqz v8, :cond_2

    .line 156
    .line 157
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    iget-object v5, v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    move v6, v1

    .line 182
    :goto_4
    if-ge v6, v5, :cond_5

    .line 183
    .line 184
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 185
    .line 186
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 195
    .line 196
    check-cast v7, Ljava/lang/String;

    .line 197
    .line 198
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 203
    .line 204
    if-eqz v7, :cond_4

    .line 205
    .line 206
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_6
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 225
    .line 226
    invoke-direct {p0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_9

    .line 242
    .line 243
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Ljava/util/Map$Entry;

    .line 248
    .line 249
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    .line 254
    .line 255
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_7

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_7
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 271
    .line 272
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    if-eqz v4, :cond_8

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_8
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 280
    .line 281
    invoke-direct {v4}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v3, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :goto_6
    check-cast v4, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 288
    .line 289
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_9
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    :goto_7
    if-ge v1, p1, :cond_b

    .line 302
    .line 303
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Ljava/lang/Number;

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 318
    .line 319
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    if-eqz v3, :cond_a

    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_a
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 327
    .line 328
    invoke-direct {v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v2, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_b
    return-object p0

    .line 338
    :catchall_0
    move-exception p1

    .line 339
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    :catchall_1
    move-exception v0

    .line 341
    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 342
    .line 343
    .line 344
    throw v0

    .line 345
    :cond_c
    const-string/jumbo p0, "packageManagerLocal"

    .line 346
    .line 347
    .line 348
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v1
.end method

.method public final getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 9

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_8

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 29
    .line 30
    if-eqz p0, :cond_7

    .line 31
    .line 32
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_6

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/util/Map$Entry;

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 65
    .line 66
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-nez v4, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_0

    .line 93
    .line 94
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Ljava/lang/String;

    .line 99
    .line 100
    iget-object v7, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    .line 107
    .line 108
    if-nez v7, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget-object v7, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 112
    .line 113
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    const/16 v8, 0x40

    .line 118
    .line 119
    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_3

    .line 124
    .line 125
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-eqz v7, :cond_5

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    new-instance v7, Landroid/util/ArraySet;

    .line 133
    .line 134
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :goto_2
    check-cast v7, Landroid/util/ArraySet;

    .line 141
    .line 142
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto :goto_3

    .line 152
    :cond_6
    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    return-object v0

    .line 156
    :goto_3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    :catchall_1
    move-exception v1

    .line 158
    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw v1

    .line 162
    :cond_7
    const-string/jumbo p0, "packageManagerLocal"

    .line 163
    .line 164
    .line 165
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v2

    .line 169
    :cond_8
    const-string/jumbo p0, "state"

    .line 170
    .line 171
    .line 172
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v2
.end method

.method public final getAllPermissionGroups(I)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_5

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x0

    .line 59
    :goto_0
    if-ge v5, v4, :cond_4

    .line 60
    .line 61
    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iget-object v7, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Landroid/content/pm/PermissionGroupInfo;

    .line 74
    .line 75
    check-cast v6, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v6, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0, v6, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_1

    .line 84
    .line 85
    new-instance v6, Landroid/content/pm/PermissionGroupInfo;

    .line 86
    .line 87
    invoke-direct {v6, v7}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 88
    .line 89
    .line 90
    const/16 v7, 0x80

    .line 91
    .line 92
    invoke-static {p1, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_2

    .line 97
    .line 98
    iput-object v1, v6, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move-object v6, v1

    .line 102
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 103
    .line 104
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    return-object v3

    .line 117
    :cond_5
    :try_start_2
    const-string/jumbo p0, "state"

    .line 118
    .line 119
    .line 120
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :catchall_1
    move-exception p1

    .line 126
    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_6
    const-string/jumbo p0, "packageManagerLocal"

    .line 131
    .line 132
    .line 133
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v1
.end method

.method public final getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move/from16 v8, p3

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_8

    .line 13
    .line 14
    invoke-virtual {v2, v8}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v4, "PermissionService"

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "getAllPermissionStates: Unknown user "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_0
    const/4 v2, 0x1

    .line 45
    const/4 v5, 0x0

    .line 46
    const-string v6, "getAllPermissionStates"

    .line 47
    .line 48
    invoke-virtual {v0, v6, v2, v5, v8}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;ZZI)V

    .line 49
    .line 50
    .line 51
    const-string v2, "android.permission.GET_RUNTIME_PERMISSIONS"

    .line 52
    .line 53
    const-string v9, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 54
    .line 55
    const-string v10, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 56
    .line 57
    filled-new-array {v9, v10, v2}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v6, v2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 65
    .line 66
    if-eqz v2, :cond_7

    .line 67
    .line 68
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :try_start_0
    invoke-interface {v2, v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 73
    .line 74
    .line 75
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {v2, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    if-nez v9, :cond_1

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, "getAllPermissionStates: Unknown package "

    .line 84
    .line 85
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :cond_1
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 104
    .line 105
    new-instance v10, Lcom/android/server/permission/access/GetStateScope;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    invoke-direct {v10, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 114
    .line 115
    .line 116
    const-string v2, "default:0"

    .line 117
    .line 118
    invoke-static {v7, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_3

    .line 123
    .line 124
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 125
    .line 126
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    .line 142
    .line 143
    if-eqz v1, :cond_2

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_2

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    move-object v3, v1

    .line 156
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 157
    .line 158
    :cond_2
    :goto_0
    move-object v11, v3

    .line 159
    goto :goto_1

    .line 160
    :cond_3
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 161
    .line 162
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    .line 178
    .line 179
    if-eqz v1, :cond_2

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-eqz v1, :cond_2

    .line 186
    .line 187
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 192
    .line 193
    if-eqz v1, :cond_2

    .line 194
    .line 195
    invoke-virtual {v1, v7}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    move-object v3, v1

    .line 200
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :goto_1
    if-nez v11, :cond_4

    .line 204
    .line 205
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0

    .line 210
    :cond_4
    new-instance v12, Landroid/util/ArrayMap;

    .line 211
    .line 212
    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 213
    .line 214
    .line 215
    iget-object v1, v11, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 216
    .line 217
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    move v14, v5

    .line 222
    :goto_2
    if-ge v14, v13, :cond_5

    .line 223
    .line 224
    iget-object v1, v11, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 225
    .line 226
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iget-object v2, v11, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 231
    .line 232
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Ljava/lang/Number;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v15

    .line 242
    move-object v6, v1

    .line 243
    check-cast v6, Ljava/lang/String;

    .line 244
    .line 245
    move-object/from16 v1, p0

    .line 246
    .line 247
    move-object v2, v10

    .line 248
    move-object v3, v9

    .line 249
    move/from16 v4, p3

    .line 250
    .line 251
    move-object v5, v6

    .line 252
    move-object v0, v6

    .line 253
    move-object/from16 v6, p2

    .line 254
    .line 255
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    invoke-static {v15}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    new-instance v3, Landroid/permission/PermissionManager$PermissionState;

    .line 264
    .line 265
    invoke-direct {v3, v1, v2}, Landroid/permission/PermissionManager$PermissionState;-><init>(ZI)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v12, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    add-int/lit8 v14, v14, 0x1

    .line 272
    .line 273
    move-object/from16 v0, p0

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_5
    return-object v12

    .line 277
    :cond_6
    const-string/jumbo v0, "state"

    .line 278
    .line 279
    .line 280
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v3

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    move-object v1, v0

    .line 286
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    :catchall_1
    move-exception v0

    .line 288
    move-object v3, v0

    .line 289
    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    throw v3

    .line 293
    :cond_7
    const-string/jumbo v0, "packageManagerLocal"

    .line 294
    .line 295
    .line 296
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v3

    .line 300
    :cond_8
    const-string/jumbo v0, "userManagerInternal"

    .line 301
    .line 302
    .line 303
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v3
.end method

.method public final getAllPermissionsWithProtection()Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    move v4, v3

    .line 36
    :goto_0
    if-ge v4, v2, :cond_2

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    .line 51
    .line 52
    check-cast v5, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v5, v6, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const/4 v7, 0x1

    .line 61
    if-ne v5, v7, :cond_0

    .line 62
    .line 63
    const/16 v5, 0x2710

    .line 64
    .line 65
    invoke-static {v6, v3, v5}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    move-object v5, v1

    .line 71
    :goto_1
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    return-object v0

    .line 80
    :cond_3
    const-string/jumbo p0, "state"

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1
.end method

.method public final getAllPermissionsWithProtectionFlags()Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    move v4, v3

    .line 36
    :goto_0
    if-ge v4, v2, :cond_2

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    .line 51
    .line 52
    check-cast v5, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v5, v6, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const/16 v7, 0x40

    .line 61
    .line 62
    invoke-static {v5, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    const/16 v5, 0x2710

    .line 69
    .line 70
    invoke-static {v6, v3, v5}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    move-object v5, v1

    .line 76
    :goto_1
    if-eqz v5, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-object v0

    .line 85
    :cond_3
    const-string/jumbo p0, "state"

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1
.end method

.method public final getAllowlistedRestrictedPermissions(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    if-eqz p3, :cond_b

    const/4 v0, 0x7

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 3
    const-string/jumbo v0, "userId cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    const-string p0, "AllowlistedRestrictedPermission api: Unknown user "

    const-string p1, "PermissionService"

    .line 6
    invoke-static {p2, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 7
    const-string v2, "getAllowlistedRestrictedPermissions"

    invoke-virtual {p0, v2, v0, v0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;ZZI)V

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v3, :cond_9

    .line 10
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    .line 11
    :try_start_0
    invoke-interface {v3, p3}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez p3, :cond_1

    return-object v1

    .line 13
    :cond_1
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 14
    :cond_2
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 15
    const-string v5, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 16
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    move v0, v5

    .line 17
    :cond_3
    invoke-static {p1, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    const-string p1, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v4, :cond_8

    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 22
    iget-object v1, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 23
    invoke-interface {v1, v3, v2}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v1

    const/4 v2, 0x6

    .line 24
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    goto :goto_1

    .line 25
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 26
    const-string p1, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_7
    :goto_1
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    .line 29
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 30
    :cond_8
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_a
    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p0, v1

    .line 41
    :goto_0
    if-nez p0, :cond_1

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    const/4 p1, 0x1

    .line 45
    invoke-static {p2, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 p3, 0x0

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    const/high16 p1, 0x10000

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move p1, p3

    .line 56
    :goto_1
    const/4 v0, 0x4

    .line 57
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const/high16 v0, 0x20000

    .line 64
    .line 65
    or-int/2addr p1, v0

    .line 66
    :cond_3
    const/4 v0, 0x2

    .line 67
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    const p2, 0x8000

    .line 74
    .line 75
    .line 76
    or-int/2addr p1, p2

    .line 77
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    :goto_2
    if-ge p3, v0, :cond_7

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/Number;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    check-cast v2, Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v3, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    move-object v2, v1

    .line 118
    :goto_3
    if-eqz v2, :cond_6

    .line 119
    .line 120
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_6
    add-int/lit8 p3, p3, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    return-object p2

    .line 127
    :cond_8
    const-string/jumbo p0, "state"

    .line 128
    .line 129
    .line 130
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1
.end method

.method public final getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    new-instance v0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_7

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/16 v4, 0x40

    .line 48
    .line 49
    invoke-static {v1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 61
    .line 62
    if-eqz p0, :cond_6

    .line 63
    .line 64
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/util/Map$Entry;

    .line 91
    .line 92
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 97
    .line 98
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-nez v4, :cond_4

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_2

    .line 121
    .line 122
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    new-array p0, v3, [Ljava/lang/String;

    .line 136
    .line 137
    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, [Ljava/lang/String;

    .line 142
    .line 143
    return-object p0

    .line 144
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :catchall_1
    move-exception v0

    .line 146
    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_6
    const-string/jumbo p0, "packageManagerLocal"

    .line 151
    .line 152
    .line 153
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v2

    .line 157
    :cond_7
    const-string/jumbo p0, "state"

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v2

    .line 164
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    const-string/jumbo p1, "permissionName cannot be null"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0
.end method

.method public final getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const-string/jumbo p0, "state"

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0
.end method

.method public final getGidsForUid(I)[I
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_d

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_c

    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v2, v0

    .line 52
    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 53
    .line 54
    :cond_0
    if-nez v2, :cond_1

    .line 55
    .line 56
    array-length p0, v1

    .line 57
    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "copyOf(...)"

    .line 62
    .line 63
    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_1
    invoke-static {v1}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v4, 0x0

    .line 78
    move v5, v4

    .line 79
    :goto_0
    if-ge v5, v1, :cond_b

    .line 80
    .line 81
    iget-object v6, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    iget-object v7, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    check-cast v6, Ljava/lang/String;

    .line 100
    .line 101
    const/4 v8, 0x1

    .line 102
    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_2

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    const/4 v9, 0x2

    .line 110
    invoke-static {v7, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_3

    .line 115
    .line 116
    :goto_1
    move v8, v4

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    const/4 v9, 0x4

    .line 119
    invoke-static {v7, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_4

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    const/16 v9, 0x400

    .line 127
    .line 128
    invoke-static {v7, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-nez v9, :cond_7

    .line 133
    .line 134
    const/16 v9, 0x800

    .line 135
    .line 136
    invoke-static {v7, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-eqz v9, :cond_5

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    const/high16 v8, 0x40000

    .line 144
    .line 145
    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_6

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    const/16 v8, 0x10

    .line 153
    .line 154
    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    :cond_7
    :goto_2
    if-nez v8, :cond_8

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_8
    iget-object v7, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 162
    .line 163
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    iget-object v7, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 175
    .line 176
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    .line 181
    .line 182
    if-nez v6, :cond_9

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_9
    invoke-virtual {v6, p1}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    array-length v7, v6

    .line 190
    if-nez v7, :cond_a

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_a
    invoke-virtual {v0, v6}, Landroid/util/IntArray;->addAll([I)V

    .line 194
    .line 195
    .line 196
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_b
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    return-object p0

    .line 204
    :cond_c
    const-string/jumbo p0, "state"

    .line 205
    .line 206
    .line 207
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v2

    .line 211
    :cond_d
    const-string/jumbo p0, "systemConfig"

    .line 212
    .line 213
    .line 214
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v2
.end method

.method public final getGrantedPermissions(ILjava/lang/String;)Ljava/util/Set;
    .locals 13

    .line 1
    if-eqz p2, :cond_8

    .line 2
    .line 3
    const-string/jumbo v0, "userId"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/pm/pkg/PackageState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const-string p0, "getGrantedPermissions: Unknown package "

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "PermissionService"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    .line 50
    .line 51
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_6

    .line 56
    .line 57
    invoke-direct {v0, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 61
    .line 62
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lcom/android/server/permission/access/MutableUserState;

    .line 78
    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    invoke-virtual {p2, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    move-object p2, v1

    .line 95
    :goto_0
    if-nez p2, :cond_2

    .line 96
    .line 97
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptySet;

    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_2
    new-instance v9, Landroid/util/ArraySet;

    .line 101
    .line 102
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 103
    .line 104
    .line 105
    iget-object v3, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    const/4 v3, 0x0

    .line 112
    move v11, v3

    .line 113
    :goto_1
    if-ge v11, v10, :cond_5

    .line 114
    .line 115
    iget-object v3, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-object v4, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Ljava/lang/Number;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 130
    .line 131
    .line 132
    move-object v12, v3

    .line 133
    check-cast v12, Ljava/lang/String;

    .line 134
    .line 135
    const-string v8, "default:0"

    .line 136
    .line 137
    move-object v3, p0

    .line 138
    move-object v4, v0

    .line 139
    move-object v5, v2

    .line 140
    move v6, p1

    .line 141
    move-object v7, v12

    .line 142
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_3

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    move-object v12, v1

    .line 150
    :goto_2
    if-eqz v12, :cond_4

    .line 151
    .line 152
    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    return-object v9

    .line 159
    :cond_6
    const-string/jumbo p0, "state"

    .line 160
    .line 161
    .line 162
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :catchall_0
    move-exception p0

    .line 167
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :catchall_1
    move-exception p1

    .line 169
    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_7
    const-string/jumbo p0, "packageManagerLocal"

    .line 174
    .line 175
    .line 176
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v1

    .line 180
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 181
    .line 182
    const-string/jumbo p1, "packageName cannot be null"

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0
.end method

.method public final getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .locals 6

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v0, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    if-ge v3, v2, :cond_2

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    .line 52
    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v4, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 56
    .line 57
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v4, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    iget-object v4, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 66
    .line 67
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    move-object v4, v1

    .line 71
    :goto_1
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    return-object v0

    .line 80
    :cond_3
    const-string/jumbo p0, "state"

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string/jumbo p1, "packageName cannot be null"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public final getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 9
    .line 10
    if-eqz v2, :cond_7

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v4, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 17
    .line 18
    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_6

    .line 23
    .line 24
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    array-length v6, v2

    .line 38
    const/4 v8, 0x0

    .line 39
    :goto_0
    if-ge v8, v6, :cond_5

    .line 40
    .line 41
    aget v9, v2, v8

    .line 42
    .line 43
    iget-object v10, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 44
    .line 45
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    check-cast v10, Lcom/android/server/permission/access/MutableUserState;

    .line 57
    .line 58
    if-eqz v10, :cond_0

    .line 59
    .line 60
    invoke-virtual {v10}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    if-eqz v10, :cond_0

    .line 65
    .line 66
    move/from16 v11, p1

    .line 67
    .line 68
    invoke-virtual {v10, v11}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    move/from16 v11, p1

    .line 76
    .line 77
    const/4 v10, 0x0

    .line 78
    :goto_1
    if-nez v10, :cond_1

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_1
    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    const/4 v13, 0x0

    .line 88
    :goto_2
    if-ge v13, v12, :cond_4

    .line 89
    .line 90
    iget-object v14, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    iget-object v15, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    check-cast v15, Ljava/lang/Number;

    .line 103
    .line 104
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    check-cast v14, Ljava/lang/String;

    .line 109
    .line 110
    iget-object v7, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    .line 117
    .line 118
    if-nez v7, :cond_2

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_2
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 122
    .line 123
    iget-object v7, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 124
    .line 125
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    const/4 v0, 0x1

    .line 130
    if-ne v7, v0, :cond_3

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    const/4 v0, 0x0

    .line 134
    :goto_3
    invoke-static {v15}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-static {v15}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    invoke-direct {v3, v14, v0, v7, v15}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3, v9}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 146
    .line 147
    .line 148
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 149
    .line 150
    move-object/from16 v0, p0

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 154
    .line 155
    move-object/from16 v0, p0

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    return-object v1

    .line 159
    :cond_6
    const-string/jumbo v0, "state"

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/4 v0, 0x0

    .line 166
    throw v0

    .line 167
    :cond_7
    const/4 v0, 0x0

    .line 168
    const-string/jumbo v1, "userManagerService"

    .line 169
    .line 170
    .line 171
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0
.end method

.method public final getLegacyPermissions()Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    .line 49
    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 53
    .line 54
    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 55
    .line 56
    iget v6, v4, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 57
    .line 58
    iget v7, v4, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 59
    .line 60
    iget-object v4, v4, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 61
    .line 62
    invoke-direct {v3, v5, v6, v7, v4}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-object v0

    .line 72
    :cond_1
    const-string/jumbo p0, "state"

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    throw p0
.end method

.method public final getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :cond_0
    return-object p0
.end method

.method public final getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v2, "PermissionService"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "getPermissionFlags: Unknown user "

    .line 16
    .line 17
    invoke-static {p4, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    const-string v4, "getPermissionFlags"

    .line 23
    .line 24
    invoke-virtual {p0, v4, v0, v3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;ZZI)V

    .line 25
    .line 26
    .line 27
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    .line 28
    .line 29
    const-string v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 30
    .line 31
    const-string v6, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 32
    .line 33
    filled-new-array {v5, v6, v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v4, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 49
    .line 50
    .line 51
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    const-string p0, "getPermissionFlags: Unknown package "

    .line 58
    .line 59
    invoke-static {p0, p1, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v3

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 64
    .line 65
    new-instance v8, Lcom/android/server/permission/access/GetStateScope;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-direct {v8, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    .line 96
    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    const-string p0, "getPermissionFlags: Unknown permission "

    .line 100
    .line 101
    invoke-static {p0, p2, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return v3

    .line 105
    :cond_2
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    move-object v5, p0

    .line 110
    move v7, p4

    .line 111
    move-object v9, p2

    .line 112
    move-object v10, p3

    .line 113
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0

    .line 122
    :cond_3
    const-string/jumbo p0, "state"

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v1

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :catchall_1
    move-exception p1

    .line 132
    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_4
    const-string/jumbo p0, "packageManagerLocal"

    .line 137
    .line 138
    .line 139
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v1

    .line 143
    :cond_5
    const-string/jumbo p0, "userManagerInternal"

    .line 144
    .line 145
    .line 146
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v1
.end method

.method public final getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p3, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const-string v0, "default:0"

    .line 10
    .line 11
    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p5, " is not device aware permission,  get the flags for default device."

    .line 35
    .line 36
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const-string p5, "PermissionService"

    .line 44
    .line 45
    invoke-static {p5, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v1, p1, p2, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2, p3, p5, p4}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v1, p1, p2, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    :goto_1
    return p0
.end method

.method public final getPermissionGids(ILjava/lang/String;)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    const-string/jumbo p0, "state"

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    throw p0
.end method

.method public final getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    .line 20
    .line 21
    .line 22
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 30
    .line 31
    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Landroid/content/pm/PermissionGroupInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_1
    :try_start_2
    iput-object p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object p0, p0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    if-nez p0, :cond_2

    .line 73
    .line 74
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_2
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Landroid/content/pm/PermissionGroupInfo;

    .line 84
    .line 85
    new-instance p1, Landroid/content/pm/PermissionGroupInfo;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 88
    .line 89
    .line 90
    const/16 p0, 0x80

    .line 91
    .line 92
    invoke-static {p2, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_3

    .line 97
    .line 98
    iput-object v2, p1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 99
    .line 100
    :cond_3
    return-object p1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    :try_start_3
    const-string/jumbo p0, "state"

    .line 104
    .line 105
    .line 106
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :goto_0
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :catchall_1
    move-exception p1

    .line 112
    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_5
    const-string/jumbo p0, "packageManagerLocal"

    .line 117
    .line 118
    .line 119
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v2
.end method

.method public final getPermissionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_7

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    .line 20
    .line 21
    .line 22
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 30
    .line 31
    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_6

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lcom/android/server/permission/access/permission/Permission;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_1
    :try_start_2
    iput-object p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 67
    .line 68
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    if-nez p0, :cond_2

    .line 75
    .line 76
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-object v2

    .line 80
    :cond_2
    :try_start_3
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Lcom/android/server/pm/pkg/PackageState;

    .line 89
    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move-object p0, v2

    .line 100
    :goto_0
    invoke-static {v3}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    const/16 p3, 0x2710

    .line 105
    .line 106
    if-nez p2, :cond_5

    .line 107
    .line 108
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    const/16 v3, 0x7d0

    .line 113
    .line 114
    if-ne p2, v3, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    if-eqz p0, :cond_5

    .line 118
    .line 119
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 120
    .line 121
    .line 122
    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :cond_5
    :goto_1
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    .line 129
    .line 130
    invoke-static {p0, p1, p3}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :cond_6
    :try_start_4
    const-string/jumbo p0, "state"

    .line 136
    .line 137
    .line 138
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    :goto_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_7
    const-string/jumbo p0, "packageManagerLocal"

    .line 149
    .line 150
    .line 151
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v2
.end method

.method public final getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    new-instance p1, Lcom/android/server/pm/permission/Permission;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 39
    .line 40
    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 44
    .line 45
    iput-boolean v0, p1, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 46
    .line 47
    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 48
    .line 49
    iput v0, p1, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 52
    .line 53
    iput-object v0, p1, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 54
    .line 55
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    .line 56
    .line 57
    iput-boolean p0, p1, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_1
    const-string/jumbo p0, "state"

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public final getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 22
    .line 23
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/permission/access/permission/PermissionService;->getRequestedRuntimePermissionsInternal(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    const-string/jumbo p0, "state"

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_2
    const-string/jumbo p0, "packageManagerInternal"

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1
.end method

.method public final getRequestedRuntimePermissionsInternal(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object p0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x1

    .line 71
    if-ne v0, v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-object p2
.end method

.method public final getSourcePackageSetting(Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string/jumbo p0, "packageManagerInternal"

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method

.method public final getSplitPermissions()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {p0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string/jumbo p0, "systemConfig"

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0
.end method

.method public final grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v5, 0x1

    .line 4
    const/16 v8, 0x60

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move v2, p4

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    invoke-static/range {v0 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move v2, v7

    .line 16
    move v3, p3

    .line 17
    move v4, p2

    .line 18
    move-object v5, p4

    .line 19
    move-object v6, p5

    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v8, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return v8

    .line 28
    :cond_0
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    move-object v5, p4

    .line 35
    check-cast v5, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    move-object v0, p0

    .line 40
    move-object v1, p1

    .line 41
    move v2, v7

    .line 42
    move v3, p3

    .line 43
    move v4, p2

    .line 44
    move-object v6, p5

    .line 45
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    return v8

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return p0
.end method

.method public final isPermissionRevokedByPolicy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p0, "isPermissionRevokedByPolicy: Unknown user "

    .line 14
    .line 15
    const-string p2, "PermissionService"

    .line 16
    .line 17
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    const-string v3, "isPermissionRevokedByPolicy"

    .line 23
    .line 24
    invoke-virtual {p0, v3, v0, v2, p1}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;ZZI)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v0, v3, v4}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 44
    .line 45
    .line 46
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 54
    .line 55
    new-instance v9, Lcom/android/server/permission/access/GetStateScope;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-direct {v9, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 64
    .line 65
    .line 66
    move-object v3, p0

    .line 67
    move-object v4, v9

    .line 68
    move-object v5, p2

    .line 69
    move v6, p1

    .line 70
    move-object v7, p3

    .line 71
    move-object v8, p4

    .line 72
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    return v2

    .line 79
    :cond_2
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    move-object v3, p0

    .line 84
    move v5, p1

    .line 85
    move-object v6, v9

    .line 86
    move-object v7, p3

    .line 87
    move-object v8, p4

    .line 88
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    const/16 p1, 0x80

    .line 93
    .line 94
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    return p0

    .line 99
    :cond_3
    const-string/jumbo p0, "state"

    .line 100
    .line 101
    .line 102
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :catchall_1
    move-exception p1

    .line 109
    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_4
    const-string/jumbo p0, "packageManagerLocal"

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :cond_5
    const-string/jumbo p0, "userManagerInternal"

    .line 121
    .line 122
    .line 123
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v1
.end method

.method public final isPermissionsReviewRequired(ILjava/lang/String;)Z
    .locals 3

    .line 1
    if-eqz p2, :cond_7

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/android/server/pm/pkg/PackageState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 38
    .line 39
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    move-object v1, p0

    .line 69
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 70
    .line 71
    :cond_1
    if-nez v1, :cond_2

    .line 72
    .line 73
    return v0

    .line 74
    :cond_2
    iget-object p0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    move p1, v0

    .line 81
    :goto_0
    if-ge p1, p0, :cond_4

    .line 82
    .line 83
    iget-object p2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/Number;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    check-cast p2, Ljava/lang/String;

    .line 102
    .line 103
    const/16 p2, 0x1400

    .line 104
    .line 105
    invoke-static {v2, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    :goto_1
    return v0

    .line 117
    :cond_5
    const-string/jumbo p0, "state"

    .line 118
    .line 119
    .line 120
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    :catchall_1
    move-exception p1

    .line 127
    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_6
    const-string/jumbo p0, "packageManagerLocal"

    .line 132
    .line 133
    .line 134
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v1

    .line 138
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string/jumbo p1, "packageName cannot be null"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0
.end method

.method public final isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move v1, p2

    .line 3
    move v2, p3

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p6

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 p3, 0x1

    .line 12
    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 13
    .line 14
    .line 15
    move-result p6

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p6, :cond_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    move p2, p3

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    const/4 p6, 0x2

    .line 22
    invoke-static {p2, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 23
    .line 24
    .line 25
    move-result p6

    .line 26
    if-eqz p6, :cond_2

    .line 27
    .line 28
    :goto_1
    move p2, v0

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    const/4 p6, 0x4

    .line 31
    invoke-static {p2, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 32
    .line 33
    .line 34
    move-result p6

    .line 35
    if-eqz p6, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const/16 p6, 0x400

    .line 39
    .line 40
    invoke-static {p2, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 41
    .line 42
    .line 43
    move-result p6

    .line 44
    if-nez p6, :cond_0

    .line 45
    .line 46
    const/16 p6, 0x800

    .line 47
    .line 48
    invoke-static {p2, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 49
    .line 50
    .line 51
    move-result p6

    .line 52
    if-eqz p6, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const/high16 p6, 0x40000

    .line 56
    .line 57
    invoke-static {p2, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 58
    .line 59
    .line 60
    move-result p6

    .line 61
    if-eqz p6, :cond_5

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    const/16 p6, 0x10

    .line 65
    .line 66
    invoke-static {p2, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    :goto_2
    if-nez p2, :cond_6

    .line 71
    .line 72
    return v0

    .line 73
    :cond_6
    if-eqz p4, :cond_8

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object p0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {p0, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    .line 97
    .line 98
    if-nez p0, :cond_7

    .line 99
    .line 100
    return v0

    .line 101
    :cond_7
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    const/16 p1, 0x1000

    .line 108
    .line 109
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-nez p0, :cond_8

    .line 114
    .line 115
    return v0

    .line 116
    :cond_8
    return p3
.end method

.method public final isUidInstantApp(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0

    .line 15
    :cond_1
    const-string/jumbo p0, "packageManagerInternal"

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public final onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p2

    .line 11
    :try_start_0
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :goto_0
    check-cast v1, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-nez p3, :cond_2

    .line 52
    .line 53
    monitor-exit p2

    .line 54
    return-void

    .line 55
    :cond_2
    monitor-exit p2

    .line 56
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit p2

    .line 68
    throw p0
.end method

.method public final onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p2

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    .line 15
    .line 16
    if-ne v14, v2, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    iget-object v3, v0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    monitor-exit v2

    .line 35
    return-void

    .line 36
    :cond_2
    monitor-exit v2

    .line 37
    const/4 v2, -0x1

    .line 38
    const/4 v15, 0x0

    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    const/4 v13, 0x1

    .line 42
    if-ne v1, v2, :cond_4

    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v12, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const-string/jumbo v0, "userManagerService"

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v16

    .line 61
    :cond_4
    new-array v2, v13, [I

    .line 62
    .line 63
    aput v1, v2, v15

    .line 64
    .line 65
    move-object v12, v2

    .line 66
    :goto_0
    array-length v1, v12

    .line 67
    move v2, v15

    .line 68
    :goto_1
    if-ge v2, v1, :cond_5

    .line 69
    .line 70
    aget v3, v12, v2

    .line 71
    .line 72
    iget-object v4, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 73
    .line 74
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4, v5, v3}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageInstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    array-length v11, v12

    .line 85
    move v10, v15

    .line 86
    :goto_2
    if-ge v10, v11, :cond_1f

    .line 87
    .line 88
    aget v9, v12, v10

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 91
    .line 92
    if-eqz v1, :cond_1e

    .line 93
    .line 94
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 99
    .line 100
    .line 101
    move-result-object v17

    .line 102
    invoke-static/range {v17 .. v17}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    move-object/from16 v8, v17

    .line 106
    .line 107
    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 108
    .line 109
    iget v3, v8, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 110
    .line 111
    iget-object v1, v14, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 112
    .line 113
    const/4 v7, 0x2

    .line 114
    invoke-virtual {v0, v3, v7, v9}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    new-instance v4, Landroid/util/ArraySet;

    .line 121
    .line 122
    invoke-direct {v4, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    move-object v4, v2

    .line 135
    goto :goto_3

    .line 136
    :cond_6
    move-object v4, v1

    .line 137
    :goto_3
    const/4 v5, 0x2

    .line 138
    move-object/from16 v1, p0

    .line 139
    .line 140
    move-object/from16 v2, p1

    .line 141
    .line 142
    move v6, v9

    .line 143
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    .line 144
    .line 145
    .line 146
    iget-object v6, v14, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    .line 147
    .line 148
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 149
    .line 150
    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v18

    .line 154
    monitor-enter v18

    .line 155
    :try_start_1
    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_1d

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    .line 166
    .line 167
    invoke-direct {v3, v1, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    move v1, v15

    .line 175
    :goto_4
    if-ge v1, v2, :cond_10

    .line 176
    .line 177
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v19

    .line 181
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v20

    .line 185
    check-cast v20, Ljava/lang/Number;

    .line 186
    .line 187
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    move/from16 v20, v10

    .line 192
    .line 193
    move-object/from16 v10, v19

    .line 194
    .line 195
    check-cast v10, Ljava/lang/String;

    .line 196
    .line 197
    if-eq v15, v13, :cond_7

    .line 198
    .line 199
    if-eq v15, v7, :cond_7

    .line 200
    .line 201
    const-string v7, "PermissionService"

    .line 202
    .line 203
    new-instance v13, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    move/from16 v21, v1

    .line 209
    .line 210
    const-string/jumbo v1, "setRequestedPermissionStates: Unknown permission state "

    .line 211
    .line 212
    .line 213
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v1, " for permission "

    .line 220
    .line 221
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :goto_5
    move/from16 v22, v2

    .line 235
    .line 236
    move-object/from16 v23, v3

    .line 237
    .line 238
    move-object v0, v4

    .line 239
    move-object/from16 p3, v5

    .line 240
    .line 241
    move-object/from16 v24, v6

    .line 242
    .line 243
    :goto_6
    move-object v15, v8

    .line 244
    move/from16 v26, v9

    .line 245
    .line 246
    move/from16 v28, v11

    .line 247
    .line 248
    move-object/from16 v30, v12

    .line 249
    .line 250
    goto/16 :goto_a

    .line 251
    .line 252
    :catchall_0
    move-exception v0

    .line 253
    goto/16 :goto_14

    .line 254
    .line 255
    :cond_7
    move/from16 v21, v1

    .line 256
    .line 257
    move-object/from16 v1, v17

    .line 258
    .line 259
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 260
    .line 261
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 262
    .line 263
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_8

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_8
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-object v1, v3, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 293
    .line 294
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    .line 299
    .line 300
    if-nez v1, :cond_9

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_9
    iget-object v7, v1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 304
    .line 305
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    const/16 v13, 0x20

    .line 310
    .line 311
    invoke-static {v7, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-nez v7, :cond_e

    .line 316
    .line 317
    iget-object v7, v1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 318
    .line 319
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    const/4 v13, 0x1

    .line 324
    if-ne v7, v13, :cond_a

    .line 325
    .line 326
    move/from16 v22, v2

    .line 327
    .line 328
    move-object/from16 v23, v3

    .line 329
    .line 330
    move-object v7, v5

    .line 331
    move-object/from16 v24, v6

    .line 332
    .line 333
    move v6, v13

    .line 334
    move-object v13, v4

    .line 335
    goto/16 :goto_9

    .line 336
    .line 337
    :cond_a
    iget-object v1, v1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 338
    .line 339
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    const/16 v7, 0x40

    .line 344
    .line 345
    invoke-static {v1, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_d

    .line 350
    .line 351
    sget-object v1, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 352
    .line 353
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_d

    .line 358
    .line 359
    const/4 v1, 0x1

    .line 360
    if-ne v15, v1, :cond_b

    .line 361
    .line 362
    const/4 v13, 0x1

    .line 363
    goto :goto_7

    .line 364
    :cond_b
    const/4 v13, 0x0

    .line 365
    :goto_7
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 366
    .line 367
    const-string/jumbo v7, "uid"

    .line 368
    .line 369
    .line 370
    const-string v15, "app-op"

    .line 371
    .line 372
    invoke-virtual {v1, v7, v15}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    const-string/jumbo v7, "null cannot be cast to non-null type com.android.server.permission.access.appop.AppIdAppOpPolicy"

    .line 377
    .line 378
    .line 379
    invoke-static {v7, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    check-cast v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 383
    .line 384
    invoke-static {v10}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    if-eqz v13, :cond_c

    .line 392
    .line 393
    const/4 v10, 0x0

    .line 394
    goto :goto_8

    .line 395
    :cond_c
    const/4 v10, 0x2

    .line 396
    :goto_8
    move-object/from16 v13, v17

    .line 397
    .line 398
    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 399
    .line 400
    iget v13, v13, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 401
    .line 402
    move/from16 v22, v2

    .line 403
    .line 404
    move-object v2, v3

    .line 405
    move-object/from16 v23, v3

    .line 406
    .line 407
    move v3, v13

    .line 408
    move-object v13, v4

    .line 409
    move v4, v9

    .line 410
    move-object v15, v5

    .line 411
    move-object v5, v7

    .line 412
    move-object/from16 v24, v6

    .line 413
    .line 414
    move v6, v10

    .line 415
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 416
    .line 417
    .line 418
    move/from16 v26, v9

    .line 419
    .line 420
    move/from16 v28, v11

    .line 421
    .line 422
    move-object/from16 v30, v12

    .line 423
    .line 424
    move-object v0, v13

    .line 425
    move-object/from16 p3, v15

    .line 426
    .line 427
    move-object v15, v8

    .line 428
    goto/16 :goto_a

    .line 429
    .line 430
    :cond_d
    move/from16 v22, v2

    .line 431
    .line 432
    move-object/from16 v23, v3

    .line 433
    .line 434
    move-object/from16 v24, v6

    .line 435
    .line 436
    move-object v0, v4

    .line 437
    move-object/from16 p3, v5

    .line 438
    .line 439
    goto/16 :goto_6

    .line 440
    .line 441
    :cond_e
    move/from16 v22, v2

    .line 442
    .line 443
    move-object/from16 v23, v3

    .line 444
    .line 445
    move-object v13, v4

    .line 446
    move-object v7, v5

    .line 447
    move-object/from16 v24, v6

    .line 448
    .line 449
    const/4 v6, 0x1

    .line 450
    :goto_9
    if-ne v15, v6, :cond_f

    .line 451
    .line 452
    const-string v15, "default:0"

    .line 453
    .line 454
    const-string/jumbo v19, "setRequestedPermissionStates"

    .line 455
    .line 456
    .line 457
    const/16 v25, 0x1

    .line 458
    .line 459
    const/16 v26, 0x0

    .line 460
    .line 461
    const/16 v27, 0x0

    .line 462
    .line 463
    const/16 v28, 0x0

    .line 464
    .line 465
    move-object/from16 v1, p0

    .line 466
    .line 467
    move-object/from16 v2, v23

    .line 468
    .line 469
    move-object/from16 v3, v17

    .line 470
    .line 471
    move v4, v9

    .line 472
    move-object v5, v10

    .line 473
    move/from16 v29, v6

    .line 474
    .line 475
    move-object v6, v15

    .line 476
    move-object/from16 p3, v7

    .line 477
    .line 478
    const/4 v15, 0x2

    .line 479
    move/from16 v7, v25

    .line 480
    .line 481
    move-object v15, v8

    .line 482
    move/from16 v8, v26

    .line 483
    .line 484
    move/from16 v26, v9

    .line 485
    .line 486
    move/from16 v9, v27

    .line 487
    .line 488
    move-object/from16 v27, v10

    .line 489
    .line 490
    move/from16 v10, v28

    .line 491
    .line 492
    move/from16 v28, v11

    .line 493
    .line 494
    move-object/from16 v11, v19

    .line 495
    .line 496
    invoke-static/range {v1 .. v11}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 497
    .line 498
    .line 499
    move-object/from16 v1, v17

    .line 500
    .line 501
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 502
    .line 503
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 504
    .line 505
    const-string v6, "default:0"

    .line 506
    .line 507
    const-string/jumbo v19, "setRequestedPermissionStates"

    .line 508
    .line 509
    .line 510
    move-object/from16 v1, v17

    .line 511
    .line 512
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 513
    .line 514
    iget-object v11, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 515
    .line 516
    const/4 v8, 0x0

    .line 517
    const/4 v9, 0x0

    .line 518
    const/4 v10, 0x0

    .line 519
    const/16 v30, 0x1

    .line 520
    .line 521
    const/16 v7, 0x48

    .line 522
    .line 523
    move-object/from16 v1, p0

    .line 524
    .line 525
    move-object/from16 v2, v23

    .line 526
    .line 527
    move/from16 v4, v26

    .line 528
    .line 529
    move-object/from16 v5, v27

    .line 530
    .line 531
    move-object/from16 v27, v11

    .line 532
    .line 533
    move/from16 v11, v30

    .line 534
    .line 535
    move-object/from16 v30, v12

    .line 536
    .line 537
    move-object/from16 v12, v19

    .line 538
    .line 539
    move-object v0, v13

    .line 540
    move-object/from16 v13, v27

    .line 541
    .line 542
    invoke-static/range {v1 .. v13}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    goto :goto_a

    .line 546
    :cond_f
    move-object/from16 p3, v7

    .line 547
    .line 548
    move-object v15, v8

    .line 549
    move/from16 v26, v9

    .line 550
    .line 551
    move/from16 v28, v11

    .line 552
    .line 553
    move-object/from16 v30, v12

    .line 554
    .line 555
    move-object v0, v13

    .line 556
    :goto_a
    add-int/lit8 v1, v21, 0x1

    .line 557
    .line 558
    move-object/from16 v5, p3

    .line 559
    .line 560
    move-object v4, v0

    .line 561
    move-object v8, v15

    .line 562
    move/from16 v10, v20

    .line 563
    .line 564
    move/from16 v2, v22

    .line 565
    .line 566
    move-object/from16 v3, v23

    .line 567
    .line 568
    move-object/from16 v6, v24

    .line 569
    .line 570
    move/from16 v9, v26

    .line 571
    .line 572
    move/from16 v11, v28

    .line 573
    .line 574
    move-object/from16 v12, v30

    .line 575
    .line 576
    const/4 v7, 0x2

    .line 577
    const/4 v13, 0x1

    .line 578
    const/4 v15, 0x0

    .line 579
    move-object/from16 v0, p0

    .line 580
    .line 581
    goto/16 :goto_4

    .line 582
    .line 583
    :cond_10
    move-object v0, v4

    .line 584
    move-object/from16 p3, v5

    .line 585
    .line 586
    move-object v15, v8

    .line 587
    move/from16 v26, v9

    .line 588
    .line 589
    move/from16 v20, v10

    .line 590
    .line 591
    move/from16 v28, v11

    .line 592
    .line 593
    move-object/from16 v30, v12

    .line 594
    .line 595
    invoke-static/range {p3 .. p3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 600
    .line 601
    .line 602
    move-object/from16 v1, p3

    .line 603
    .line 604
    invoke-static {v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 605
    .line 606
    .line 607
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 612
    .line 613
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 614
    .line 615
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    const/4 v2, 0x0

    .line 620
    :goto_b
    if-ge v2, v1, :cond_12

    .line 621
    .line 622
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 623
    .line 624
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 629
    .line 630
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v4

    .line 634
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 635
    .line 636
    check-cast v3, Ljava/lang/String;

    .line 637
    .line 638
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 639
    .line 640
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    const/4 v5, 0x0

    .line 645
    :goto_c
    if-ge v5, v3, :cond_11

    .line 646
    .line 647
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 648
    .line 649
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v6

    .line 653
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 654
    .line 655
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v7

    .line 659
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 660
    .line 661
    check-cast v6, Ljava/lang/String;

    .line 662
    .line 663
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    .line 665
    .line 666
    add-int/lit8 v5, v5, 0x1

    .line 667
    .line 668
    goto :goto_c

    .line 669
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 670
    .line 671
    goto :goto_b

    .line 672
    :cond_12
    monitor-exit v18

    .line 673
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK:Z

    .line 674
    .line 675
    if-eqz v0, :cond_1c

    .line 676
    .line 677
    iget v0, v15, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 678
    .line 679
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    const/16 v2, 0x17

    .line 684
    .line 685
    if-ge v1, v2, :cond_1c

    .line 686
    .line 687
    sget-object v1, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK_EXCEPTION:Landroid/util/ArraySet;

    .line 688
    .line 689
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-nez v1, :cond_1c

    .line 698
    .line 699
    iget-object v1, v14, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 700
    .line 701
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-nez v1, :cond_1c

    .line 706
    .line 707
    iget-object v1, v14, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    .line 708
    .line 709
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    if-lez v1, :cond_13

    .line 714
    .line 715
    goto/16 :goto_12

    .line 716
    .line 717
    :cond_13
    move-object/from16 v8, p0

    .line 718
    .line 719
    iget-object v9, v8, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 720
    .line 721
    invoke-static {v9}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v10

    .line 725
    monitor-enter v10

    .line 726
    :try_start_2
    invoke-static {v9}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    if-eqz v1, :cond_1b

    .line 731
    .line 732
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 733
    .line 734
    .line 735
    move-result-object v11

    .line 736
    new-instance v12, Lcom/android/server/permission/access/MutateStateScope;

    .line 737
    .line 738
    invoke-direct {v12, v1, v11}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 739
    .line 740
    .line 741
    iget-object v13, v8, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 742
    .line 743
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 748
    .line 749
    .line 750
    move-result-object v15

    .line 751
    const/4 v1, 0x0

    .line 752
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 753
    .line 754
    .line 755
    move-result v2

    .line 756
    if-eqz v2, :cond_18

    .line 757
    .line 758
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    add-int/lit8 v17, v1, 0x1

    .line 763
    .line 764
    if-ltz v1, :cond_17

    .line 765
    .line 766
    move-object v5, v2

    .line 767
    check-cast v5, Ljava/lang/String;

    .line 768
    .line 769
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 770
    .line 771
    .line 772
    iget-object v1, v12, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 773
    .line 774
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 783
    .line 784
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    .line 789
    .line 790
    if-nez v1, :cond_14

    .line 791
    .line 792
    move/from16 v21, v26

    .line 793
    .line 794
    const/16 v22, 0x1

    .line 795
    .line 796
    goto :goto_e

    .line 797
    :cond_14
    iget-object v1, v1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 798
    .line 799
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    const/4 v7, 0x1

    .line 804
    if-ne v1, v7, :cond_16

    .line 805
    .line 806
    iget-object v1, v12, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 807
    .line 808
    move/from16 v6, v26

    .line 809
    .line 810
    invoke-static {v1, v0, v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 811
    .line 812
    .line 813
    move-result v1

    .line 814
    const/16 v2, 0x1000

    .line 815
    .line 816
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    if-eqz v1, :cond_15

    .line 821
    .line 822
    const/high16 v18, 0x100000

    .line 823
    .line 824
    const/high16 v19, 0x100000

    .line 825
    .line 826
    move-object v1, v13

    .line 827
    move-object v2, v12

    .line 828
    move v3, v0

    .line 829
    move v4, v6

    .line 830
    move/from16 v21, v6

    .line 831
    .line 832
    move/from16 v6, v18

    .line 833
    .line 834
    move/from16 v22, v7

    .line 835
    .line 836
    move/from16 v7, v19

    .line 837
    .line 838
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 839
    .line 840
    .line 841
    goto :goto_e

    .line 842
    :catchall_1
    move-exception v0

    .line 843
    goto/16 :goto_11

    .line 844
    .line 845
    :cond_15
    move/from16 v21, v6

    .line 846
    .line 847
    move/from16 v22, v7

    .line 848
    .line 849
    goto :goto_e

    .line 850
    :cond_16
    move/from16 v22, v7

    .line 851
    .line 852
    move/from16 v21, v26

    .line 853
    .line 854
    :goto_e
    move/from16 v1, v17

    .line 855
    .line 856
    move/from16 v26, v21

    .line 857
    .line 858
    goto :goto_d

    .line 859
    :cond_17
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 860
    .line 861
    const-string v1, "Index overflow has happened."

    .line 862
    .line 863
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    throw v0

    .line 867
    :cond_18
    const/16 v22, 0x1

    .line 868
    .line 869
    invoke-static {v9}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v0, v11}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 874
    .line 875
    .line 876
    invoke-static {v9, v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 877
    .line 878
    .line 879
    invoke-static {v9}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 884
    .line 885
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 886
    .line 887
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 888
    .line 889
    .line 890
    move-result v1

    .line 891
    const/4 v2, 0x0

    .line 892
    :goto_f
    if-ge v2, v1, :cond_1a

    .line 893
    .line 894
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 895
    .line 896
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v3

    .line 900
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 901
    .line 902
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 907
    .line 908
    check-cast v3, Ljava/lang/String;

    .line 909
    .line 910
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 911
    .line 912
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 913
    .line 914
    .line 915
    move-result v3

    .line 916
    const/4 v5, 0x0

    .line 917
    :goto_10
    if-ge v5, v3, :cond_19

    .line 918
    .line 919
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 920
    .line 921
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v6

    .line 925
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 926
    .line 927
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v7

    .line 931
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 932
    .line 933
    check-cast v6, Ljava/lang/String;

    .line 934
    .line 935
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 936
    .line 937
    .line 938
    add-int/lit8 v5, v5, 0x1

    .line 939
    .line 940
    goto :goto_10

    .line 941
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 942
    .line 943
    goto :goto_f

    .line 944
    :cond_1a
    monitor-exit v10

    .line 945
    goto :goto_13

    .line 946
    :cond_1b
    :try_start_3
    const-string/jumbo v0, "state"

    .line 947
    .line 948
    .line 949
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 953
    :goto_11
    monitor-exit v10

    .line 954
    throw v0

    .line 955
    :cond_1c
    :goto_12
    move-object/from16 v8, p0

    .line 956
    .line 957
    const/16 v22, 0x1

    .line 958
    .line 959
    :goto_13
    add-int/lit8 v10, v20, 0x1

    .line 960
    .line 961
    move-object v0, v8

    .line 962
    move/from16 v13, v22

    .line 963
    .line 964
    move/from16 v11, v28

    .line 965
    .line 966
    move-object/from16 v12, v30

    .line 967
    .line 968
    const/4 v15, 0x0

    .line 969
    goto/16 :goto_2

    .line 970
    .line 971
    :cond_1d
    :try_start_4
    const-string/jumbo v0, "state"

    .line 972
    .line 973
    .line 974
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    throw v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 978
    :goto_14
    monitor-exit v18

    .line 979
    throw v0

    .line 980
    :cond_1e
    const-string/jumbo v0, "packageManagerInternal"

    .line 981
    .line 982
    .line 983
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    throw v16

    .line 987
    :cond_1f
    return-void

    .line 988
    :catchall_2
    move-exception v0

    .line 989
    monitor-exit v2

    .line 990
    throw v0
.end method

.method public final onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    const/4 p4, -0x1

    .line 10
    const/4 p5, 0x0

    .line 11
    if-ne p6, p4, :cond_2

    .line 12
    .line 13
    iget-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 14
    .line 15
    if-eqz p4, :cond_1

    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo p0, "userManagerService"

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p3

    .line 29
    :cond_2
    const/4 p4, 0x1

    .line 30
    new-array p4, p4, [I

    .line 31
    .line 32
    aput p6, p4, p5

    .line 33
    .line 34
    :goto_0
    array-length p6, p4

    .line 35
    :goto_1
    if-ge p5, p6, :cond_3

    .line 36
    .line 37
    aget v0, p4, p5

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 40
    .line 41
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageUninstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 p5, p5, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iget-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 48
    .line 49
    if-eqz p4, :cond_5

    .line 50
    .line 51
    check-cast p4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 52
    .line 53
    iget-object p3, p4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-interface {p3}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 68
    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void

    .line 77
    :cond_5
    const-string/jumbo p0, "packageManagerInternal"

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p3
.end method

.method public final onStorageVolumeMounted(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 23
    .line 24
    .line 25
    :try_start_1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 26
    .line 27
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onStorageVolumeMounted$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 31
    .line 32
    .line 33
    const-string p0, "PermissionService"

    .line 34
    .line 35
    const-string/jumbo p1, "onStorageVolumeMounted called"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->updateAdminPermissionsInternal(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    monitor-exit v0

    .line 53
    throw p0
.end method

.method public final onSystemReady()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessCheckingService;->onSystemReady$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mSystemReady:Z

    .line 8
    .line 9
    const-class v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    monitor-enter v3

    .line 34
    :try_start_0
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    .line 45
    .line 46
    invoke-direct {v6, v4, v5}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {v6, v1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimDevicePermissionStates(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v1, v1, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 72
    .line 73
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v4, 0x0

    .line 80
    move v5, v4

    .line 81
    :goto_0
    if-ge v5, v2, :cond_1

    .line 82
    .line 83
    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iget-object v7, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 96
    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    iget-object v6, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    move v8, v4

    .line 106
    :goto_1
    if-ge v8, v6, :cond_0

    .line 107
    .line 108
    iget-object v9, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    iget-object v10, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Lcom/android/server/permission/access/SchemePolicy;

    .line 121
    .line 122
    check-cast v9, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v10}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    add-int/lit8 v8, v8, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    monitor-exit v3

    .line 134
    goto :goto_3

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    goto :goto_2

    .line 137
    :cond_2
    :try_start_1
    const-string/jumbo p0, "state"

    .line 138
    .line 139
    .line 140
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/4 p0, 0x0

    .line 144
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_2
    monitor-exit v3

    .line 146
    throw p0

    .line 147
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 148
    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    new-instance v2, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-direct {v2, v3, p0}, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;-><init>(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 158
    .line 159
    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 160
    .line 161
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 162
    .line 163
    monitor-enter v3

    .line 164
    :try_start_2
    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mPersistentDeviceIdRemovedListeners:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    monitor-exit v3

    .line 170
    goto :goto_4

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    throw p0

    .line 174
    :cond_4
    :goto_4
    new-instance v1, Landroid/permission/PermissionControllerManager;

    .line 175
    .line 176
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 177
    .line 178
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-direct {v1, v2, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 183
    .line 184
    .line 185
    iput-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 186
    .line 187
    sput-boolean v0, Lcom/android/server/pm/PmHook;->mSystemReady:Z

    .line 188
    .line 189
    return-void
.end method

.method public final onUserCreated(I)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final onUserRemoved(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final queryPermissionsByGroup(ILjava/lang/String;)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    .line 15
    .line 16
    .line 17
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_6

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v4, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/content/pm/PermissionGroupInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_1
    :try_start_2
    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v4, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    .line 64
    .line 65
    .line 66
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    :try_start_3
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/4 v5, 0x0

    .line 100
    :goto_0
    if-ge v5, v4, :cond_5

    .line 101
    .line 102
    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    iget-object v7, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    .line 115
    .line 116
    check-cast v6, Ljava/lang/String;

    .line 117
    .line 118
    iget-object v6, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 119
    .line 120
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v6, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    iget-object v6, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 129
    .line 130
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v0, v6, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_3

    .line 137
    .line 138
    const/16 v6, 0x2710

    .line 139
    .line 140
    invoke-static {v7, p1, v6}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    goto :goto_1

    .line 145
    :cond_3
    move-object v6, v1

    .line 146
    :goto_1
    if-eqz v6, :cond_4

    .line 147
    .line 148
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    .line 150
    .line 151
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    return-object v3

    .line 158
    :cond_6
    :try_start_4
    const-string/jumbo p0, "state"

    .line 159
    .line 160
    .line 161
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    :goto_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    :catchall_1
    move-exception p1

    .line 167
    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_7
    const-string/jumbo p0, "packageManagerLocal"

    .line 172
    .line 173
    .line 174
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v1
.end method

.method public final readLegacyPermissionStateTEMP()V
    .locals 0

    .line 1
    return-void
.end method

.method public final readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessCheckingService;->initialize()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(IILjava/lang/String;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-nez v4, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move v5, p3

    .line 28
    move v6, p4

    .line 29
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_2
    return v1

    .line 35
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string/jumbo p1, "permissionName cannot be null"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    .line 4
    .line 5
    const-string/jumbo v2, "removeOnPermissionsChangeListener"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string/jumbo p0, "onPermissionsChangeListeners"

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method public final removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removePermission(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Not allowed to modify non-dynamic permission "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_6

    .line 11
    .line 12
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    invoke-static {v2, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    if-nez v1, :cond_5

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    monitor-enter v2

    .line 32
    :try_start_1
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_4

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    .line 43
    .line 44
    invoke-direct {v5, v4, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v5, p1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iget-object v4, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    .line 70
    .line 71
    if-nez v4, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget v5, v4, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 75
    .line 76
    const/4 v6, 0x2

    .line 77
    if-ne v5, v6, :cond_3

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    iget-object p1, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 93
    .line 94
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    const/4 v0, 0x0

    .line 124
    move v1, v0

    .line 125
    :goto_1
    if-ge v1, p1, :cond_2

    .line 126
    .line 127
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 140
    .line 141
    check-cast v3, Ljava/lang/String;

    .line 142
    .line 143
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    move v5, v0

    .line 150
    :goto_2
    if-ge v5, v3, :cond_1

    .line 151
    .line 152
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 153
    .line 154
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 159
    .line 160
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 165
    .line 166
    check-cast v6, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .line 170
    .line 171
    add-int/lit8 v5, v5, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_2
    monitor-exit v2

    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception p0

    .line 180
    goto :goto_3

    .line 181
    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 182
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_4
    const-string/jumbo p0, "state"

    .line 200
    .line 201
    .line 202
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :goto_3
    monitor-exit v2

    .line 207
    throw p0

    .line 208
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 209
    .line 210
    const-string p1, "Instant applications don\'t have access to this method"

    .line 211
    .line 212
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :catchall_1
    move-exception p0

    .line 217
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 218
    :catchall_2
    move-exception p1

    .line 219
    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :cond_6
    const-string/jumbo p0, "packageManagerLocal"

    .line 224
    .line 225
    .line 226
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v3
.end method

.method public final resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    .line 19
    .line 20
    invoke-direct {v4, v2, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v2, v4, v5, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 p2, 0x0

    .line 64
    move v0, p2

    .line 65
    :goto_0
    if-ge v0, p1, :cond_1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 80
    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    iget-object v2, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    move v4, p2

    .line 90
    :goto_1
    if-ge v4, v2, :cond_0

    .line 91
    .line 92
    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 105
    .line 106
    check-cast v5, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    monitor-exit v1

    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    :try_start_1
    const-string/jumbo p0, "state"

    .line 122
    .line 123
    .line 124
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/4 p0, 0x0

    .line 128
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_2
    monitor-exit v1

    .line 130
    throw p0
.end method

.method public final resetRuntimePermissionsForUser(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_4

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    .line 28
    .line 29
    invoke-direct {v6, v4, v5}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Ljava/util/Map$Entry;

    .line 55
    .line 56
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 61
    .line 62
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v8, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 70
    .line 71
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v8, v6, v9, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    iget-object v8, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 79
    .line 80
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v8, v6, v7, p1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_3

    .line 90
    :cond_1
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0, v5}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    const/4 v2, 0x0

    .line 113
    move v4, v2

    .line 114
    :goto_1
    if-ge v4, p1, :cond_3

    .line 115
    .line 116
    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 117
    .line 118
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 129
    .line 130
    check-cast v5, Ljava/lang/String;

    .line 131
    .line 132
    iget-object v5, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    move v7, v2

    .line 139
    :goto_2
    if-ge v7, v5, :cond_2

    .line 140
    .line 141
    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 148
    .line 149
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    .line 154
    .line 155
    check-cast v8, Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v9}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .line 159
    .line 160
    add-int/lit8 v7, v7, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    goto :goto_4

    .line 173
    :cond_4
    :try_start_3
    const-string/jumbo p0, "state"

    .line 174
    .line 175
    .line 176
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    :goto_3
    :try_start_4
    monitor-exit v3

    .line 181
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 182
    :goto_4
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    :catchall_2
    move-exception p1

    .line 184
    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :cond_5
    const-string/jumbo p0, "packageManagerLocal"

    .line 189
    .line 190
    .line 191
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v1
.end method

.method public final restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const-string/jumbo v0, "userId"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;

    .line 37
    .line 38
    invoke-direct {v3, p0, p2}, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const-string/jumbo p0, "permissionControllerManager"

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0

    .line 55
    throw p0

    .line 56
    :cond_2
    const-string/jumbo p0, "packageName"

    .line 57
    .line 58
    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public final restoreRuntimePermissions([BI)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string/jumbo v0, "userId"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string/jumbo p0, "permissionControllerManager"

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    throw p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0

    .line 40
    throw p0

    .line 41
    :cond_1
    const-string p0, "backup"

    .line 42
    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public final revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 9

    .line 1
    const/4 v6, 0x1

    .line 2
    const/4 v7, 0x0

    .line 3
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    .line 4
    .line 5
    const-string v4, "default:0"

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/16 v8, 0x40

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move v2, p2

    .line 13
    invoke-static/range {v0 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/16 v8, 0x20

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v2, p4

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v7, p5

    .line 11
    invoke-static/range {v0 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z
    .locals 8

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v7, 0x1

    .line 7
    if-ne v1, v7, :cond_0

    .line 8
    .line 9
    move v1, v7

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 16
    .line 17
    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    move v1, v7

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v4, :cond_9

    .line 36
    .line 37
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-interface {v4, v3, v6}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :try_start_0
    invoke-interface {v4}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Lcom/android/server/pm/pkg/PackageState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :cond_2
    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    return v2

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 72
    .line 73
    if-eqz v2, :cond_8

    .line 74
    .line 75
    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v2, v4, v3}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x4

    .line 88
    invoke-static {p3, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_7

    .line 93
    .line 94
    if-nez v1, :cond_5

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    .line 100
    .line 101
    const-string v1, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_5
    :goto_2
    if-eqz p5, :cond_7

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    .line 113
    .line 114
    const-string v1, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_7
    :goto_3
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    move-object v1, p0

    .line 125
    move-object v2, v4

    .line 126
    move-object v4, p2

    .line 127
    move v5, p3

    .line 128
    move v6, p4

    .line 129
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    .line 130
    .line 131
    .line 132
    return v7

    .line 133
    :cond_8
    const-string/jumbo v0, "packageManagerInternal"

    .line 134
    .line 135
    .line 136
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v5

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    move-object v1, v0

    .line 142
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    :catchall_1
    move-exception v0

    .line 144
    move-object v2, v0

    .line 145
    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    throw v2

    .line 149
    :cond_9
    const-string/jumbo v0, "packageManagerLocal"

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v5
.end method

.method public final setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/high16 v2, 0x10000

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v3

    .line 17
    :goto_0
    const/4 v4, 0x4

    .line 18
    invoke-static {v1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    const/high16 v5, 0x20000

    .line 25
    .line 26
    or-int/2addr v2, v5

    .line 27
    :cond_1
    const/4 v5, 0x2

    .line 28
    invoke-static {v1, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const v1, 0x8000

    .line 35
    .line 36
    .line 37
    or-int/2addr v2, v1

    .line 38
    :cond_2
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    monitor-enter v12

    .line 45
    :try_start_0
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_a

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    new-instance v14, Lcom/android/server/permission/access/MutateStateScope;

    .line 56
    .line 57
    invoke-direct {v14, v5, v13}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v16

    .line 81
    move v5, v3

    .line 82
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_7

    .line 87
    .line 88
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    add-int/lit8 v17, v5, 0x1

    .line 93
    .line 94
    if-ltz v5, :cond_6

    .line 95
    .line 96
    check-cast v6, Ljava/lang/String;

    .line 97
    .line 98
    iget-object v5, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    move-object v9, v5

    .line 105
    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    .line 106
    .line 107
    if-eqz v9, :cond_5

    .line 108
    .line 109
    iget-object v5, v9, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 110
    .line 111
    iget v5, v5, Landroid/content/pm/PermissionInfo;->flags:I

    .line 112
    .line 113
    invoke-static {v5, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_3

    .line 118
    .line 119
    iget-object v5, v9, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 120
    .line 121
    iget v5, v5, Landroid/content/pm/PermissionInfo;->flags:I

    .line 122
    .line 123
    const/16 v7, 0x8

    .line 124
    .line 125
    invoke-static {v5, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    :cond_3
    move-object/from16 v11, p3

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto/16 :goto_6

    .line 136
    .line 137
    :goto_2
    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_4

    .line 142
    .line 143
    move/from16 v18, v2

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_4
    move/from16 v18, v3

    .line 147
    .line 148
    :goto_3
    move-object v5, v0

    .line 149
    move-object v6, v14

    .line 150
    move/from16 v7, p2

    .line 151
    .line 152
    move/from16 v8, p5

    .line 153
    .line 154
    move v10, v2

    .line 155
    move/from16 v11, v18

    .line 156
    .line 157
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    .line 158
    .line 159
    .line 160
    :cond_5
    move/from16 v5, v17

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 164
    .line 165
    const-string v1, "Index overflow has happened."

    .line 166
    .line 167
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_7
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0, v13}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v1, v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 186
    .line 187
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    move v2, v3

    .line 194
    :goto_4
    if-ge v2, v1, :cond_9

    .line 195
    .line 196
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 197
    .line 198
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 203
    .line 204
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 209
    .line 210
    check-cast v4, Ljava/lang/String;

    .line 211
    .line 212
    iget-object v4, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 213
    .line 214
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    move v6, v3

    .line 219
    :goto_5
    if-ge v6, v4, :cond_8

    .line 220
    .line 221
    iget-object v7, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 222
    .line 223
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    iget-object v8, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 228
    .line 229
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    .line 234
    .line 235
    check-cast v7, Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v8}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .line 239
    .line 240
    add-int/lit8 v6, v6, 0x1

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_9
    monitor-exit v12

    .line 247
    const-string v0, "PermissionService"

    .line 248
    .line 249
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string/jumbo v3, "setAllowlistedRestrictedPermissionsUnchecked called for package - "

    .line 256
    .line 257
    .line 258
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionService;->updateAdminPermissionsInternal(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_a
    :try_start_1
    const-string/jumbo v0, "state"

    .line 280
    .line 281
    .line 282
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const/4 v0, 0x0

    .line 286
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :goto_6
    monitor-exit v12

    .line 288
    throw v0
.end method

.method public final setDefaultPermissionGrantFingerprint(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p1, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p1, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 p2, 0x0

    .line 51
    move v1, p2

    .line 52
    :goto_0
    if-ge v1, p1, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 67
    .line 68
    check-cast v2, Ljava/lang/String;

    .line 69
    .line 70
    iget-object v2, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    move v4, p2

    .line 77
    :goto_1
    if-ge v4, v2, :cond_0

    .line 78
    .line 79
    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 92
    .line 93
    check-cast v5, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    :try_start_1
    const-string/jumbo p0, "state"

    .line 109
    .line 110
    .line 111
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x0

    .line 115
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :goto_2
    monitor-exit v0

    .line 117
    throw p0
.end method

.method public final setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const-string v0, "PermissionService"

    .line 6
    .line 7
    const-string/jumbo v1, "setLicensePermissions : packageName = "

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v8, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v7, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    if-eqz v0, :cond_20

    .line 16
    .line 17
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    const/4 v12, 0x0

    .line 33
    :try_start_0
    iget-object v0, v7, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    .line 47
    .line 48
    .line 49
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    .line 51
    .line 52
    .line 53
    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move v1, v12

    .line 56
    :catch_1
    const-string v0, "PermissionService"

    .line 57
    .line 58
    const-string/jumbo v2, "packageName = "

    .line 59
    .line 60
    .line 61
    const-string v3, " not found for user 0"

    .line 62
    .line 63
    invoke-static {v2, v8, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move v0, v12

    .line 67
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/4 v13, 0x1

    .line 81
    if-eqz v4, :cond_10

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/String;

    .line 88
    .line 89
    new-instance v5, Lcom/android/server/permission/jarjar/kotlin/text/Regex;

    .line 90
    .line 91
    const-string v6, ","

    .line 92
    .line 93
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const-string v14, "compile(...)"

    .line 98
    .line 99
    invoke-static {v14, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v4}, Lcom/android/server/permission/jarjar/kotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_b

    .line 114
    .line 115
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    :goto_2
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    if-eqz v14, :cond_b

    .line 128
    .line 129
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    check-cast v14, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-nez v14, :cond_1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_1
    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    add-int/2addr v6, v13

    .line 147
    if-ltz v6, :cond_a

    .line 148
    .line 149
    if-nez v6, :cond_2

    .line 150
    .line 151
    sget-object v5, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    .line 152
    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :cond_2
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-lt v6, v14, :cond_3

    .line 160
    .line 161
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    goto :goto_3

    .line 166
    :cond_3
    if-ne v6, v13, :cond_5

    .line 167
    .line 168
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-nez v6, :cond_4

    .line 173
    .line 174
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    const-string/jumbo v6, "singletonList(...)"

    .line 183
    .line 184
    .line 185
    invoke-static {v6, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 190
    .line 191
    const-string v1, "List is empty."

    .line 192
    .line 193
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0

    .line 197
    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .line 201
    .line 202
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    move v15, v12

    .line 207
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v16

    .line 211
    if-eqz v16, :cond_7

    .line 212
    .line 213
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    add-int/2addr v15, v13

    .line 221
    if-ne v15, v6, :cond_6

    .line 222
    .line 223
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_9

    .line 228
    .line 229
    if-eq v5, v13, :cond_8

    .line 230
    .line 231
    move-object v5, v14

    .line 232
    goto :goto_3

    .line 233
    :cond_8
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    const-string/jumbo v6, "singletonList(...)"

    .line 242
    .line 243
    .line 244
    invoke-static {v6, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_9
    sget-object v5, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_a
    const-string v0, "Requested element count "

    .line 252
    .line 253
    const-string v1, " is less than zero."

    .line 254
    .line 255
    invoke-static {v6, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1

    .line 269
    :cond_b
    sget-object v5, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyList;

    .line 270
    .line 271
    :goto_3
    new-array v6, v12, [Ljava/lang/String;

    .line 272
    .line 273
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    check-cast v5, [Ljava/lang/String;

    .line 278
    .line 279
    if-eqz v5, :cond_f

    .line 280
    .line 281
    array-length v6, v5

    .line 282
    if-lez v6, :cond_f

    .line 283
    .line 284
    array-length v4, v5

    .line 285
    move v6, v12

    .line 286
    :goto_4
    if-ge v6, v4, :cond_0

    .line 287
    .line 288
    aget-object v9, v5, v6

    .line 289
    .line 290
    iget-object v13, v7, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 291
    .line 292
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 293
    .line 294
    .line 295
    move-result-object v13

    .line 296
    if-eqz v13, :cond_e

    .line 297
    .line 298
    iget-object v14, v7, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 299
    .line 300
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 304
    .line 305
    .line 306
    move-result-object v13

    .line 307
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    iget-object v13, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 312
    .line 313
    invoke-virtual {v13, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v13

    .line 317
    check-cast v13, Lcom/android/server/permission/access/permission/Permission;

    .line 318
    .line 319
    if-eqz v13, :cond_d

    .line 320
    .line 321
    invoke-virtual {v7, v13}, Lcom/android/server/permission/access/permission/PermissionService;->getSourcePackageSetting(Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    if-eqz v14, :cond_d

    .line 326
    .line 327
    if-eqz v1, :cond_c

    .line 328
    .line 329
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 330
    .line 331
    .line 332
    move-result-object v14

    .line 333
    invoke-interface {v14, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    if-eqz v9, :cond_c

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_c
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    :cond_d
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_e
    const-string/jumbo v0, "state"

    .line 347
    .line 348
    .line 349
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    const/4 v1, 0x0

    .line 353
    throw v1

    .line 354
    :cond_f
    const-string v5, "PermissionService"

    .line 355
    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string/jumbo v9, "setLicensePermissions : "

    .line 359
    .line 360
    .line 361
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v9, ", invalid permission "

    .line 368
    .line 369
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :cond_10
    invoke-virtual {v7, v11, v2, v8, v12}, Lcom/android/server/permission/access/permission/PermissionService;->updateLicensePermissionMDM([ILjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 385
    .line 386
    .line 387
    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 388
    .line 389
    iget-object v3, v7, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 390
    .line 391
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    if-eqz v3, :cond_1f

    .line 396
    .line 397
    iget-object v4, v7, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 398
    .line 399
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 411
    .line 412
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    move-object v9, v2

    .line 417
    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    .line 418
    .line 419
    if-eqz v9, :cond_14

    .line 420
    .line 421
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/permission/PermissionService;->getSourcePackageSetting(Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    if-eqz v2, :cond_14

    .line 426
    .line 427
    if-nez v0, :cond_14

    .line 428
    .line 429
    if-nez v1, :cond_14

    .line 430
    .line 431
    array-length v0, v11

    .line 432
    move v14, v12

    .line 433
    :goto_6
    if-ge v14, v0, :cond_14

    .line 434
    .line 435
    aget v5, v11, v14

    .line 436
    .line 437
    iget-object v15, v7, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 438
    .line 439
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v17

    .line 443
    monitor-enter v17

    .line 444
    :try_start_2
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    if-eqz v1, :cond_13

    .line 449
    .line 450
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    new-instance v2, Lcom/android/server/permission/access/MutateStateScope;

    .line 455
    .line 456
    invoke-direct {v2, v1, v6}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 457
    .line 458
    .line 459
    iget-object v1, v9, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 460
    .line 461
    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 462
    .line 463
    const/16 v18, 0x0

    .line 464
    .line 465
    move-object/from16 v1, p0

    .line 466
    .line 467
    move-object/from16 v3, p1

    .line 468
    .line 469
    move-object v12, v6

    .line 470
    move/from16 v6, v18

    .line 471
    .line 472
    invoke-static/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->access$updateLicensePermissionInternalMDM(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 473
    .line 474
    .line 475
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v1, v12}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 480
    .line 481
    .line 482
    invoke-static {v15, v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 483
    .line 484
    .line 485
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    iget-object v1, v1, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 490
    .line 491
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 492
    .line 493
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    const/4 v3, 0x0

    .line 498
    :goto_7
    if-ge v3, v2, :cond_12

    .line 499
    .line 500
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 501
    .line 502
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 507
    .line 508
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 513
    .line 514
    check-cast v4, Ljava/lang/String;

    .line 515
    .line 516
    iget-object v4, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 517
    .line 518
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    const/4 v6, 0x0

    .line 523
    :goto_8
    if-ge v6, v4, :cond_11

    .line 524
    .line 525
    iget-object v12, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 526
    .line 527
    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v12

    .line 531
    iget-object v15, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 532
    .line 533
    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v15

    .line 537
    check-cast v15, Lcom/android/server/permission/access/SchemePolicy;

    .line 538
    .line 539
    check-cast v12, Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v15}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    .line 543
    .line 544
    add-int/lit8 v6, v6, 0x1

    .line 545
    .line 546
    goto :goto_8

    .line 547
    :cond_11
    add-int/lit8 v3, v3, 0x1

    .line 548
    .line 549
    goto :goto_7

    .line 550
    :cond_12
    monitor-exit v17

    .line 551
    add-int/lit8 v14, v14, 0x1

    .line 552
    .line 553
    const/4 v12, 0x0

    .line 554
    goto :goto_6

    .line 555
    :catchall_0
    move-exception v0

    .line 556
    goto :goto_9

    .line 557
    :cond_13
    :try_start_3
    const-string/jumbo v0, "state"

    .line 558
    .line 559
    .line 560
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    const/4 v1, 0x0

    .line 564
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 565
    :goto_9
    monitor-exit v17

    .line 566
    throw v0

    .line 567
    :cond_14
    iget-object v0, v7, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 568
    .line 569
    invoke-static {v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    :try_start_4
    const-string v0, "enterprise_policy"

    .line 578
    .line 579
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-interface {v0, v8}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getMamPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    if-eqz v0, :cond_16

    .line 592
    .line 593
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    xor-int/2addr v2, v13

    .line 598
    if-eqz v2, :cond_16

    .line 599
    .line 600
    const-string v2, "PermissionService"

    .line 601
    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .line 606
    .line 607
    const-string v4, "getMamPermissions: "

    .line 608
    .line 609
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v4, ": "

    .line 616
    .line 617
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    if-nez v1, :cond_15

    .line 631
    .line 632
    new-instance v2, Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 635
    .line 636
    .line 637
    move-object v1, v2

    .line 638
    goto :goto_a

    .line 639
    :cond_15
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 640
    .line 641
    .line 642
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 643
    .line 644
    .line 645
    goto :goto_a

    .line 646
    :catch_2
    move-exception v0

    .line 647
    const-string v2, "PermissionService"

    .line 648
    .line 649
    const-string v3, "Error while getting MAM permissions"

    .line 650
    .line 651
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    .line 653
    .line 654
    :cond_16
    :goto_a
    const-string v0, "com.samsung.android.knox.api-access-control-group"

    .line 655
    .line 656
    const/4 v2, 0x0

    .line 657
    invoke-virtual {v7, v2, v0}, Lcom/android/server/permission/access/permission/PermissionService;->queryPermissionsByGroup(ILjava/lang/String;)Ljava/util/List;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    if-eqz v0, :cond_17

    .line 662
    .line 663
    new-instance v2, Ljava/util/ArrayList;

    .line 664
    .line 665
    check-cast v0, Ljava/util/ArrayList;

    .line 666
    .line 667
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    if-eqz v3, :cond_18

    .line 683
    .line 684
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 689
    .line 690
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 691
    .line 692
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    goto :goto_b

    .line 696
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    .line 697
    .line 698
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .line 700
    .line 701
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    .line 702
    .line 703
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .line 705
    .line 706
    if-eqz v1, :cond_1e

    .line 707
    .line 708
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    :cond_19
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_1e

    .line 717
    .line 718
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    check-cast v3, Ljava/lang/String;

    .line 723
    .line 724
    iget-object v4, v7, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 725
    .line 726
    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    if-eqz v4, :cond_1d

    .line 731
    .line 732
    iget-object v5, v7, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 733
    .line 734
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 738
    .line 739
    .line 740
    move-result-object v4

    .line 741
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 742
    .line 743
    .line 744
    move-result-object v4

    .line 745
    iget-object v4, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 746
    .line 747
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    .line 752
    .line 753
    if-eqz v4, :cond_19

    .line 754
    .line 755
    invoke-virtual {v7, v4}, Lcom/android/server/permission/access/permission/PermissionService;->getSourcePackageSetting(Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 756
    .line 757
    .line 758
    move-result-object v5

    .line 759
    if-eqz v5, :cond_19

    .line 760
    .line 761
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    if-nez v5, :cond_1a

    .line 766
    .line 767
    const/4 v5, 0x0

    .line 768
    goto :goto_d

    .line 769
    :cond_1a
    const-string v6, "com.samsung.knoxlicense.permissions"

    .line 770
    .line 771
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 772
    .line 773
    .line 774
    move-result v5

    .line 775
    :goto_d
    if-eqz v5, :cond_1c

    .line 776
    .line 777
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    move-result v5

    .line 785
    if-eqz v5, :cond_1b

    .line 786
    .line 787
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    const-string v4, "PermissionService"

    .line 791
    .line 792
    new-instance v5, Ljava/lang/StringBuilder;

    .line 793
    .line 794
    const-string v6, "hasSelectivePermissionsForMdm(): permission granted = "

    .line 795
    .line 796
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .line 808
    .line 809
    goto :goto_c

    .line 810
    :cond_1b
    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 811
    .line 812
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 813
    .line 814
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v5

    .line 818
    if-eqz v5, :cond_19

    .line 819
    .line 820
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    const-string v4, "PermissionService"

    .line 824
    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    const-string v6, "accessControlPermissions granted on top of selective permissions = "

    .line 828
    .line 829
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v3

    .line 839
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    .line 841
    .line 842
    goto/16 :goto_c

    .line 843
    .line 844
    :cond_1c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    goto/16 :goto_c

    .line 848
    .line 849
    :cond_1d
    const-string/jumbo v0, "state"

    .line 850
    .line 851
    .line 852
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    const/4 v1, 0x0

    .line 856
    throw v1

    .line 857
    :cond_1e
    invoke-virtual {v7, v11, v0, v8, v13}, Lcom/android/server/permission/access/permission/PermissionService;->updateLicensePermissionMDM([ILjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    iget-object v1, v7, Lcom/android/server/permission/access/permission/PermissionService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 862
    .line 863
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v2

    .line 867
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    const/4 v1, 0x0

    .line 871
    return v1

    .line 872
    :cond_1f
    const/4 v1, 0x0

    .line 873
    const-string/jumbo v0, "state"

    .line 874
    .line 875
    .line 876
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    throw v1

    .line 880
    :cond_20
    const/4 v1, 0x0

    .line 881
    const-string/jumbo v0, "packageManagerInternal"

    .line 882
    .line 883
    .line 884
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    throw v1
.end method

.method public final setPermissionFlagsWithPolicy(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    const-string v1, "default:0"

    .line 8
    .line 9
    invoke-static {p6, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, " is not device aware permission,  set the flags for default device."

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "PermissionService"

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 47
    .line 48
    const/4 v5, -0x1

    .line 49
    move-object v1, p4

    .line 50
    move v2, p1

    .line 51
    move v3, p2

    .line 52
    move-object v4, p5

    .line 53
    move v6, p3

    .line 54
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 59
    .line 60
    move v1, p1

    .line 61
    move v2, p2

    .line 62
    move v3, p3

    .line 63
    move-object v4, p4

    .line 64
    move-object v5, p6

    .line 65
    move-object v6, p5

    .line 66
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 71
    .line 72
    const/4 v5, -0x1

    .line 73
    move-object v1, p4

    .line 74
    move v2, p1

    .line 75
    move v3, p2

    .line 76
    move-object v4, p5

    .line 77
    move v6, p3

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 79
    .line 80
    .line 81
    :goto_1
    return-void
.end method

.method public final shouldShowRequestPermissionRationale(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v8, p2

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    if-eqz v1, :cond_9

    .line 10
    .line 11
    invoke-virtual {v1, v7}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v10, "PermissionService"

    .line 16
    .line 17
    const/4 v11, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string/jumbo v0, "shouldShowRequestPermissionRationale: Unknown user "

    .line 21
    .line 22
    .line 23
    invoke-static {v7, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v11

    .line 27
    :cond_0
    const/4 v12, 0x1

    .line 28
    const-string/jumbo v1, "shouldShowRequestPermissionRationale"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v12, v11, v7}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;ZZI)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 39
    .line 40
    if-eqz v2, :cond_8

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v2, v1, v3}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :try_start_0
    invoke-interface {v2, v8}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 51
    .line 52
    .line 53
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    invoke-static {v2, v9}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    return v11

    .line 60
    :cond_1
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eq v1, v13, :cond_2

    .line 69
    .line 70
    return v11

    .line 71
    :cond_2
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 72
    .line 73
    new-instance v14, Lcom/android/server/permission/access/GetStateScope;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_7

    .line 80
    .line 81
    invoke-direct {v14, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 82
    .line 83
    .line 84
    move-object v1, p0

    .line 85
    move-object v2, v14

    .line 86
    move/from16 v4, p1

    .line 87
    .line 88
    move-object/from16 v5, p3

    .line 89
    .line 90
    move-object/from16 v6, p4

    .line 91
    .line 92
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    return v11

    .line 99
    :cond_3
    move-object v1, p0

    .line 100
    move v2, v13

    .line 101
    move/from16 v3, p1

    .line 102
    .line 103
    move-object v4, v14

    .line 104
    move-object/from16 v5, p3

    .line 105
    .line 106
    move-object/from16 v6, p4

    .line 107
    .line 108
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const v2, 0x401c0

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    return v11

    .line 122
    :cond_4
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 123
    .line 124
    move-object/from16 v3, p3

    .line 125
    .line 126
    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    const-class v2, Landroid/os/Binder;

    .line 133
    .line 134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    :try_start_1
    iget-object v0, v0, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    const-wide/32 v4, 0x8c7dff3

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, v4, v5, v8, v7}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto :goto_2

    .line 152
    :catch_0
    move-exception v0

    .line 153
    goto :goto_0

    .line 154
    :cond_5
    const-string/jumbo v0, "platformCompat"

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :goto_0
    :try_start_2
    const-string/jumbo v4, "shouldShowRequestPermissionRationale: Unable to check if compatibility change is enabled"

    .line 162
    .line 163
    .line 164
    invoke-static {v10, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    .line 166
    .line 167
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    .line 169
    .line 170
    if-eqz v11, :cond_6

    .line 171
    .line 172
    return v12

    .line 173
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :cond_6
    const/16 v0, 0x20

    .line 178
    .line 179
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    return v0

    .line 184
    :cond_7
    const-string/jumbo v0, "state"

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v9

    .line 191
    :catchall_1
    move-exception v0

    .line 192
    move-object v1, v0

    .line 193
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 194
    :catchall_2
    move-exception v0

    .line 195
    move-object v3, v0

    .line 196
    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    throw v3

    .line 200
    :cond_8
    const-string/jumbo v0, "packageManagerLocal"

    .line 201
    .line 202
    .line 203
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v9

    .line 207
    :cond_9
    const-string/jumbo v0, "userManagerInternal"

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v9
.end method

.method public final updateLicensePermissionMDM([ILjava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v2, :cond_5

    .line 11
    .line 12
    aget v11, v0, v4

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v12

    .line 18
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_4

    .line 23
    .line 24
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    move-object v13, v5

    .line 29
    check-cast v13, Lcom/android/server/permission/access/permission/Permission;

    .line 30
    .line 31
    move-object/from16 v14, p0

    .line 32
    .line 33
    iget-object v15, v14, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 34
    .line 35
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v16

    .line 39
    monitor-enter v16

    .line 40
    :try_start_0
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    .line 51
    .line 52
    invoke-direct {v6, v5, v10}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 53
    .line 54
    .line 55
    iget-object v5, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 56
    .line 57
    iget-object v8, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v5, p0

    .line 60
    .line 61
    move-object/from16 v7, p3

    .line 62
    .line 63
    move v9, v11

    .line 64
    move-object v3, v10

    .line 65
    move/from16 v10, p4

    .line 66
    .line 67
    invoke-static/range {v5 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->access$updateLicensePermissionInternalMDM(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v15, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v3, v3, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 86
    .line 87
    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/4 v7, 0x0

    .line 94
    :goto_2
    if-ge v7, v6, :cond_1

    .line 95
    .line 96
    iget-object v8, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    iget-object v9, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 109
    .line 110
    check-cast v8, Ljava/lang/String;

    .line 111
    .line 112
    iget-object v8, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    const/4 v10, 0x0

    .line 119
    :goto_3
    if-ge v10, v8, :cond_0

    .line 120
    .line 121
    iget-object v15, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {v15, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    iget-object v0, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/android/server/permission/access/SchemePolicy;

    .line 134
    .line 135
    check-cast v15, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    add-int/lit8 v10, v10, 0x1

    .line 141
    .line 142
    move-object/from16 v0, p1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 146
    .line 147
    move-object/from16 v0, p1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_1
    monitor-exit v16

    .line 151
    if-eqz v5, :cond_2

    .line 152
    .line 153
    iget-object v0, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 154
    .line 155
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_2
    move-object/from16 v0, p1

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto :goto_4

    .line 166
    :cond_3
    :try_start_1
    const-string/jumbo v0, "state"

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :goto_4
    monitor-exit v16

    .line 175
    throw v0

    .line 176
    :cond_4
    move-object/from16 v14, p0

    .line 177
    .line 178
    add-int/lit8 v4, v4, 0x1

    .line 179
    .line 180
    move-object/from16 v0, p1

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_5
    return-object v1
.end method

.method public final updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move/from16 v4, p7

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_13

    .line 17
    .line 18
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string v0, "PermissionService"

    .line 25
    .line 26
    const-string/jumbo v1, "updatePermissionFlags: Unknown user "

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string/jumbo v2, "updatePermissionFlags"

    .line 34
    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    invoke-virtual {v0, v2, v6, v6, v4}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;ZZI)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "updatePermissionFlags"

    .line 41
    .line 42
    .line 43
    const-string v7, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 44
    .line 45
    const-string v8, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 46
    .line 47
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v0, v2, v7}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    const/4 v2, 0x4

    .line 61
    move/from16 v7, p3

    .line 62
    .line 63
    invoke-static {v7, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    if-eqz p5, :cond_1

    .line 70
    .line 71
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 72
    .line 73
    const-string v8, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 74
    .line 75
    const-string v9, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    .line 76
    .line 77
    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/16 v8, 0x1d

    .line 90
    .line 91
    if-ge v2, v8, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs to be checked for packages targeting 29 or later when changing policy flags"

    .line 95
    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_3
    const-string/jumbo v0, "packageManagerInternal"

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v3

    .line 113
    :cond_4
    move/from16 v7, p3

    .line 114
    .line 115
    :cond_5
    :goto_0
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 116
    .line 117
    if-eqz v2, :cond_12

    .line 118
    .line 119
    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    move-object v8, v2

    .line 126
    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 127
    .line 128
    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    move-object v8, v3

    .line 132
    :goto_1
    if-eqz v8, :cond_11

    .line 133
    .line 134
    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 135
    .line 136
    if-eqz v9, :cond_10

    .line 137
    .line 138
    const/4 v14, 0x0

    .line 139
    invoke-virtual {v9, v1, v4, v13, v14}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_7

    .line 144
    .line 145
    goto/16 :goto_8

    .line 146
    .line 147
    :cond_7
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    :goto_2
    move v11, v6

    .line 162
    goto :goto_4

    .line 163
    :cond_8
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 164
    .line 165
    if-eqz v1, :cond_f

    .line 166
    .line 167
    invoke-virtual {v1, v4, v13}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    array-length v8, v1

    .line 172
    move v10, v14

    .line 173
    :goto_3
    if-ge v10, v8, :cond_b

    .line 174
    .line 175
    aget-object v11, v1, v10

    .line 176
    .line 177
    iget-object v12, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 178
    .line 179
    if-eqz v12, :cond_a

    .line 180
    .line 181
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    if-eqz v11, :cond_9

    .line 186
    .line 187
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz v11, :cond_9

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_a
    const-string/jumbo v0, "packageManagerInternal"

    .line 202
    .line 203
    .line 204
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v3

    .line 208
    :cond_b
    move v11, v14

    .line 209
    :goto_4
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 210
    .line 211
    iget v6, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 212
    .line 213
    iget-object v15, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 214
    .line 215
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v16

    .line 219
    monitor-enter v16

    .line 220
    :try_start_0
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-eqz v1, :cond_e

    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    new-instance v2, Lcom/android/server/permission/access/MutateStateScope;

    .line 231
    .line 232
    invoke-direct {v2, v1, v12}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 233
    .line 234
    .line 235
    const-string/jumbo v17, "updatePermissionFlags"

    .line 236
    .line 237
    .line 238
    const/4 v10, 0x1

    .line 239
    move-object/from16 v1, p0

    .line 240
    .line 241
    move v3, v6

    .line 242
    move/from16 v4, p7

    .line 243
    .line 244
    move-object/from16 v5, p2

    .line 245
    .line 246
    move-object/from16 v6, p6

    .line 247
    .line 248
    move/from16 v7, p3

    .line 249
    .line 250
    move/from16 v8, p4

    .line 251
    .line 252
    move-object v0, v12

    .line 253
    move-object/from16 v12, v17

    .line 254
    .line 255
    move-object/from16 v13, p1

    .line 256
    .line 257
    invoke-static/range {v1 .. v13}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v15, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 275
    .line 276
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 277
    .line 278
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    move v2, v14

    .line 283
    :goto_5
    if-ge v2, v1, :cond_d

    .line 284
    .line 285
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 286
    .line 287
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 292
    .line 293
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 298
    .line 299
    check-cast v3, Ljava/lang/String;

    .line 300
    .line 301
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 302
    .line 303
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    move v5, v14

    .line 308
    :goto_6
    if-ge v5, v3, :cond_c

    .line 309
    .line 310
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 311
    .line 312
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 317
    .line 318
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 323
    .line 324
    check-cast v6, Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .line 328
    .line 329
    add-int/lit8 v5, v5, 0x1

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_d
    monitor-exit v16

    .line 336
    return-void

    .line 337
    :catchall_0
    move-exception v0

    .line 338
    goto :goto_7

    .line 339
    :cond_e
    :try_start_1
    const-string/jumbo v0, "state"

    .line 340
    .line 341
    .line 342
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :goto_7
    monitor-exit v16

    .line 347
    throw v0

    .line 348
    :cond_f
    const-string/jumbo v0, "packageManagerInternal"

    .line 349
    .line 350
    .line 351
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v3

    .line 355
    :cond_10
    const-string/jumbo v0, "packageManagerInternal"

    .line 356
    .line 357
    .line 358
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v3

    .line 362
    :cond_11
    :goto_8
    const-string v0, "PermissionService"

    .line 363
    .line 364
    const-string/jumbo v1, "updatePermissionFlags: Unknown package "

    .line 365
    .line 366
    .line 367
    invoke-static {v1, v13, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :cond_12
    const-string/jumbo v0, "packageManagerInternal"

    .line 372
    .line 373
    .line 374
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v3

    .line 378
    :cond_13
    const-string/jumbo v0, "userManagerInternal"

    .line 379
    .line 380
    .line 381
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v3
.end method

.method public final updatePermissionFlagsForAllApps(III)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_9

    .line 13
    .line 14
    invoke-virtual {v2, v14}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v0, "PermissionService"

    .line 21
    .line 22
    const-string/jumbo v1, "updatePermissionFlagsForAllApps: Unknown user "

    .line 23
    .line 24
    .line 25
    invoke-static {v14, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string/jumbo v2, "updatePermissionFlagsForAllApps"

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-virtual {v0, v2, v4, v4, v14}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;ZZI)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v2, "updatePermissionFlagsForAllApps"

    .line 37
    .line 38
    .line 39
    const-string v4, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 40
    .line 41
    const-string v5, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 42
    .line 43
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v0, v2, v4}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    .line 51
    .line 52
    .line 53
    move-result v15

    .line 54
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 55
    .line 56
    if-eqz v1, :cond_8

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :try_start_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    invoke-static {v1, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    iget-object v13, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 70
    .line 71
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v16

    .line 75
    monitor-enter v16

    .line 76
    :try_start_1
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_7

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    new-instance v11, Lcom/android/server/permission/access/MutateStateScope;

    .line 87
    .line 88
    invoke-direct {v11, v1, v12}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v17

    .line 99
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    move-object/from16 v18, v2

    .line 116
    .line 117
    check-cast v18, Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object/from16 v19, v1

    .line 124
    .line 125
    check-cast v19, Lcom/android/server/pm/pkg/PackageState;

    .line 126
    .line 127
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_2

    .line 132
    .line 133
    :cond_1
    :goto_1
    move-object/from16 v23, v11

    .line 134
    .line 135
    move-object/from16 v24, v12

    .line 136
    .line 137
    move-object/from16 v21, v13

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_2
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-nez v1, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v20

    .line 155
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_1

    .line 160
    .line 161
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    move-object v5, v1

    .line 166
    check-cast v5, Ljava/lang/String;

    .line 167
    .line 168
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    const-string v6, "default:0"

    .line 173
    .line 174
    const-string/jumbo v21, "updatePermissionFlagsForAllApps"

    .line 175
    .line 176
    .line 177
    const/4 v10, 0x0

    .line 178
    const/16 v22, 0x1

    .line 179
    .line 180
    move-object/from16 v1, p0

    .line 181
    .line 182
    move-object v2, v11

    .line 183
    move/from16 v4, p3

    .line 184
    .line 185
    move/from16 v7, p1

    .line 186
    .line 187
    move/from16 v8, p2

    .line 188
    .line 189
    move v9, v15

    .line 190
    move-object/from16 v23, v11

    .line 191
    .line 192
    move/from16 v11, v22

    .line 193
    .line 194
    move-object/from16 v24, v12

    .line 195
    .line 196
    move-object/from16 v12, v21

    .line 197
    .line 198
    move-object/from16 v21, v13

    .line 199
    .line 200
    move-object/from16 v13, v18

    .line 201
    .line 202
    invoke-static/range {v1 .. v13}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    move-object/from16 v13, v21

    .line 206
    .line 207
    move-object/from16 v11, v23

    .line 208
    .line 209
    move-object/from16 v12, v24

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    goto :goto_6

    .line 214
    :goto_3
    move-object/from16 v13, v21

    .line 215
    .line 216
    move-object/from16 v11, v23

    .line 217
    .line 218
    move-object/from16 v12, v24

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_4
    move-object/from16 v24, v12

    .line 222
    .line 223
    move-object/from16 v21, v13

    .line 224
    .line 225
    invoke-static/range {v21 .. v21}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    move-object/from16 v1, v24

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 232
    .line 233
    .line 234
    move-object/from16 v0, v21

    .line 235
    .line 236
    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 244
    .line 245
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    const/4 v2, 0x0

    .line 252
    move v3, v2

    .line 253
    :goto_4
    if-ge v3, v1, :cond_6

    .line 254
    .line 255
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 256
    .line 257
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 262
    .line 263
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 268
    .line 269
    check-cast v4, Ljava/lang/String;

    .line 270
    .line 271
    iget-object v4, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 272
    .line 273
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    move v6, v2

    .line 278
    :goto_5
    if-ge v6, v4, :cond_5

    .line 279
    .line 280
    iget-object v7, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 281
    .line 282
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    iget-object v8, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 287
    .line 288
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    .line 293
    .line 294
    check-cast v7, Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v8}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .line 298
    .line 299
    add-int/lit8 v6, v6, 0x1

    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_6
    monitor-exit v16

    .line 306
    return-void

    .line 307
    :cond_7
    :try_start_2
    const-string/jumbo v0, "state"

    .line 308
    .line 309
    .line 310
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :goto_6
    monitor-exit v16

    .line 315
    throw v0

    .line 316
    :catchall_1
    move-exception v0

    .line 317
    move-object v2, v0

    .line 318
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 319
    :catchall_2
    move-exception v0

    .line 320
    move-object v3, v0

    .line 321
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 322
    .line 323
    .line 324
    throw v3

    .line 325
    :cond_8
    const-string/jumbo v0, "packageManagerLocal"

    .line 326
    .line 327
    .line 328
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v3

    .line 332
    :cond_9
    const-string/jumbo v0, "userManagerInternal"

    .line 333
    .line 334
    .line 335
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v3
.end method

.method public final updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;IIILjava/util/List;)Z
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v1, v8, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string/jumbo v0, "packageManagerInternal"

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v9

    .line 41
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, v8, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 47
    .line 48
    if-eqz v2, :cond_8

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-object v0, v1

    .line 61
    :goto_0
    :try_start_0
    iget-object v11, v8, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 62
    .line 63
    invoke-static {v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 68
    :try_start_1
    invoke-static {v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    new-instance v14, Lcom/android/server/permission/access/MutateStateScope;

    .line 79
    .line 80
    invoke-direct {v14, v1, v13}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v8, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 93
    .line 94
    .line 95
    move-result-object v15

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v16

    .line 100
    const/4 v7, 0x1

    .line 101
    move v1, v7

    .line 102
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    move-object/from16 v17, v0

    .line 113
    .line 114
    check-cast v17, Lcom/android/server/pm/pkg/PackageStateInternal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    :try_start_2
    invoke-static/range {v17 .. v17}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    move-object/from16 v6, p5

    .line 127
    .line 128
    invoke-virtual {v8, v14, v0, v6}, Lcom/android/server/permission/access/permission/PermissionService;->getRequestedRuntimePermissionsInternal(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    move/from16 v19, v1

    .line 139
    .line 140
    :goto_2
    :try_start_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_2

    .line 145
    .line 146
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    .line 152
    :try_start_4
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    iget-object v1, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    check-cast v0, Lcom/android/server/permission/access/permission/Permission;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    .line 167
    move-object/from16 v1, p0

    .line 168
    .line 169
    move-object v2, v14

    .line 170
    move/from16 v4, p4

    .line 171
    .line 172
    move/from16 v5, p2

    .line 173
    .line 174
    move-object v6, v0

    .line 175
    move v10, v7

    .line 176
    move/from16 v7, p3

    .line 177
    .line 178
    :try_start_5
    invoke-static/range {v1 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->access$handlePermissionStateInternal(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IIILcom/android/server/permission/access/permission/Permission;I)Z

    .line 179
    .line 180
    .line 181
    move-result v19
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    :goto_3
    move-object/from16 v6, p5

    .line 183
    .line 184
    move v7, v10

    .line 185
    goto :goto_2

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    goto/16 :goto_a

    .line 188
    .line 189
    :catch_0
    move-exception v0

    .line 190
    :goto_4
    move/from16 v1, v19

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :catch_1
    move-exception v0

    .line 194
    goto :goto_5

    .line 195
    :catch_2
    move-exception v0

    .line 196
    goto :goto_6

    .line 197
    :catch_3
    move-exception v0

    .line 198
    move v10, v7

    .line 199
    goto :goto_4

    .line 200
    :catch_4
    move-exception v0

    .line 201
    move v10, v7

    .line 202
    goto :goto_5

    .line 203
    :catch_5
    move-exception v0

    .line 204
    move v10, v7

    .line 205
    goto :goto_6

    .line 206
    :goto_5
    :try_start_6
    const-string v1, "PermissionService"

    .line 207
    .line 208
    const-string/jumbo v2, "updatePermissionState perm failed runtime exception "

    .line 209
    .line 210
    .line 211
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :goto_6
    :try_start_7
    const-string v1, "PermissionService"

    .line 216
    .line 217
    const-string/jumbo v2, "updatePermissionState perm failed nullptr exception "

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 221
    .line 222
    .line 223
    move-object/from16 v6, p5

    .line 224
    .line 225
    move v7, v10

    .line 226
    const/16 v19, 0x0

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :catch_6
    move-exception v0

    .line 230
    const/4 v1, 0x0

    .line 231
    goto :goto_7

    .line 232
    :cond_2
    move/from16 v1, v19

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :catch_7
    move-exception v0

    .line 237
    move v10, v7

    .line 238
    :goto_7
    :try_start_8
    const-string v2, "PermissionService"

    .line 239
    .line 240
    const-string/jumbo v3, "updatePermissionState state failed : "

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .line 245
    .line 246
    move v7, v10

    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_3
    move v10, v7

    .line 250
    invoke-static {v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0, v13}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v11, v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget-object v0, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 265
    .line 266
    iget-object v2, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 267
    .line 268
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    const/4 v3, 0x0

    .line 273
    :goto_8
    if-ge v3, v2, :cond_5

    .line 274
    .line 275
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 276
    .line 277
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 282
    .line 283
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 288
    .line 289
    check-cast v4, Ljava/lang/String;

    .line 290
    .line 291
    iget-object v4, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 292
    .line 293
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    const/4 v6, 0x0

    .line 298
    :goto_9
    if-ge v6, v4, :cond_4

    .line 299
    .line 300
    iget-object v7, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 301
    .line 302
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    iget-object v11, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 307
    .line 308
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    check-cast v11, Lcom/android/server/permission/access/SchemePolicy;

    .line 313
    .line 314
    check-cast v7, Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v11}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 317
    .line 318
    .line 319
    add-int/lit8 v6, v6, 0x1

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_5
    :try_start_9
    monitor-exit v12

    .line 326
    iget-object v0, v8, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 327
    .line 328
    if-eqz v0, :cond_6

    .line 329
    .line 330
    filled-new-array/range {p4 .. p4}, [I

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v0, v2, v10}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 335
    .line 336
    .line 337
    return v1

    .line 338
    :catch_8
    move-exception v0

    .line 339
    goto :goto_b

    .line 340
    :cond_6
    const-string/jumbo v0, "packageManagerInternal"

    .line 341
    .line 342
    .line 343
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 347
    :cond_7
    :try_start_a
    const-string/jumbo v0, "state"

    .line 348
    .line 349
    .line 350
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 354
    :goto_a
    :try_start_b
    monitor-exit v12

    .line 355
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 356
    :goto_b
    const-string v1, "PermissionService"

    .line 357
    .line 358
    const-string/jumbo v2, "updatePermissionState Failed with exception"

    .line 359
    .line 360
    .line 361
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .line 363
    .line 364
    const/4 v1, 0x0

    .line 365
    return v1

    .line 366
    :cond_8
    const-string/jumbo v0, "packageManagerInternal"

    .line 367
    .line 368
    .line 369
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v9
.end method

.method public final writeLegacyPermissionStateTEMP()V
    .locals 0

    .line 1
    return-void
.end method

.method public final writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const-string/jumbo p0, "state"

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    throw p0
.end method
