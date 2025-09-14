.class public final Lcom/android/server/pm/InstallingSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mAutoRevokePermissionsMode:I

.field public final mDataLoaderType:I

.field public final mDevelopmentInstallFlags:I

.field public final mDexoptCompilerFilter:Ljava/lang/String;

.field public final mForceQueryableOverride:Z

.field public final mHasAppMetadataFile:Z

.field public mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mIsInherit:Z

.field public mIsMoveRequest:Z

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageSource:I

.field public mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

.field public final mPermissionStates:Landroid/util/ArrayMap;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public mPreferredInstallLocation:I

.field public final mRequireUserAction:I

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public mTraceCookie:I

.field public mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/io/File;Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$5;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/PackageManagerService;Z)V
    .locals 11

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p12

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    .line 33
    iput-boolean v5, v0, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    const/4 v6, -0x1

    .line 34
    iput v6, v0, Lcom/android/server/pm/InstallingSession;->mPreferredInstallLocation:I

    .line 35
    iput-object v4, v0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v6, p7

    .line 36
    iput-object v6, v0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 37
    new-instance v8, Lcom/android/server/pm/OriginInfo;

    .line 38
    invoke-direct {v8, p2, v6, v5, v7}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    .line 39
    iput-object v8, v0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lcom/android/server/pm/OriginInfo;

    move-object v8, p3

    invoke-direct {v1, v7, v6, v5, p3}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    .line 41
    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 42
    :goto_0
    iput-object v7, v0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 43
    iget-object v1, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v7, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 44
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    const-string v9, "android.permission.INSTALL_PACKAGES"

    move/from16 v10, p9

    invoke-interface {v8, v9, v10}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 46
    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 47
    invoke-virtual {v4, v8}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    if-ne v7, v6, :cond_3

    move v7, v5

    .line 49
    :cond_3
    :goto_1
    iput v7, v0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 50
    iget v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v1, v0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    move-object v1, p4

    .line 51
    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 52
    iget v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v1, v0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 53
    iget v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput v1, v0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    .line 54
    iput-object v3, v0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 55
    iget-object v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 56
    iget-object v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 57
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    .line 58
    iget-object v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 59
    iget v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, v0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    move-object/from16 v1, p8

    .line 60
    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 61
    iget-boolean v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v1, v0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 62
    iget-object v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v1, :cond_4

    .line 63
    invoke-virtual {v1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    iput v1, v0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 64
    iget-wide v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v3, v0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 65
    iget v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput v1, v0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    move-object/from16 v1, p10

    .line 66
    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 67
    iget v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    move v5, v6

    :cond_5
    iput-boolean v5, v0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    move v1, p1

    .line 68
    iput v1, v0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 69
    iget v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v1, v0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 70
    iget-boolean v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean v1, v0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    move-object/from16 v1, p11

    .line 71
    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    move/from16 v1, p13

    .line 72
    iput-boolean v1, v0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    .line 73
    iget-object v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Lcom/android/server/pm/MovePackageHelper$1;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mPreferredInstallLocation:I

    .line 4
    iput-object p10, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 6
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 7
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 8
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 9
    iput p4, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 10
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    .line 11
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 12
    iput-object p6, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 14
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 p2, 0x3

    .line 16
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    .line 17
    sget-object p2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 18
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 19
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    .line 20
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 21
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    const-wide/16 p2, -0x1

    .line 22
    iput-wide p2, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 23
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    .line 24
    iput-object p9, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 25
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    .line 26
    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 27
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 28
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    .line 29
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 30
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    .line 31
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handleReturnCode(Lcom/android/server/pm/InstallRequest;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v3, :cond_19

    .line 9
    .line 10
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/16 v5, -0x6e

    .line 14
    .line 15
    const/4 v6, -0x2

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 21
    .line 22
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 30
    .line 31
    iget-object v8, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 32
    .line 33
    iget-object v10, v8, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v11, v8, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v12, v8, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    .line 38
    .line 39
    iget v13, v8, Lcom/android/server/pm/MoveInfo;->mAppId:I

    .line 40
    .line 41
    iget-object v14, v8, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    .line 42
    .line 43
    iget v15, v8, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    .line 44
    .line 45
    iget-object v8, v8, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 48
    .line 49
    .line 50
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    if-nez v9, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :try_start_2
    iget-object v9, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 55
    .line 56
    move-object/from16 v16, v8

    .line 57
    .line 58
    invoke-interface/range {v9 .. v16}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    :goto_0
    :try_start_3
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/io/File;

    .line 65
    .line 66
    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 67
    .line 68
    iget-object v4, v4, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v4, Ljava/io/File;

    .line 78
    .line 79
    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 80
    .line 81
    iget-object v5, v5, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v5}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v4}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    move v5, v3

    .line 94
    goto/16 :goto_1d

    .line 95
    .line 96
    :catch_0
    move-exception v0

    .line 97
    goto :goto_5

    .line 98
    :catch_1
    move-exception v0

    .line 99
    :try_start_4
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    :goto_2
    move-object v8, v0

    .line 104
    goto :goto_3

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto :goto_2

    .line 107
    :goto_3
    :try_start_5
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    move-object v7, v0

    .line 113
    :try_start_6
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_4
    throw v8
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 117
    :goto_5
    const-string v7, "Failed to move app"

    .line 118
    .line 119
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    .line 120
    .line 121
    invoke-direct {v8, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v4, v8}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 125
    .line 126
    .line 127
    const-string v4, "PackageManager"

    .line 128
    .line 129
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    goto/16 :goto_1d

    .line 133
    .line 134
    :cond_1
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 135
    .line 136
    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_13

    .line 141
    .line 142
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 143
    .line 144
    iget-boolean v7, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    .line 145
    .line 146
    if-eqz v7, :cond_2

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0, v2}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 163
    .line 164
    const-string/jumbo v7, "smdl"

    .line 165
    .line 166
    .line 167
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 168
    .line 169
    monitor-enter v8

    .line 170
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 175
    .line 176
    invoke-virtual {v0, v9, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v7, ".tmp"

    .line 188
    .line 189
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const/4 v7, 0x0

    .line 202
    if-nez v0, :cond_4

    .line 203
    .line 204
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 205
    .line 206
    if-nez v0, :cond_3

    .line 207
    .line 208
    move-object v0, v4

    .line 209
    goto :goto_6

    .line 210
    :cond_3
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 211
    .line 212
    :goto_6
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_4

    .line 219
    .line 220
    const-string v8, "/"

    .line 221
    .line 222
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    array-length v0, v0

    .line 227
    const/4 v8, 0x4

    .line 228
    if-ne v0, v8, :cond_4

    .line 229
    .line 230
    move v8, v3

    .line 231
    goto :goto_7

    .line 232
    :cond_4
    move v8, v7

    .line 233
    :goto_7
    if-eqz v8, :cond_6

    .line 234
    .line 235
    :try_start_8
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 236
    .line 237
    if-nez v0, :cond_5

    .line 238
    .line 239
    move-object v0, v4

    .line 240
    goto :goto_8

    .line 241
    :cond_5
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 242
    .line 243
    :goto_8
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const/16 v9, 0x1fd

    .line 250
    .line 251
    invoke-static {v0, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2

    .line 252
    .line 253
    .line 254
    goto :goto_9

    .line 255
    :catch_2
    move-exception v0

    .line 256
    const-string v7, "Failed to move app"

    .line 257
    .line 258
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    .line 259
    .line 260
    invoke-direct {v8, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v4, v8}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 264
    .line 265
    .line 266
    const-string v4, "PackageManager"

    .line 267
    .line 268
    const-string v6, "Failed to move app"

    .line 269
    .line 270
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .line 272
    .line 273
    goto/16 :goto_1d

    .line 274
    .line 275
    :cond_6
    :goto_9
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 276
    .line 277
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    sget-object v6, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    const-class v9, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    .line 289
    .line 290
    monitor-enter v9

    .line 291
    :try_start_9
    sget-object v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    .line 292
    .line 293
    if-nez v0, :cond_7

    .line 294
    .line 295
    new-instance v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 298
    .line 299
    .line 300
    iput-boolean v7, v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    .line 301
    .line 302
    sput-object v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    .line 303
    .line 304
    goto :goto_a

    .line 305
    :catchall_2
    move-exception v0

    .line 306
    goto/16 :goto_17

    .line 307
    .line 308
    :cond_7
    :goto_a
    sget-object v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    .line 309
    .line 310
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 311
    iget-object v0, v5, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 314
    .line 315
    iget-object v9, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Ljava/lang/Runnable;

    .line 316
    .line 317
    if-nez v9, :cond_8

    .line 318
    .line 319
    goto :goto_b

    .line 320
    :cond_8
    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    .line 322
    .line 323
    iput-object v4, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Ljava/lang/Runnable;

    .line 324
    .line 325
    :goto_b
    iget-object v0, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 326
    .line 327
    if-eqz v0, :cond_9

    .line 328
    .line 329
    goto :goto_d

    .line 330
    :cond_9
    new-instance v0, Landroid/content/Intent;

    .line 331
    .line 332
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .line 334
    .line 335
    sget-object v9, Lcom/android/server/pm/AsecInstallHelper;->CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 336
    .line 337
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    monitor-enter v15

    .line 342
    :try_start_a
    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 343
    .line 344
    invoke-virtual {v6, v0, v15, v3, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    iput-boolean v0, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    .line 349
    .line 350
    if-eqz v0, :cond_a

    .line 351
    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 353
    .line 354
    .line 355
    move-result-wide v9

    .line 356
    const-wide/16 v12, 0x1388

    .line 357
    .line 358
    add-long/2addr v9, v12

    .line 359
    :catch_3
    :goto_c
    iget-object v0, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 360
    .line 361
    if-nez v0, :cond_a

    .line 362
    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 364
    .line 365
    .line 366
    move-result-wide v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 367
    cmp-long v0, v12, v9

    .line 368
    .line 369
    if-gez v0, :cond_a

    .line 370
    .line 371
    const-wide/16 v12, 0x64

    .line 372
    .line 373
    :try_start_b
    invoke-virtual {v15, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 374
    .line 375
    .line 376
    goto :goto_c

    .line 377
    :catchall_3
    move-exception v0

    .line 378
    goto/16 :goto_16

    .line 379
    .line 380
    :cond_a
    :try_start_c
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 381
    iget-boolean v0, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    .line 382
    .line 383
    if-nez v0, :cond_b

    .line 384
    .line 385
    iget-object v0, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 386
    .line 387
    if-eqz v0, :cond_b

    .line 388
    .line 389
    goto :goto_d

    .line 390
    :cond_b
    monitor-enter v15

    .line 391
    :try_start_d
    invoke-virtual {v6, v15}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 392
    .line 393
    .line 394
    iput-boolean v7, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    .line 395
    .line 396
    iput-object v4, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 397
    .line 398
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 399
    :goto_d
    iget-object v14, v15, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 400
    .line 401
    const/16 v16, -0x12

    .line 402
    .line 403
    if-nez v14, :cond_d

    .line 404
    .line 405
    :cond_c
    move/from16 v5, v16

    .line 406
    .line 407
    goto/16 :goto_13

    .line 408
    .line 409
    :cond_d
    :try_start_e
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 410
    .line 411
    if-nez v0, :cond_e

    .line 412
    .line 413
    move-object v0, v4

    .line 414
    goto :goto_e

    .line 415
    :cond_e
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 416
    .line 417
    :goto_e
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v10

    .line 423
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v12

    .line 427
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    and-int/lit8 v0, v0, 0x8

    .line 432
    .line 433
    if-eqz v0, :cond_f

    .line 434
    .line 435
    move v13, v3

    .line 436
    goto :goto_f

    .line 437
    :cond_f
    move v13, v7

    .line 438
    :goto_f
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 439
    .line 440
    if-nez v0, :cond_10

    .line 441
    .line 442
    move-object v0, v4

    .line 443
    goto :goto_10

    .line 444
    :cond_10
    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    .line 445
    .line 446
    :goto_10
    sget-boolean v7, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 447
    .line 448
    const-string v7, "-"

    .line 449
    .line 450
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v7
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 454
    if-eqz v7, :cond_11

    .line 455
    .line 456
    move-object v0, v4

    .line 457
    :cond_11
    move-object v9, v14

    .line 458
    move-object v7, v14

    .line 459
    move-object v14, v0

    .line 460
    :try_start_f
    invoke-interface/range {v9 .. v14}, Lcom/samsung/android/core/pm/containerservice/IContainerService;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 464
    iget-object v9, v5, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 465
    .line 466
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 467
    .line 468
    new-instance v10, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;

    .line 469
    .line 470
    invoke-direct {v10, v7}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    .line 475
    .line 476
    iget-object v5, v5, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 477
    .line 478
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 479
    .line 480
    invoke-virtual {v15, v6, v5}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V

    .line 481
    .line 482
    .line 483
    goto :goto_12

    .line 484
    :catchall_4
    move-exception v0

    .line 485
    goto :goto_15

    .line 486
    :catch_4
    move-exception v0

    .line 487
    goto :goto_11

    .line 488
    :catchall_5
    move-exception v0

    .line 489
    move-object v7, v14

    .line 490
    goto :goto_15

    .line 491
    :catch_5
    move-exception v0

    .line 492
    move-object v7, v14

    .line 493
    :goto_11
    :try_start_10
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 494
    .line 495
    .line 496
    iget-object v0, v5, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 497
    .line 498
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 499
    .line 500
    new-instance v9, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;

    .line 501
    .line 502
    invoke-direct {v9, v7}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    .line 507
    .line 508
    iget-object v0, v5, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 509
    .line 510
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 511
    .line 512
    invoke-virtual {v15, v6, v0}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V

    .line 513
    .line 514
    .line 515
    move-object v0, v4

    .line 516
    :goto_12
    if-eqz v0, :cond_c

    .line 517
    .line 518
    invoke-static {v0, v2}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    .line 519
    .line 520
    .line 521
    move v5, v3

    .line 522
    :goto_13
    if-eqz v8, :cond_18

    .line 523
    .line 524
    :try_start_11
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 525
    .line 526
    if-nez v0, :cond_12

    .line 527
    .line 528
    goto :goto_14

    .line 529
    :cond_12
    iget-object v4, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 530
    .line 531
    :goto_14
    iget-object v0, v4, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    const/16 v4, 0x1f9

    .line 538
    .line 539
    invoke-static {v0, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_11} :catch_9

    .line 540
    .line 541
    .line 542
    goto/16 :goto_1d

    .line 543
    .line 544
    :goto_15
    iget-object v1, v5, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 545
    .line 546
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 547
    .line 548
    new-instance v2, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;

    .line 549
    .line 550
    invoke-direct {v2, v7}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    .line 555
    .line 556
    iget-object v1, v5, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 557
    .line 558
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 559
    .line 560
    invoke-virtual {v15, v6, v1}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V

    .line 561
    .line 562
    .line 563
    throw v0

    .line 564
    :catchall_6
    move-exception v0

    .line 565
    :try_start_12
    monitor-exit v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 566
    throw v0

    .line 567
    :goto_16
    :try_start_13
    monitor-exit v15
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 568
    throw v0

    .line 569
    :goto_17
    :try_start_14
    monitor-exit v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 570
    throw v0

    .line 571
    :catchall_7
    move-exception v0

    .line 572
    :try_start_15
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 573
    throw v0

    .line 574
    :cond_13
    const-string v5, "Copying native libraries failed"

    .line 575
    .line 576
    const-string v0, "Failed to copy package"

    .line 577
    .line 578
    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 579
    .line 580
    const-string v7, "PackageManager"

    .line 581
    .line 582
    const-string v8, "Failed to create copy file: "

    .line 583
    .line 584
    const-string v9, "copyApk"

    .line 585
    .line 586
    const-wide/32 v10, 0x40000

    .line 587
    .line 588
    .line 589
    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 590
    .line 591
    .line 592
    :try_start_16
    iget-boolean v9, v6, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    .line 593
    .line 594
    if-eqz v9, :cond_14

    .line 595
    .line 596
    iget-object v0, v6, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 597
    .line 598
    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 599
    .line 600
    .line 601
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_1

    .line 605
    .line 606
    :catchall_8
    move-exception v0

    .line 607
    goto/16 :goto_1e

    .line 608
    .line 609
    :cond_14
    :try_start_17
    iget-object v9, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 610
    .line 611
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 612
    .line 613
    iget-object v12, v1, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 614
    .line 615
    invoke-virtual {v9, v12}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;)Ljava/io/File;

    .line 616
    .line 617
    .line 618
    move-result-object v9

    .line 619
    invoke-virtual {v2, v9}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 620
    .line 621
    .line 622
    :try_start_18
    iget-object v6, v6, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 623
    .line 624
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 629
    .line 630
    .line 631
    move-result-object v8

    .line 632
    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/io/File;Ljava/lang/String;)I

    .line 633
    .line 634
    .line 635
    move-result v6

    .line 636
    if-eq v6, v3, :cond_15

    .line 637
    .line 638
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    invoke-virtual {v2, v6, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 642
    .line 643
    .line 644
    :goto_18
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 645
    .line 646
    .line 647
    move v5, v6

    .line 648
    goto/16 :goto_1d

    .line 649
    .line 650
    :cond_15
    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    new-instance v8, Ljava/io/File;

    .line 663
    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 665
    .line 666
    .line 667
    move-result-object v9

    .line 668
    const-string v12, "lib"

    .line 669
    .line 670
    invoke-direct {v8, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 671
    .line 672
    .line 673
    :try_start_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 674
    .line 675
    .line 676
    move-result-object v9

    .line 677
    invoke-static {v9}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    .line 678
    .line 679
    .line 680
    move-result-object v9
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 681
    :try_start_1b
    iget-object v12, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 682
    .line 683
    if-nez v12, :cond_16

    .line 684
    .line 685
    move-object v12, v4

    .line 686
    goto :goto_19

    .line 687
    :cond_16
    iget-object v12, v12, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    .line 688
    .line 689
    :goto_19
    invoke-static {v9, v8, v12, v0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    if-eq v6, v3, :cond_17

    .line 694
    .line 695
    const-string v0, "Failed to copy native libraries"

    .line 696
    .line 697
    invoke-virtual {v2, v6, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    .line 698
    .line 699
    .line 700
    goto :goto_1a

    .line 701
    :catchall_9
    move-exception v0

    .line 702
    move-object v4, v9

    .line 703
    goto :goto_1c

    .line 704
    :catch_6
    move-exception v0

    .line 705
    goto :goto_1b

    .line 706
    :cond_17
    :goto_1a
    :try_start_1c
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 707
    .line 708
    .line 709
    goto :goto_18

    .line 710
    :catchall_a
    move-exception v0

    .line 711
    goto :goto_1c

    .line 712
    :catch_7
    move-exception v0

    .line 713
    move-object v9, v4

    .line 714
    :goto_1b
    :try_start_1d
    invoke-static {v7, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    .line 716
    .line 717
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 718
    .line 719
    const/4 v7, -0x1

    .line 720
    invoke-direct {v0, v5, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v2, v4, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 724
    .line 725
    .line 726
    goto :goto_1a

    .line 727
    :goto_1c
    :try_start_1e
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 728
    .line 729
    .line 730
    throw v0

    .line 731
    :catch_8
    move-exception v0

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .line 746
    .line 747
    const-string v0, "Failed to create copy file"

    .line 748
    .line 749
    const/4 v4, -0x4

    .line 750
    invoke-virtual {v2, v4, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 751
    .line 752
    .line 753
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 754
    .line 755
    .line 756
    move v5, v4

    .line 757
    :catch_9
    :cond_18
    :goto_1d
    iput v5, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 758
    .line 759
    goto :goto_1f

    .line 760
    :goto_1e
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 761
    .line 762
    .line 763
    throw v0

    .line 764
    :cond_19
    :goto_1f
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 765
    .line 766
    if-ne v0, v3, :cond_1a

    .line 767
    .line 768
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 769
    .line 770
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 771
    .line 772
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    new-instance v4, Ljava/io/File;

    .line 777
    .line 778
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v5

    .line 782
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    invoke-static {v0, v4}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 786
    .line 787
    .line 788
    :cond_1a
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 789
    .line 790
    iput v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 791
    .line 792
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 793
    .line 794
    if-eqz v0, :cond_20

    .line 795
    .line 796
    iget-object v1, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    .line 797
    .line 798
    check-cast v1, Landroid/util/ArraySet;

    .line 799
    .line 800
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    iget-object v1, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    .line 804
    .line 805
    check-cast v1, Landroid/util/ArraySet;

    .line 806
    .line 807
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 808
    .line 809
    .line 810
    move-result v1

    .line 811
    iget-object v2, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    .line 812
    .line 813
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 814
    .line 815
    .line 816
    move-result v2

    .line 817
    if-eq v1, v2, :cond_1b

    .line 818
    .line 819
    goto :goto_21

    .line 820
    :cond_1b
    iget-object v1, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    .line 821
    .line 822
    check-cast v1, Landroid/util/ArraySet;

    .line 823
    .line 824
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 829
    .line 830
    .line 831
    move-result v2

    .line 832
    if-eqz v2, :cond_1e

    .line 833
    .line 834
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 839
    .line 840
    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 841
    .line 842
    if-nez v2, :cond_1d

    .line 843
    .line 844
    goto :goto_21

    .line 845
    :cond_1d
    if-eq v2, v3, :cond_1c

    .line 846
    .line 847
    move v3, v2

    .line 848
    :cond_1e
    new-instance v1, Ljava/util/ArrayList;

    .line 849
    .line 850
    iget-object v2, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    .line 851
    .line 852
    check-cast v2, Landroid/util/ArraySet;

    .line 853
    .line 854
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 855
    .line 856
    .line 857
    move-result v2

    .line 858
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 859
    .line 860
    .line 861
    iget-object v2, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    .line 862
    .line 863
    check-cast v2, Landroid/util/ArraySet;

    .line 864
    .line 865
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 870
    .line 871
    .line 872
    move-result v4

    .line 873
    if-eqz v4, :cond_1f

    .line 874
    .line 875
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v4

    .line 879
    check-cast v4, Lcom/android/server/pm/InstallRequest;

    .line 880
    .line 881
    iput v3, v4, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 882
    .line 883
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    goto :goto_20

    .line 887
    :cond_1f
    iget-object v2, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 888
    .line 889
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 890
    .line 891
    new-instance v4, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;

    .line 892
    .line 893
    invoke-direct {v4, v0, v3, v1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;ILjava/util/List;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 897
    .line 898
    .line 899
    goto :goto_21

    .line 900
    :cond_20
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 901
    .line 902
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 903
    .line 904
    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    .line 905
    .line 906
    const/4 v4, 0x2

    .line 907
    invoke-direct {v3, v1, v2, v4}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 911
    .line 912
    .line 913
    :goto_21
    return-void
.end method

.method public final handleStartCopy(Lcom/android/server/pm/InstallRequest;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 6
    .line 7
    const/high16 v3, 0x20000

    .line 8
    .line 9
    and-int/2addr v3, v0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iput v4, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 21
    .line 22
    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 23
    .line 24
    iget-object v6, v6, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v7, v1, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v3, v5, v6, v0, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 33
    .line 34
    const/high16 v5, 0x200000

    .line 35
    .line 36
    and-int/2addr v5, v0

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 40
    .line 41
    iget-wide v6, v1, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 42
    .line 43
    invoke-virtual {v5, v3, v6, v7, v0}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 56
    .line 57
    if-eq v0, v4, :cond_1

    .line 58
    .line 59
    const-string v1, "Failed to verify version code"

    .line 60
    .line 61
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 66
    .line 67
    and-int/lit16 v0, v0, 0x800

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    move v0, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v5

    .line 75
    :goto_0
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    const-string v0, "PackageManager"

    .line 82
    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo v7, "pkgLite for install: "

    .line 86
    .line 87
    .line 88
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 102
    .line 103
    iget-boolean v6, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    .line 104
    .line 105
    if-nez v6, :cond_7

    .line 106
    .line 107
    iget v6, v3, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 108
    .line 109
    const/4 v10, -0x1

    .line 110
    if-ne v6, v10, :cond_7

    .line 111
    .line 112
    iget-object v11, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 113
    .line 114
    iget-object v12, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 115
    .line 116
    iget-object v13, v0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v14, v1, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 119
    .line 120
    iget v15, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 121
    .line 122
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    .line 123
    .line 124
    iget-object v4, v11, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 125
    .line 126
    const-string v10, "PackageManager"

    .line 127
    .line 128
    iget-object v0, v11, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-virtual {v0, v7}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v16

    .line 142
    new-instance v0, Ljava/io/File;

    .line 143
    .line 144
    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :try_start_0
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {v7}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-static {v7, v0, v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-nez v7, :cond_4

    .line 164
    .line 165
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    .line 170
    .line 171
    invoke-static {v0, v14}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v18

    .line 175
    move-wide/from16 v7, v18

    .line 176
    .line 177
    :goto_1
    const-wide/16 v19, 0x0

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catch_0
    move-exception v0

    .line 181
    goto :goto_2

    .line 182
    :cond_4
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    .line 183
    .line 184
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {v7, v5, v8, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    throw v7
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_2
    const-string v5, "Failed to calculate installed size: "

    .line 201
    .line 202
    invoke-static {v0, v5, v10}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-wide/16 v7, -0x1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :goto_3
    cmp-long v0, v7, v19

    .line 209
    .line 210
    if-ltz v0, :cond_6

    .line 211
    .line 212
    :try_start_1
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 213
    .line 214
    iget-object v0, v5, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 217
    .line 218
    .line 219
    :try_start_2
    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    .line 221
    add-long v7, v7, v16

    .line 222
    .line 223
    const/4 v4, 0x0

    .line 224
    const/4 v9, 0x0

    .line 225
    :try_start_3
    invoke-virtual {v0, v9, v7, v8, v4}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V

    .line 226
    .line 227
    .line 228
    iget-object v0, v11, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    invoke-static {v0, v12, v13, v15, v14}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 235
    .line 236
    const/4 v7, -0x6

    .line 237
    if-ne v4, v7, :cond_5

    .line 238
    .line 239
    const/4 v4, -0x1

    .line 240
    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    :goto_4
    move-object v4, v0

    .line 245
    goto :goto_6

    .line 246
    :cond_5
    :goto_5
    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    .line 248
    :try_start_4
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 249
    .line 250
    .line 251
    move v6, v0

    .line 252
    goto :goto_9

    .line 253
    :catch_1
    move-exception v0

    .line 254
    goto :goto_8

    .line 255
    :catchall_1
    move-exception v0

    .line 256
    const/4 v9, 0x0

    .line 257
    goto :goto_4

    .line 258
    :goto_6
    :try_start_5
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 259
    .line 260
    .line 261
    goto :goto_7

    .line 262
    :catchall_2
    move-exception v0

    .line 263
    move-object v5, v0

    .line 264
    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    :goto_7
    throw v4
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 268
    :catch_2
    move-exception v0

    .line 269
    const/4 v9, 0x0

    .line 270
    :goto_8
    const-string v4, "Failed to free cache"

    .line 271
    .line 272
    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_6
    const/4 v9, 0x0

    .line 277
    :goto_9
    iput v6, v3, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_7
    const/4 v9, 0x0

    .line 281
    :goto_a
    iget-boolean v0, v1, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    .line 282
    .line 283
    if-nez v0, :cond_8

    .line 284
    .line 285
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 286
    .line 287
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 288
    .line 289
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 290
    .line 291
    monitor-enter v4

    .line 292
    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 293
    .line 294
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 295
    .line 296
    iget-object v5, v3, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 297
    .line 298
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 299
    .line 300
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 305
    .line 306
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 307
    if-eqz v0, :cond_8

    .line 308
    .line 309
    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_8

    .line 314
    .line 315
    const-string v0, "PackageManager"

    .line 316
    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v5, "Found on sdcard, keep current location: "

    .line 320
    .line 321
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v5, v3, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {v4, v5, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const/4 v4, 0x1

    .line 330
    iput-boolean v4, v2, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    .line 331
    .line 332
    goto :goto_b

    .line 333
    :catchall_3
    move-exception v0

    .line 334
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 335
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 336
    .line 337
    throw v0

    .line 338
    :cond_8
    :goto_b
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 339
    .line 340
    if-eqz v0, :cond_a

    .line 341
    .line 342
    iget-boolean v0, v1, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    .line 343
    .line 344
    if-nez v0, :cond_a

    .line 345
    .line 346
    iget-boolean v0, v2, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    .line 347
    .line 348
    if-nez v0, :cond_a

    .line 349
    .line 350
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iget-object v4, v3, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 357
    .line 358
    const/4 v5, 0x0

    .line 359
    const-wide/16 v6, 0x0

    .line 360
    .line 361
    invoke-interface {v0, v4, v6, v7, v5}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    if-eqz v0, :cond_9

    .line 366
    .line 367
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 368
    .line 369
    const/4 v4, 0x1

    .line 370
    and-int/2addr v0, v4

    .line 371
    if-eqz v0, :cond_9

    .line 372
    .line 373
    goto :goto_c

    .line 374
    :cond_9
    iget-object v0, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 375
    .line 376
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 377
    .line 378
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    iget v6, v1, Lcom/android/server/pm/InstallingSession;->mPreferredInstallLocation:I

    .line 387
    .line 388
    iget v7, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    invoke-static {v6, v7, v4}, Lcom/android/server/pm/AsecInstallHelper;->canInstallOnExternal(IILjava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_b

    .line 398
    .line 399
    const-string v0, "PackageManager"

    .line 400
    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v6, "Move the app to sdcard later: "

    .line 404
    .line 405
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget-object v6, v3, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 409
    .line 410
    invoke-static {v4, v6, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const/4 v4, 0x1

    .line 414
    iput-boolean v4, v2, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_a
    const/4 v5, 0x0

    .line 418
    :cond_b
    :goto_c
    iget-object v0, v3, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 419
    .line 420
    iget v4, v3, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 421
    .line 422
    iget v3, v3, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 423
    .line 424
    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 425
    .line 426
    iget-boolean v7, v6, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    .line 427
    .line 428
    if-eqz v7, :cond_e

    .line 429
    .line 430
    iget-object v7, v6, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 431
    .line 432
    if-eqz v7, :cond_c

    .line 433
    .line 434
    iget v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 435
    .line 436
    or-int/lit8 v6, v6, 0x10

    .line 437
    .line 438
    and-int/lit8 v6, v6, -0x9

    .line 439
    .line 440
    iput v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 441
    .line 442
    goto :goto_d

    .line 443
    :cond_c
    iget-object v6, v6, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    .line 444
    .line 445
    if-eqz v6, :cond_d

    .line 446
    .line 447
    iget v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 448
    .line 449
    or-int/lit8 v6, v6, 0x8

    .line 450
    .line 451
    and-int/lit8 v6, v6, -0x11

    .line 452
    .line 453
    iput v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 454
    .line 455
    goto :goto_d

    .line 456
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 457
    .line 458
    const-string v1, "Invalid stage location"

    .line 459
    .line 460
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_e
    :goto_d
    if-gez v4, :cond_f

    .line 465
    .line 466
    invoke-static {v4}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    goto/16 :goto_13

    .line 471
    .line 472
    :cond_f
    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 473
    .line 474
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 475
    .line 476
    .line 477
    move-result-object v6

    .line 478
    invoke-interface {v6, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    if-nez v0, :cond_10

    .line 483
    .line 484
    move-object v7, v9

    .line 485
    goto :goto_e

    .line 486
    :cond_10
    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 487
    .line 488
    :goto_e
    if-eqz v7, :cond_11

    .line 489
    .line 490
    iget v6, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 491
    .line 492
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    invoke-static {v3, v4, v6, v0, v7}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    :cond_11
    iget v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 505
    .line 506
    and-int/lit8 v3, v0, 0x10

    .line 507
    .line 508
    if-eqz v3, :cond_12

    .line 509
    .line 510
    const/4 v3, 0x1

    .line 511
    goto :goto_f

    .line 512
    :cond_12
    move v3, v5

    .line 513
    :goto_f
    and-int/lit8 v6, v0, 0x8

    .line 514
    .line 515
    if-eqz v6, :cond_13

    .line 516
    .line 517
    const/4 v6, 0x1

    .line 518
    goto :goto_10

    .line 519
    :cond_13
    move v6, v5

    .line 520
    :goto_10
    and-int/lit16 v7, v0, 0x800

    .line 521
    .line 522
    if-eqz v7, :cond_14

    .line 523
    .line 524
    const/4 v5, 0x1

    .line 525
    :cond_14
    const-string v7, "PackageManager"

    .line 526
    .line 527
    const/16 v8, -0x13

    .line 528
    .line 529
    if-eqz v3, :cond_15

    .line 530
    .line 531
    if-eqz v6, :cond_15

    .line 532
    .line 533
    const-string v0, "Conflicting flags specified for installing on both internal and external"

    .line 534
    .line 535
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    :goto_11
    move v4, v8

    .line 539
    goto :goto_13

    .line 540
    :cond_15
    if-eqz v6, :cond_16

    .line 541
    .line 542
    if-eqz v5, :cond_16

    .line 543
    .line 544
    const-string v0, "Conflicting flags specified for installing ephemeral on external"

    .line 545
    .line 546
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    goto :goto_11

    .line 550
    :cond_16
    if-nez v3, :cond_18

    .line 551
    .line 552
    if-nez v6, :cond_18

    .line 553
    .line 554
    const/4 v3, 0x2

    .line 555
    if-ne v4, v3, :cond_17

    .line 556
    .line 557
    or-int/lit8 v0, v0, 0x8

    .line 558
    .line 559
    and-int/lit8 v0, v0, -0x11

    .line 560
    .line 561
    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 562
    .line 563
    goto :goto_12

    .line 564
    :cond_17
    or-int/lit8 v0, v0, 0x10

    .line 565
    .line 566
    and-int/lit8 v0, v0, -0x9

    .line 567
    .line 568
    iput v0, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 569
    .line 570
    :cond_18
    :goto_12
    const/4 v4, 0x1

    .line 571
    :goto_13
    iput v4, v1, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 572
    .line 573
    const/4 v1, 0x1

    .line 574
    if-eq v4, v1, :cond_19

    .line 575
    .line 576
    const-string v0, "Failed to override installation location"

    .line 577
    .line 578
    invoke-virtual {v2, v4, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 579
    .line 580
    .line 581
    :cond_19
    return-void
.end method

.method public final installApexPackages(Ljava/util/List;)V
    .locals 9

    .line 1
    const-string v0, "Expected exactly one .apex file under "

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v2, v3, :cond_8

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 26
    .line 27
    iget-object v4, v1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    move v5, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v5, v4, Lcom/android/server/pm/InstallArgs;->mDevelopmentInstallFlags:I

    .line 34
    .line 35
    :goto_0
    and-int/2addr v5, v3

    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    move v5, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v5, v2

    .line 41
    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :try_start_0
    iget-object v4, v4, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 48
    .line 49
    :goto_2
    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-eqz v7, :cond_7

    .line 56
    .line 57
    array-length v8, v7

    .line 58
    if-ne v8, v3, :cond_6

    .line 59
    .line 60
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 61
    .line 62
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    .line 63
    .line 64
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 65
    .line 66
    invoke-interface {v3, v4, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    :try_start_1
    iget-object v3, v6, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 73
    .line 74
    aget-object v2, v7, v2

    .line 75
    .line 76
    check-cast v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    const/16 v4, -0x6e

    .line 82
    .line 83
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v3, v2, v5}, Landroid/apex/IApexService;->installAndActivatePackage(Ljava/lang/String;Z)Landroid/apex/ApexInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :try_start_3
    iput-object v2, v1, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    .line 96
    .line 97
    iget-object v2, v2, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v2, v1, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v2, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 102
    .line 103
    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    .line 104
    .line 105
    const/4 v4, 0x1

    .line 106
    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    :try_start_4
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :catch_0
    move-exception p0

    .line 119
    goto :goto_6

    .line 120
    :cond_4
    :goto_3
    return-void

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_4

    .line 123
    :catch_1
    move-exception p0

    .line 124
    :try_start_5
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p1, v4, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :catch_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 135
    .line 136
    const-string p1, "apexservice not available"

    .line 137
    .line 138
    invoke-direct {p0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    :goto_4
    if-eqz v0, :cond_5

    .line 143
    .line 144
    :try_start_6
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :catchall_1
    move-exception p1

    .line 149
    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    :goto_5
    throw p0

    .line 153
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p1, " got: "

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    array-length p1, v7

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 179
    .line 180
    const/16 v0, -0x25

    .line 181
    .line 182
    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string p1, " is not a directory"

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 208
    .line 209
    const/16 v0, -0x24

    .line 210
    .line 211
    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    throw p1
    :try_end_7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7 .. :try_end_7} :catch_0

    .line 215
    :goto_6
    const-string p1, "APEX installation failed"

    .line 216
    .line 217
    invoke-virtual {v1, p1, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 228
    .line 229
    const-string p1, "Only a non-staged install of a single APEX is supported"

    .line 230
    .line 231
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p0
.end method

.method public final installStage()V
    .locals 6

    .line 27
    const-string v0, "installStage"

    iput-object v0, p0, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    .line 28
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 29
    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    .line 30
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 31
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 32
    const-string/jumbo v0, "queueInstall"

    .line 33
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 34
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "START INSTALL PACKAGE: observer{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallObserver2;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          stagedDir{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    sget-boolean v4, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "          stagedCid{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    .line 39
    invoke-static {v4, v1, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 40
    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "          pkg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          versionCode{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          Request from{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;I)V

    iget p0, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 47
    invoke-static {p0}, Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;->getInstallDelayByThermal(I)J

    move-result-wide v2

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final installStage(Ljava/util/List;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 2
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 3
    const-string v2, "installStageMultiPackage"

    iput-object v2, p0, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 5
    iput v3, p0, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    .line 6
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const-wide/32 v4, 0x40000

    .line 7
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 8
    const-string/jumbo v2, "queueInstall"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 10
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "START INSTALL MULTI PACKAGE:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v3, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string/jumbo v5, "}\n"

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstallingSession;

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "          observer{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string/jumbo v8, "null"

    if-eqz v7, :cond_0

    .line 14
    invoke-interface {v7}, Landroid/content/pm/IPackageInstallObserver2;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v8

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "          stagedDir{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "          versionCode{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v7, :cond_1

    .line 18
    invoke-virtual {v7}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "          Request from{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 21
    :cond_2
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallingSession;

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "          pkg{"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 24
    iget-object p1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;I)V

    iget p0, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 25
    invoke-static {p0}, Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;->getInstallDelayByThermal(I)J

    move-result-wide v2

    .line 26
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final processApkInstallRequests(Ljava/util/List;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3
    .line 4
    if-nez p2, :cond_6

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_10

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 21
    .line 22
    iget v3, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 23
    .line 24
    if-eq v3, v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    iget-object v2, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v4, v2, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    iget-object v4, v4, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v4, v3

    .line 45
    :goto_1
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object v5, v2, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    iget-object v5, v5, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v5, v3

    .line 55
    :goto_2
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v3, v2, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    .line 62
    .line 63
    :cond_3
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 64
    .line 65
    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget v3, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 70
    .line 71
    invoke-static {v3}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_0

    .line 86
    .line 87
    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 96
    .line 97
    invoke-virtual {v3, v2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_a

    .line 110
    .line 111
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-static {v3}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_7

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v3}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 136
    .line 137
    if-eq v4, v0, :cond_8

    .line 138
    .line 139
    invoke-static {v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_8
    invoke-static {v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-nez v4, :cond_7

    .line 148
    .line 149
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    const/16 v5, 0x3e8

    .line 154
    .line 155
    invoke-static {v3, v4, v5}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    invoke-static {v3, v2}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_9
    const/16 v3, -0x12

    .line 166
    .line 167
    const-string v4, "Error while mounting SdDir"

    .line 168
    .line 169
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_a
    iget-object p2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    const-wide/32 v2, 0x40000

    .line 179
    .line 180
    .line 181
    :try_start_0
    iget-object v4, p2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 182
    .line 183
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 184
    .line 185
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .line 189
    .line 190
    :try_start_1
    const-string v5, "installPackages"

    .line 191
    .line 192
    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, p1}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesLI(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    .line 197
    .line 198
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    .line 200
    .line 201
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 202
    .line 203
    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    :cond_b
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_10

    .line 213
    .line 214
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 219
    .line 220
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 221
    .line 222
    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 223
    .line 224
    if-eqz v4, :cond_d

    .line 225
    .line 226
    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 227
    .line 228
    iget-object v5, v4, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    .line 229
    .line 230
    iget-object v6, v4, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    .line 231
    .line 232
    if-ne v2, v0, :cond_c

    .line 233
    .line 234
    iget-object v2, v4, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v3, v2, v6, v5}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_c
    iget-object v2, v4, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v3, v2, v6, v5}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-static {v4}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_f

    .line 255
    .line 256
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-static {v3}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 265
    .line 266
    if-eq v2, v0, :cond_e

    .line 267
    .line 268
    invoke-static {v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_e
    invoke-static {v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-nez v2, :cond_b

    .line 277
    .line 278
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    invoke-static {v3, v2, v4}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_f
    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 291
    .line 292
    if-eq v4, v0, :cond_b

    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v3, v2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_11

    .line 311
    .line 312
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    check-cast p1, Lcom/android/server/pm/InstallRequest;

    .line 317
    .line 318
    iget-object p2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 319
    .line 320
    invoke-virtual {p2, p1}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_11
    return-void

    .line 325
    :catchall_0
    move-exception p0

    .line 326
    goto :goto_7

    .line 327
    :catchall_1
    move-exception p0

    .line 328
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 329
    .line 330
    .line 331
    goto :goto_6

    .line 332
    :catchall_2
    move-exception p1

    .line 333
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    :goto_6
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 337
    :goto_7
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 338
    .line 339
    .line 340
    throw p0
.end method

.method public final processInstallRequests(Ljava/util/List;Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/high16 v5, 0x20000

    .line 32
    .line 33
    and-int/2addr v4, v5

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p1, "Attempted to do a multi package install of both APEXes and APKs"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    new-instance p1, Ljava/lang/Thread;

    .line 74
    .line 75
    new-instance p2, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-direct {p2, p0, v0, v1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    const-string p0, "installApexPackages"

    .line 82
    .line 83
    invoke-direct {p1, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const/4 p1, 0x0

    .line 91
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lcom/android/server/pm/InstallRequest;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    return-void

    .line 103
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(Ljava/util/List;Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InstallingSession{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " file="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string/jumbo p0, "}"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
