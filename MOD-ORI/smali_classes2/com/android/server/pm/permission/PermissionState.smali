.class public final Lcom/android/server/pm/permission/PermissionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFlags:I

.field public mGranted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPermission:Lcom/android/server/pm/permission/Permission;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/Permission;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getFlags()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public final grant()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 15
    .line 16
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final isDefault()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final isGranted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final updateFlags(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    and-int/2addr p2, p1

    .line 5
    :try_start_0
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    .line 9
    .line 10
    not-int p1, p1

    .line 11
    and-int/2addr p1, v1

    .line 12
    or-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    .line 14
    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    monitor-exit v0

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method
