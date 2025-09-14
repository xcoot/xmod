.class public final Lcom/android/server/pm/PackageManagerNative;
.super Landroid/content/pm/IPackageManagerNative$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/pm/IPackageManagerNative$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/Computer;->getInstallerPackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 35
    .line 36
    and-int/lit8 p0, p0, 0x1

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const-string/jumbo p0, "preload"

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    const-string p0, ""

    .line 45
    .line 46
    return-object p0
.end method

.method public final getLocationFlags(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v0, v1

    .line 37
    :goto_0
    or-int/2addr p1, v0

    .line 38
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    :cond_1
    or-int p0, p1, v1

    .line 46
    .line 47
    return p0

    .line 48
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 49
    .line 50
    const-string v0, "Couldn\'t get ApplicationInfo for package "

    .line 51
    .line 52
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final getModuleMetadataPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Call to getVersion before metadata loaded"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final getNamesForUids([I)[Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    :try_start_0
    array-length v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNamesForUids([I)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    move-object v0, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :try_start_1
    array-length v1, p1

    .line 24
    new-array v0, v1, [Ljava/lang/String;

    .line 25
    .line 26
    :goto_0
    array-length v1, v0

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    :goto_1
    if-ltz v1, :cond_3

    .line 30
    .line 31
    aget-object v2, v0, v1

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    const-string v2, ""

    .line 36
    .line 37
    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    move-object v4, v0

    .line 42
    move-object v0, p0

    .line 43
    move-object p0, v4

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    return-object v0

    .line 49
    :catchall_1
    move-exception v1

    .line 50
    move-object p0, v0

    .line 51
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v3, "uids: "

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v2, "PackageManager"

    .line 71
    .line 72
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string/jumbo v3, "names: "

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string/jumbo v0, "results: "

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string/jumbo p0, "throwing exception"

    .line 113
    .line 114
    .line 115
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :cond_4
    :goto_4
    return-object v0
.end method

.method public final getPackageUid(Ljava/lang/String;JI)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getStagedApexInfo(Ljava/lang/String;)Landroid/content/pm/StagedApexInfo;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 26
    .line 27
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/apex/ApexInfo;

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    new-instance p0, Landroid/content/pm/StagedApexInfo;

    .line 71
    .line 72
    invoke-direct {p0}, Landroid/content/pm/StagedApexInfo;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object p1, v2, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 76
    .line 77
    iput-object p1, p0, Landroid/content/pm/StagedApexInfo;->moduleName:Ljava/lang/String;

    .line 78
    .line 79
    iget-object p1, v2, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 80
    .line 81
    iput-object p1, p0, Landroid/content/pm/StagedApexInfo;->diskImagePath:Ljava/lang/String;

    .line 82
    .line 83
    iget-wide v3, v2, Landroid/apex/ApexInfo;->versionCode:J

    .line 84
    .line 85
    iput-wide v3, p0, Landroid/content/pm/StagedApexInfo;->versionCode:J

    .line 86
    .line 87
    iget-object p1, v2, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    .line 88
    .line 89
    iput-object p1, p0, Landroid/content/pm/StagedApexInfo;->versionName:Ljava/lang/String;

    .line 90
    .line 91
    iget-boolean p1, v2, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    .line 92
    .line 93
    iput-boolean p1, p0, Landroid/content/pm/StagedApexInfo;->hasClassPathJars:Z

    .line 94
    .line 95
    monitor-exit v0

    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_3

    .line 99
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    monitor-exit v0

    .line 103
    const/4 p0, 0x0

    .line 104
    :goto_2
    return-object p0

    .line 105
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method

.method public final getStagedApexModuleNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getStagedApexModuleNames()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/String;

    .line 13
    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, [Ljava/lang/String;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getTargetSdkVersionForPackage(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getTargetSdkVersion(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    return p0

    .line 15
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 16
    .line 17
    const-string v0, "Couldn\'t get targetSdkVersion for package "

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final getVersionCodeForPackage(Ljava/lang/String;)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 24
    .line 25
    .line 26
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-wide p0

    .line 28
    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final hasSha256SigningCertificate(Ljava/lang/String;[B)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/pm/Computer;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final hasSystemFeature(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAudioPlaybackCaptureAllowed([Ljava/lang/String;)[Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length v1, p1

    .line 16
    new-array v2, v1, [Z

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    sub-int/2addr v1, v3

    .line 20
    :goto_0
    if-ltz v1, :cond_1

    .line 21
    .line 22
    aget-object v4, p1, v1

    .line 23
    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    invoke-interface {p0, v4, v5, v6, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isAudioPlaybackCaptureAllowed()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    move v4, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v4, 0x0

    .line 41
    :goto_1
    aput-boolean v4, v2, v1

    .line 42
    .line 43
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v2
.end method

.method public final isPackageDebuggable(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 20
    .line 21
    and-int/lit8 p0, p0, 0x2

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0

    .line 29
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 30
    .line 31
    const-string v0, "Couldn\'t get debug flag for package "

    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_0
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/server/pm/StagingManager$1;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StagingManager$1;-><init>(Lcom/android/server/pm/StagingManager;Landroid/content/pm/IStagedApexObserver;)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v1, "StagingManager"

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 47
    .line 48
    check-cast p0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    :goto_1
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public final unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 11
    .line 12
    check-cast p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method
