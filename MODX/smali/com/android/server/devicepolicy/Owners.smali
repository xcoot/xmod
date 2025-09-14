.class public final Lcom/android/server/devicepolicy/Owners;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mData:Lcom/android/server/devicepolicy/OwnersData;

.field public final mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSystemReady:Z

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/server/pm/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/devicepolicy/DeviceStateCacheImpl;Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 14
    iput-object p6, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 16
    new-instance p1, Lcom/android/server/devicepolicy/OwnersData;

    .line 18
    invoke-direct {p1, p7}, Lcom/android/server/devicepolicy/OwnersData;-><init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V

    .line 21
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 23
    return-void
.end method


# virtual methods
.method public final getDeviceOwnerComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public getDeviceOwnerFile()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->getDeviceOwnerFile()Ljava/io/File;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDeviceOwnerPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final getDeviceOwnerType(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->isDeviceOwnerTypeSetForDeviceOwner(Ljava/lang/String;)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Integer;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result p0

    .line 24
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final getDeviceOwnerUidLocked()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    iget-object v1, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 9
    const-wide/32 v2, 0x422000

    .line 12
    iget v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, -0x1

    .line 22
    return p0
.end method

.method public final getDeviceOwnerUserId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 8
    if-nez v2, :cond_0

    .line 10
    monitor-exit v0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 23
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 25
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 27
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 30
    move-result-object p0

    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public getProfileOwnerFile(I)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OwnersData;->getProfileOwnerFile(I)Ljava/io/File;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getProfileOwnerKeys()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getProfileOwnerPackage(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final getSystemUpdateFreezePeriodRecord()Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 8
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 10
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 12
    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final hasDeviceOwner()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final hasProfileOwner(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final isDeviceOwnerTypeSetForDeviceOwner(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 16
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    monitor-exit v0

    .line 30
    return p0

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final isProfileOwnerOfOrganizationOwnedDevice(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final load()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 6
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/android/server/devicepolicy/Owners$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 29
    invoke-virtual {v2, v1}, Lcom/android/server/devicepolicy/OwnersData;->load([I)V

    .line 32
    const-string/jumbo v2, "device_policy_manager"

    .line 35
    const-string/jumbo v3, "deprecate_usermanagerinternal_devicepolicy"

    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 54
    iget-object v4, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 56
    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 58
    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v2

    .line 74
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 76
    iget-object v4, v4, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mDeviceOwnerType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 86
    iget-object v2, v2, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mDeviceOwnerType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    const/4 v4, -0x1

    .line 89
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 92
    :goto_0
    array-length v2, v1

    .line 93
    :goto_1
    if-ge v3, v2, :cond_2

    .line 95
    aget v4, v1, v3

    .line 97
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 99
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    .line 102
    move-result v6

    .line 103
    invoke-virtual {v5, v4, v6}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setHasProfileOwner(IZ)V

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    .line 114
    move-result v4

    .line 115
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->setDeviceManaged(Z)V

    .line 118
    array-length v2, v1

    .line 119
    :goto_2
    if-ge v3, v2, :cond_2

    .line 121
    aget v4, v1, v3

    .line 123
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 125
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    .line 128
    move-result v6

    .line 129
    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/UserManagerInternal;->setUserManaged(IZ)V

    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 138
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushDeviceOwnerUidToActivityTaskManagerLocked()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushProfileOwnerUidsToActivityTaskManagerLocked()V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 146
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    throw p0
.end method

.method public final notifyChangeLocked()V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 3
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->invalidateBinderCaches()V

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 13
    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 18
    move-result v1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    :goto_0
    if-ltz v1, :cond_0

    .line 23
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 25
    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 39
    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 41
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 47
    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 57
    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_1

    .line 62
    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move-object v2, v3

    .line 66
    :goto_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 68
    iget v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 70
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 72
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 74
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 76
    monitor-enter v5

    .line 77
    :try_start_0
    iput v1, v5, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    .line 79
    const/16 v6, -0x2710

    .line 81
    if-ne v1, v6, :cond_2

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move-object v3, v2

    .line 85
    :goto_2
    iput-object v3, v5, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 87
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 90
    move-result-object v3

    .line 91
    iput-object v3, v5, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v5

    .line 94
    new-instance v3, Landroid/util/ArraySet;

    .line 96
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 99
    if-eqz v2, :cond_3

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 111
    move-result v1

    .line 112
    const/4 v2, 0x0

    .line 113
    :goto_3
    if-ge v2, v1, :cond_5

    .line 115
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_4

    .line 121
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 124
    move-result v3

    .line 125
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 127
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 130
    move-result-object v6

    .line 131
    invoke-interface {v6}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    .line 134
    move-result-object v7

    .line 135
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 137
    new-instance v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda0;

    .line 139
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 145
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 147
    goto :goto_3

    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityManagerLocked()V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 154
    return-void

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    monitor-exit v5

    .line 157
    throw p0
.end method

.method public final pushDeviceOwnerUidToActivityTaskManagerLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUidLocked()I

    .line 6
    move-result p0

    .line 7
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 9
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    iput p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    throw p0
.end method

.method public final pushProfileOwnerUidsToActivityTaskManagerLocked()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 3
    new-instance v1, Landroid/util/ArraySet;

    .line 5
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 11
    iget-object v4, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 16
    move-result v4

    .line 17
    if-ge v2, v4, :cond_0

    .line 19
    iget-object v4, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v4

    .line 31
    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 33
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 39
    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 41
    const-wide/32 v5, 0x422000

    .line 44
    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 46
    invoke-virtual {v7, v3, v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 62
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 64
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileOwnerUids:Ljava/util/Set;

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 84
    throw v0
.end method

.method public final pushToActivityManagerLocked()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUidLocked()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->setDeviceOwnerUid(I)V

    .line 10
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 17
    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 22
    move-result v2

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 25
    :goto_0
    if-ltz v2, :cond_1

    .line 27
    iget-object v3, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v3

    .line 39
    iget-object v4, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 41
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 47
    iget-object v4, v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 49
    const-wide/32 v5, 0x422000

    .line 52
    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 54
    invoke-virtual {v7, v4, v5, v6, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 57
    move-result v3

    .line 58
    if-ltz v3, :cond_0

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->setProfileOwnerUid(Landroid/util/ArraySet;)V

    .line 75
    return-void
.end method

.method public final pushToAppOpsLocked()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    .line 5
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    new-instance v3, Landroid/util/SparseIntArray;

    .line 14
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    iget-object v4, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 19
    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUidLocked()I

    .line 24
    move-result v4

    .line 25
    if-ltz v4, :cond_1

    .line 27
    iget v5, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 29
    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_3

    .line 35
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 37
    if-eqz v4, :cond_3

    .line 39
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 42
    move-result v4

    .line 43
    add-int/lit8 v4, v4, -0x1

    .line 45
    :goto_1
    if-ltz v4, :cond_3

    .line 47
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 49
    iget-object v6, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 51
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 57
    iget-object v6, v6, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 59
    iget-object v7, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 61
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Ljava/lang/Integer;

    .line 67
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v7

    .line 71
    const-wide/32 v8, 0x422000

    .line 74
    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 77
    move-result v5

    .line 78
    if-ltz v5, :cond_2

    .line 80
    iget-object v6, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 82
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Ljava/lang/Integer;

    .line 88
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result v6

    .line 92
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const-class p0, Landroid/app/AppOpsManagerInternal;

    .line 100
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroid/app/AppOpsManagerInternal;

    .line 106
    if-eqz p0, :cond_5

    .line 108
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 111
    move-result v0

    .line 112
    if-lez v0, :cond_4

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    const/4 v3, 0x0

    .line 116
    :goto_2
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManagerInternal;->setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    return-void

    .line 123
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    throw p0
.end method

.method public final removeProfileOwner(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string/jumbo v1, "device_policy_manager"

    .line 18
    const-string/jumbo v2, "deprecate_usermanagerinternal_devicepolicy"

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 31
    invoke-virtual {v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setHasProfileOwner(IZ)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 39
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserManaged(IZ)V

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushProfileOwnerUidsToActivityTaskManagerLocked()V

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final setDeviceOwner(ILandroid/content/ComponentName;)V
    .locals 5

    .line 1
    if-gez p1, :cond_0

    .line 3
    const-string p0, "DevicePolicyManagerService"

    .line 5
    const-string p2, "Invalid user id for device owner user: "

    .line 7
    invoke-static {p1, p2, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 16
    new-instance v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v2, p2, v3, v3, v4}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    iput-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 25
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 27
    iput p1, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 29
    const-string/jumbo p1, "device_policy_manager"

    .line 32
    const-string/jumbo p2, "deprecate_usermanagerinternal_devicepolicy"

    .line 35
    invoke-static {p1, p2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 43
    iget-object p2, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 45
    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 47
    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/Integer;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result p1

    .line 64
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 66
    iget-object p2, p2, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mDeviceOwnerType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 76
    invoke-virtual {p1, v4}, Lcom/android/server/pm/UserManagerInternal;->setDeviceManaged(Z)V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushDeviceOwnerUidToActivityTaskManagerLocked()V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final setProfileOwner(ILandroid/content/ComponentName;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct {v3, p2, v5, v5, v4}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string/jumbo p2, "device_policy_manager"

    .line 25
    const-string/jumbo v1, "deprecate_usermanagerinternal_devicepolicy"

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-static {p2, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_0

    .line 35
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 37
    invoke-virtual {p2, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setHasProfileOwner(IZ)V

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 45
    invoke-virtual {p2, p1, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserManaged(IZ)V

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushProfileOwnerUidsToActivityTaskManagerLocked()V

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final setSystemUpdateFreezePeriodRecord(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 6
    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 8
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 17
    iput-object p1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 19
    move p1, v2

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 26
    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 28
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 34
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 36
    iput-object p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, p1

    .line 40
    :goto_1
    monitor-exit v0

    .line 41
    return v2

    .line 42
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final systemReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityManagerLocked()V

    .line 10
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final writeDeviceOwner()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 6
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->invalidateBinderCaches()V

    .line 9
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final writeProfileOwner(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 6
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->invalidateBinderCaches()V

    .line 9
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v1, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;

    .line 16
    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;I)V

    .line 19
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->writeToFileLocked()Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
