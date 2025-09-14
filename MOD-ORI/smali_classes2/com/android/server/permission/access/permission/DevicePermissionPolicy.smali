.class public final Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

.field public final listenersLock:Ljava/lang/Object;

.field public final persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listenersLock:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method public static getPermissionFlags(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p2, p2, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/permission/access/MutableUserState;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, p4, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    :cond_0
    return p2
.end method

.method public static onDeviceIdRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x1

    .line 39
    sub-int/2addr v5, v6

    .line 40
    :goto_1
    const/4 v7, -0x1

    .line 41
    if-ge v7, v5, :cond_1

    .line 42
    .line 43
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 54
    .line 55
    invoke-virtual {p0, v3, v6}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v8, v8, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 63
    .line 64
    invoke-virtual {v8}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    check-cast v8, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 69
    .line 70
    invoke-virtual {v8, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 75
    .line 76
    if-nez v7, :cond_0

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_0
    invoke-virtual {v7, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove$1(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    return-void
.end method

.method public static trimDevicePermissionStates(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_4

    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x1

    .line 39
    sub-int/2addr v5, v6

    .line 40
    :goto_1
    const/4 v7, -0x1

    .line 41
    if-ge v7, v5, :cond_3

    .line 42
    .line 43
    iget-object v8, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    check-cast v9, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 54
    .line 55
    invoke-virtual {p0, v3, v6}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v9, v9, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 63
    .line 64
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    check-cast v9, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 69
    .line 70
    invoke-virtual {v9, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 75
    .line 76
    if-nez v8, :cond_0

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_0
    iget-object v9, v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    sub-int/2addr v9, v6

    .line 86
    :goto_2
    if-ge v7, v9, :cond_2

    .line 87
    .line 88
    iget-object v10, v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    invoke-virtual {v8, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 99
    .line 100
    check-cast v10, Ljava/lang/String;

    .line 101
    .line 102
    invoke-interface {p1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-nez v11, :cond_1

    .line 107
    .line 108
    invoke-virtual {v8, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove$1(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    add-int/lit8 v9, v9, -0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    return-void
.end method


# virtual methods
.method public final getObjectScheme()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "device-permission"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubjectScheme()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "uid"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 3

    .line 1
    iget-object p0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-static {p0, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 48
    .line 49
    invoke-static {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public final onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimPermissionStates$1(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object p2, p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->contains(I)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimPermissionStates$1(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStateMutated()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;->onStateMutated()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/List;Z)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-ge v0, p3, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v2, v2, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimPermissionStates$1(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 36
    .line 37
    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "app-id-device-permissions"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2c

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    move-object/from16 v2, p2

    .line 24
    .line 25
    move/from16 v3, p3

    .line 26
    .line 27
    invoke-virtual {v2, v3, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v1, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v5, "Unexpected event type "

    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    if-ne v4, v6, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 55
    .line 56
    invoke-static {v4, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/4 v7, 0x3

    .line 69
    const/4 v8, 0x1

    .line 70
    if-eq v4, v8, :cond_2

    .line 71
    .line 72
    if-eq v4, v6, :cond_2

    .line 73
    .line 74
    if-eq v4, v7, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    const-string v9, " when parsing permission state"

    .line 82
    .line 83
    const-string v10, "DevicePermissionPersistence"

    .line 84
    .line 85
    if-eq v4, v8, :cond_2a

    .line 86
    .line 87
    if-eq v4, v6, :cond_4

    .line 88
    .line 89
    if-ne v4, v7, :cond_3

    .line 90
    .line 91
    goto/16 :goto_14

    .line 92
    .line 93
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 94
    .line 95
    invoke-static {v4, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    const-string v12, "app-id"

    .line 112
    .line 113
    invoke-static {v11, v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    const-string v12, "Ignoring unknown tag "

    .line 118
    .line 119
    const-string v13, "Unexpected post-block depth "

    .line 120
    .line 121
    const-string v14, ", expected "

    .line 122
    .line 123
    if-eqz v11, :cond_21

    .line 124
    .line 125
    const/4 v11, 0x0

    .line 126
    const-string v15, "id"

    .line 127
    .line 128
    invoke-virtual {v0, v11, v15}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    new-instance v11, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 133
    .line 134
    invoke-direct {v11}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v7, v11}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_6

    .line 145
    .line 146
    if-ne v7, v6, :cond_5

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 150
    .line 151
    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eq v7, v8, :cond_7

    .line 164
    .line 165
    if-eq v7, v6, :cond_7

    .line 166
    .line 167
    const/4 v6, 0x3

    .line 168
    if-eq v7, v6, :cond_8

    .line 169
    .line 170
    const/4 v6, 0x2

    .line 171
    goto :goto_2

    .line 172
    :cond_7
    const/4 v6, 0x3

    .line 173
    :cond_8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eq v7, v8, :cond_22

    .line 178
    .line 179
    const/4 v8, 0x2

    .line 180
    if-eq v7, v8, :cond_a

    .line 181
    .line 182
    if-ne v7, v6, :cond_9

    .line 183
    .line 184
    goto/16 :goto_f

    .line 185
    .line 186
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 187
    .line 188
    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    const-string v8, "device"

    .line 205
    .line 206
    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-eqz v7, :cond_1a

    .line 211
    .line 212
    const/4 v7, 0x0

    .line 213
    invoke-virtual {v0, v7, v15}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    invoke-virtual {v0, v8}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    new-instance v8, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 222
    .line 223
    invoke-direct {v8}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v11, v7, v8}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    const/4 v2, 0x2

    .line 234
    if-eqz v7, :cond_c

    .line 235
    .line 236
    if-ne v7, v2, :cond_b

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 240
    .line 241
    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_c
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    move-object/from16 v16, v11

    .line 254
    .line 255
    const/4 v11, 0x1

    .line 256
    if-eq v7, v11, :cond_d

    .line 257
    .line 258
    if-eq v7, v2, :cond_d

    .line 259
    .line 260
    const/4 v2, 0x3

    .line 261
    if-eq v7, v2, :cond_e

    .line 262
    .line 263
    move-object/from16 v11, v16

    .line 264
    .line 265
    const/4 v2, 0x2

    .line 266
    goto :goto_4

    .line 267
    :cond_d
    const/4 v2, 0x3

    .line 268
    :cond_e
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-eq v7, v11, :cond_f

    .line 273
    .line 274
    const/4 v11, 0x2

    .line 275
    if-eq v7, v11, :cond_11

    .line 276
    .line 277
    if-ne v7, v2, :cond_10

    .line 278
    .line 279
    :cond_f
    move-object/from16 v17, v15

    .line 280
    .line 281
    goto/16 :goto_b

    .line 282
    .line 283
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 284
    .line 285
    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    const-string/jumbo v11, "permission"

    .line 302
    .line 303
    .line 304
    invoke-static {v7, v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    if-eqz v7, :cond_12

    .line 309
    .line 310
    const-string/jumbo v7, "name"

    .line 311
    .line 312
    .line 313
    const/4 v11, 0x0

    .line 314
    invoke-virtual {v0, v11, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    invoke-virtual {v0, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    const-string v11, "intern(...)"

    .line 327
    .line 328
    invoke-static {v11, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    const-string v11, "flags"

    .line 332
    .line 333
    move-object/from16 v17, v15

    .line 334
    .line 335
    const/4 v15, 0x0

    .line 336
    invoke-virtual {v0, v15, v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    invoke-virtual {v8, v7, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_12
    move-object/from16 v17, v15

    .line 349
    .line 350
    const/4 v15, 0x0

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-static {v12, v7, v9, v10}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-ne v7, v2, :cond_19

    .line 363
    .line 364
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 365
    .line 366
    .line 367
    move-result v7

    .line 368
    const/4 v11, 0x2

    .line 369
    if-eq v7, v11, :cond_18

    .line 370
    .line 371
    const/4 v15, 0x3

    .line 372
    if-ne v7, v15, :cond_17

    .line 373
    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    if-le v7, v2, :cond_15

    .line 379
    .line 380
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    const/4 v15, 0x1

    .line 385
    if-eq v7, v15, :cond_13

    .line 386
    .line 387
    if-eq v7, v11, :cond_13

    .line 388
    .line 389
    const/4 v11, 0x3

    .line 390
    if-eq v7, v11, :cond_14

    .line 391
    .line 392
    move v15, v11

    .line 393
    const/4 v11, 0x2

    .line 394
    goto :goto_8

    .line 395
    :cond_13
    const/4 v11, 0x3

    .line 396
    :cond_14
    const/4 v15, 0x0

    .line 397
    goto :goto_7

    .line 398
    :cond_15
    move v11, v15

    .line 399
    :goto_9
    const/4 v15, 0x1

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eq v2, v15, :cond_16

    .line 405
    .line 406
    const/4 v7, 0x2

    .line 407
    if-eq v2, v7, :cond_16

    .line 408
    .line 409
    if-eq v2, v11, :cond_16

    .line 410
    .line 411
    goto :goto_9

    .line 412
    :cond_16
    move-object/from16 v15, v17

    .line 413
    .line 414
    const/4 v2, 0x3

    .line 415
    const/4 v11, 0x1

    .line 416
    goto/16 :goto_5

    .line 417
    .line 418
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 419
    .line 420
    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v0

    .line 428
    :cond_18
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    const/4 v11, 0x1

    .line 433
    if-eq v7, v11, :cond_14

    .line 434
    .line 435
    const/4 v11, 0x2

    .line 436
    if-eq v7, v11, :cond_14

    .line 437
    .line 438
    const/4 v11, 0x3

    .line 439
    if-eq v7, v11, :cond_14

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 443
    .line 444
    invoke-static {v7, v2, v13, v14}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw v0

    .line 452
    :cond_1a
    move-object/from16 v16, v11

    .line 453
    .line 454
    move-object/from16 v17, v15

    .line 455
    .line 456
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-static {v12, v2, v9, v10}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-ne v2, v6, :cond_20

    .line 468
    .line 469
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    const/4 v7, 0x2

    .line 474
    if-eq v2, v7, :cond_1f

    .line 475
    .line 476
    const/4 v8, 0x3

    .line 477
    if-ne v2, v8, :cond_1e

    .line 478
    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    if-le v2, v6, :cond_1c

    .line 484
    .line 485
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    const/4 v11, 0x1

    .line 490
    if-eq v2, v11, :cond_1b

    .line 491
    .line 492
    if-eq v2, v7, :cond_1b

    .line 493
    .line 494
    if-eq v2, v8, :cond_1b

    .line 495
    .line 496
    goto :goto_c

    .line 497
    :cond_1c
    :goto_d
    const/4 v11, 0x1

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-eq v2, v11, :cond_1d

    .line 503
    .line 504
    if-eq v2, v7, :cond_1d

    .line 505
    .line 506
    if-eq v2, v8, :cond_1d

    .line 507
    .line 508
    const/4 v7, 0x2

    .line 509
    goto :goto_d

    .line 510
    :cond_1d
    move-object/from16 v2, p2

    .line 511
    .line 512
    move-object/from16 v11, v16

    .line 513
    .line 514
    move-object/from16 v15, v17

    .line 515
    .line 516
    const/4 v6, 0x3

    .line 517
    const/4 v8, 0x1

    .line 518
    goto/16 :goto_3

    .line 519
    .line 520
    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 521
    .line 522
    invoke-static {v2, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw v0

    .line 530
    :cond_1f
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    const/4 v7, 0x1

    .line 535
    if-eq v2, v7, :cond_1b

    .line 536
    .line 537
    const/4 v7, 0x2

    .line 538
    if-eq v2, v7, :cond_1b

    .line 539
    .line 540
    const/4 v7, 0x3

    .line 541
    if-eq v2, v7, :cond_1b

    .line 542
    .line 543
    goto :goto_e

    .line 544
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 545
    .line 546
    invoke-static {v2, v6, v13, v14}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    throw v0

    .line 554
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    invoke-static {v12, v2, v9, v10}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    :cond_22
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-ne v2, v4, :cond_29

    .line 566
    .line 567
    :cond_23
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    const/4 v6, 0x2

    .line 572
    if-eq v2, v6, :cond_27

    .line 573
    .line 574
    const/4 v7, 0x3

    .line 575
    if-ne v2, v7, :cond_26

    .line 576
    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-le v2, v4, :cond_24

    .line 582
    .line 583
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    const/4 v8, 0x1

    .line 588
    if-eq v2, v8, :cond_23

    .line 589
    .line 590
    if-eq v2, v6, :cond_23

    .line 591
    .line 592
    if-eq v2, v7, :cond_23

    .line 593
    .line 594
    goto :goto_11

    .line 595
    :cond_24
    :goto_12
    const/4 v8, 0x1

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-eq v2, v8, :cond_25

    .line 601
    .line 602
    if-eq v2, v6, :cond_25

    .line 603
    .line 604
    if-eq v2, v7, :cond_25

    .line 605
    .line 606
    const/4 v6, 0x2

    .line 607
    goto :goto_12

    .line 608
    :cond_25
    move-object/from16 v2, p2

    .line 609
    .line 610
    const/4 v6, 0x2

    .line 611
    const/4 v7, 0x3

    .line 612
    const/4 v8, 0x1

    .line 613
    goto/16 :goto_1

    .line 614
    .line 615
    :cond_26
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 616
    .line 617
    invoke-static {v2, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    throw v0

    .line 625
    :cond_27
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    const/4 v6, 0x1

    .line 630
    if-eq v2, v6, :cond_28

    .line 631
    .line 632
    const/4 v6, 0x2

    .line 633
    const/4 v7, 0x3

    .line 634
    if-eq v2, v6, :cond_23

    .line 635
    .line 636
    if-eq v2, v7, :cond_23

    .line 637
    .line 638
    goto :goto_13

    .line 639
    :cond_28
    const/4 v6, 0x2

    .line 640
    const/4 v7, 0x3

    .line 641
    goto :goto_10

    .line 642
    :cond_29
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 643
    .line 644
    invoke-static {v2, v4, v13, v14}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw v0

    .line 652
    :cond_2a
    :goto_14
    iget-object v0, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 653
    .line 654
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    const/4 v2, 0x1

    .line 659
    sub-int/2addr v0, v2

    .line 660
    :goto_15
    const/4 v2, -0x1

    .line 661
    if-ge v2, v0, :cond_2c

    .line 662
    .line 663
    iget-object v2, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 664
    .line 665
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 666
    .line 667
    .line 668
    move-result v2

    .line 669
    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    check-cast v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 674
    .line 675
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    iget-object v4, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 684
    .line 685
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    if-nez v4, :cond_2b

    .line 690
    .line 691
    const-string v4, "Dropping unknown app ID "

    .line 692
    .line 693
    invoke-static {v2, v4, v9, v10}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt$1(I)V

    .line 697
    .line 698
    .line 699
    const/4 v2, 0x1

    .line 700
    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    .line 701
    .line 702
    .line 703
    goto :goto_16

    .line 704
    :cond_2b
    const/4 v2, 0x1

    .line 705
    :goto_16
    add-int/lit8 v0, v0, -0x1

    .line 706
    .line 707
    goto :goto_15

    .line 708
    :cond_2c
    return-void
.end method

.method public final resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v9, v8, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 6
    .line 7
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move/from16 v11, p3

    .line 38
    .line 39
    invoke-virtual {v1, v11}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v10}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v12, v1

    .line 57
    check-cast v12, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 58
    .line 59
    if-nez v12, :cond_3

    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    :cond_4
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v14, v1

    .line 81
    check-cast v14, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, v10}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 99
    .line 100
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const/4 v3, 0x0

    .line 107
    move v4, v3

    .line 108
    :goto_1
    if-ge v4, v2, :cond_6

    .line 109
    .line 110
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    iget-object v6, v6, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    .line 132
    .line 133
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    if-eqz v6, :cond_5

    .line 138
    .line 139
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-static {v6, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_5

    .line 148
    .line 149
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_5

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_6
    iget-object v1, v12, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 173
    .line 174
    .line 175
    move-result v15

    .line 176
    move v7, v3

    .line 177
    :goto_2
    if-ge v7, v15, :cond_4

    .line 178
    .line 179
    iget-object v1, v12, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 180
    .line 181
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v12, v7}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 190
    .line 191
    move-object v6, v1

    .line 192
    check-cast v6, Ljava/lang/String;

    .line 193
    .line 194
    const/4 v4, 0x0

    .line 195
    move-object/from16 v1, p0

    .line 196
    .line 197
    move v2, v10

    .line 198
    move/from16 v3, p3

    .line 199
    .line 200
    move-object/from16 v5, p1

    .line 201
    .line 202
    move/from16 v16, v7

    .line 203
    .line 204
    move-object v7, v14

    .line 205
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    add-int/lit8 v7, v16, 0x1

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_7
    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move/from16 v2, p3

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "app-id-device-permissions"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    .line 34
    .line 35
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v6, 0x0

    .line 42
    :goto_0
    if-ge v6, v4, :cond_3

    .line 43
    .line 44
    iget-object v7, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-virtual {v1, v6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 55
    .line 56
    const-string v9, "app-id"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    .line 60
    .line 61
    const-string v10, "id"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v10, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    iget-object v7, v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const/4 v11, 0x0

    .line 73
    :goto_1
    if-ge v11, v7, :cond_2

    .line 74
    .line 75
    iget-object v12, v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    invoke-virtual {v8, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    check-cast v13, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 86
    .line 87
    check-cast v12, Ljava/lang/String;

    .line 88
    .line 89
    const-string v14, "device"

    .line 90
    .line 91
    invoke-virtual {v0, v2, v14}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2, v10, v12}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    .line 96
    .line 97
    iget-object v12, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    const/4 v15, 0x0

    .line 104
    :goto_2
    if-ge v15, v12, :cond_1

    .line 105
    .line 106
    iget-object v5, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iget-object v2, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/Number;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    check-cast v5, Ljava/lang/String;

    .line 125
    .line 126
    move-object/from16 p3, v1

    .line 127
    .line 128
    const-string/jumbo v1, "permission"

    .line 129
    .line 130
    .line 131
    move/from16 v16, v4

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-virtual {v0, v4, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    .line 136
    .line 137
    move/from16 p2, v7

    .line 138
    .line 139
    const-string/jumbo v7, "name"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v4, v7, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    .line 144
    .line 145
    const/high16 v5, 0x200000

    .line 146
    .line 147
    invoke-static {v2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_0

    .line 152
    .line 153
    and-int/lit8 v2, v2, -0x11

    .line 154
    .line 155
    :cond_0
    const-string v5, "flags"

    .line 156
    .line 157
    invoke-virtual {v0, v4, v5, v2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v4, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    .line 162
    .line 163
    add-int/lit8 v15, v15, 0x1

    .line 164
    .line 165
    move/from16 v7, p2

    .line 166
    .line 167
    move-object/from16 v1, p3

    .line 168
    .line 169
    move-object v2, v4

    .line 170
    move/from16 v4, v16

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_1
    move-object/from16 p3, v1

    .line 174
    .line 175
    move/from16 v16, v4

    .line 176
    .line 177
    move/from16 p2, v7

    .line 178
    .line 179
    move-object v4, v2

    .line 180
    invoke-virtual {v0, v4, v14}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    .line 182
    .line 183
    add-int/lit8 v11, v11, 0x1

    .line 184
    .line 185
    move/from16 v7, p2

    .line 186
    .line 187
    move-object/from16 v1, p3

    .line 188
    .line 189
    move-object v2, v4

    .line 190
    move/from16 v4, v16

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_2
    move-object/from16 p3, v1

    .line 194
    .line 195
    move/from16 v16, v4

    .line 196
    .line 197
    move-object v4, v2

    .line 198
    invoke-virtual {v0, v4, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    .line 200
    .line 201
    add-int/lit8 v6, v6, 0x1

    .line 202
    .line 203
    move-object/from16 v1, p3

    .line 204
    .line 205
    move-object v2, v4

    .line 206
    move/from16 v4, v16

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_3
    move-object v4, v2

    .line 211
    invoke-virtual {v0, v4, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final setPermissionFlags(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    .line 1
    move/from16 v7, p1

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    move-object/from16 v10, p6

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->contains(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-string v0, "Unable to update permission flags for missing user "

    .line 27
    .line 28
    const-string v1, "DevicePermissionPolicy"

    .line 29
    .line 30
    invoke-static {v8, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    iget-object v1, v0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move-object v1, v3

    .line 71
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v1, v10, v4}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    move/from16 v12, p3

    .line 86
    .line 87
    if-ne v11, v12, :cond_2

    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_2
    iget-object v0, v0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 92
    .line 93
    const/4 v13, 0x1

    .line 94
    invoke-virtual {v0, v8, v13}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 108
    .line 109
    invoke-virtual {v0, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 117
    .line 118
    invoke-direct {v1}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v7, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 125
    .line 126
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 127
    .line 128
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 133
    .line 134
    if-eqz v4, :cond_4

    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    :cond_4
    if-eqz v3, :cond_5

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 144
    .line 145
    invoke-direct {v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v9, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 152
    .line 153
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v3, v10, v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_6

    .line 171
    .line 172
    invoke-virtual {v1, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove$1(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    invoke-static {v0, v7}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 184
    .line 185
    .line 186
    :cond_6
    move-object/from16 v0, p0

    .line 187
    .line 188
    iget-object v14, v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 189
    .line 190
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v15

    .line 196
    move v6, v2

    .line 197
    :goto_3
    if-ge v6, v15, :cond_7

    .line 198
    .line 199
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;

    .line 206
    .line 207
    move/from16 v1, p1

    .line 208
    .line 209
    move/from16 v2, p2

    .line 210
    .line 211
    move v3, v11

    .line 212
    move-object/from16 v4, p5

    .line 213
    .line 214
    move-object/from16 v5, p6

    .line 215
    .line 216
    move/from16 v16, v6

    .line 217
    .line 218
    move/from16 v6, p3

    .line 219
    .line 220
    invoke-interface/range {v0 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    add-int/lit8 v6, v16, 0x1

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_7
    move v2, v13

    .line 227
    :goto_4
    return v2
.end method

.method public final trimPermissionStates$1(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 21

    .line 1
    move/from16 v7, p2

    .line 2
    .line 3
    new-instance v8, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v9, p1

    .line 9
    .line 10
    iget-object v0, v9, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    move v4, v3

    .line 37
    :goto_0
    if-ge v4, v2, :cond_1

    .line 38
    .line 39
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v6, v6, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    .line 61
    .line 62
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_0

    .line 88
    .line 89
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    iget-object v0, v10, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    move v12, v3

    .line 111
    :goto_2
    if-ge v12, v11, :cond_5

    .line 112
    .line 113
    iget-object v0, v10, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 114
    .line 115
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    invoke-virtual {v10, v12}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/android/server/permission/access/MutableUserState;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    move-object v14, v0

    .line 134
    check-cast v14, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 135
    .line 136
    if-eqz v14, :cond_4

    .line 137
    .line 138
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    add-int/lit8 v0, v0, -0x1

    .line 145
    .line 146
    move v15, v0

    .line 147
    :goto_3
    const/4 v6, -0x1

    .line 148
    if-ge v6, v15, :cond_4

    .line 149
    .line 150
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 151
    .line 152
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v14, v15}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    move-object v5, v1

    .line 161
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 162
    .line 163
    move-object/from16 v16, v0

    .line 164
    .line 165
    check-cast v16, Ljava/lang/String;

    .line 166
    .line 167
    iget-object v0, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    add-int/lit8 v0, v0, -0x1

    .line 174
    .line 175
    move v4, v0

    .line 176
    :goto_4
    if-ge v6, v4, :cond_3

    .line 177
    .line 178
    iget-object v0, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 179
    .line 180
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v1, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 185
    .line 186
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Ljava/lang/Number;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 193
    .line 194
    .line 195
    move-object v3, v0

    .line 196
    check-cast v3, Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_2

    .line 203
    .line 204
    const/16 v17, 0x0

    .line 205
    .line 206
    move-object/from16 v0, p0

    .line 207
    .line 208
    move/from16 v1, p2

    .line 209
    .line 210
    move v2, v13

    .line 211
    move-object/from16 v18, v3

    .line 212
    .line 213
    move/from16 v3, v17

    .line 214
    .line 215
    move/from16 v17, v4

    .line 216
    .line 217
    move-object/from16 v4, p1

    .line 218
    .line 219
    move-object/from16 v19, v5

    .line 220
    .line 221
    move-object/from16 v5, v16

    .line 222
    .line 223
    move/from16 v20, v6

    .line 224
    .line 225
    move-object/from16 v6, v18

    .line 226
    .line 227
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_2
    move/from16 v17, v4

    .line 232
    .line 233
    move-object/from16 v19, v5

    .line 234
    .line 235
    move/from16 v20, v6

    .line 236
    .line 237
    :goto_5
    add-int/lit8 v4, v17, -0x1

    .line 238
    .line 239
    move-object/from16 v5, v19

    .line 240
    .line 241
    move/from16 v6, v20

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_3
    add-int/lit8 v15, v15, -0x1

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 248
    .line 249
    goto/16 :goto_2

    .line 250
    .line 251
    :cond_5
    return-void
.end method
