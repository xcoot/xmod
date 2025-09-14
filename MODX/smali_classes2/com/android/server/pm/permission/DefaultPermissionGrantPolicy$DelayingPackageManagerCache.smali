.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;
.super Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDelayedPermissionState:Landroid/util/SparseArray;

.field public final mPackageInfos:Landroid/util/ArrayMap;

.field public final mPermissionInfos:Landroid/util/ArrayMap;

.field public final mUserContexts:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 12
    .line 13
    new-instance p1, Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    .line 19
    .line 20
    new-instance p1, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    .line 26
    .line 27
    new-instance p1, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initFlags()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/content/pm/PermissionInfo;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ltz v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/util/ArrayMap;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object v0, v1

    .line 45
    :goto_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ltz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    .line 56
    .line 57
    iget-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 58
    .line 59
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-nez p3, :cond_2

    .line 66
    .line 67
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iput-object p2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    .line 79
    .line 80
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-object p0, v1

    .line 87
    :cond_2
    :goto_1
    return-object p0
.end method

.method public final grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initGranted()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    .line 11
    .line 12
    return-void
.end method

.method public final isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initGranted()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initGranted()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    .line 11
    .line 12
    return-void
.end method

.method public final updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initFlags()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    not-int p2, p3

    .line 15
    and-int/2addr p1, p2

    .line 16
    and-int p2, p4, p3

    .line 17
    .line 18
    or-int/2addr p1, p2

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    .line 24
    .line 25
    return-void
.end method
