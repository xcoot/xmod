.class public final Lcom/android/server/permission/access/AccessCheckingService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private appOpService:Lcom/android/server/permission/access/appop/AppOpService;

.field private packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field private permissionService:Lcom/android/server/permission/access/permission/PermissionService;

.field private final persistence:Lcom/android/server/permission/access/AccessPersistence;

.field private final policy:Lcom/android/server/permission/access/AccessPolicy;

.field private volatile state:Lcom/android/server/permission/access/AccessState;

.field private final stateLock:Ljava/lang/Object;

.field private systemConfig:Lcom/android/server/SystemConfig;

.field private userManagerService:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p1, Lcom/android/server/permission/access/AccessPolicy;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/android/server/permission/access/AccessPolicy;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/permission/access/AccessPersistence;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/android/server/permission/access/AccessPersistence;-><init>(Lcom/android/server/permission/access/AccessPolicy;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    .line 2
    .line 3
    return-void
.end method

.method private final getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getDisabledSystemPackageStates()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/server/permission/jarjar/kotlin/Pair;

    .line 14
    .line 15
    invoke-direct {v1, p1, v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :catchall_1
    move-exception v0

    .line 26
    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method private final getImplicitToSourcePermissions(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 58
    .line 59
    invoke-direct {v3}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-object p0
.end method

.method private final getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;
    .locals 4

    .line 1
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x7

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0xa

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/16 v0, 0xb

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const/16 v0, 0xc

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const/16 v0, 0xf

    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 97
    .line 98
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const/16 v0, 0x10

    .line 102
    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 108
    .line 109
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const/16 v0, 0x11

    .line 113
    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-object p0
.end method

.method private final getPrivilegedPermissionAllowlistPackages(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedListSet;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 12
    .line 13
    const-string v0, "android.hardware.type.automotive"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string/jumbo p1, "ro.android.car.carservice.package"

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object p0
.end method

.method private final isLeanback(Lcom/android/server/SystemConfig;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 2
    .line 3
    const-string p1, "android.software.leanback"

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method


# virtual methods
.method public final getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/permission/access/SchemePolicy;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    if-eqz p0, :cond_1

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "Scheme policy for "

    .line 29
    .line 30
    const-string v0, " and "

    .line 31
    .line 32
    const-string v1, " does not exist"

    .line 33
    .line 34
    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "state"

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v1

    .line 17
    :cond_0
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method public final initialize()V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 10
    .line 11
    iput-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 20
    .line 21
    iput-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 34
    .line 35
    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 36
    .line 37
    if-eqz v0, :cond_14

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v3, Landroid/util/SparseBooleanArray;

    .line 44
    .line 45
    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 46
    .line 47
    .line 48
    array-length v4, v0

    .line 49
    const/4 v6, 0x0

    .line 50
    :goto_0
    const/4 v7, 0x1

    .line 51
    if-ge v6, v4, :cond_0

    .line 52
    .line 53
    aget v8, v0, v6

    .line 54
    .line 55
    invoke-virtual {v3, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 62
    .line 63
    if-eqz v0, :cond_13

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Ljava/util/Map;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/util/Map;

    .line 80
    .line 81
    iget-object v6, v1, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 82
    .line 83
    if-eqz v6, :cond_12

    .line 84
    .line 85
    invoke-direct {v1, v6}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iget-object v8, v1, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 90
    .line 91
    if-eqz v8, :cond_11

    .line 92
    .line 93
    invoke-direct {v1, v8}, Lcom/android/server/permission/access/AccessCheckingService;->isLeanback(Lcom/android/server/SystemConfig;)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    iget-object v9, v1, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 98
    .line 99
    if-eqz v9, :cond_10

    .line 100
    .line 101
    iget-object v10, v9, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 102
    .line 103
    invoke-direct {v1, v9}, Lcom/android/server/permission/access/AccessCheckingService;->getPrivilegedPermissionAllowlistPackages(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    iget-object v11, v1, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 108
    .line 109
    if-eqz v11, :cond_f

    .line 110
    .line 111
    iget-object v12, v11, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 112
    .line 113
    invoke-direct {v1, v11}, Lcom/android/server/permission/access/AccessCheckingService;->getImplicitToSourcePermissions(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    new-instance v13, Lcom/android/server/permission/access/MutableAccessState;

    .line 118
    .line 119
    new-instance v14, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 120
    .line 121
    new-instance v15, Lcom/android/server/permission/access/MutableExternalState;

    .line 122
    .line 123
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 124
    .line 125
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 126
    .line 127
    invoke-direct {v2}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-direct {v5, v2, v2}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v17

    .line 137
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v18

    .line 141
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 142
    .line 143
    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 144
    .line 145
    invoke-direct {v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-direct {v2, v7, v7}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 149
    .line 150
    .line 151
    new-instance v20, Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 152
    .line 153
    invoke-direct/range {v20 .. v20}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    .line 157
    .line 158
    .line 159
    move-result-object v22

    .line 160
    new-instance v23, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 161
    .line 162
    invoke-direct/range {v23 .. v23}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 163
    .line 164
    .line 165
    new-instance v24, Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 166
    .line 167
    invoke-direct/range {v24 .. v24}, Lcom/android/server/pm/permission/PermissionAllowlist;-><init>()V

    .line 168
    .line 169
    .line 170
    new-instance v25, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 171
    .line 172
    invoke-direct/range {v25 .. v25}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 173
    .line 174
    .line 175
    const/16 v26, 0x0

    .line 176
    .line 177
    const/16 v21, 0x0

    .line 178
    .line 179
    move-object v7, v15

    .line 180
    move-object/from16 v16, v5

    .line 181
    .line 182
    move-object/from16 v19, v2

    .line 183
    .line 184
    invoke-direct/range {v15 .. v26}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V

    .line 185
    .line 186
    .line 187
    invoke-direct {v14, v7, v7}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 191
    .line 192
    new-instance v5, Lcom/android/server/permission/access/MutableSystemState;

    .line 193
    .line 194
    new-instance v7, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 195
    .line 196
    new-instance v15, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 197
    .line 198
    invoke-direct {v15}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-direct {v7, v15, v15}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 202
    .line 203
    .line 204
    new-instance v15, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 205
    .line 206
    move-object/from16 v16, v11

    .line 207
    .line 208
    new-instance v11, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 209
    .line 210
    invoke-direct {v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-direct {v15, v11, v11}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 214
    .line 215
    .line 216
    new-instance v11, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 217
    .line 218
    move-object/from16 v17, v12

    .line 219
    .line 220
    new-instance v12, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 221
    .line 222
    invoke-direct {v12}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-direct {v11, v12, v12}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v5, v7, v15, v11}, Lcom/android/server/permission/access/MutableSystemState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {v2, v5, v5}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 232
    .line 233
    .line 234
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 235
    .line 236
    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 237
    .line 238
    invoke-direct {v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-direct {v5, v7, v7}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {v13, v14, v2, v5}, Lcom/android/server/permission/access/AccessState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, v1, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iget-object v5, v2, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 257
    .line 258
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 263
    .line 264
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    const/4 v11, 0x0

    .line 269
    :goto_1
    if-ge v11, v7, :cond_1

    .line 270
    .line 271
    invoke-virtual {v3, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    iget-object v14, v5, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 276
    .line 277
    const/4 v15, 0x1

    .line 278
    invoke-virtual {v14, v12, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 279
    .line 280
    .line 281
    add-int/lit8 v11, v11, 0x1

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_1
    iput-object v4, v2, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 285
    .line 286
    iput-object v0, v2, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 287
    .line 288
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-eqz v4, :cond_4

    .line 301
    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    check-cast v4, Ljava/util/Map$Entry;

    .line 307
    .line 308
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 313
    .line 314
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v5, :cond_2

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_2
    iget-object v5, v2, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 322
    .line 323
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 328
    .line 329
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    if-eqz v11, :cond_3

    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_3
    new-instance v11, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 341
    .line 342
    invoke-direct {v11}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v5, v7, v11}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 346
    .line 347
    .line 348
    :goto_3
    check-cast v11, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 349
    .line 350
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v11, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_4
    iput-object v6, v2, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 359
    .line 360
    iput-boolean v8, v2, Lcom/android/server/permission/access/MutableExternalState;->isLeanback:Z

    .line 361
    .line 362
    iput-object v10, v2, Lcom/android/server/permission/access/MutableExternalState;->configPermissions:Ljava/util/Map;

    .line 363
    .line 364
    iput-object v9, v2, Lcom/android/server/permission/access/MutableExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 365
    .line 366
    move-object/from16 v0, v17

    .line 367
    .line 368
    iput-object v0, v2, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 369
    .line 370
    move-object/from16 v0, v16

    .line 371
    .line 372
    iput-object v0, v2, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 373
    .line 374
    iget-object v0, v13, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 375
    .line 376
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 381
    .line 382
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    const/4 v4, 0x0

    .line 387
    :goto_4
    if-ge v4, v2, :cond_5

    .line 388
    .line 389
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    new-instance v6, Lcom/android/server/permission/access/MutableUserState;

    .line 394
    .line 395
    invoke-direct {v6}, Lcom/android/server/permission/access/MutableUserState;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-static {v0, v5, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 399
    .line 400
    .line 401
    add-int/lit8 v4, v4, 0x1

    .line 402
    .line 403
    goto :goto_4

    .line 404
    :cond_5
    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    new-instance v2, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    .line 410
    .line 411
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-direct {v2, v0, v3}, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;-><init>(Lcom/android/server/permission/access/AccessPersistence;Landroid/os/Looper;)V

    .line 420
    .line 421
    .line 422
    iput-object v2, v0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    .line 423
    .line 424
    iget-object v2, v1, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    .line 425
    .line 426
    const-string v3, " not found"

    .line 427
    .line 428
    const-string v4, ".reservecopy"

    .line 429
    .line 430
    const-string v5, "Failed to read "

    .line 431
    .line 432
    iget-object v6, v2, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 433
    .line 434
    const-string v7, "AccessPersistence"

    .line 435
    .line 436
    new-instance v8, Ljava/io/File;

    .line 437
    .line 438
    const-string v0, "com.android.permission"

    .line 439
    .line 440
    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDir()Ljava/io/File;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    const-string v9, "access.abx"

    .line 449
    .line 450
    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    :try_start_0
    new-instance v9, Landroid/util/AtomicFile;

    .line 454
    .line 455
    invoke-direct {v9, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 456
    .line 457
    .line 458
    :try_start_1
    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 459
    .line 460
    .line 461
    move-result-object v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    :try_start_2
    new-instance v0, Lcom/android/modules/utils/BinaryXmlPullParser;

    .line 463
    .line 464
    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 465
    .line 466
    .line 467
    const/4 v11, 0x0

    .line 468
    invoke-virtual {v0, v10, v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v6, v0, v13}, Lcom/android/server/permission/access/AccessPolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    .line 473
    .line 474
    :try_start_3
    invoke-static {v10, v11}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 475
    .line 476
    .line 477
    goto/16 :goto_b

    .line 478
    .line 479
    :catch_0
    move-exception v0

    .line 480
    move-object v10, v0

    .line 481
    goto :goto_5

    .line 482
    :catch_1
    move-exception v0

    .line 483
    goto/16 :goto_7

    .line 484
    .line 485
    :catchall_0
    move-exception v0

    .line 486
    move-object v11, v0

    .line 487
    :try_start_4
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 488
    :catchall_1
    move-exception v0

    .line 489
    move-object v12, v0

    .line 490
    :try_start_5
    invoke-static {v10, v11}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 491
    .line 492
    .line 493
    throw v12
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 494
    :goto_5
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-static {v7, v0, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    .line 508
    .line 509
    new-instance v11, Ljava/io/File;

    .line 510
    .line 511
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 520
    .line 521
    .line 522
    move-result-object v9

    .line 523
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v9

    .line 527
    new-instance v12, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v9

    .line 542
    invoke-direct {v11, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 543
    .line 544
    .line 545
    :try_start_7
    new-instance v0, Landroid/util/AtomicFile;

    .line 546
    .line 547
    invoke-direct {v0, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 551
    .line 552
    .line 553
    move-result-object v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 554
    :try_start_8
    new-instance v0, Lcom/android/modules/utils/BinaryXmlPullParser;

    .line 555
    .line 556
    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 557
    .line 558
    .line 559
    const/4 v12, 0x0

    .line 560
    invoke-virtual {v0, v9, v12}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v6, v0, v13}, Lcom/android/server/permission/access/AccessPolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 564
    .line 565
    .line 566
    :try_start_9
    invoke-static {v9, v12}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 567
    .line 568
    .line 569
    goto/16 :goto_b

    .line 570
    .line 571
    :catch_2
    move-exception v0

    .line 572
    goto :goto_6

    .line 573
    :catchall_2
    move-exception v0

    .line 574
    move-object v12, v0

    .line 575
    :try_start_a
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 576
    :catchall_3
    move-exception v0

    .line 577
    move-object v14, v0

    .line 578
    :try_start_b
    invoke-static {v9, v12}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 579
    .line 580
    .line 581
    throw v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 582
    :goto_6
    :try_start_c
    new-instance v9, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    .line 596
    .line 597
    throw v10

    .line 598
    :catch_3
    move-exception v0

    .line 599
    goto :goto_8

    .line 600
    :goto_7
    throw v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 601
    :goto_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 602
    .line 603
    invoke-static {v8, v5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 608
    .line 609
    .line 610
    throw v1

    .line 611
    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .line 628
    .line 629
    iget-object v0, v6, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 630
    .line 631
    iget-object v8, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 632
    .line 633
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 634
    .line 635
    .line 636
    move-result v8

    .line 637
    const/4 v9, 0x0

    .line 638
    :goto_9
    if-ge v9, v8, :cond_7

    .line 639
    .line 640
    iget-object v10, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 641
    .line 642
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v10

    .line 646
    iget-object v11, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 647
    .line 648
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v11

    .line 652
    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 653
    .line 654
    check-cast v10, Ljava/lang/String;

    .line 655
    .line 656
    iget-object v10, v11, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 657
    .line 658
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 659
    .line 660
    .line 661
    move-result v10

    .line 662
    const/4 v12, 0x0

    .line 663
    :goto_a
    if-ge v12, v10, :cond_6

    .line 664
    .line 665
    iget-object v14, v11, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 666
    .line 667
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v14

    .line 671
    iget-object v15, v11, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 672
    .line 673
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v15

    .line 677
    check-cast v15, Lcom/android/server/permission/access/SchemePolicy;

    .line 678
    .line 679
    check-cast v14, Ljava/lang/String;

    .line 680
    .line 681
    invoke-virtual {v15, v13}, Lcom/android/server/permission/access/SchemePolicy;->migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 682
    .line 683
    .line 684
    add-int/lit8 v12, v12, 0x1

    .line 685
    .line 686
    goto :goto_a

    .line 687
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 688
    .line 689
    goto :goto_9

    .line 690
    :cond_7
    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    const/4 v8, -0x1

    .line 695
    invoke-virtual {v2, v0, v13, v8}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 696
    .line 697
    .line 698
    :goto_b
    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 703
    .line 704
    .line 705
    move-result-object v8

    .line 706
    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 707
    .line 708
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 709
    .line 710
    .line 711
    move-result v9

    .line 712
    const/4 v10, 0x0

    .line 713
    :goto_c
    if-ge v10, v9, :cond_a

    .line 714
    .line 715
    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 716
    .line 717
    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 718
    .line 719
    .line 720
    move-result v11

    .line 721
    new-instance v12, Ljava/io/File;

    .line 722
    .line 723
    const-string v0, "com.android.permission"

    .line 724
    .line 725
    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 730
    .line 731
    .line 732
    move-result-object v14

    .line 733
    invoke-virtual {v0, v14}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    const-string v14, "access.abx"

    .line 738
    .line 739
    invoke-direct {v12, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    :try_start_d
    new-instance v14, Landroid/util/AtomicFile;

    .line 743
    .line 744
    invoke-direct {v14, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 745
    .line 746
    .line 747
    :try_start_e
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 748
    .line 749
    .line 750
    move-result-object v15
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 751
    :try_start_f
    new-instance v0, Lcom/android/modules/utils/BinaryXmlPullParser;

    .line 752
    .line 753
    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 754
    .line 755
    .line 756
    move-object/from16 v16, v8

    .line 757
    .line 758
    const/4 v8, 0x0

    .line 759
    :try_start_10
    invoke-virtual {v0, v15, v8}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v6, v0, v13, v11}, Lcom/android/server/permission/access/AccessPolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 763
    .line 764
    .line 765
    :try_start_11
    invoke-static {v15, v8}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 766
    .line 767
    .line 768
    move/from16 v17, v9

    .line 769
    .line 770
    goto :goto_12

    .line 771
    :catch_5
    move-exception v0

    .line 772
    :goto_d
    move-object v8, v0

    .line 773
    goto :goto_11

    .line 774
    :catch_6
    move-exception v0

    .line 775
    :goto_e
    move/from16 v17, v9

    .line 776
    .line 777
    goto/16 :goto_15

    .line 778
    .line 779
    :catchall_4
    move-exception v0

    .line 780
    :goto_f
    move-object v8, v0

    .line 781
    goto :goto_10

    .line 782
    :catchall_5
    move-exception v0

    .line 783
    move-object/from16 v16, v8

    .line 784
    .line 785
    goto :goto_f

    .line 786
    :goto_10
    :try_start_12
    throw v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 787
    :catchall_6
    move-exception v0

    .line 788
    move-object/from16 v17, v0

    .line 789
    .line 790
    :try_start_13
    invoke-static {v15, v8}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 791
    .line 792
    .line 793
    throw v17
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    .line 794
    :catch_7
    move-exception v0

    .line 795
    move-object/from16 v16, v8

    .line 796
    .line 797
    goto :goto_d

    .line 798
    :goto_11
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 799
    .line 800
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-static {v7, v0, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    .line 812
    .line 813
    new-instance v15, Ljava/io/File;

    .line 814
    .line 815
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 824
    .line 825
    .line 826
    move-result-object v14

    .line 827
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v14
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    .line 831
    move/from16 v17, v9

    .line 832
    .line 833
    :try_start_15
    new-instance v9, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v9

    .line 848
    invoke-direct {v15, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    .line 849
    .line 850
    .line 851
    :try_start_16
    new-instance v0, Landroid/util/AtomicFile;

    .line 852
    .line 853
    invoke-direct {v0, v15}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 857
    .line 858
    .line 859
    move-result-object v9
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    .line 860
    :try_start_17
    new-instance v0, Lcom/android/modules/utils/BinaryXmlPullParser;

    .line 861
    .line 862
    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 863
    .line 864
    .line 865
    const/4 v14, 0x0

    .line 866
    invoke-virtual {v0, v9, v14}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v6, v0, v13, v11}, Lcom/android/server/permission/access/AccessPolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 870
    .line 871
    .line 872
    :try_start_18
    invoke-static {v9, v14}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    .line 873
    .line 874
    .line 875
    :goto_12
    move-object/from16 v19, v3

    .line 876
    .line 877
    goto/16 :goto_1a

    .line 878
    .line 879
    :catch_8
    move-exception v0

    .line 880
    goto :goto_13

    .line 881
    :catchall_7
    move-exception v0

    .line 882
    move-object v14, v0

    .line 883
    :try_start_19
    throw v14
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 884
    :catchall_8
    move-exception v0

    .line 885
    move-object/from16 v18, v0

    .line 886
    .line 887
    :try_start_1a
    invoke-static {v9, v14}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 888
    .line 889
    .line 890
    throw v18
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    .line 891
    :goto_13
    :try_start_1b
    new-instance v9, Ljava/lang/StringBuilder;

    .line 892
    .line 893
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v9

    .line 903
    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    .line 905
    .line 906
    throw v8

    .line 907
    :catch_9
    move-exception v0

    .line 908
    goto :goto_16

    .line 909
    :catch_a
    :goto_14
    move/from16 v17, v9

    .line 910
    .line 911
    goto :goto_17

    .line 912
    :catch_b
    move-exception v0

    .line 913
    move-object/from16 v16, v8

    .line 914
    .line 915
    goto/16 :goto_e

    .line 916
    .line 917
    :goto_15
    throw v0
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    .line 918
    :catch_c
    move-object/from16 v16, v8

    .line 919
    .line 920
    goto :goto_14

    .line 921
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 922
    .line 923
    invoke-static {v12, v5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 928
    .line 929
    .line 930
    throw v1

    .line 931
    :catch_d
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    .line 948
    .line 949
    iget-object v0, v6, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 950
    .line 951
    iget-object v8, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 952
    .line 953
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 954
    .line 955
    .line 956
    move-result v8

    .line 957
    const/4 v9, 0x0

    .line 958
    :goto_18
    if-ge v9, v8, :cond_9

    .line 959
    .line 960
    iget-object v12, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 961
    .line 962
    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v12

    .line 966
    iget-object v14, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 967
    .line 968
    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v14

    .line 972
    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 973
    .line 974
    check-cast v12, Ljava/lang/String;

    .line 975
    .line 976
    iget-object v12, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 977
    .line 978
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 979
    .line 980
    .line 981
    move-result v12

    .line 982
    const/4 v15, 0x0

    .line 983
    :goto_19
    move-object/from16 v18, v0

    .line 984
    .line 985
    if-ge v15, v12, :cond_8

    .line 986
    .line 987
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 988
    .line 989
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    move-object/from16 v19, v3

    .line 994
    .line 995
    iget-object v3, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 996
    .line 997
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v3

    .line 1001
    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    .line 1002
    .line 1003
    check-cast v0, Ljava/lang/String;

    .line 1004
    .line 1005
    invoke-virtual {v3, v13, v11}, Lcom/android/server/permission/access/SchemePolicy;->migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 1006
    .line 1007
    .line 1008
    add-int/lit8 v15, v15, 0x1

    .line 1009
    .line 1010
    move-object/from16 v0, v18

    .line 1011
    .line 1012
    move-object/from16 v3, v19

    .line 1013
    .line 1014
    goto :goto_19

    .line 1015
    :cond_8
    move-object/from16 v19, v3

    .line 1016
    .line 1017
    add-int/lit8 v9, v9, 0x1

    .line 1018
    .line 1019
    goto :goto_18

    .line 1020
    :cond_9
    move-object/from16 v19, v3

    .line 1021
    .line 1022
    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    invoke-virtual {v0, v11}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1031
    .line 1032
    .line 1033
    check-cast v0, Lcom/android/server/permission/access/WritableState;

    .line 1034
    .line 1035
    invoke-virtual {v2, v0, v13, v11}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 1036
    .line 1037
    .line 1038
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    .line 1039
    .line 1040
    move-object/from16 v8, v16

    .line 1041
    .line 1042
    move/from16 v9, v17

    .line 1043
    .line 1044
    move-object/from16 v3, v19

    .line 1045
    .line 1046
    goto/16 :goto_c

    .line 1047
    .line 1048
    :cond_a
    iput-object v13, v1, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    .line 1049
    .line 1050
    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    .line 1051
    .line 1052
    if-eqz v0, :cond_e

    .line 1053
    .line 1054
    new-instance v2, Landroid/os/Handler;

    .line 1055
    .line 1056
    iget-object v3, v0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    .line 1057
    .line 1058
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v3

    .line 1062
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1063
    .line 1064
    .line 1065
    iget-object v2, v0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 1066
    .line 1067
    new-instance v3, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;

    .line 1068
    .line 1069
    invoke-direct {v3, v0}, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    .line 1070
    .line 1071
    .line 1072
    iget-object v4, v2, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    .line 1073
    .line 1074
    monitor-enter v4

    .line 1075
    :try_start_1c
    iget-object v5, v2, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 1076
    .line 1077
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1078
    .line 1079
    .line 1080
    new-instance v6, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 1081
    .line 1082
    new-instance v7, Ljava/util/ArrayList;

    .line 1083
    .line 1084
    iget-object v5, v5, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-direct {v6, v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v6, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 1093
    .line 1094
    .line 1095
    iput-object v6, v2, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    .line 1096
    .line 1097
    monitor-exit v4

    .line 1098
    iget-object v2, v0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 1099
    .line 1100
    new-instance v3, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;

    .line 1101
    .line 1102
    invoke-direct {v3, v0}, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    .line 1103
    .line 1104
    .line 1105
    iget-object v4, v2, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    .line 1106
    .line 1107
    monitor-enter v4

    .line 1108
    :try_start_1d
    iget-object v0, v2, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 1109
    .line 1110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1111
    .line 1112
    .line 1113
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 1114
    .line 1115
    new-instance v6, Ljava/util/ArrayList;

    .line 1116
    .line 1117
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 1118
    .line 1119
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1120
    .line 1121
    .line 1122
    invoke-direct {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v5, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 1126
    .line 1127
    .line 1128
    iput-object v5, v2, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 1129
    .line 1130
    monitor-exit v4

    .line 1131
    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    .line 1132
    .line 1133
    if-eqz v0, :cond_d

    .line 1134
    .line 1135
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    .line 1136
    .line 1137
    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 1138
    .line 1139
    .line 1140
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1141
    .line 1142
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 1143
    .line 1144
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 1149
    .line 1150
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1151
    .line 1152
    const-class v1, Lcom/android/server/pm/PackageManagerLocal;

    .line 1153
    .line 1154
    invoke-static {v1}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    check-cast v1, Lcom/android/server/pm/PackageManagerLocal;

    .line 1159
    .line 1160
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 1161
    .line 1162
    const-string/jumbo v1, "platform_compat"

    .line 1163
    .line 1164
    .line 1165
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v1

    .line 1169
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 1174
    .line 1175
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v1

    .line 1179
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 1180
    .line 1181
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 1182
    .line 1183
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 1188
    .line 1189
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 1190
    .line 1191
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v1

    .line 1195
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 1196
    .line 1197
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 1198
    .line 1199
    .line 1200
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 1201
    .line 1202
    .line 1203
    new-instance v1, Lcom/android/server/ServiceThread;

    .line 1204
    .line 1205
    const/16 v2, 0xa

    .line 1206
    .line 1207
    const-string v3, "PermissionService"

    .line 1208
    .line 1209
    const/4 v4, 0x1

    .line 1210
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1214
    .line 1215
    .line 1216
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Lcom/android/server/ServiceThread;

    .line 1217
    .line 1218
    new-instance v1, Landroid/os/Handler;

    .line 1219
    .line 1220
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Lcom/android/server/ServiceThread;

    .line 1221
    .line 1222
    if-eqz v2, :cond_c

    .line 1223
    .line 1224
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v2

    .line 1228
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1229
    .line 1230
    .line 1231
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    .line 1232
    .line 1233
    new-instance v1, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    .line 1234
    .line 1235
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v2

    .line 1239
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v2

    .line 1243
    invoke-direct {v1, v2}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;-><init>(Landroid/os/Looper;)V

    .line 1244
    .line 1245
    .line 1246
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    .line 1247
    .line 1248
    new-instance v1, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    .line 1249
    .line 1250
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;-><init>(Lcom/android/server/permission/access/permission/PermissionService;)V

    .line 1251
    .line 1252
    .line 1253
    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    .line 1254
    .line 1255
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 1256
    .line 1257
    iget-object v3, v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    .line 1258
    .line 1259
    monitor-enter v3

    .line 1260
    :try_start_1e
    iget-object v4, v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 1261
    .line 1262
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1263
    .line 1264
    .line 1265
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 1266
    .line 1267
    new-instance v6, Ljava/util/ArrayList;

    .line 1268
    .line 1269
    iget-object v4, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 1270
    .line 1271
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1272
    .line 1273
    .line 1274
    invoke-direct {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v5, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 1278
    .line 1279
    .line 1280
    iput-object v5, v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 1281
    .line 1282
    monitor-exit v3

    .line 1283
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 1284
    .line 1285
    iget-object v0, v0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    .line 1286
    .line 1287
    if-eqz v0, :cond_b

    .line 1288
    .line 1289
    iget-object v2, v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listenersLock:Ljava/lang/Object;

    .line 1290
    .line 1291
    monitor-enter v2

    .line 1292
    :try_start_1f
    iget-object v3, v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 1293
    .line 1294
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1295
    .line 1296
    .line 1297
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 1298
    .line 1299
    new-instance v5, Ljava/util/ArrayList;

    .line 1300
    .line 1301
    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 1302
    .line 1303
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-direct {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v4, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 1310
    .line 1311
    .line 1312
    iput-object v4, v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 1313
    .line 1314
    monitor-exit v2

    .line 1315
    return-void

    .line 1316
    :catchall_9
    move-exception v0

    .line 1317
    monitor-exit v2

    .line 1318
    throw v0

    .line 1319
    :cond_b
    const-string/jumbo v0, "onPermissionFlagsChangedListener"

    .line 1320
    .line 1321
    .line 1322
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    const/4 v1, 0x0

    .line 1326
    throw v1

    .line 1327
    :catchall_a
    move-exception v0

    .line 1328
    monitor-exit v3

    .line 1329
    throw v0

    .line 1330
    :cond_c
    const-string v0, "handlerThread"

    .line 1331
    .line 1332
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1333
    .line 1334
    .line 1335
    const/4 v1, 0x0

    .line 1336
    throw v1

    .line 1337
    :cond_d
    const/4 v1, 0x0

    .line 1338
    const-string/jumbo v0, "permissionService"

    .line 1339
    .line 1340
    .line 1341
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    throw v1

    .line 1345
    :catchall_b
    move-exception v0

    .line 1346
    monitor-exit v4

    .line 1347
    throw v0

    .line 1348
    :catchall_c
    move-exception v0

    .line 1349
    monitor-exit v4

    .line 1350
    throw v0

    .line 1351
    :cond_e
    const-string v0, "appOpService"

    .line 1352
    .line 1353
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1354
    .line 1355
    .line 1356
    const/4 v1, 0x0

    .line 1357
    throw v1

    .line 1358
    :cond_f
    const/4 v1, 0x0

    .line 1359
    const-string/jumbo v0, "systemConfig"

    .line 1360
    .line 1361
    .line 1362
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    throw v1

    .line 1366
    :cond_10
    const/4 v1, 0x0

    .line 1367
    const-string/jumbo v0, "systemConfig"

    .line 1368
    .line 1369
    .line 1370
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    throw v1

    .line 1374
    :cond_11
    const/4 v1, 0x0

    .line 1375
    const-string/jumbo v0, "systemConfig"

    .line 1376
    .line 1377
    .line 1378
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    throw v1

    .line 1382
    :cond_12
    const/4 v1, 0x0

    .line 1383
    const-string/jumbo v0, "packageManagerInternal"

    .line 1384
    .line 1385
    .line 1386
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1387
    .line 1388
    .line 1389
    throw v1

    .line 1390
    :cond_13
    const/4 v1, 0x0

    .line 1391
    const-string/jumbo v0, "packageManagerLocal"

    .line 1392
    .line 1393
    .line 1394
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1395
    .line 1396
    .line 1397
    throw v1

    .line 1398
    :cond_14
    const/4 v1, 0x0

    .line 1399
    const-string/jumbo v0, "userManagerService"

    .line 1400
    .line 1401
    .line 1402
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1403
    .line 1404
    .line 1405
    throw v1
.end method

.method public final mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "state"

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    .line 27
    .line 28
    invoke-direct {v3, p0, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    throw p0
.end method

.method public final onPackageAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move-object v5, v2

    .line 15
    check-cast v5, Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v6, v0

    .line 22
    check-cast v6, Ljava/util/Map;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    .line 48
    .line 49
    invoke-direct {v4, v2, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v8, p1

    .line 57
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/AccessPolicy;->onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const/4 v1, 0x0

    .line 83
    move v2, v1

    .line 84
    :goto_0
    if-ge v2, p1, :cond_1

    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 99
    .line 100
    check-cast v3, Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    move v5, v1

    .line 109
    :goto_1
    if-ge v5, v3, :cond_0

    .line 110
    .line 111
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 124
    .line 125
    check-cast v6, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    add-int/lit8 v5, v5, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    monitor-exit v0

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    :try_start_1
    const-string/jumbo p0, "state"

    .line 141
    .line 142
    .line 143
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :goto_2
    monitor-exit v0

    .line 148
    throw p0

    .line 149
    :cond_3
    const-string/jumbo p0, "packageManagerInternal"

    .line 150
    .line 151
    .line 152
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v1

    .line 156
    :cond_4
    const-string/jumbo p0, "packageManagerLocal"

    .line 157
    .line 158
    .line 159
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1
.end method

.method public final onPackageInstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move-object v5, v2

    .line 15
    check-cast v5, Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v6, v0

    .line 22
    check-cast v6, Ljava/util/Map;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    .line 48
    .line 49
    invoke-direct {v4, v2, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v8, p1

    .line 57
    move v9, p2

    .line 58
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/AccessPolicy;->onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/4 p2, 0x0

    .line 84
    move v1, p2

    .line 85
    :goto_0
    if-ge v1, p1, :cond_1

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 100
    .line 101
    check-cast v2, Ljava/lang/String;

    .line 102
    .line 103
    iget-object v2, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    move v4, p2

    .line 110
    :goto_1
    if-ge v4, v2, :cond_0

    .line 111
    .line 112
    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 119
    .line 120
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 125
    .line 126
    check-cast v5, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    monitor-exit v0

    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    :try_start_1
    const-string/jumbo p0, "state"

    .line 142
    .line 143
    .line 144
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_2
    monitor-exit v0

    .line 149
    throw p0

    .line 150
    :cond_3
    const-string/jumbo p0, "packageManagerInternal"

    .line 151
    .line 152
    .line 153
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :cond_4
    const-string/jumbo p0, "packageManagerLocal"

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v1
.end method

.method public final onPackageRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move-object v5, v2

    .line 15
    check-cast v5, Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v6, v0

    .line 22
    check-cast v6, Ljava/util/Map;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    .line 48
    .line 49
    invoke-direct {v4, v2, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v8, p1

    .line 57
    move v9, p2

    .line 58
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/AccessPolicy;->onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/4 p2, 0x0

    .line 84
    move v1, p2

    .line 85
    :goto_0
    if-ge v1, p1, :cond_1

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 100
    .line 101
    check-cast v2, Ljava/lang/String;

    .line 102
    .line 103
    iget-object v2, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    move v4, p2

    .line 110
    :goto_1
    if-ge v4, v2, :cond_0

    .line 111
    .line 112
    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 119
    .line 120
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 125
    .line 126
    check-cast v5, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    monitor-exit v0

    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    :try_start_1
    const-string/jumbo p0, "state"

    .line 142
    .line 143
    .line 144
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_2
    monitor-exit v0

    .line 149
    throw p0

    .line 150
    :cond_3
    const-string/jumbo p0, "packageManagerInternal"

    .line 151
    .line 152
    .line 153
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :cond_4
    const-string/jumbo p0, "packageManagerLocal"

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v1
.end method

.method public final onPackageUninstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move-object v5, v2

    .line 15
    check-cast v5, Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v6, v0

    .line 22
    check-cast v6, Ljava/util/Map;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    .line 48
    .line 49
    invoke-direct {v4, v2, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v8, p1

    .line 57
    move v9, p2

    .line 58
    move v10, p3

    .line 59
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/permission/access/AccessPolicy;->onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;II)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const/4 p2, 0x0

    .line 85
    move p3, p2

    .line 86
    :goto_0
    if-ge p3, p1, :cond_1

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 101
    .line 102
    check-cast v1, Ljava/lang/String;

    .line 103
    .line 104
    iget-object v1, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    move v3, p2

    .line 111
    :goto_1
    if-ge v3, v1, :cond_0

    .line 112
    .line 113
    iget-object v4, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 114
    .line 115
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-object v5, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    .line 126
    .line 127
    check-cast v4, Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    monitor-exit v0

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    :try_start_1
    const-string/jumbo p0, "state"

    .line 143
    .line 144
    .line 145
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_2
    monitor-exit v0

    .line 150
    throw p0

    .line 151
    :cond_3
    const-string/jumbo p0, "packageManagerInternal"

    .line 152
    .line 153
    .line 154
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v1

    .line 158
    :cond_4
    const-string/jumbo p0, "packageManagerLocal"

    .line 159
    .line 160
    .line 161
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v1
.end method

.method public onStart()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/AppOpService;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionService;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-class v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 21
    .line 22
    invoke-static {v2, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    .line 37
    .line 38
    .line 39
    const-class p0, Lcom/android/server/permission/PermissionManagerLocal;

    .line 40
    .line 41
    invoke-static {p0, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const-string/jumbo p0, "permissionService"

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_1
    const-string p0, "appOpService"

    .line 53
    .line 54
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public final onStorageVolumeMounted$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move-object v5, v2

    .line 15
    check-cast v5, Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v6, v0

    .line 22
    check-cast v6, Ljava/util/Map;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    .line 48
    .line 49
    invoke-direct {v4, v2, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v8, p1

    .line 57
    move-object v9, p2

    .line 58
    move v10, p3

    .line 59
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/permission/access/AccessPolicy;->onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;Ljava/util/List;Z)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const/4 p2, 0x0

    .line 85
    move p3, p2

    .line 86
    :goto_0
    if-ge p3, p1, :cond_1

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 101
    .line 102
    check-cast v1, Ljava/lang/String;

    .line 103
    .line 104
    iget-object v1, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    move v3, p2

    .line 111
    :goto_1
    if-ge v3, v1, :cond_0

    .line 112
    .line 113
    iget-object v4, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 114
    .line 115
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-object v5, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    .line 126
    .line 127
    check-cast v4, Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    monitor-exit v0

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    :try_start_1
    const-string/jumbo p0, "state"

    .line 143
    .line 144
    .line 145
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_2
    monitor-exit v0

    .line 150
    throw p0

    .line 151
    :cond_3
    const-string/jumbo p0, "packageManagerInternal"

    .line 152
    .line 153
    .line 154
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v1

    .line 158
    :cond_4
    const-string/jumbo p0, "packageManagerLocal"

    .line 159
    .line 160
    .line 161
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v1
.end method

.method public final onSystemReady$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()V
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x1

    .line 28
    iput-boolean v4, v3, Lcom/android/server/permission/access/MutableExternalState;->isSystemReady:Z

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 31
    .line 32
    iget-object v3, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    move v5, v4

    .line 40
    :goto_0
    if-ge v5, v3, :cond_1

    .line 41
    .line 42
    iget-object v6, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v7, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 55
    .line 56
    check-cast v6, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v6, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    move v8, v4

    .line 65
    :goto_1
    if-ge v8, v6, :cond_0

    .line 66
    .line 67
    iget-object v9, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    iget-object v10, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    check-cast v10, Lcom/android/server/permission/access/SchemePolicy;

    .line 80
    .line 81
    check-cast v9, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v10}, Lcom/android/server/permission/access/SchemePolicy;->onSystemReady()V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v8, v8, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    move v2, v4

    .line 115
    :goto_2
    if-ge v2, v1, :cond_3

    .line 116
    .line 117
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 124
    .line 125
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 130
    .line 131
    check-cast v3, Ljava/lang/String;

    .line 132
    .line 133
    iget-object v3, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    move v6, v4

    .line 140
    :goto_3
    if-ge v6, v3, :cond_2

    .line 141
    .line 142
    iget-object v7, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 143
    .line 144
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    iget-object v8, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    .line 155
    .line 156
    check-cast v7, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v8}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_3
    monitor-exit v0

    .line 168
    return-void

    .line 169
    :catchall_0
    move-exception p0

    .line 170
    goto :goto_4

    .line 171
    :cond_4
    :try_start_1
    const-string/jumbo p0, "state"

    .line 172
    .line 173
    .line 174
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const/4 p0, 0x0

    .line 178
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :goto_4
    monitor-exit v0

    .line 180
    throw p0
.end method

.method public final onUserAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    .line 17
    .line 18
    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v3, p1}, Lcom/android/server/permission/access/AccessPolicy;->onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

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
    const/4 v1, 0x0

    .line 51
    move v2, v1

    .line 52
    :goto_0
    if-ge v2, p1, :cond_1

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 67
    .line 68
    check-cast v3, Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    move v5, v1

    .line 77
    :goto_1
    if-ge v5, v3, :cond_0

    .line 78
    .line 79
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 92
    .line 93
    check-cast v6, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_0
    add-int/lit8 v2, v2, 0x1

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

.method public final onUserRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    .line 17
    .line 18
    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v3, p1}, Lcom/android/server/permission/access/AccessPolicy;->onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

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
    const/4 v1, 0x0

    .line 51
    move v2, v1

    .line 52
    :goto_0
    if-ge v2, p1, :cond_1

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 67
    .line 68
    check-cast v3, Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    move v5, v1

    .line 77
    :goto_1
    if-ge v5, v3, :cond_0

    .line 78
    .line 79
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 92
    .line 93
    check-cast v6, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_0
    add-int/lit8 v2, v2, 0x1

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
