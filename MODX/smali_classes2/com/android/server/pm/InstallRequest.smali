.class public final Lcom/android/server/pm/InstallRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mApexInfo:Landroid/apex/ApexInfo;

.field public mApexModuleName:Ljava/lang/String;

.field public mAppId:I

.field public mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field public mClearCodeCache:Z

.field public mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public mFirstTimeBroadcastInstantUserIds:[I

.field public mFirstTimeBroadcastUserIds:[I

.field public mFreezer:Lcom/android/server/pm/PackageFreezer;

.field public final mHasAppMetadataFileFromInstaller:Z

.field public final mInstallArgs:Lcom/android/server/pm/InstallArgs;

.field public final mInstallerUidForInstallExisting:I

.field public mInternalErrorCode:I

.field public final mIsInstallForUsers:Z

.field public final mIsInstallInherit:Z

.field public mLibraryConsumers:Ljava/util/ArrayList;

.field public mName:Ljava/lang/String;

.field public mNeedToMove:Z

.field public mNewUsers:[I

.field public mOrigPackage:Ljava/lang/String;

.field public mOrigPermission:Ljava/lang/String;

.field public mOrigUsers:[I

.field public mOriginalPs:Lcom/android/server/pm/PackageSetting;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

.field public mParseFlags:I

.field public mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

.field public mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

.field public mPostInstallRunnable:Ljava/lang/Runnable;

.field public final mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public mReplace:Z

.field public final mRequireUserAction:I

.field public mResponsibleInstallerTitles:Landroid/util/SparseArray;

.field public mReturnCode:I

.field public mReturnMsg:Ljava/lang/String;

.field public mScanFlags:I

.field public mScanResult:Lcom/android/server/pm/ScanResult;

.field public final mSessionId:I

.field public mSpqrProfileGenerated:Z

.field public mSystem:Z

.field public mUpdateBroadcastInstantUserIds:[I

.field public mUpdateBroadcastUserIds:[I

.field public final mUserId:I

.field public final mWarnings:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;IIZ)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    .line 24
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 25
    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 26
    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 27
    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 29
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 30
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 33
    iput-object p2, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 34
    iput-object p3, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 35
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 36
    new-instance p2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {p2, p0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object p2, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 37
    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    .line 38
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 39
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 40
    iput p5, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 41
    iput p6, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 42
    iput-boolean p7, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/PackageSetting;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    .line 47
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 48
    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 49
    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 50
    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 52
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    if-eqz p4, :cond_0

    .line 53
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    iput p4, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    goto :goto_0

    .line 54
    :cond_0
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    :goto_0
    const/4 p4, 0x0

    .line 55
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 56
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 57
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 58
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 59
    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 60
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 61
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 62
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 63
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 64
    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 65
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallingSession;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    .line 2
    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v0, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    .line 4
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 5
    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 6
    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 7
    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 9
    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 10
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 11
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 12
    new-instance v2, Lcom/android/server/pm/InstallArgs;

    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v7, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 13
    iget-object v12, v1, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v13, v1, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget-object v15, v1, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    move/from16 v16, v3

    iget-object v3, v1, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move-object/from16 v17, v3

    iget v3, v1, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    move/from16 v21, v3

    iget v3, v1, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    move/from16 v22, v3

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget v8, v1, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    iget-object v9, v1, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v10, v1, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget v14, v1, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    iget v3, v1, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    move/from16 v18, v3

    iget v3, v1, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    move/from16 v19, v3

    iget-boolean v3, v1, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    move/from16 v20, v3

    iget-boolean v3, v1, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    move/from16 v23, v3

    iget-object v3, v1, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    move-object/from16 v24, v3

    move-object v3, v2

    invoke-direct/range {v3 .. v24}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLjava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 14
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 15
    new-instance v2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 16
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    .line 17
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 18
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 19
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 20
    iget-boolean v1, v1, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    iput-boolean v1, v0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    return-void
.end method


# virtual methods
.method public final assertScanResultExists()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "PackageManager"

    .line 14
    .line 15
    const-string v0, "ScanResult is null and it should not happen"

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "ScanResult cannot be null."

    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public final closeFreezer()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getCodeFile()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final getCodePath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final getDataLoaderType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    .line 8
    .line 9
    :goto_0
    return p0
.end method

.method public final getInstallFlags()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    .line 8
    .line 9
    :goto_0
    return p0
.end method

.method public final getInstallReason()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    .line 8
    .line 9
    :goto_0
    return p0
.end method

.method public final getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final getInstallerPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public final getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 7
    .line 8
    return-object p0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getUserId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getVolumeUuid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final isInstallMove()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x20

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getExternalProfileErrors()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Error occurred during dexopt when processing external profiles:\n  "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "\n  "

    .line 78
    .line 79
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 96
    .line 97
    if-eqz p0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/16 v1, 0x14

    .line 104
    .line 105
    if-ne v0, v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-wide/16 v0, 0x0

    .line 116
    .line 117
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_3

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide v3

    .line 153
    add-long/2addr v0, v3

    .line 154
    goto :goto_1

    .line 155
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 156
    .line 157
    new-instance p1, Lcom/android/server/pm/PackageMetrics$InstallStep;

    .line 158
    .line 159
    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>(J)V

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x5

    .line 163
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    return-void
.end method

.method public final setCodeFile(Ljava/io/File;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final setError(ILjava/lang/String;)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 9
    iput-object p2, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    .line 10
    const-string p1, "PackageManager"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    :cond_0
    return-void
.end method

.method public final setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .locals 1

    .line 1
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    .line 2
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 3
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    .line 5
    const-string v0, "PackageManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    :cond_0
    return-void
.end method

.method public final setOriginUsers([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    .line 2
    .line 3
    return-void
.end method

.method public final setPrepareResult(ZIILcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 10
    .line 11
    iput-boolean p7, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    .line 12
    .line 13
    iput-boolean p8, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 14
    .line 15
    iput-object p9, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    .line 16
    .line 17
    iput-object p10, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 18
    .line 19
    return-void
.end method

.method public final setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setReturnCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 2
    .line 3
    return-void
.end method
