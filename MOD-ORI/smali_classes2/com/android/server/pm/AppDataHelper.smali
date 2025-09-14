.class public final Lcom/android/server/pm/AppDataHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 13
    .line 14
    iget-object p0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/pm/dex/ArtManagerService;

    .line 23
    .line 24
    return-void
.end method

.method public static assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Package "

    .line 6
    .line 7
    if-eqz p0, :cond_5

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, " not installed for user "

    .line 35
    .line 36
    const-string p1, " or was deleted without DELETE_KEEP_DATA"

    .line 37
    .line 38
    invoke-static {p3, v0, p2, p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 43
    .line 44
    const/16 p2, -0x9

    .line 45
    .line 46
    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    invoke-static {p0}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string p0, " shouldn\'t have storage"

    .line 62
    .line 63
    invoke-static {v0, p2, p0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 68
    .line 69
    const/16 p2, -0xa

    .line 70
    .line 71
    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_3
    :goto_1
    return-void

    .line 76
    :cond_4
    const-string p3, " found on unknown volume "

    .line 77
    .line 78
    const-string v1, "; expected volume "

    .line 79
    .line 80
    invoke-static {v0, p2, p3, p1, v1}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 94
    .line 95
    const/4 p2, -0x8

    .line 96
    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_5
    const-string p0, " is unknown"

    .line 101
    .line 102
    invoke-static {v0, p2, p0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 107
    .line 108
    const/4 p2, -0x7

    .line 109
    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method public static clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "PackageManager"

    .line 9
    .line 10
    const-string v1, "Package was null!"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static destroyAppProfilesLIF(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/pm/DexOptHelper;->sArtManagerLocalIsInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0, p0}, Lcom/android/server/art/ArtManagerLocal;->clearAppProfiles(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p0

    .line 25
    :try_start_1
    const-string v1, "PackageManager"

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :goto_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :try_start_2
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_2
    throw p0
.end method

.method public static shouldHaveAppStorage(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/pm/PackageManager$Property;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-ltz p0, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method


# virtual methods
.method public final clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v7

    .line 8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v8

    .line 12
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1, v7}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    array-length v10, p2

    .line 27
    const/4 v0, 0x0

    .line 28
    move v11, v0

    .line 29
    :goto_0
    if-ge v11, v10, :cond_2

    .line 30
    .line 31
    aget v3, p2, v11

    .line 32
    .line 33
    if-eqz v9, :cond_1

    .line 34
    .line 35
    invoke-interface {v9, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    :goto_1
    move-wide v5, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 49
    .line 50
    move-object v1, v8

    .line 51
    move-object v2, v7

    .line 52
    move v4, p3

    .line 53
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "PackageManager"

    .line 63
    .line 64
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/high16 p0, 0x20000

    .line 71
    .line 72
    and-int/2addr p0, p3

    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    invoke-static {p1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final clearKeystoreData(II)V
    .locals 4

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x3e8

    .line 9
    .line 10
    const-string v2, "PackageManager"

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const-string/jumbo p0, "skip to clear keystore for SYSTEM_UID"

    .line 15
    .line 16
    .line 17
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/16 v0, 0x1482

    .line 22
    .line 23
    if-eq p2, v0, :cond_4

    .line 24
    .line 25
    const/16 v0, 0x4e2

    .line 26
    .line 27
    if-ne p2, v0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    array-length p1, p0

    .line 37
    const/4 v0, 0x0

    .line 38
    move v1, v0

    .line 39
    :goto_0
    if-ge v1, p1, :cond_3

    .line 40
    .line 41
    aget v2, p0, v1

    .line 42
    .line 43
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-long v2, v2

    .line 48
    invoke-static {v0, v2, v3}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return-void

    .line 55
    :cond_4
    :goto_1
    const-string/jumbo p0, "skip to clear keystore for knox app with "

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final destroyAppDataLeafLIF(IILjava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, v10}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 14
    .line 15
    .line 16
    move-result-object v11

    .line 17
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    array-length v13, v12

    .line 24
    const/4 v15, 0x0

    .line 25
    :goto_0
    if-ge v15, v13, :cond_b

    .line 26
    .line 27
    aget v6, v12, v15

    .line 28
    .line 29
    if-eqz v11, :cond_0

    .line 30
    .line 31
    invoke-interface {v11, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    :goto_1
    move-wide v8, v3

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :goto_2
    :try_start_0
    iget-object v3, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 45
    .line 46
    move-object/from16 v4, p4

    .line 47
    .line 48
    move-object/from16 v5, p3

    .line 49
    .line 50
    move/from16 v7, p2

    .line 51
    .line 52
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v3, "PackageManager"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, -0x1

    .line 73
    if-ne v2, v5, :cond_2

    .line 74
    .line 75
    iget-object v6, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 76
    .line 77
    iget-object v7, v6, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 78
    .line 79
    monitor-enter v7

    .line 80
    :try_start_1
    iget-object v6, v6, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 81
    .line 82
    check-cast v6, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    if-eqz v6, :cond_1

    .line 89
    .line 90
    move v6, v3

    .line 91
    goto :goto_4

    .line 92
    :cond_1
    const/4 v6, 0x0

    .line 93
    :goto_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-eqz v6, :cond_7

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_7

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    throw v0

    .line 105
    :cond_2
    iget-object v6, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 106
    .line 107
    iget-object v7, v6, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 108
    .line 109
    monitor-enter v7

    .line 110
    :try_start_3
    iget-object v8, v6, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 111
    .line 112
    check-cast v8, Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    check-cast v8, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 119
    .line 120
    if-nez v8, :cond_3

    .line 121
    .line 122
    monitor-exit v7

    .line 123
    const/16 v16, 0x0

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :catchall_1
    move-exception v0

    .line 127
    goto/16 :goto_a

    .line 128
    .line 129
    :cond_3
    iget-object v9, v8, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    .line 130
    .line 131
    check-cast v9, Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    :cond_4
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v17

    .line 147
    if-eqz v17, :cond_5

    .line 148
    .line 149
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v17

    .line 153
    check-cast v17, Ljava/util/Map$Entry;

    .line 154
    .line 155
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v17

    .line 159
    move-object/from16 v14, v17

    .line 160
    .line 161
    check-cast v14, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 162
    .line 163
    iget v14, v14, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 164
    .line 165
    if-ne v14, v2, :cond_4

    .line 166
    .line 167
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 168
    .line 169
    .line 170
    move/from16 v16, v3

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_5
    iget-object v9, v8, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    .line 174
    .line 175
    check-cast v9, Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_6

    .line 182
    .line 183
    iget-object v8, v8, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mPrimaryCodePaths:Ljava/util/Map;

    .line 184
    .line 185
    check-cast v8, Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    xor-int/2addr v8, v3

    .line 192
    if-nez v8, :cond_6

    .line 193
    .line 194
    iget-object v6, v6, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 195
    .line 196
    check-cast v6, Ljava/util/HashMap;

    .line 197
    .line 198
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move/from16 v16, v3

    .line 202
    .line 203
    :cond_6
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    :goto_6
    if-eqz v16, :cond_7

    .line 205
    .line 206
    iget-object v0, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    :cond_7
    :goto_7
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 214
    .line 215
    if-ne v2, v5, :cond_9

    .line 216
    .line 217
    iget-object v5, v0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 218
    .line 219
    iget-object v6, v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    .line 220
    .line 221
    monitor-enter v6

    .line 222
    :try_start_4
    iget-object v5, v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    .line 223
    .line 224
    check-cast v5, Ljava/util/HashMap;

    .line 225
    .line 226
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    if-eqz v5, :cond_8

    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_8
    const/4 v3, 0x0

    .line 234
    :goto_8
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 235
    if-eqz v3, :cond_a

    .line 236
    .line 237
    iget-object v0, v0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 238
    .line 239
    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    goto :goto_9

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 245
    throw v0

    .line 246
    :cond_9
    iget-object v0, v0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 247
    .line 248
    invoke-virtual {v0, v2, v10}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(ILjava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_a

    .line 253
    .line 254
    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :cond_a
    :goto_9
    add-int/lit8 v15, v15, 0x1

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :goto_a
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 262
    throw v0

    .line 263
    :cond_b
    return-void
.end method

.method public final executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "PackageManager"

    .line 9
    .line 10
    const-string v0, "Failed to execute pending operations"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final fixAppsDataOnBoot()Ljava/util/concurrent/Future;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 13
    .line 14
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    move-object v1, p0

    .line 25
    move v4, v0

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo p0, "prepareAppData"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    throw p0
.end method

.method public final prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    iget-object v9, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 4
    .line 5
    move-object/from16 v10, p0

    .line 6
    .line 7
    iget-object v1, v10, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 10
    .line 11
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    move/from16 v11, p4

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v2, ":ephemeralapp:complete"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v2, ":complete"

    .line 30
    .line 31
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 33
    .line 34
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 35
    .line 36
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    array-length v1, v1

    .line 67
    if-lez v1, :cond_1

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    :goto_1
    move v3, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const/4 v1, 0x0

    .line 73
    goto :goto_1

    .line 74
    :goto_2
    move/from16 v1, p4

    .line 75
    .line 76
    move/from16 v2, p5

    .line 77
    .line 78
    move-object v5, v13

    .line 79
    move-object v6, v9

    .line 80
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/CreateAppDataArgs;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    move/from16 v1, p3

    .line 85
    .line 86
    iput v1, v7, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 87
    .line 88
    move-object/from16 v1, p1

    .line 89
    .line 90
    invoke-virtual {v1, v7}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    new-instance v15, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;

    .line 95
    .line 96
    move-object v1, v15

    .line 97
    move-object/from16 v2, p0

    .line 98
    .line 99
    move-object v3, v9

    .line 100
    move-object v4, v13

    .line 101
    move/from16 v5, p4

    .line 102
    .line 103
    move/from16 v6, p5

    .line 104
    .line 105
    move-object/from16 v8, p2

    .line 106
    .line 107
    move-object v9, v12

    .line 108
    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14, v15}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 119
    .line 120
    throw v0
.end method

.method public final prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService$LocalService;->getUsers(Z)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    new-array v2, v2, [I

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    move v4, v1

    .line 47
    :goto_0
    if-ge v1, v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 54
    .line 55
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 56
    .line 57
    invoke-virtual {p1, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_0

    .line 62
    .line 63
    add-int/lit8 v6, v4, 0x1

    .line 64
    .line 65
    aput v5, v2, v4

    .line 66
    .line 67
    move v4, v6

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 82
    .line 83
    throw p0
.end method

.method public final prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/AndroidPackage;IIZ)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, "PackageManager"

    .line 4
    .line 5
    const-string p1, "Package was null!"

    .line 6
    .line 7
    new-instance p2, Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string p0, "PackageManager"

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p3, "Skipping preparing app data for "

    .line 27
    .line 28
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 49
    .line 50
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 56
    .line 57
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {v1, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    const/4 v5, -0x1

    .line 67
    move-object v2, p0

    .line 68
    move-object v3, p1

    .line 69
    move-object v4, p2

    .line 70
    move v6, p3

    .line 71
    move v7, p4

    .line 72
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    move-object v2, v0

    .line 79
    move-object v3, p0

    .line 80
    move v4, p5

    .line 81
    move-object v5, p2

    .line 82
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 92
    .line 93
    throw p0
.end method

.method public final prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    and-int/lit8 p4, p4, 0x2

    .line 10
    .line 11
    if-eqz p4, :cond_3

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    move-object p2, p1

    .line 16
    check-cast p2, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 17
    .line 18
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    if-eqz p2, :cond_3

    .line 28
    .line 29
    invoke-static {p2}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p2, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 63
    .line 64
    invoke-interface {p0, v0, v1, p1, p3}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception p0

    .line 69
    :try_start_2
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    throw p0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    :catch_1
    move-exception p0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p2, "Failed to link native for "

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p2, ": "

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string p1, "PackageManager"

    .line 98
    .line 99
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    return-void
.end method

.method public final prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 5
    .line 6
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string p0, "PackageManager"

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "Skipping preparing app data for "

    .line 32
    .line 33
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance v7, Lcom/android/server/pm/Installer$Batch;

    .line 43
    .line 44
    invoke-direct {v7}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 56
    .line 57
    const-class v2, Landroid/os/storage/StorageManagerInternal;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 60
    .line 61
    invoke-interface {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v9, v1

    .line 66
    check-cast v9, Landroid/os/storage/StorageManagerInternal;

    .line 67
    .line 68
    array-length v10, p2

    .line 69
    const/4 v1, 0x0

    .line 70
    move v11, v1

    .line 71
    :goto_0
    if-ge v11, v10, :cond_3

    .line 72
    .line 73
    aget v12, p2, v11

    .line 74
    .line 75
    invoke-static {v12}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    invoke-virtual {v9, v12}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    move v6, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v8, v12}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    move v6, v0

    .line 97
    :goto_1
    const/4 v4, 0x0

    .line 98
    move-object v1, p0

    .line 99
    move-object v2, v7

    .line 100
    move-object v3, p1

    .line 101
    move v5, v12

    .line 102
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v2, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;

    .line 107
    .line 108
    invoke-direct {v2, v8, v12, p1, v9}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 112
    .line 113
    .line 114
    :cond_2
    add-int/2addr v11, v0

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 123
    .line 124
    throw p0
.end method

.method public final reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;
    .locals 27

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v15, p2

    .line 6
    .line 7
    move/from16 v6, p3

    .line 8
    .line 9
    const-string/jumbo v0, "reconcileAppsData for "

    .line 10
    .line 11
    .line 12
    const-string v2, " u"

    .line 13
    .line 14
    const-string v3, " 0x"

    .line 15
    .line 16
    invoke-static {v15, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " migrateAppData="

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move/from16 v5, p4

    .line 33
    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v4, "PackageManager"

    .line 42
    .line 43
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz p5, :cond_0

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    move-object v3, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-object v3, v2

    .line 57
    :goto_0
    const/4 v13, 0x5

    .line 58
    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 61
    .line 62
    .line 63
    move-result v8
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    if-nez v8, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 68
    .line 69
    invoke-interface {v0, v1, v15, v6}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 75
    .line 76
    .line 77
    throw v2
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    :catch_1
    move-exception v0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v8, "Failed to cleanup deleted dirs: "

    .line 82
    .line 83
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget-object v8, v7, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 105
    .line 106
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    and-int/lit8 v8, v6, 0x2

    .line 111
    .line 112
    const-string v12, "Failed to destroy: "

    .line 113
    .line 114
    const-string v11, " due to: "

    .line 115
    .line 116
    const-string v10, "Destroying "

    .line 117
    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    if-eqz v8, :cond_5

    .line 121
    .line 122
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_3

    .line 127
    .line 128
    invoke-static/range {p2 .. p2}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_2

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 136
    .line 137
    const-string v1, "Yikes, someone asked us to reconcile CE storage while "

    .line 138
    .line 139
    const-string v2, " was still locked; this would have caused massive data loss!"

    .line 140
    .line 141
    invoke-static {v15, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_3
    :goto_2
    invoke-static {v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    array-length v8, v9

    .line 154
    move-object/from16 v17, v12

    .line 155
    .line 156
    move/from16 v12, v16

    .line 157
    .line 158
    :goto_3
    if-ge v12, v8, :cond_4

    .line 159
    .line 160
    aget-object v13, v9, v12

    .line 161
    .line 162
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    :try_start_3
    invoke-static {v14, v1, v5, v15}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 167
    .line 168
    .line 169
    move-object/from16 v23, v3

    .line 170
    .line 171
    move-object/from16 v24, v4

    .line 172
    .line 173
    move/from16 v18, v8

    .line 174
    .line 175
    move-object/from16 v19, v9

    .line 176
    .line 177
    move-object/from16 v22, v10

    .line 178
    .line 179
    move-object v5, v11

    .line 180
    move-object/from16 v25, v14

    .line 181
    .line 182
    move-object/from16 v3, v17

    .line 183
    .line 184
    const/4 v4, 0x5

    .line 185
    move/from16 v17, v12

    .line 186
    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :catch_2
    move-exception v0

    .line 190
    move/from16 v19, v8

    .line 191
    .line 192
    move-object v8, v0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const/4 v13, 0x5

    .line 212
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :try_start_4
    iget-object v8, v7, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 216
    .line 217
    const/4 v0, 0x2

    .line 218
    const-wide/16 v20, 0x0

    .line 219
    .line 220
    move/from16 v18, v19

    .line 221
    .line 222
    move-object/from16 v19, v9

    .line 223
    .line 224
    move-object/from16 v9, p1

    .line 225
    .line 226
    move-object/from16 v22, v10

    .line 227
    .line 228
    move-object v10, v5

    .line 229
    move-object v5, v11

    .line 230
    move/from16 v11, p2

    .line 231
    .line 232
    move-object/from16 v23, v3

    .line 233
    .line 234
    move-object/from16 v3, v17

    .line 235
    .line 236
    move/from16 v17, v12

    .line 237
    .line 238
    move v12, v0

    .line 239
    move-object/from16 v24, v4

    .line 240
    .line 241
    move v4, v13

    .line 242
    move-object/from16 v25, v14

    .line 243
    .line 244
    move-wide/from16 v13, v20

    .line 245
    .line 246
    :try_start_5
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_5} :catch_3

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :catch_3
    move-exception v0

    .line 251
    goto :goto_4

    .line 252
    :catch_4
    move-exception v0

    .line 253
    move-object/from16 v23, v3

    .line 254
    .line 255
    move-object/from16 v24, v4

    .line 256
    .line 257
    move-object/from16 v22, v10

    .line 258
    .line 259
    move-object v5, v11

    .line 260
    move v4, v13

    .line 261
    move-object/from16 v25, v14

    .line 262
    .line 263
    move-object/from16 v3, v17

    .line 264
    .line 265
    move/from16 v18, v19

    .line 266
    .line 267
    move-object/from16 v19, v9

    .line 268
    .line 269
    move/from16 v17, v12

    .line 270
    .line 271
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :goto_5
    add-int/lit8 v12, v17, 0x1

    .line 287
    .line 288
    move-object/from16 v17, v3

    .line 289
    .line 290
    move v13, v4

    .line 291
    move-object v11, v5

    .line 292
    move/from16 v8, v18

    .line 293
    .line 294
    move-object/from16 v9, v19

    .line 295
    .line 296
    move-object/from16 v10, v22

    .line 297
    .line 298
    move-object/from16 v3, v23

    .line 299
    .line 300
    move-object/from16 v4, v24

    .line 301
    .line 302
    move-object/from16 v14, v25

    .line 303
    .line 304
    move/from16 v5, p4

    .line 305
    .line 306
    goto/16 :goto_3

    .line 307
    .line 308
    :cond_4
    move-object/from16 v23, v3

    .line 309
    .line 310
    move-object/from16 v24, v4

    .line 311
    .line 312
    move-object/from16 v22, v10

    .line 313
    .line 314
    move-object v5, v11

    .line 315
    move v4, v13

    .line 316
    move-object/from16 v25, v14

    .line 317
    .line 318
    move-object/from16 v3, v17

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_5
    move-object/from16 v23, v3

    .line 322
    .line 323
    move-object/from16 v24, v4

    .line 324
    .line 325
    move-object/from16 v22, v10

    .line 326
    .line 327
    move-object v5, v11

    .line 328
    move-object v3, v12

    .line 329
    move v4, v13

    .line 330
    move-object/from16 v25, v14

    .line 331
    .line 332
    :goto_6
    and-int/lit8 v0, v6, 0x1

    .line 333
    .line 334
    if-eqz v0, :cond_6

    .line 335
    .line 336
    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    array-length v13, v2

    .line 341
    move/from16 v14, v16

    .line 342
    .line 343
    :goto_7
    if-ge v14, v13, :cond_6

    .line 344
    .line 345
    aget-object v8, v2, v14

    .line 346
    .line 347
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v10

    .line 351
    move-object/from16 v12, v25

    .line 352
    .line 353
    :try_start_6
    invoke-static {v12, v1, v10, v15}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_5

    .line 354
    .line 355
    .line 356
    move-object/from16 v26, v12

    .line 357
    .line 358
    move/from16 v20, v13

    .line 359
    .line 360
    move/from16 v21, v14

    .line 361
    .line 362
    move-object/from16 v19, v22

    .line 363
    .line 364
    goto :goto_9

    .line 365
    :catch_5
    move-exception v0

    .line 366
    move-object v9, v0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    move-object/from16 v11, v22

    .line 370
    .line 371
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :try_start_7
    iget-object v8, v7, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_7 .. :try_end_7} :catch_7

    .line 391
    .line 392
    const/4 v0, 0x1

    .line 393
    const-wide/16 v17, 0x0

    .line 394
    .line 395
    move-object/from16 v9, p1

    .line 396
    .line 397
    move-object/from16 v19, v11

    .line 398
    .line 399
    move/from16 v11, p2

    .line 400
    .line 401
    move-object/from16 v26, v12

    .line 402
    .line 403
    move v12, v0

    .line 404
    move/from16 v20, v13

    .line 405
    .line 406
    move/from16 v21, v14

    .line 407
    .line 408
    move-wide/from16 v13, v17

    .line 409
    .line 410
    :try_start_8
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_8} :catch_6

    .line 411
    .line 412
    .line 413
    goto :goto_9

    .line 414
    :catch_6
    move-exception v0

    .line 415
    goto :goto_8

    .line 416
    :catch_7
    move-exception v0

    .line 417
    move-object/from16 v19, v11

    .line 418
    .line 419
    move-object/from16 v26, v12

    .line 420
    .line 421
    move/from16 v20, v13

    .line 422
    .line 423
    move/from16 v21, v14

    .line 424
    .line 425
    :goto_8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    :goto_9
    add-int/lit8 v14, v21, 0x1

    .line 441
    .line 442
    move-object/from16 v22, v19

    .line 443
    .line 444
    move/from16 v13, v20

    .line 445
    .line 446
    move-object/from16 v25, v26

    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_6
    move-object/from16 v26, v25

    .line 450
    .line 451
    const-wide/32 v8, 0x40000

    .line 452
    .line 453
    .line 454
    const-string/jumbo v0, "prepareAppDataAndMigrate"

    .line 455
    .line 456
    .line 457
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 458
    .line 459
    .line 460
    new-instance v0, Lcom/android/server/pm/Installer$Batch;

    .line 461
    .line 462
    invoke-direct {v0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 463
    .line 464
    .line 465
    move-object/from16 v2, v26

    .line 466
    .line 467
    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    check-cast v1, Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 474
    .line 475
    .line 476
    move-result-object v10

    .line 477
    move/from16 v11, v16

    .line 478
    .line 479
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_a

    .line 484
    .line 485
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 490
    .line 491
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    if-nez v3, :cond_7

    .line 500
    .line 501
    const-string v1, "Odd, missing scanned package "

    .line 502
    .line 503
    move-object/from16 v4, v24

    .line 504
    .line 505
    invoke-static {v1, v2, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    move-object/from16 v3, v23

    .line 509
    .line 510
    goto :goto_b

    .line 511
    :cond_7
    move-object/from16 v4, v24

    .line 512
    .line 513
    if-eqz p5, :cond_8

    .line 514
    .line 515
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    if-nez v3, :cond_8

    .line 524
    .line 525
    move-object/from16 v3, v23

    .line 526
    .line 527
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    :goto_b
    move-object/from16 v23, v3

    .line 531
    .line 532
    move-object/from16 v24, v4

    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_8
    move-object/from16 v3, v23

    .line 536
    .line 537
    invoke-interface {v1, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-eqz v2, :cond_9

    .line 546
    .line 547
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    move-object/from16 v1, p0

    .line 552
    .line 553
    move-object v2, v0

    .line 554
    move-object v12, v3

    .line 555
    move-object v3, v5

    .line 556
    move-object v13, v4

    .line 557
    move/from16 v4, p2

    .line 558
    .line 559
    move/from16 v5, p3

    .line 560
    .line 561
    move/from16 v6, p4

    .line 562
    .line 563
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/AndroidPackage;IIZ)V

    .line 564
    .line 565
    .line 566
    add-int/lit8 v11, v11, 0x1

    .line 567
    .line 568
    goto :goto_c

    .line 569
    :cond_9
    move-object v12, v3

    .line 570
    move-object v13, v4

    .line 571
    :goto_c
    move/from16 v6, p3

    .line 572
    .line 573
    move-object/from16 v23, v12

    .line 574
    .line 575
    move-object/from16 v24, v13

    .line 576
    .line 577
    goto :goto_a

    .line 578
    :cond_a
    move-object/from16 v12, v23

    .line 579
    .line 580
    move-object/from16 v13, v24

    .line 581
    .line 582
    invoke-virtual {v7, v0}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 583
    .line 584
    .line 585
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 586
    .line 587
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    const-string/jumbo v1, "reconcileAppsData finished "

    .line 591
    .line 592
    .line 593
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    const-string v1, " packages"

    .line 600
    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .line 610
    .line 611
    return-object v12
.end method
