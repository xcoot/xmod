.class public final Lcom/android/server/permission/access/appop/AppOpService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# instance fields
.field public final appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

.field public final backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

.field public final context:Landroid/content/Context;

.field public final devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

.field public final foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

.field public final foregroundableOps:Landroid/util/SparseBooleanArray;

.field public volatile listeners:Landroid/util/ArraySet;

.field public final listenersLock:Ljava/lang/Object;

.field public final packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

.field public final permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

.field public final runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

.field public final runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 5
    .line 6
    const-string/jumbo v0, "package"

    .line 7
    .line 8
    .line 9
    const-string v1, "app-op"

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.appop.PackageAppOpPolicy"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 24
    .line 25
    const-string/jumbo v0, "uid"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.appop.AppIdAppOpPolicy"

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 41
    .line 42
    const-string/jumbo v1, "permission"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    check-cast v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 58
    .line 59
    const-string v1, "device-permission"

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.permission.DevicePermissionPolicy"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    check-cast v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    .line 80
    .line 81
    new-instance p1, Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    .line 87
    .line 88
    new-instance p1, Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 94
    .line 95
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 96
    .line 97
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 101
    .line 102
    new-instance p1, Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    .line 108
    .line 109
    new-instance p1, Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    .line 115
    .line 116
    new-instance p1, Landroid/util/ArraySet;

    .line 117
    .line 118
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    .line 122
    .line 123
    new-instance p1, Ljava/lang/Object;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->listenersLock:Ljava/lang/Object;

    .line 129
    .line 130
    return-void
.end method

.method public static evaluateModeFromPermissionFlags(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    :goto_0
    return p0
.end method

.method public static opNameMapToOpSparseArray(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/util/SparseIntArray;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object p0, v0

    .line 52
    :goto_1
    return-object p0
.end method


# virtual methods
.method public final addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$2;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->listenersLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method public final clearAllModes()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getForegroundOps(I)Landroid/util/SparseBooleanArray;
    .locals 9

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 5
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 6
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_3

    .line 10
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    if-ne v8, v2, :cond_2

    .line 11
    invoke-static {v7}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v7

    .line 12
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->runtimePermissionAppopsMappingEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    iget-object v4, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_5

    .line 16
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 17
    const-string v7, "default:0"

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/permission/access/appop/AppOpService;->getUidMode(IILjava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_4

    .line 18
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v0

    .line 19
    :cond_6
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 9

    .line 20
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageModes(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    .line 23
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    if-ne v8, v2, :cond_0

    .line 24
    invoke-static {v7}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v7

    .line 25
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->runtimePermissionAppopsMappingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 28
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_3

    .line 29
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 30
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageMode(IILjava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 31
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageModes(ILjava/lang/String;)Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->opNameMapToOpSparseArray(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
    .locals 13

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v7, Lcom/android/server/permission/access/GetStateScope;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    invoke-direct {v7, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/permission/access/MutableUserState;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, v6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v0, v1

    .line 54
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 57
    .line 58
    :cond_1
    invoke-static {v1}, Lcom/android/server/permission/access/appop/AppOpService;->opNameMapToOpSparseArray(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->runtimePermissionAppopsMappingEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v9, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const/4 v0, 0x0

    .line 75
    move v11, v0

    .line 76
    :goto_1
    if-ge v11, v10, :cond_3

    .line 77
    .line 78
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    move-object v4, v0

    .line 93
    check-cast v4, Ljava/lang/String;

    .line 94
    .line 95
    const-string v5, "default:0"

    .line 96
    .line 97
    move-object v0, p0

    .line 98
    move v1, v6

    .line 99
    move v2, p1

    .line 100
    move-object v3, v7

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModeFromPermissionState(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v12}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eq v0, v1, :cond_2

    .line 110
    .line 111
    invoke-virtual {v8, v12, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    .line 113
    .line 114
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    return-object v8

    .line 118
    :cond_4
    const-string/jumbo p0, "state"

    .line 119
    .line 120
    .line 121
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1
.end method

.method public final getPackageMode(IILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    move-object v1, p0

    .line 42
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 43
    .line 44
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {v1, p1, p0}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_1
    const-string/jumbo p0, "state"

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1
.end method

.method public final getPackageModes(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

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
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

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
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

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
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

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
    if-eqz p0, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 44
    .line 45
    :cond_1
    return-object v1

    .line 46
    :cond_2
    const-string/jumbo p0, "state"

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1
.end method

.method public final getUidMode(IILjava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    move-object v4, p2

    .line 20
    check-cast v4, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->runtimePermissionAppopsMappingEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const-string/jumbo v0, "state"

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-direct {p1, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 46
    .line 47
    .line 48
    move-object v0, p0

    .line 49
    move-object v3, p1

    .line 50
    move-object v5, p3

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModeFromPermissionState(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v5

    .line 60
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 80
    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    move-object v5, p0

    .line 94
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 95
    .line 96
    :cond_3
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v5, p1, p0}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    :goto_1
    return p0

    .line 115
    :cond_4
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v5
.end method

.method public final getUidModeFromPermissionState(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    const-string v0, "default:0"

    .line 2
    .line 3
    invoke-virtual {p5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 22
    .line 23
    iget-object v3, p3, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2, p3, p5, p4}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v3, p1, p2, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    :goto_1
    iget-object v6, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v6, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2, p3, p5, v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v3, p1, p2, v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const/16 v0, 0x10

    .line 73
    .line 74
    :goto_2
    invoke-static {v5, v0}, Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eq v0, v1, :cond_4

    .line 79
    .line 80
    return v0

    .line 81
    :cond_4
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    move-object v5, p4

    .line 88
    check-cast v5, Ljava/lang/String;

    .line 89
    .line 90
    if-nez v5, :cond_5

    .line 91
    .line 92
    return v0

    .line 93
    :cond_5
    move-object v1, p0

    .line 94
    move v2, p1

    .line 95
    move v3, p2

    .line 96
    move-object v4, p3

    .line 97
    move-object v6, p5

    .line 98
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModeFromPermissionState(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    return p0
.end method

.method public final readState()V
    .locals 0

    .line 1
    return-void
.end method

.method public final removePackage(ILjava/lang/String;)Z
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_4

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 p1, 0x0

    .line 39
    if-gez p0, :cond_0

    .line 40
    .line 41
    :goto_0
    move p0, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-object v4, v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-gez p2, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {v3, p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 87
    .line 88
    const/4 p0, 0x1

    .line 89
    :goto_1
    iput-boolean p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 90
    .line 91
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 108
    .line 109
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    move v1, p1

    .line 114
    :goto_2
    if-ge v1, p2, :cond_3

    .line 115
    .line 116
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 117
    .line 118
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 129
    .line 130
    check-cast v3, Ljava/lang/String;

    .line 131
    .line 132
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    move v5, p1

    .line 139
    :goto_3
    if-ge v5, v3, :cond_2

    .line 140
    .line 141
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 148
    .line 149
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 154
    .line 155
    check-cast v6, Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    .line 160
    add-int/lit8 v5, v5, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    monitor-exit v2

    .line 167
    iget-boolean p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 168
    .line 169
    return p0

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    goto :goto_4

    .line 172
    :cond_4
    :try_start_1
    const-string/jumbo p0, "state"

    .line 173
    .line 174
    .line 175
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const/4 p0, 0x0

    .line 179
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :goto_4
    monitor-exit v2

    .line 181
    throw p0
.end method

.method public final removeUid(I)V
    .locals 8

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
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_4

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-gez p0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/android/server/permission/access/MutableUserState;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p1, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-gez p1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v3, p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt$1(I)V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    const/4 v0, 0x0

    .line 105
    move v1, v0

    .line 106
    :goto_1
    if-ge v1, p1, :cond_3

    .line 107
    .line 108
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 121
    .line 122
    check-cast v3, Ljava/lang/String;

    .line 123
    .line 124
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    move v5, v0

    .line 131
    :goto_2
    if-ge v5, v3, :cond_2

    .line 132
    .line 133
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 140
    .line 141
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 146
    .line 147
    check-cast v6, Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    add-int/lit8 v5, v5, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    monitor-exit v2

    .line 159
    return-void

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto :goto_3

    .line 162
    :cond_4
    :try_start_1
    const-string/jumbo p0, "state"

    .line 163
    .line 164
    .line 165
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/4 p0, 0x0

    .line 169
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_3
    monitor-exit v2

    .line 171
    throw p0
.end method

.method public final setPackageMode(IIILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const-string v0, "com.android.systemui"

    .line 6
    .line 7
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->runtimePermissionAppopsMappingEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string p0, "AppOpService"

    .line 33
    .line 34
    const-string p1, "(packageName="

    .line 35
    .line 36
    const-string p2, ", userId="

    .line 37
    .line 38
    const-string v0, ")\'s appop state for runtime op "

    .line 39
    .line 40
    invoke-static {p3, p1, p4, p2, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, " should not be set directly."

    .line 45
    .line 46
    invoke-static {p1, v4, p2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    monitor-enter v6

    .line 66
    :try_start_0
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    .line 77
    .line 78
    invoke-direct {v1, v0, v7}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 82
    .line 83
    move-object v2, p4

    .line 84
    move v3, p3

    .line 85
    move v5, p2

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, v7}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    const/4 p2, 0x0

    .line 112
    move p3, p2

    .line 113
    :goto_0
    if-ge p3, p1, :cond_3

    .line 114
    .line 115
    iget-object p4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 128
    .line 129
    check-cast p4, Ljava/lang/String;

    .line 130
    .line 131
    iget-object p4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    .line 134
    .line 135
    .line 136
    move-result p4

    .line 137
    move v1, p2

    .line 138
    :goto_1
    if-ge v1, p4, :cond_2

    .line 139
    .line 140
    iget-object v2, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 147
    .line 148
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    .line 153
    .line 154
    check-cast v2, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    monitor-exit v6

    .line 166
    return-void

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    goto :goto_2

    .line 169
    :cond_4
    :try_start_1
    const-string/jumbo p0, "state"

    .line 170
    .line 171
    .line 172
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const/4 p0, 0x0

    .line 176
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :goto_2
    monitor-exit v6

    .line 178
    throw p0
.end method

.method public final setUidMode(III)Z
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->runtimePermissionAppopsMappingEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 51
    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    move-object v1, p0

    .line 65
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 66
    .line 67
    :cond_0
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v1, v4, p0}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eq p0, p3, :cond_1

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    move v0, v6

    .line 90
    :goto_0
    if-eqz v0, :cond_2

    .line 91
    .line 92
    const-string v1, "Blocked"

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const-string v1, "Ignored"

    .line 96
    .line 97
    :goto_1
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {p3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, " setUidMode call for runtime permission app op: uid = "

    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p1, ", code = "

    .line 130
    .line 131
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p1, ", mode = "

    .line 138
    .line 139
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, ", callingUid = "

    .line 146
    .line 147
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, ", oldMode = "

    .line 154
    .line 155
    invoke-static {v3, p1, p0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    const-string p1, "AppOpService"

    .line 162
    .line 163
    new-instance p2, Ljava/lang/RuntimeException;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_3
    const-string p1, "AppOpService"

    .line 173
    .line 174
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :goto_2
    return v6

    .line 178
    :cond_4
    const-string/jumbo p0, "state"

    .line 179
    .line 180
    .line 181
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v1

    .line 185
    :cond_5
    new-instance p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;

    .line 186
    .line 187
    invoke-direct {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 188
    .line 189
    .line 190
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 191
    .line 192
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    monitor-enter v7

    .line 197
    :try_start_0
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_8

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    .line 208
    .line 209
    invoke-direct {v1, v0, v8}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 213
    .line 214
    move v5, p3

    .line 215
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    iput-boolean p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 220
    .line 221
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {p0, v8}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 226
    .line 227
    .line 228
    invoke-static {p2, v8}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 229
    .line 230
    .line 231
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 236
    .line 237
    iget-object p2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 238
    .line 239
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    move p3, v6

    .line 244
    :goto_3
    if-ge p3, p2, :cond_7

    .line 245
    .line 246
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 247
    .line 248
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 253
    .line 254
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 259
    .line 260
    check-cast v0, Ljava/lang/String;

    .line 261
    .line 262
    iget-object v0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    move v2, v6

    .line 269
    :goto_4
    if-ge v2, v0, :cond_6

    .line 270
    .line 271
    iget-object v3, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 272
    .line 273
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 278
    .line 279
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    check-cast v4, Lcom/android/server/permission/access/SchemePolicy;

    .line 284
    .line 285
    check-cast v3, Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v4}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .line 289
    .line 290
    add-int/lit8 v2, v2, 0x1

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_6
    add-int/lit8 p3, p3, 0x1

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_7
    monitor-exit v7

    .line 297
    iget-boolean p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 298
    .line 299
    return p0

    .line 300
    :catchall_0
    move-exception p0

    .line 301
    goto :goto_5

    .line 302
    :cond_8
    :try_start_1
    const-string/jumbo p0, "state"

    .line 303
    .line 304
    .line 305
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :goto_5
    monitor-exit v7

    .line 310
    throw p0
.end method

.method public shutdown()V
    .locals 0

    .line 1
    return-void
.end method

.method public final systemReady()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->runtimePermissionAppopsMappingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    const/16 v3, 0x95

    .line 30
    .line 31
    if-ge v2, v3, :cond_2

    .line 32
    .line 33
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ne v2, v4, :cond_1

    .line 44
    .line 45
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    .line 55
    .line 56
    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/4 v6, 0x1

    .line 63
    if-ne v5, v6, :cond_1

    .line 64
    .line 65
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v5, v3, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v4, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 80
    .line 81
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 86
    .line 87
    invoke-virtual {v5, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 88
    .line 89
    .line 90
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    if-nez v6, :cond_0

    .line 102
    .line 103
    new-instance v6, Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :cond_0
    check-cast v6, Landroid/util/ArraySet;

    .line 112
    .line 113
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;

    .line 120
    .line 121
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    .line 125
    .line 126
    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v3, v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 133
    .line 134
    new-instance v5, Ljava/util/ArrayList;

    .line 135
    .line 136
    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iput-object v4, v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    .line 149
    monitor-exit v2

    .line 150
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listenersLock:Ljava/lang/Object;

    .line 153
    .line 154
    monitor-enter v1

    .line 155
    :try_start_1
    iget-object v2, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 161
    .line 162
    new-instance v4, Ljava/util/ArrayList;

    .line 163
    .line 164
    iget-object v2, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    .line 168
    .line 169
    invoke-direct {v3, v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iput-object v3, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .line 177
    monitor-exit v1

    .line 178
    goto :goto_1

    .line 179
    :catchall_0
    move-exception p0

    .line 180
    monitor-exit v1

    .line 181
    throw p0

    .line 182
    :catchall_1
    move-exception p0

    .line 183
    monitor-exit v2

    .line 184
    throw p0

    .line 185
    :cond_3
    const-string/jumbo p0, "state"

    .line 186
    .line 187
    .line 188
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const/4 p0, 0x0

    .line 192
    throw p0

    .line 193
    :cond_4
    :goto_1
    return-void
.end method

.method public writeState()V
    .locals 0

    .line 1
    return-void
.end method
