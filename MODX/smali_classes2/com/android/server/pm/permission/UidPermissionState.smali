.class public final Lcom/android/server/pm/permission/UidPermissionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mMissing:Z

.field public mPermissions:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/UidPermissionState;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-ge v1, v0, :cond_0

    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/server/pm/permission/PermissionState;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 45
    .line 46
    new-instance v5, Lcom/android/server/pm/permission/PermissionState;

    .line 47
    .line 48
    iget-object v6, v3, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    .line 49
    .line 50
    invoke-direct {v5, v6}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v6, v3, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 54
    .line 55
    iput-boolean v6, v5, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 56
    .line 57
    iget v3, v3, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    .line 58
    .line 59
    iput v3, v5, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    .line 60
    .line 61
    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public final getGrantedPermissions()Ljava/util/Set;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v1, :cond_2

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/server/pm/permission/PermissionState;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-object v0
.end method

.method public final getOrCreatePermissionState(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/permission/PermissionState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/pm/permission/PermissionState;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lcom/android/server/pm/permission/PermissionState;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    return-object v1
.end method

.method public final getPermissionFlags(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/pm/permission/PermissionState;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getPermissionStates()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final grantPermission(Lcom/android/server/pm/permission/Permission;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getOrCreatePermissionState(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/permission/PermissionState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionState;->grant()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final hasPermissionState(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

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
.end method

.method public final isPermissionGranted(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
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

.method public final removePermissionState(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_1
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 26
    .line 27
    :cond_2
    return v1
.end method

.method public final revokePermission(Lcom/android/server/pm/permission/Permission;)Z
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    monitor-exit v2

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iput-boolean v1, v0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 25
    .line 26
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 27
    .line 28
    .line 29
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 v1, 0x1

    .line 31
    :goto_0
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionState;->isDefault()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    return v1

    .line 43
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public final updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getOrCreatePermissionState(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/permission/PermissionState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/permission/PermissionState;->updateFlags(II)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionState;->isDefault()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 22
    .line 23
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return p2
.end method
