.class public final Lcom/android/server/SystemConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/SystemConfig;


# instance fields
.field public mAerSupported:Z

.field public final mAllowAdasSettings:Landroid/util/ArrayMap;

.field public final mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

.field public final mAllowImplicitBroadcasts:Landroid/util/ArraySet;

.field public final mAllowInDataUsageSave:Landroid/util/ArraySet;

.field public final mAllowInPowerSave:Landroid/util/ArraySet;

.field public final mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

.field public final mAllowUnthrottledLocation:Landroid/util/ArraySet;

.field public final mAllowedAssociations:Landroid/util/ArrayMap;

.field public final mAllowedVendorApexes:Landroid/util/ArrayMap;

.field public final mAllowlistCameraPrivacy:Landroid/util/ArraySet;

.field public final mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

.field public final mAppMetadataFilePaths:Landroid/util/ArrayMap;

.field public final mAvailableFeatures:Landroid/util/ArrayMap;

.field public final mBackupTransportWhitelist:Landroid/util/ArraySet;

.field public final mBgRestrictionExemption:Landroid/util/ArraySet;

.field public final mBugreportWhitelistedPackages:Landroid/util/ArraySet;

.field public final mDataUsageSystemUidPackages:Landroid/util/SparseArray;

.field public final mDefaultVrComponents:Landroid/util/ArraySet;

.field public final mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

.field public final mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

.field public final mEnhancedConfirmationTrustedInstallers:Landroid/util/ArraySet;

.field public final mEnhancedConfirmationTrustedPackages:Landroid/util/ArraySet;

.field public mGlobalGids:[I

.field public final mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

.field public final mInitialNonStoppedSystemPackages:Ljava/util/Set;

.field public final mInstallConstraintsAllowlist:Ljava/util/Set;

.field public final mLinkedApps:Landroid/util/ArraySet;

.field public mModulesInstallerPackageName:Ljava/lang/String;

.field public mNamedActors:Ljava/util/Map;

.field public mOverlayConfigSignaturePackage:Ljava/lang/String;

.field public final mPackageComponentEnabledState:Landroid/util/ArrayMap;

.field public final mPackageToSharedUidAllowList:Landroid/util/ArrayMap;

.field public mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

.field public mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

.field public final mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

.field public final mPermissions:Landroid/util/ArrayMap;

.field public final mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;

.field public final mPreventUserDisablePackages:Ljava/util/ArrayList;

.field public final mRequiredSystemPackages:Ljava/util/Set;

.field public final mRollbackWhitelistedPackages:Landroid/util/ArraySet;

.field public final mSharedLibraries:Landroid/util/ArrayMap;

.field public final mSplitPermissions:Ljava/util/ArrayList;

.field public final mSystemPermissions:Landroid/util/SparseArray;

.field public final mUnavailableFeatures:Landroid/util/ArraySet;

.field public final mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

.field public final mWhitelistedStagedInstallers:Landroid/util/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 57
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 60
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 62
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowlistCameraPrivacy:Landroid/util/ArraySet;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 70
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 72
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 75
    new-instance v0, Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionAllowlist;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPreventUserDisablePackages:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mInstallConstraintsAllowlist:Ljava/util/Set;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToSharedUidAllowList:Landroid/util/ArrayMap;

    .line 90
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mRequiredSystemPackages:Ljava/util/Set;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAppMetadataFilePaths:Landroid/util/ArrayMap;

    .line 92
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;

    .line 93
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedPackages:Landroid/util/ArraySet;

    .line 94
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedInstallers:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 97
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemConfig"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 98
    const-string/jumbo v1, "readAllPermissions"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->readAllPermissions()V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->readPublicNativeLibrariesList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 102
    throw p0
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 7
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 10
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 11
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 12
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 15
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowlistCameraPrivacy:Landroid/util/ArraySet;

    .line 16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    .line 17
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    .line 18
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 19
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 20
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    .line 23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    .line 24
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 25
    new-instance v0, Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionAllowlist;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 27
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 28
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPreventUserDisablePackages:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 32
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mInstallConstraintsAllowlist:Ljava/util/Set;

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToSharedUidAllowList:Landroid/util/ArrayMap;

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mRequiredSystemPackages:Ljava/util/Set;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAppMetadataFilePaths:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;

    .line 43
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedPackages:Landroid/util/ArraySet;

    .line 44
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedInstallers:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 47
    const-string v0, "SystemConfig"

    if-eqz p1, :cond_0

    .line 48
    const-string p1, "Constructing a test SystemConfig"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->readAllPermissions()V

    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "Constructing an empty test SystemConfig"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/SystemConfig;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "SystemConfig"

    .line 11
    .line 12
    const-string v1, "SystemConfig is being accessed by a process other than system_server."

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    const-class v0, Lcom/android/server/SystemConfig;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/SystemConfig;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/android/server/SystemConfig;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-object v1

    .line 38
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1
.end method

.method public static isAtMostSdkLevel(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtMost(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public static isErofsSupported()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "/sys/fs/erofs"

    .line 3
    .line 4
    new-array v2, v0, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    return v0
.end method

.method public static isKernelVersionAtLeast(II)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/VintfRuntimeInfo;->getKernelVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\\."

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    :try_start_0
    aget-object v1, v0, v3

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aget-object v0, v0, v2

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-gt v1, p0, :cond_1

    .line 31
    .line 32
    if-ne v1, p0, :cond_2

    .line 33
    .line 34
    if-lt v0, p1, :cond_2

    .line 35
    .line 36
    :cond_1
    move v3, v2

    .line 37
    :catch_0
    :cond_2
    return v3
.end method

.method public static logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "> not allowed in partition of "

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " at "

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "SystemConfig"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static parseEnhancedConfirmationTrustedPackage(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SignedPackage;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, " at "

    .line 14
    .line 15
    const-string v4, "<"

    .line 16
    .line 17
    const-string v5, "SystemConfig"

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, "> without package "

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_0
    const-string/jumbo v2, "sha256-cert-digest"

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, "> without sha256-cert-digest in "

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_1
    :try_start_0
    new-instance v6, Landroid/content/pm/Signature;

    .line 103
    .line 104
    const-string v7, ":"

    .line 105
    .line 106
    const-string v8, ""

    .line 107
    .line 108
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-direct {v6, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 116
    .line 117
    .line 118
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    new-instance p1, Landroid/content/pm/SignedPackage;

    .line 120
    .line 121
    invoke-direct {p1, v1, p0}, Landroid/content/pm/SignedPackage;-><init>(Ljava/lang/String;[B)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p1, "> with invalid sha256-cert-digest in "

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    return-object v0
.end method

.method public static readInstallInUserType(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "SystemConfig"

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo p2, "package is required for <install-in-user-type> in "

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/util/Set;

    .line 45
    .line 46
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/Set;

    .line 51
    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    :goto_0
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_7

    .line 61
    .line 62
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const-string/jumbo v7, "install-in"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const-string/jumbo v8, "user-type is required for <install-in-user-type> in "

    .line 74
    .line 75
    .line 76
    const-string/jumbo v9, "user-type"

    .line 77
    .line 78
    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    invoke-interface {p0, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_1

    .line 90
    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    if-nez v2, :cond_2

    .line 112
    .line 113
    new-instance v2, Landroid/util/ArraySet;

    .line 114
    .line 115
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    const-string/jumbo v7, "do-not-install-in"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_6

    .line 133
    .line 134
    invoke-interface {p0, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_4

    .line 143
    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_4
    if-nez v4, :cond_5

    .line 165
    .line 166
    new-instance v4, Landroid/util/ArraySet;

    .line 167
    .line 168
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    :cond_5
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string/jumbo v7, "unrecognized tag in <install-in-user-type> in "

    .line 181
    .line 182
    .line 183
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_7
    return-void
.end method

.method public static readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "SystemConfig"

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string/jumbo p1, "package is required for <"

    .line 18
    .line 19
    .line 20
    const-string v0, "> in "

    .line 21
    .line 22
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/util/ArrayMap;

    .line 46
    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    new-instance p2, Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :cond_2
    :goto_0
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_6

    .line 63
    .line 64
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string/jumbo v5, "permission"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const-string/jumbo v6, "name"

    .line 76
    .line 77
    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    invoke-interface {p0, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string/jumbo v5, "name is required for <permission> in "

    .line 93
    .line 94
    .line 95
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {p2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    const-string/jumbo v5, "deny-permission"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_2

    .line 127
    .line 128
    invoke-interface {p0, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_5

    .line 137
    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string/jumbo v5, "name is required for <deny-permission> in "

    .line 141
    .line 142
    .line 143
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {p2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_6
    invoke-virtual {p1, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    return-void
.end method


# virtual methods
.method public final addFeature(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/content/pm/FeatureInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 17
    .line 18
    iput p1, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p0, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 27
    .line 28
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    iput p0, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final enableIpSecTunnelMigrationOnVsrUAndAbove()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.vendor.api_level"

    .line 2
    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x21

    .line 11
    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    const-string v0, "android.software.ipsec_tunnel_migration"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final getAppMetadataFilePaths()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mAppMetadataFilePaths:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInitialNonStoppedSystemPackages()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOverlayConfigSignaturePackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 12
    .line 13
    :goto_0
    return-object p0
.end method

.method public final readAllPermissions()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "SystemConfig"

    .line 4
    .line 5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v4, "etc"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "sysconfig"

    .line 17
    .line 18
    .line 19
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-static {v0, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v6, -0x1

    .line 28
    invoke-virtual {v1, v3, v0, v6}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v7, "permissions"

    .line 36
    .line 37
    .line 38
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-static {v0, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v3, v0, v6}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 47
    .line 48
    .line 49
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 50
    .line 51
    const/16 v8, 0x1b

    .line 52
    .line 53
    if-gt v0, v8, :cond_0

    .line 54
    .line 55
    const/16 v8, 0xc9f

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/16 v8, 0xc93

    .line 59
    .line 60
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-static {v9, v10}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-static {v9, v10}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v9, "ro.boot.product.vendor.sku"

    .line 91
    .line 92
    .line 93
    const-string v10, ""

    .line 94
    .line 95
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    const-string/jumbo v12, "sku_"

    .line 104
    .line 105
    .line 106
    if-nez v11, :cond_1

    .line 107
    .line 108
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    filled-new-array {v4, v5, v9}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    invoke-static {v11, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v1, v3, v11, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    filled-new-array {v4, v7, v9}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-static {v11, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 140
    .line 141
    .line 142
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-static {v9, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    invoke-static {v9, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 170
    .line 171
    .line 172
    const-string/jumbo v9, "ro.boot.product.hardware.sku"

    .line 173
    .line 174
    .line 175
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    if-nez v13, :cond_2

    .line 184
    .line 185
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    filled-new-array {v4, v5, v11}, [Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    invoke-static {v13, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    invoke-virtual {v1, v3, v13, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 202
    .line 203
    .line 204
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    filled-new-array {v4, v7, v11}, [Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-static {v13, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    invoke-virtual {v1, v3, v11, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 217
    .line 218
    .line 219
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    invoke-static {v8, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    const/16 v11, 0x4a1

    .line 232
    .line 233
    invoke-virtual {v1, v3, v8, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    invoke-static {v8, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {v1, v3, v8, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 249
    .line 250
    .line 251
    const/16 v8, 0x1e

    .line 252
    .line 253
    if-gt v0, v8, :cond_3

    .line 254
    .line 255
    move v8, v6

    .line 256
    goto :goto_1

    .line 257
    :cond_3
    const/16 v0, 0xfdf

    .line 258
    .line 259
    move v8, v0

    .line 260
    :goto_1
    const-string v11, "Got exception parsing permissions."

    .line 261
    .line 262
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const-string v13, "aer_product_name.xml"

    .line 267
    .line 268
    filled-new-array {v4, v13}, [Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v13

    .line 272
    invoke-static {v0, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    .line 277
    .line 278
    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 279
    .line 280
    .line 281
    new-instance v15, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v6, "Reading aerProductName from "

    .line 284
    .line 285
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 303
    .line 304
    .line 305
    move-result-object v15

    .line 306
    invoke-interface {v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 307
    .line 308
    .line 309
    :goto_2
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 310
    .line 311
    .line 312
    move-result v13
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    move-object/from16 v16, v9

    .line 314
    .line 315
    const/4 v9, 0x2

    .line 316
    if-eq v13, v9, :cond_5

    .line 317
    .line 318
    const/4 v9, 0x1

    .line 319
    if-eq v13, v9, :cond_4

    .line 320
    .line 321
    move-object/from16 v9, v16

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_4
    const/4 v9, 0x2

    .line 325
    :cond_5
    if-ne v13, v9, :cond_e

    .line 326
    .line 327
    :try_start_2
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v9

    .line 331
    const-string/jumbo v13, "device"

    .line 332
    .line 333
    .line 334
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v9

    .line 338
    if-eqz v9, :cond_d

    .line 339
    .line 340
    :goto_3
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 344
    .line 345
    .line 346
    move-result v9
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    const/4 v13, 0x1

    .line 348
    if-ne v9, v13, :cond_6

    .line 349
    .line 350
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v18, v10

    .line 354
    .line 355
    move-object/from16 v17, v12

    .line 356
    .line 357
    goto/16 :goto_e

    .line 358
    .line 359
    :cond_6
    :try_start_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    if-nez v9, :cond_7

    .line 364
    .line 365
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :catchall_0
    move-exception v0

    .line 370
    goto/16 :goto_d

    .line 371
    .line 372
    :catch_0
    move-exception v0

    .line 373
    :goto_4
    move-object/from16 v18, v10

    .line 374
    .line 375
    move-object/from16 v17, v12

    .line 376
    .line 377
    goto/16 :goto_a

    .line 378
    .line 379
    :catch_1
    move-exception v0

    .line 380
    :goto_5
    move-object/from16 v18, v10

    .line 381
    .line 382
    move-object/from16 v17, v12

    .line 383
    .line 384
    goto/16 :goto_c

    .line 385
    .line 386
    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 387
    .line 388
    .line 389
    move-result v13
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    move-object/from16 v17, v12

    .line 391
    .line 392
    const v12, -0x12723311

    .line 393
    .line 394
    .line 395
    move-object/from16 v18, v10

    .line 396
    .line 397
    const-string v10, " at "

    .line 398
    .line 399
    if-eq v13, v12, :cond_9

    .line 400
    .line 401
    :cond_8
    move/from16 v19, v6

    .line 402
    .line 403
    goto :goto_8

    .line 404
    :cond_9
    :try_start_4
    const-string/jumbo v12, "product"

    .line 405
    .line 406
    .line 407
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v12

    .line 411
    if-eqz v12, :cond_8

    .line 412
    .line 413
    const-string/jumbo v12, "name"

    .line 414
    .line 415
    .line 416
    const/4 v13, 0x0

    .line 417
    invoke-interface {v15, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v12

    .line 421
    if-nez v6, :cond_a

    .line 422
    .line 423
    move/from16 v19, v6

    .line 424
    .line 425
    const/4 v6, 0x1

    .line 426
    goto :goto_6

    .line 427
    :cond_a
    move/from16 v19, v6

    .line 428
    .line 429
    const-string/jumbo v6, "notLowRam"

    .line 430
    .line 431
    .line 432
    invoke-interface {v15, v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    const-string/jumbo v13, "true"

    .line 437
    .line 438
    .line 439
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    const/4 v13, 0x1

    .line 444
    xor-int/2addr v6, v13

    .line 445
    :goto_6
    if-nez v12, :cond_b

    .line 446
    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    const-string v12, "<"

    .line 453
    .line 454
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v9, "> without name in "

    .line 461
    .line 462
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    goto :goto_7

    .line 486
    :catch_2
    move-exception v0

    .line 487
    goto/16 :goto_a

    .line 488
    .line 489
    :catch_3
    move-exception v0

    .line 490
    goto/16 :goto_c

    .line 491
    .line 492
    :cond_b
    if-eqz v6, :cond_c

    .line 493
    .line 494
    const-string/jumbo v6, "ro.product.name"

    .line 495
    .line 496
    .line 497
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    if-eqz v6, :cond_c

    .line 506
    .line 507
    const/4 v6, 0x1

    .line 508
    iput-boolean v6, v1, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 509
    .line 510
    :cond_c
    :goto_7
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 511
    .line 512
    .line 513
    goto :goto_9

    .line 514
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .line 518
    .line 519
    const-string v12, "Tag "

    .line 520
    .line 521
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    const-string v9, " is unknown in "

    .line 528
    .line 529
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v9

    .line 542
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v6

    .line 549
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 553
    .line 554
    .line 555
    :goto_9
    move-object/from16 v12, v17

    .line 556
    .line 557
    move-object/from16 v10, v18

    .line 558
    .line 559
    move/from16 v6, v19

    .line 560
    .line 561
    goto/16 :goto_3

    .line 562
    .line 563
    :cond_d
    move-object/from16 v18, v10

    .line 564
    .line 565
    move-object/from16 v17, v12

    .line 566
    .line 567
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    .line 568
    .line 569
    new-instance v9, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .line 573
    .line 574
    const-string v10, "Unexpected start tag in "

    .line 575
    .line 576
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string v0, ": found "

    .line 583
    .line 584
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const-string v0, ", expected \'product\'"

    .line 595
    .line 596
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    throw v6

    .line 607
    :cond_e
    move-object/from16 v18, v10

    .line 608
    .line 609
    move-object/from16 v17, v12

    .line 610
    .line 611
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 612
    .line 613
    const-string v6, "No start tag found"

    .line 614
    .line 615
    invoke-direct {v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    throw v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 619
    :catch_4
    move-exception v0

    .line 620
    move-object/from16 v16, v9

    .line 621
    .line 622
    goto/16 :goto_4

    .line 623
    .line 624
    :catch_5
    move-exception v0

    .line 625
    move-object/from16 v16, v9

    .line 626
    .line 627
    goto/16 :goto_5

    .line 628
    .line 629
    :goto_a
    :try_start_5
    invoke-static {v2, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 630
    .line 631
    .line 632
    :goto_b
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 633
    .line 634
    .line 635
    goto :goto_e

    .line 636
    :goto_c
    :try_start_6
    invoke-static {v2, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 637
    .line 638
    .line 639
    goto :goto_b

    .line 640
    :goto_d
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 641
    .line 642
    .line 643
    throw v0

    .line 644
    :catch_6
    move-object/from16 v16, v9

    .line 645
    .line 646
    move-object/from16 v18, v10

    .line 647
    .line 648
    move-object/from16 v17, v12

    .line 649
    .line 650
    new-instance v6, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    const-string v9, "Couldn\'t find or open aerProductName file "

    .line 653
    .line 654
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    :goto_e
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v6

    .line 675
    invoke-static {v0, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 680
    .line 681
    .line 682
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    invoke-static {v0, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 695
    .line 696
    .line 697
    const-string/jumbo v0, "ro.boot.hardware.sku"

    .line 698
    .line 699
    .line 700
    move-object/from16 v6, v18

    .line 701
    .line 702
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 707
    .line 708
    .line 709
    move-result v9

    .line 710
    if-nez v9, :cond_f

    .line 711
    .line 712
    move-object/from16 v9, v17

    .line 713
    .line 714
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 719
    .line 720
    .line 721
    move-result-object v9

    .line 722
    filled-new-array {v4, v5, v0}, [Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v10

    .line 726
    invoke-static {v9, v10}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 727
    .line 728
    .line 729
    move-result-object v9

    .line 730
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 731
    .line 732
    .line 733
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 734
    .line 735
    .line 736
    move-result-object v9

    .line 737
    filled-new-array {v4, v7, v0}, [Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-static {v9, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 746
    .line 747
    .line 748
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v8

    .line 756
    invoke-static {v0, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    const/4 v8, -0x1

    .line 761
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 762
    .line 763
    .line 764
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v9

    .line 772
    invoke-static {v0, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 777
    .line 778
    .line 779
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 780
    .line 781
    .line 782
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 787
    .line 788
    .line 789
    move-result v8

    .line 790
    const-string/jumbo v9, "carrier"

    .line 791
    .line 792
    .line 793
    if-nez v8, :cond_10

    .line 794
    .line 795
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 796
    .line 797
    .line 798
    move-result-object v8

    .line 799
    filled-new-array {v4, v9, v0, v7}, [Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-static {v8, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    const/4 v8, 0x1

    .line 808
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 809
    .line 810
    .line 811
    goto :goto_f

    .line 812
    :cond_10
    const/4 v8, 0x1

    .line 813
    :goto_f
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    filled-new-array {v9, v5}, [Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v10

    .line 821
    invoke-static {v0, v10}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    const/4 v10, -0x1

    .line 826
    invoke-virtual {v1, v3, v0, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 827
    .line 828
    .line 829
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    filled-new-array {v9, v7}, [Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v9

    .line 837
    invoke-static {v0, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {v1, v3, v0, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 842
    .line 843
    .line 844
    const-string/jumbo v0, "mdc.sys.omc_etcpath"

    .line 845
    .line 846
    .line 847
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v9

    .line 851
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 852
    .line 853
    .line 854
    move-result v11

    .line 855
    if-nez v11, :cond_11

    .line 856
    .line 857
    new-instance v11, Ljava/io/File;

    .line 858
    .line 859
    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    filled-new-array {v5}, [Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v5

    .line 866
    invoke-static {v11, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 867
    .line 868
    .line 869
    move-result-object v5

    .line 870
    invoke-virtual {v1, v3, v5, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 871
    .line 872
    .line 873
    filled-new-array {v7}, [Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v5

    .line 877
    invoke-static {v11, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 878
    .line 879
    .line 880
    move-result-object v5

    .line 881
    invoke-virtual {v1, v3, v5, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 882
    .line 883
    .line 884
    :cond_11
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 885
    .line 886
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 887
    .line 888
    .line 889
    move-result v9

    .line 890
    if-nez v9, :cond_14

    .line 891
    .line 892
    const-string/jumbo v9, "eea"

    .line 893
    .line 894
    .line 895
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 896
    .line 897
    .line 898
    move-result v5

    .line 899
    if-eqz v5, :cond_14

    .line 900
    .line 901
    const-string/jumbo v5, "ro.boot.carrierid"

    .line 902
    .line 903
    .line 904
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 909
    .line 910
    .line 911
    move-result v5

    .line 912
    if-eqz v5, :cond_12

    .line 913
    .line 914
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    goto :goto_10

    .line 919
    :cond_12
    const-string/jumbo v0, "mdc.sys.carrierid_etcpath"

    .line 920
    .line 921
    .line 922
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    :goto_10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 927
    .line 928
    const-string/jumbo v9, "omcEtcPathCid "

    .line 929
    .line 930
    .line 931
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v5

    .line 941
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .line 943
    .line 944
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 945
    .line 946
    .line 947
    move-result v5

    .line 948
    const-string/jumbo v9, "cid/permissions"

    .line 949
    .line 950
    .line 951
    const-string/jumbo v10, "cid/sysconfig"

    .line 952
    .line 953
    .line 954
    if-nez v5, :cond_13

    .line 955
    .line 956
    new-instance v5, Ljava/io/File;

    .line 957
    .line 958
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    filled-new-array {v10}, [Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-static {v5, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    const/4 v11, -0x1

    .line 970
    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 971
    .line 972
    .line 973
    filled-new-array {v9}, [Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    invoke-static {v5, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 982
    .line 983
    .line 984
    goto :goto_11

    .line 985
    :cond_13
    const/4 v11, -0x1

    .line 986
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    filled-new-array {v4, v10}, [Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v5

    .line 994
    invoke-static {v0, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 999
    .line 1000
    .line 1001
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    filled-new-array {v4, v9}, [Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    invoke-static {v0, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 1014
    .line 1015
    .line 1016
    :cond_14
    :goto_11
    const-string v0, "SEServiceFeature running"

    .line 1017
    .line 1018
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    .line 1020
    .line 1021
    move-object/from16 v5, v16

    .line 1022
    .line 1023
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v5

    .line 1035
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v6

    .line 1039
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v5

    .line 1043
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    const-string v9, "NFC SKU: "

    .line 1046
    .line 1047
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v6

    .line 1057
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    const-string/jumbo v6, "eSE_COS: "

    .line 1061
    .line 1062
    .line 1063
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .line 1065
    .line 1066
    const-string/jumbo v6, "hce"

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1070
    .line 1071
    .line 1072
    move-result v6

    .line 1073
    const/4 v9, 0x0

    .line 1074
    if-eqz v6, :cond_15

    .line 1075
    .line 1076
    const-string/jumbo v6, "ese"

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v0

    .line 1083
    if-eqz v0, :cond_15

    .line 1084
    .line 1085
    move v0, v8

    .line 1086
    goto :goto_12

    .line 1087
    :cond_15
    move v0, v9

    .line 1088
    :goto_12
    iget-object v6, v1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 1089
    .line 1090
    const-string/jumbo v10, "com.samsung.android.nfc.gpfelica"

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v6

    .line 1097
    check-cast v6, Landroid/content/pm/FeatureInfo;

    .line 1098
    .line 1099
    if-eqz v6, :cond_16

    .line 1100
    .line 1101
    const-string/jumbo v6, "support GP Felica"

    .line 1102
    .line 1103
    .line 1104
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    .line 1106
    .line 1107
    move v6, v8

    .line 1108
    goto :goto_13

    .line 1109
    :cond_16
    move v6, v9

    .line 1110
    :goto_13
    const-string v10, "JAPAN"

    .line 1111
    .line 1112
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v10

    .line 1116
    if-nez v10, :cond_18

    .line 1117
    .line 1118
    const-string v10, "JP"

    .line 1119
    .line 1120
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v10

    .line 1124
    if-eqz v10, :cond_17

    .line 1125
    .line 1126
    goto :goto_14

    .line 1127
    :cond_17
    move v10, v9

    .line 1128
    goto :goto_15

    .line 1129
    :cond_18
    :goto_14
    move v10, v8

    .line 1130
    :goto_15
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    const-string/jumbo v12, "countryCode: "

    .line 1133
    .line 1134
    .line 1135
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v5

    .line 1145
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    .line 1147
    .line 1148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    const-string/jumbo v11, "isJapan: "

    .line 1151
    .line 1152
    .line 1153
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v5

    .line 1163
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    .line 1165
    .line 1166
    if-eqz v0, :cond_19

    .line 1167
    .line 1168
    if-eqz v10, :cond_1a

    .line 1169
    .line 1170
    :cond_19
    if-eqz v6, :cond_1b

    .line 1171
    .line 1172
    :cond_1a
    move v13, v8

    .line 1173
    goto :goto_16

    .line 1174
    :cond_1b
    move v13, v9

    .line 1175
    :goto_16
    const-string/jumbo v0, "support eSE: "

    .line 1176
    .line 1177
    .line 1178
    invoke-static {v0, v2, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1179
    .line 1180
    .line 1181
    const-string v0, "android.hardware.se.omapi.ese"

    .line 1182
    .line 1183
    if-eqz v13, :cond_1c

    .line 1184
    .line 1185
    invoke-virtual {v1, v9, v0}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    const-string v0, "add eSE secure element feature"

    .line 1189
    .line 1190
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    .line 1192
    .line 1193
    goto :goto_17

    .line 1194
    :cond_1c
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 1195
    .line 1196
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    if-eqz v0, :cond_1d

    .line 1201
    .line 1202
    const-string v0, "Removed unavailable feature android.hardware.se.omapi.ese"

    .line 1203
    .line 1204
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    .line 1206
    .line 1207
    :cond_1d
    const-string/jumbo v0, "removed eSE secure element feature: not support se"

    .line 1208
    .line 1209
    .line 1210
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    .line 1212
    .line 1213
    :goto_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 1214
    .line 1215
    .line 1216
    move-result v0

    .line 1217
    const/16 v2, 0x3e8

    .line 1218
    .line 1219
    if-ne v0, v2, :cond_21

    .line 1220
    .line 1221
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->apexSignaturePermissionAllowlistEnabled()Z

    .line 1222
    .line 1223
    .line 1224
    move-result v0

    .line 1225
    if-eqz v0, :cond_1e

    .line 1226
    .line 1227
    const/16 v0, 0x813

    .line 1228
    .line 1229
    goto :goto_18

    .line 1230
    :cond_1e
    const/16 v0, 0x13

    .line 1231
    .line 1232
    :goto_18
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v2

    .line 1236
    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v2

    .line 1240
    array-length v5, v2

    .line 1241
    :goto_19
    if-ge v9, v5, :cond_21

    .line 1242
    .line 1243
    aget-object v6, v2, v9

    .line 1244
    .line 1245
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 1246
    .line 1247
    .line 1248
    move-result v8

    .line 1249
    if-nez v8, :cond_20

    .line 1250
    .line 1251
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v8

    .line 1255
    const-string v10, "@"

    .line 1256
    .line 1257
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1258
    .line 1259
    .line 1260
    move-result v8

    .line 1261
    if-eqz v8, :cond_1f

    .line 1262
    .line 1263
    goto :goto_1a

    .line 1264
    :cond_1f
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v8

    .line 1268
    invoke-static {v6, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v6

    .line 1272
    invoke-virtual {v1, v3, v6, v0}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 1273
    .line 1274
    .line 1275
    :cond_20
    :goto_1a
    add-int/lit8 v9, v9, 0x1

    .line 1276
    .line 1277
    goto :goto_19

    .line 1278
    :cond_21
    return-void
.end method

.method public readApexPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;Ljava/nio/file/Path;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2, p3}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "File "

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/nio/file/Path;->getNameCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-interface {p3}, Ljava/nio/file/Path;->getNameCount()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    if-le v0, v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p3}, Ljava/nio/file/Path;->getNameCount()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-interface {p2, p3}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Landroid/util/ArrayMap;

    .line 46
    .line 47
    if-nez p3, :cond_0

    .line 48
    .line 49
    new-instance p3, Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_0
    const-string/jumbo p0, "privapp-permissions"

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p3, p0}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p2, " is in the APEX partition, but not inside a module."

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, " is not part of an APEX."

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0
.end method

.method public final readComponentOverrides(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, " at "

    .line 10
    .line 11
    const-string v3, "SystemConfig"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "<component-override> without package in "

    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    :cond_1
    :goto_0
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_6

    .line 56
    .line 57
    const-string/jumbo v5, "component"

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    const-string/jumbo v5, "class"

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const-string/jumbo v6, "enabled"

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-nez v5, :cond_2

    .line 85
    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, "<component> without class in "

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_2
    if-nez v6, :cond_3

    .line 115
    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v0, "<component> without enabled in "

    .line 119
    .line 120
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_3
    const-string v7, "."

    .line 145
    .line 146
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_4

    .line 151
    .line 152
    invoke-static {v1, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Landroid/util/ArrayMap;

    .line 167
    .line 168
    if-nez v7, :cond_5

    .line 169
    .line 170
    new-instance v7, Landroid/util/ArrayMap;

    .line 171
    .line 172
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v8, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 176
    .line 177
    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :cond_5
    const-string/jumbo v8, "false"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    xor-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_6
    return-void
.end method

.method public final readOemPermissions(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    .line 4
    .line 5
    const-string/jumbo v0, "oem-permissions"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p0, v0}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    const-string/jumbo v0, "perUser"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-instance v1, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 18
    .line 19
    invoke-direct {v1, p2, v0}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eq v0, v2, :cond_6

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    if-ne v0, v2, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-le v3, p0, :cond_6

    .line 46
    .line 47
    :cond_1
    if-eq v0, v2, :cond_0

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    if-ne v0, v2, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string/jumbo v2, "group"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    const-string/jumbo v2, "gid"

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v2, "SystemConfig"

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    const/4 v4, -0x1

    .line 83
    if-eq v3, v4, :cond_3

    .line 84
    .line 85
    iget-object v0, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 86
    .line 87
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const-string v3, "<group> with unknown gid \""

    .line 95
    .line 96
    const-string v4, " for permission "

    .line 97
    .line 98
    const-string v5, " in "

    .line 99
    .line 100
    invoke-static {v3, v0, v4, p2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v3, "<group> without gid at "

    .line 122
    .line 123
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    return-void

    .line 145
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    const-string p1, "Duplicate permission definition for "

    .line 148
    .line 149
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0
.end method

.method public readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SystemConfig"

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v2, " cannot be read"

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p1, "Directory "

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    array-length v3, v0

    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_0
    if-ge v5, v3, :cond_7

    .line 54
    .line 55
    aget-object v6, v0, v5

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-nez v7, :cond_2

    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string/jumbo v8, "etc/permissions/platform.xml"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    move-object v4, v6

    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string v8, ".xml"

    .line 86
    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_4

    .line 92
    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v8, "Non-xml file "

    .line 96
    .line 97
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v6, " in "

    .line 104
    .line 105
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v6, " directory, ignoring"

    .line 112
    .line 113
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-nez v7, :cond_5

    .line 129
    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v8, "Permissions library file "

    .line 133
    .line 134
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 152
    .line 153
    if-nez v7, :cond_6

    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    const-string v8, "aer"

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_6

    .line 166
    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v9, "aer = "

    .line 170
    .line 171
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-boolean v9, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 175
    .line 176
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v9, ", f.getPath().contains = "

    .line 180
    .line 181
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_6
    invoke-virtual {p0, p1, v6, p3}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 204
    .line 205
    .line 206
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_7
    if-eqz v4, :cond_8

    .line 211
    .line 212
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 213
    .line 214
    .line 215
    :cond_8
    return-void

    .line 216
    :cond_9
    :goto_2
    const/4 p0, -0x1

    .line 217
    if-ne p3, p0, :cond_a

    .line 218
    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string p1, "No directory "

    .line 222
    .line 223
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string p1, ", skipping"

    .line 230
    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    :cond_a
    return-void
.end method

.method public final readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move/from16 v4, p3

    .line 8
    .line 9
    const-string v5, "Got exception parsing permissions."

    .line 10
    .line 11
    const-string v6, "SystemConfig"

    .line 12
    .line 13
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    .line 14
    .line 15
    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b

    .line 16
    .line 17
    .line 18
    new-instance v8, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v9, "Reading permissions from "

    .line 21
    .line 22
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    :try_start_1
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    .line 41
    .line 42
    :goto_0
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 43
    .line 44
    .line 45
    move-result v15

    .line 46
    const/4 v9, 0x1

    .line 47
    const/4 v11, 0x2

    .line 48
    if-eq v15, v11, :cond_0

    .line 49
    .line 50
    if-eq v15, v9, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    if-ne v15, v11, :cond_98

    .line 54
    .line 55
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v15

    .line 59
    const-string/jumbo v11, "permissions"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v11
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 66
    if-nez v11, :cond_2

    .line 67
    .line 68
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    const-string/jumbo v15, "config"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 83
    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v9, "Unexpected start tag in "

    .line 90
    .line 91
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v3, ": found "

    .line 98
    .line 99
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, ", expected \'permissions\' or \'config\'"

    .line 110
    .line 111
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-direct {v4, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v4
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    move-object v1, v0

    .line 124
    move-object/from16 v25, v7

    .line 125
    .line 126
    goto/16 :goto_51

    .line 127
    .line 128
    :catch_0
    move-exception v0

    .line 129
    move-object v2, v0

    .line 130
    move-object v3, v5

    .line 131
    move-object/from16 v25, v7

    .line 132
    .line 133
    goto/16 :goto_4a

    .line 134
    .line 135
    :catch_1
    move-exception v0

    .line 136
    move-object v2, v0

    .line 137
    move-object v3, v5

    .line 138
    move-object/from16 v25, v7

    .line 139
    .line 140
    goto/16 :goto_4c

    .line 141
    .line 142
    :cond_2
    :goto_1
    const/4 v11, -0x1

    .line 143
    if-ne v4, v11, :cond_3

    .line 144
    .line 145
    move v15, v9

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    const/4 v15, 0x0

    .line 148
    :goto_2
    and-int/lit8 v16, v4, 0x2

    .line 149
    .line 150
    if-eqz v16, :cond_4

    .line 151
    .line 152
    move/from16 v16, v9

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    const/16 v16, 0x0

    .line 156
    .line 157
    :goto_3
    and-int/lit8 v17, v4, 0x1

    .line 158
    .line 159
    if-eqz v17, :cond_5

    .line 160
    .line 161
    move/from16 v17, v9

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_5
    const/16 v17, 0x0

    .line 165
    .line 166
    :goto_4
    and-int/lit8 v18, v4, 0x4

    .line 167
    .line 168
    if-eqz v18, :cond_6

    .line 169
    .line 170
    move/from16 v18, v9

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_6
    const/16 v18, 0x0

    .line 174
    .line 175
    :goto_5
    and-int/lit8 v19, v4, 0x8

    .line 176
    .line 177
    if-eqz v19, :cond_7

    .line 178
    .line 179
    move/from16 v19, v9

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_7
    const/16 v19, 0x0

    .line 183
    .line 184
    :goto_6
    and-int/lit8 v20, v4, 0x10

    .line 185
    .line 186
    if-eqz v20, :cond_8

    .line 187
    .line 188
    move/from16 v20, v9

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_8
    const/16 v20, 0x0

    .line 192
    .line 193
    :goto_7
    and-int/lit16 v11, v4, 0x800

    .line 194
    .line 195
    if-eqz v11, :cond_9

    .line 196
    .line 197
    move v11, v9

    .line 198
    goto :goto_8

    .line 199
    :cond_9
    const/4 v11, 0x0

    .line 200
    :goto_8
    and-int/lit8 v21, v4, 0x20

    .line 201
    .line 202
    if-eqz v21, :cond_a

    .line 203
    .line 204
    move/from16 v21, v9

    .line 205
    .line 206
    goto :goto_9

    .line 207
    :cond_a
    const/16 v21, 0x0

    .line 208
    .line 209
    :goto_9
    and-int/lit8 v22, v4, 0x40

    .line 210
    .line 211
    if-eqz v22, :cond_b

    .line 212
    .line 213
    move/from16 v22, v9

    .line 214
    .line 215
    goto :goto_a

    .line 216
    :cond_b
    const/16 v22, 0x0

    .line 217
    .line 218
    :goto_a
    and-int/lit16 v12, v4, 0x80

    .line 219
    .line 220
    if-eqz v12, :cond_c

    .line 221
    .line 222
    move v12, v9

    .line 223
    goto :goto_b

    .line 224
    :cond_c
    const/4 v12, 0x0

    .line 225
    :goto_b
    and-int/lit16 v13, v4, 0x100

    .line 226
    .line 227
    if-eqz v13, :cond_d

    .line 228
    .line 229
    move v13, v9

    .line 230
    goto :goto_c

    .line 231
    :cond_d
    const/4 v13, 0x0

    .line 232
    :goto_c
    and-int/lit16 v14, v4, 0x200

    .line 233
    .line 234
    if-eqz v14, :cond_e

    .line 235
    .line 236
    move v14, v9

    .line 237
    goto :goto_d

    .line 238
    :cond_e
    const/4 v14, 0x0

    .line 239
    :goto_d
    and-int/lit16 v4, v4, 0x400

    .line 240
    .line 241
    if-eqz v4, :cond_f

    .line 242
    .line 243
    move v4, v9

    .line 244
    goto :goto_e

    .line 245
    :cond_f
    const/4 v4, 0x0

    .line 246
    :goto_e
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 247
    .line 248
    .line 249
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 250
    .line 251
    .line 252
    move-result v10
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 253
    if-ne v10, v9, :cond_10

    .line 254
    .line 255
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_4d

    .line 259
    .line 260
    :cond_10
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v10
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 264
    if-nez v10, :cond_11

    .line 265
    .line 266
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 267
    .line 268
    .line 269
    goto :goto_e

    .line 270
    :cond_11
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 271
    .line 272
    .line 273
    move-result v23
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 274
    const-string/jumbo v9, "privapp-permissions"

    .line 275
    .line 276
    .line 277
    move-object/from16 v25, v7

    .line 278
    .line 279
    const-string/jumbo v7, "signature-permissions"

    .line 280
    .line 281
    .line 282
    sparse-switch v23, :sswitch_data_0

    .line 283
    .line 284
    .line 285
    move-object/from16 v23, v5

    .line 286
    .line 287
    goto/16 :goto_13

    .line 288
    .line 289
    :sswitch_0
    move-object/from16 v23, v5

    .line 290
    .line 291
    :try_start_8
    const-string v5, "allow-package-shareduid"

    .line 292
    .line 293
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_12

    .line 298
    .line 299
    const/16 v5, 0x29

    .line 300
    .line 301
    :goto_f
    move/from16 v26, v8

    .line 302
    .line 303
    goto/16 :goto_14

    .line 304
    .line 305
    :catchall_1
    move-exception v0

    .line 306
    :goto_10
    move-object v1, v0

    .line 307
    goto/16 :goto_51

    .line 308
    .line 309
    :catch_2
    move-exception v0

    .line 310
    :goto_11
    move-object v2, v0

    .line 311
    move-object/from16 v3, v23

    .line 312
    .line 313
    goto/16 :goto_4a

    .line 314
    .line 315
    :catch_3
    move-exception v0

    .line 316
    :goto_12
    move-object v2, v0

    .line 317
    move-object/from16 v3, v23

    .line 318
    .line 319
    goto/16 :goto_4c

    .line 320
    .line 321
    :sswitch_1
    move-object/from16 v23, v5

    .line 322
    .line 323
    const-string v5, "allow-implicit-broadcast"

    .line 324
    .line 325
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_12

    .line 330
    .line 331
    const/16 v5, 0xf

    .line 332
    .line 333
    goto :goto_f

    .line 334
    :sswitch_2
    move-object/from16 v23, v5

    .line 335
    .line 336
    const-string/jumbo v5, "required-package"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_12

    .line 344
    .line 345
    const/16 v5, 0x2b

    .line 346
    .line 347
    goto :goto_f

    .line 348
    :sswitch_3
    move-object/from16 v23, v5

    .line 349
    .line 350
    const-string v5, "assign-uid-for-data-usage"

    .line 351
    .line 352
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-eqz v5, :cond_12

    .line 357
    .line 358
    const/16 v5, 0x25

    .line 359
    .line 360
    goto :goto_f

    .line 361
    :sswitch_4
    move-object/from16 v23, v5

    .line 362
    .line 363
    const-string/jumbo v5, "overlay-config-signature"

    .line 364
    .line 365
    .line 366
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-eqz v5, :cond_12

    .line 371
    .line 372
    const/16 v5, 0x21

    .line 373
    .line 374
    goto :goto_f

    .line 375
    :sswitch_5
    move-object/from16 v23, v5

    .line 376
    .line 377
    const-string/jumbo v5, "initial-package-state"

    .line 378
    .line 379
    .line 380
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-eqz v5, :cond_12

    .line 385
    .line 386
    const/16 v5, 0x28

    .line 387
    .line 388
    goto :goto_f

    .line 389
    :sswitch_6
    move-object/from16 v23, v5

    .line 390
    .line 391
    const-string/jumbo v5, "bugreport-whitelisted"

    .line 392
    .line 393
    .line 394
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-eqz v5, :cond_12

    .line 399
    .line 400
    move/from16 v26, v8

    .line 401
    .line 402
    const/16 v5, 0x1d

    .line 403
    .line 404
    goto/16 :goto_14

    .line 405
    .line 406
    :sswitch_7
    move-object/from16 v23, v5

    .line 407
    .line 408
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-eqz v5, :cond_12

    .line 413
    .line 414
    const/16 v5, 0x17

    .line 415
    .line 416
    goto :goto_f

    .line 417
    :sswitch_8
    move-object/from16 v23, v5

    .line 418
    .line 419
    const-string/jumbo v5, "disabled-until-used-preinstalled-carrier-associated-app"

    .line 420
    .line 421
    .line 422
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    if-eqz v5, :cond_12

    .line 427
    .line 428
    const/16 v5, 0x15

    .line 429
    .line 430
    goto/16 :goto_f

    .line 431
    .line 432
    :sswitch_9
    move-object/from16 v23, v5

    .line 433
    .line 434
    const-string/jumbo v5, "default-enabled-vr-app"

    .line 435
    .line 436
    .line 437
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    if-eqz v5, :cond_12

    .line 442
    .line 443
    const/16 v5, 0x12

    .line 444
    .line 445
    goto/16 :goto_f

    .line 446
    .line 447
    :sswitch_a
    move-object/from16 v23, v5

    .line 448
    .line 449
    const-string v5, "app-data-isolation-whitelisted-app"

    .line 450
    .line 451
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_12

    .line 456
    .line 457
    const/16 v5, 0x1c

    .line 458
    .line 459
    goto/16 :goto_f

    .line 460
    .line 461
    :sswitch_b
    move-object/from16 v23, v5

    .line 462
    .line 463
    const-string/jumbo v5, "split-permission"

    .line 464
    .line 465
    .line 466
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-eqz v5, :cond_12

    .line 471
    .line 472
    const/4 v5, 0x3

    .line 473
    goto/16 :goto_f

    .line 474
    .line 475
    :sswitch_c
    move-object/from16 v23, v5

    .line 476
    .line 477
    const-string v5, "app-link"

    .line 478
    .line 479
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    if-eqz v5, :cond_12

    .line 484
    .line 485
    const/16 v5, 0x10

    .line 486
    .line 487
    goto/16 :goto_f

    .line 488
    .line 489
    :sswitch_d
    move-object/from16 v23, v5

    .line 490
    .line 491
    const-string/jumbo v5, "enhanced-confirmation-trusted-installer"

    .line 492
    .line 493
    .line 494
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    if-eqz v5, :cond_12

    .line 499
    .line 500
    const/16 v5, 0x2e

    .line 501
    .line 502
    goto/16 :goto_f

    .line 503
    .line 504
    :sswitch_e
    move-object/from16 v23, v5

    .line 505
    .line 506
    const-string/jumbo v5, "whitelisted-staged-installer"

    .line 507
    .line 508
    .line 509
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-eqz v5, :cond_12

    .line 514
    .line 515
    const/16 v5, 0x23

    .line 516
    .line 517
    goto/16 :goto_f

    .line 518
    .line 519
    :sswitch_f
    move-object/from16 v23, v5

    .line 520
    .line 521
    const-string/jumbo v5, "oem-permissions"

    .line 522
    .line 523
    .line 524
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    if-eqz v5, :cond_12

    .line 529
    .line 530
    const/16 v5, 0x19

    .line 531
    .line 532
    goto/16 :goto_f

    .line 533
    .line 534
    :sswitch_10
    move-object/from16 v23, v5

    .line 535
    .line 536
    const-string v5, "apex-library"

    .line 537
    .line 538
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v5

    .line 542
    if-eqz v5, :cond_12

    .line 543
    .line 544
    move/from16 v26, v8

    .line 545
    .line 546
    const/4 v5, 0x4

    .line 547
    goto/16 :goto_14

    .line 548
    .line 549
    :sswitch_11
    move-object/from16 v23, v5

    .line 550
    .line 551
    const-string/jumbo v5, "rollback-whitelisted-app"

    .line 552
    .line 553
    .line 554
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    if-eqz v5, :cond_12

    .line 559
    .line 560
    const/16 v5, 0x22

    .line 561
    .line 562
    goto/16 :goto_f

    .line 563
    .line 564
    :sswitch_12
    move-object/from16 v23, v5

    .line 565
    .line 566
    const-string v5, "assign-permission"

    .line 567
    .line 568
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    if-eqz v5, :cond_12

    .line 573
    .line 574
    move/from16 v26, v8

    .line 575
    .line 576
    const/4 v5, 0x2

    .line 577
    goto/16 :goto_14

    .line 578
    .line 579
    :sswitch_13
    move-object/from16 v23, v5

    .line 580
    .line 581
    const-string v5, "allow-in-data-usage-save"

    .line 582
    .line 583
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    if-eqz v5, :cond_12

    .line 588
    .line 589
    move/from16 v26, v8

    .line 590
    .line 591
    const/16 v5, 0xa

    .line 592
    .line 593
    goto/16 :goto_14

    .line 594
    .line 595
    :sswitch_14
    move-object/from16 v23, v5

    .line 596
    .line 597
    const-string/jumbo v5, "update-ownership"

    .line 598
    .line 599
    .line 600
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    if-eqz v5, :cond_12

    .line 605
    .line 606
    const/16 v5, 0x27

    .line 607
    .line 608
    goto/16 :goto_f

    .line 609
    .line 610
    :sswitch_15
    move-object/from16 v23, v5

    .line 611
    .line 612
    const-string v5, "allowed-vendor-apex"

    .line 613
    .line 614
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v5

    .line 618
    if-eqz v5, :cond_12

    .line 619
    .line 620
    const/16 v5, 0x24

    .line 621
    .line 622
    goto/16 :goto_f

    .line 623
    .line 624
    :sswitch_16
    move-object/from16 v23, v5

    .line 625
    .line 626
    const-string/jumbo v5, "prevent-disable"

    .line 627
    .line 628
    .line 629
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-eqz v5, :cond_12

    .line 634
    .line 635
    const/16 v5, 0x1e

    .line 636
    .line 637
    goto/16 :goto_f

    .line 638
    .line 639
    :sswitch_17
    move-object/from16 v23, v5

    .line 640
    .line 641
    const-string v5, "backup-transport-whitelisted-service"

    .line 642
    .line 643
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v5

    .line 647
    if-eqz v5, :cond_12

    .line 648
    .line 649
    const/16 v5, 0x14

    .line 650
    .line 651
    goto/16 :goto_f

    .line 652
    .line 653
    :sswitch_18
    move-object/from16 v23, v5

    .line 654
    .line 655
    const-string/jumbo v5, "hidden-api-whitelisted-app"

    .line 656
    .line 657
    .line 658
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v5

    .line 662
    if-eqz v5, :cond_12

    .line 663
    .line 664
    const/16 v5, 0x1a

    .line 665
    .line 666
    goto/16 :goto_f

    .line 667
    .line 668
    :sswitch_19
    move-object/from16 v23, v5

    .line 669
    .line 670
    const-string/jumbo v5, "require-strict-signature"

    .line 671
    .line 672
    .line 673
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result v5

    .line 677
    if-eqz v5, :cond_12

    .line 678
    .line 679
    const/16 v5, 0x2c

    .line 680
    .line 681
    goto/16 :goto_f

    .line 682
    .line 683
    :sswitch_1a
    move-object/from16 v23, v5

    .line 684
    .line 685
    const-string/jumbo v5, "library"

    .line 686
    .line 687
    .line 688
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v5

    .line 692
    if-eqz v5, :cond_12

    .line 693
    .line 694
    move/from16 v26, v8

    .line 695
    .line 696
    const/4 v5, 0x5

    .line 697
    goto/16 :goto_14

    .line 698
    .line 699
    :sswitch_1b
    move-object/from16 v23, v5

    .line 700
    .line 701
    const-string/jumbo v5, "group"

    .line 702
    .line 703
    .line 704
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    if-eqz v5, :cond_12

    .line 709
    .line 710
    move/from16 v26, v8

    .line 711
    .line 712
    const/4 v5, 0x0

    .line 713
    goto/16 :goto_14

    .line 714
    .line 715
    :sswitch_1c
    move-object/from16 v23, v5

    .line 716
    .line 717
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v5

    .line 721
    if-eqz v5, :cond_12

    .line 722
    .line 723
    const/16 v5, 0x18

    .line 724
    .line 725
    goto/16 :goto_f

    .line 726
    .line 727
    :sswitch_1d
    move-object/from16 v23, v5

    .line 728
    .line 729
    const-string/jumbo v5, "camera-privacy-allowlisted-app"

    .line 730
    .line 731
    .line 732
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    if-eqz v5, :cond_12

    .line 737
    .line 738
    const/16 v5, 0xd

    .line 739
    .line 740
    goto/16 :goto_f

    .line 741
    .line 742
    :sswitch_1e
    move-object/from16 v23, v5

    .line 743
    .line 744
    const-string/jumbo v5, "install-in-user-type"

    .line 745
    .line 746
    .line 747
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    if-eqz v5, :cond_12

    .line 752
    .line 753
    const/16 v5, 0x1f

    .line 754
    .line 755
    goto/16 :goto_f

    .line 756
    .line 757
    :sswitch_1f
    move-object/from16 v23, v5

    .line 758
    .line 759
    const-string/jumbo v5, "permission"

    .line 760
    .line 761
    .line 762
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v5

    .line 766
    if-eqz v5, :cond_12

    .line 767
    .line 768
    move/from16 v26, v8

    .line 769
    .line 770
    const/4 v5, 0x1

    .line 771
    goto/16 :goto_14

    .line 772
    .line 773
    :sswitch_20
    move-object/from16 v23, v5

    .line 774
    .line 775
    const-string v5, "allow-ignore-location-settings"

    .line 776
    .line 777
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    move-result v5

    .line 781
    if-eqz v5, :cond_12

    .line 782
    .line 783
    const/16 v5, 0xe

    .line 784
    .line 785
    goto/16 :goto_f

    .line 786
    .line 787
    :sswitch_21
    move-object/from16 v23, v5

    .line 788
    .line 789
    const-string v5, "asl-file"

    .line 790
    .line 791
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v5

    .line 795
    if-eqz v5, :cond_12

    .line 796
    .line 797
    const/16 v5, 0x2a

    .line 798
    .line 799
    goto/16 :goto_f

    .line 800
    .line 801
    :sswitch_22
    move-object/from16 v23, v5

    .line 802
    .line 803
    const-string v5, "bg-restriction-exemption"

    .line 804
    .line 805
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v5

    .line 809
    if-eqz v5, :cond_12

    .line 810
    .line 811
    const/16 v5, 0x11

    .line 812
    .line 813
    goto/16 :goto_f

    .line 814
    .line 815
    :sswitch_23
    move-object/from16 v23, v5

    .line 816
    .line 817
    const-string v5, "allow-in-power-save-except-idle"

    .line 818
    .line 819
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result v5

    .line 823
    if-eqz v5, :cond_12

    .line 824
    .line 825
    const/16 v5, 0x8

    .line 826
    .line 827
    goto/16 :goto_f

    .line 828
    .line 829
    :sswitch_24
    move-object/from16 v23, v5

    .line 830
    .line 831
    const-string/jumbo v5, "unavailable-feature"

    .line 832
    .line 833
    .line 834
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    if-eqz v5, :cond_12

    .line 839
    .line 840
    const/4 v5, 0x7

    .line 841
    goto/16 :goto_f

    .line 842
    .line 843
    :sswitch_25
    move-object/from16 v23, v5

    .line 844
    .line 845
    const-string/jumbo v5, "feature"

    .line 846
    .line 847
    .line 848
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v5

    .line 852
    if-eqz v5, :cond_12

    .line 853
    .line 854
    const/4 v5, 0x6

    .line 855
    goto/16 :goto_f

    .line 856
    .line 857
    :sswitch_26
    move-object/from16 v23, v5

    .line 858
    .line 859
    const-string v5, "allow-association"

    .line 860
    .line 861
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v5

    .line 865
    if-eqz v5, :cond_12

    .line 866
    .line 867
    const/16 v5, 0x1b

    .line 868
    .line 869
    goto/16 :goto_f

    .line 870
    .line 871
    :sswitch_27
    move-object/from16 v23, v5

    .line 872
    .line 873
    const-string/jumbo v5, "disabled-until-used-preinstalled-carrier-app"

    .line 874
    .line 875
    .line 876
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    move-result v5

    .line 880
    if-eqz v5, :cond_12

    .line 881
    .line 882
    const/16 v5, 0x16

    .line 883
    .line 884
    goto/16 :goto_f

    .line 885
    .line 886
    :sswitch_28
    move-object/from16 v23, v5

    .line 887
    .line 888
    const-string/jumbo v5, "install-constraints-allowed"

    .line 889
    .line 890
    .line 891
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    move-result v5

    .line 895
    if-eqz v5, :cond_12

    .line 896
    .line 897
    const/16 v5, 0x26

    .line 898
    .line 899
    goto/16 :goto_f

    .line 900
    .line 901
    :sswitch_29
    move-object/from16 v23, v5

    .line 902
    .line 903
    const-string/jumbo v5, "component-override"

    .line 904
    .line 905
    .line 906
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    move-result v5

    .line 910
    if-eqz v5, :cond_12

    .line 911
    .line 912
    move/from16 v26, v8

    .line 913
    .line 914
    const/16 v5, 0x13

    .line 915
    .line 916
    goto :goto_14

    .line 917
    :sswitch_2a
    move-object/from16 v23, v5

    .line 918
    .line 919
    const-string/jumbo v5, "named-actor"

    .line 920
    .line 921
    .line 922
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    move-result v5

    .line 926
    if-eqz v5, :cond_12

    .line 927
    .line 928
    const/16 v5, 0x20

    .line 929
    .line 930
    goto/16 :goto_f

    .line 931
    .line 932
    :sswitch_2b
    move-object/from16 v23, v5

    .line 933
    .line 934
    const-string v5, "allow-adas-location-settings"

    .line 935
    .line 936
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    move-result v5

    .line 940
    if-eqz v5, :cond_12

    .line 941
    .line 942
    const/16 v5, 0xc

    .line 943
    .line 944
    goto/16 :goto_f

    .line 945
    .line 946
    :sswitch_2c
    move-object/from16 v23, v5

    .line 947
    .line 948
    const-string v5, "allow-in-power-save"

    .line 949
    .line 950
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 951
    .line 952
    .line 953
    move-result v5

    .line 954
    if-eqz v5, :cond_12

    .line 955
    .line 956
    const/16 v5, 0x9

    .line 957
    .line 958
    goto/16 :goto_f

    .line 959
    .line 960
    :sswitch_2d
    move-object/from16 v23, v5

    .line 961
    .line 962
    const-string v5, "allow-unthrottled-location"

    .line 963
    .line 964
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v5

    .line 968
    if-eqz v5, :cond_12

    .line 969
    .line 970
    const/16 v5, 0xb

    .line 971
    .line 972
    goto/16 :goto_f

    .line 973
    .line 974
    :sswitch_2e
    move-object/from16 v23, v5

    .line 975
    .line 976
    const-string/jumbo v5, "enhanced-confirmation-trusted-package"

    .line 977
    .line 978
    .line 979
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 980
    .line 981
    .line 982
    move-result v5
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 983
    if-eqz v5, :cond_12

    .line 984
    .line 985
    const/16 v5, 0x2d

    .line 986
    .line 987
    goto/16 :goto_f

    .line 988
    .line 989
    :cond_12
    :goto_13
    move/from16 v26, v8

    .line 990
    .line 991
    const/4 v5, -0x1

    .line 992
    :goto_14
    const-string/jumbo v8, "null"

    .line 993
    .line 994
    .line 995
    move-object/from16 p3, v8

    .line 996
    .line 997
    const-string v8, "*"

    .line 998
    .line 999
    move-object/from16 v27, v8

    .line 1000
    .line 1001
    const-string v8, "attributionTag"

    .line 1002
    .line 1003
    move-object/from16 v28, v8

    .line 1004
    .line 1005
    const-string v8, " and "

    .line 1006
    .line 1007
    move/from16 v29, v14

    .line 1008
    .line 1009
    const-string v14, " in "

    .line 1010
    .line 1011
    move/from16 v30, v13

    .line 1012
    .line 1013
    const-string v13, "> without uid in "

    .line 1014
    .line 1015
    move-object/from16 v31, v9

    .line 1016
    .line 1017
    const-string/jumbo v9, "uid"

    .line 1018
    .line 1019
    .line 1020
    move-object/from16 v32, v7

    .line 1021
    .line 1022
    const-string v7, "> without valid package in "

    .line 1023
    .line 1024
    move/from16 v33, v11

    .line 1025
    .line 1026
    const-string v11, "> without name in "

    .line 1027
    .line 1028
    move-object/from16 v34, v11

    .line 1029
    .line 1030
    const-string/jumbo v11, "name"

    .line 1031
    .line 1032
    .line 1033
    move/from16 v35, v12

    .line 1034
    .line 1035
    iget-object v12, v1, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 1036
    .line 1037
    move-object/from16 v36, v12

    .line 1038
    .line 1039
    const-string v12, "/"

    .line 1040
    .line 1041
    move-object/from16 v37, v12

    .line 1042
    .line 1043
    const-string v12, "> without package in "

    .line 1044
    .line 1045
    move-object/from16 v38, v11

    .line 1046
    .line 1047
    const-string/jumbo v11, "package"

    .line 1048
    .line 1049
    .line 1050
    move-object/from16 v39, v8

    .line 1051
    .line 1052
    const-string v8, "<"

    .line 1053
    .line 1054
    move/from16 v40, v4

    .line 1055
    .line 1056
    const-string v4, " at "

    .line 1057
    .line 1058
    move-object/from16 v41, v14

    .line 1059
    .line 1060
    const/4 v14, 0x0

    .line 1061
    packed-switch v5, :pswitch_data_0

    .line 1062
    .line 1063
    .line 1064
    goto :goto_16

    .line 1065
    :pswitch_0
    :try_start_9
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 1066
    .line 1067
    .line 1068
    move-result v5

    .line 1069
    if-eqz v5, :cond_14

    .line 1070
    .line 1071
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->parseEnhancedConfirmationTrustedPackage(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SignedPackage;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v4

    .line 1075
    if-eqz v4, :cond_13

    .line 1076
    .line 1077
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedPackages:Landroid/util/ArraySet;

    .line 1078
    .line 1079
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1080
    .line 1081
    .line 1082
    :cond_13
    :goto_15
    const/16 v24, 0x1

    .line 1083
    .line 1084
    goto/16 :goto_49

    .line 1085
    .line 1086
    :cond_14
    :pswitch_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 1087
    .line 1088
    .line 1089
    move-result v5

    .line 1090
    if-eqz v5, :cond_15

    .line 1091
    .line 1092
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->parseEnhancedConfirmationTrustedPackage(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SignedPackage;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v4

    .line 1096
    if-eqz v4, :cond_13

    .line 1097
    .line 1098
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedInstallers:Landroid/util/ArraySet;

    .line 1099
    .line 1100
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    goto :goto_15

    .line 1104
    :cond_15
    :goto_16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    const-string v7, "Tag "

    .line 1110
    .line 1111
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    const-string v7, " is unknown in "

    .line 1118
    .line 1119
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v4

    .line 1132
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v4

    .line 1139
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    .line 1141
    .line 1142
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_15

    .line 1146
    :pswitch_2
    invoke-static {}, Landroid/security/Flags;->extendVbChainToUpdatedApk()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v5

    .line 1150
    if-eqz v5, :cond_13

    .line 1151
    .line 1152
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v5

    .line 1156
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v9

    .line 1160
    if-eqz v9, :cond_16

    .line 1161
    .line 1162
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1163
    .line 1164
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v4

    .line 1186
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v4

    .line 1193
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    .line 1195
    .line 1196
    goto :goto_15

    .line 1197
    :cond_16
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1198
    .line 1199
    :try_start_a
    check-cast v4, Landroid/util/ArraySet;

    .line 1200
    .line 1201
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1202
    .line 1203
    .line 1204
    goto :goto_15

    .line 1205
    :catch_4
    move-exception v0

    .line 1206
    goto/16 :goto_11

    .line 1207
    .line 1208
    :catch_5
    move-exception v0

    .line 1209
    goto/16 :goto_12

    .line 1210
    .line 1211
    :pswitch_3
    :try_start_b
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v5

    .line 1215
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1216
    .line 1217
    .line 1218
    move-result v7

    .line 1219
    if-eqz v7, :cond_17

    .line 1220
    .line 1221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    .line 1241
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v4

    .line 1245
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v4

    .line 1252
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    .line 1254
    .line 1255
    goto/16 :goto_15

    .line 1256
    .line 1257
    :cond_17
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mRequiredSystemPackages:Ljava/util/Set;
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1258
    .line 1259
    :try_start_c
    check-cast v4, Landroid/util/ArraySet;

    .line 1260
    .line 1261
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1262
    .line 1263
    .line 1264
    goto/16 :goto_15

    .line 1265
    .line 1266
    :pswitch_4
    :try_start_d
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v5

    .line 1270
    const-string/jumbo v9, "path"

    .line 1271
    .line 1272
    .line 1273
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v9

    .line 1277
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1278
    .line 1279
    .line 1280
    move-result v11

    .line 1281
    if-eqz v11, :cond_18

    .line 1282
    .line 1283
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1284
    .line 1285
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    .line 1303
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v4

    .line 1307
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v4

    .line 1314
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    .line 1316
    .line 1317
    goto/16 :goto_15

    .line 1318
    .line 1319
    :cond_18
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1320
    .line 1321
    .line 1322
    move-result v7

    .line 1323
    if-eqz v7, :cond_19

    .line 1324
    .line 1325
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1326
    .line 1327
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    .line 1335
    .line 1336
    const-string v7, "> without valid path in "

    .line 1337
    .line 1338
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v4

    .line 1351
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v4

    .line 1358
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    .line 1360
    .line 1361
    goto/16 :goto_15

    .line 1362
    .line 1363
    :cond_19
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAppMetadataFilePaths:Landroid/util/ArrayMap;

    .line 1364
    .line 1365
    invoke-virtual {v4, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    goto/16 :goto_15

    .line 1369
    .line 1370
    :pswitch_5
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v5

    .line 1374
    const-string/jumbo v7, "shareduid"

    .line 1375
    .line 1376
    .line 1377
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v7

    .line 1381
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v9

    .line 1385
    if-eqz v9, :cond_1a

    .line 1386
    .line 1387
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1388
    .line 1389
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    .line 1407
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v4

    .line 1411
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v4

    .line 1418
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    .line 1420
    .line 1421
    goto/16 :goto_15

    .line 1422
    .line 1423
    :cond_1a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1424
    .line 1425
    .line 1426
    move-result v9

    .line 1427
    if-eqz v9, :cond_1b

    .line 1428
    .line 1429
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1430
    .line 1431
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    .line 1439
    .line 1440
    const-string v7, "> without shareduid in "

    .line 1441
    .line 1442
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    .line 1451
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v4

    .line 1455
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v4

    .line 1462
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    .line 1464
    .line 1465
    goto/16 :goto_15

    .line 1466
    .line 1467
    :cond_1b
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mPackageToSharedUidAllowList:Landroid/util/ArrayMap;

    .line 1468
    .line 1469
    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    .line 1471
    .line 1472
    goto/16 :goto_15

    .line 1473
    .line 1474
    :pswitch_6
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v5

    .line 1478
    const-string/jumbo v7, "stopped"

    .line 1479
    .line 1480
    .line 1481
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v7

    .line 1485
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1486
    .line 1487
    .line 1488
    move-result v9

    .line 1489
    if-eqz v9, :cond_1c

    .line 1490
    .line 1491
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    .line 1510
    .line 1511
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v4

    .line 1515
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v4

    .line 1522
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    .line 1524
    .line 1525
    goto/16 :goto_15

    .line 1526
    .line 1527
    :cond_1c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1528
    .line 1529
    .line 1530
    move-result v9

    .line 1531
    if-eqz v9, :cond_1d

    .line 1532
    .line 1533
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1534
    .line 1535
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    const-string v7, "> without stopped in "

    .line 1545
    .line 1546
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    .line 1554
    .line 1555
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v4

    .line 1559
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v4

    .line 1566
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    .line 1568
    .line 1569
    goto/16 :goto_15

    .line 1570
    .line 1571
    :cond_1d
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1572
    .line 1573
    .line 1574
    move-result v4

    .line 1575
    if-nez v4, :cond_13

    .line 1576
    .line 1577
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mInitialNonStoppedSystemPackages:Ljava/util/Set;
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1578
    .line 1579
    :try_start_e
    check-cast v4, Landroid/util/ArraySet;

    .line 1580
    .line 1581
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1582
    .line 1583
    .line 1584
    goto/16 :goto_15

    .line 1585
    .line 1586
    :pswitch_7
    :try_start_f
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v5

    .line 1590
    const-string/jumbo v9, "installer"

    .line 1591
    .line 1592
    .line 1593
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v9

    .line 1597
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1598
    .line 1599
    .line 1600
    move-result v11

    .line 1601
    if-eqz v11, :cond_1e

    .line 1602
    .line 1603
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    .line 1623
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v4

    .line 1627
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    .line 1629
    .line 1630
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v4

    .line 1634
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    .line 1636
    .line 1637
    goto :goto_17

    .line 1638
    :cond_1e
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v7

    .line 1642
    if-eqz v7, :cond_1f

    .line 1643
    .line 1644
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1645
    .line 1646
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1647
    .line 1648
    .line 1649
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    const-string v7, "> without valid installer in "

    .line 1656
    .line 1657
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    .line 1665
    .line 1666
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v4

    .line 1670
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    .line 1672
    .line 1673
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v4

    .line 1677
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    .line 1679
    .line 1680
    goto :goto_17

    .line 1681
    :cond_1f
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    .line 1682
    .line 1683
    invoke-virtual {v4, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    :goto_17
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1687
    .line 1688
    .line 1689
    goto/16 :goto_15

    .line 1690
    .line 1691
    :pswitch_8
    if-eqz v19, :cond_21

    .line 1692
    .line 1693
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1694
    .line 1695
    .line 1696
    move-result-object v5

    .line 1697
    if-nez v5, :cond_20

    .line 1698
    .line 1699
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1700
    .line 1701
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    .line 1709
    .line 1710
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1714
    .line 1715
    .line 1716
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    .line 1718
    .line 1719
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v4

    .line 1723
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    .line 1725
    .line 1726
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v4

    .line 1730
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    .line 1732
    .line 1733
    goto :goto_18

    .line 1734
    :cond_20
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mInstallConstraintsAllowlist:Ljava/util/Set;
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1735
    .line 1736
    :try_start_10
    check-cast v4, Landroid/util/ArraySet;

    .line 1737
    .line 1738
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1739
    .line 1740
    .line 1741
    goto :goto_18

    .line 1742
    :cond_21
    :try_start_11
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1743
    .line 1744
    .line 1745
    :goto_18
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1746
    .line 1747
    .line 1748
    goto/16 :goto_15

    .line 1749
    .line 1750
    :pswitch_9
    if-eqz v15, :cond_27

    .line 1751
    .line 1752
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v5

    .line 1756
    if-nez v5, :cond_22

    .line 1757
    .line 1758
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1759
    .line 1760
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    .line 1765
    .line 1766
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    .line 1768
    .line 1769
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1773
    .line 1774
    .line 1775
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    .line 1777
    .line 1778
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v4

    .line 1782
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v4

    .line 1789
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    .line 1791
    .line 1792
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1793
    .line 1794
    .line 1795
    goto/16 :goto_15

    .line 1796
    .line 1797
    :cond_22
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v7

    .line 1801
    if-nez v7, :cond_23

    .line 1802
    .line 1803
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1804
    .line 1805
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    .line 1813
    .line 1814
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    .line 1816
    .line 1817
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1818
    .line 1819
    .line 1820
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    .line 1822
    .line 1823
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v4

    .line 1827
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v4

    .line 1834
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    .line 1836
    .line 1837
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1838
    .line 1839
    .line 1840
    goto/16 :goto_15

    .line 1841
    .line 1842
    :cond_23
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1843
    .line 1844
    .line 1845
    move-result v9

    .line 1846
    const/16 v11, 0xb54

    .line 1847
    .line 1848
    if-lt v9, v11, :cond_26

    .line 1849
    .line 1850
    const/16 v11, 0xbb7

    .line 1851
    .line 1852
    if-le v9, v11, :cond_24

    .line 1853
    .line 1854
    goto :goto_19

    .line 1855
    :cond_24
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    .line 1856
    .line 1857
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v4

    .line 1861
    check-cast v4, Ljava/util/ArrayList;

    .line 1862
    .line 1863
    if-nez v4, :cond_25

    .line 1864
    .line 1865
    new-instance v4, Ljava/util/ArrayList;

    .line 1866
    .line 1867
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1868
    .line 1869
    .line 1870
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    .line 1871
    .line 1872
    invoke-virtual {v7, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1873
    .line 1874
    .line 1875
    :cond_25
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1876
    .line 1877
    .line 1878
    goto :goto_1a

    .line 1879
    :cond_26
    :goto_19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1880
    .line 1881
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1882
    .line 1883
    .line 1884
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    .line 1889
    .line 1890
    const-string v8, "> with unknown uid "

    .line 1891
    .line 1892
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    .line 1894
    .line 1895
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    .line 1897
    .line 1898
    move-object/from16 v7, v41

    .line 1899
    .line 1900
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    .line 1902
    .line 1903
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1904
    .line 1905
    .line 1906
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    .line 1908
    .line 1909
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v4

    .line 1913
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    .line 1915
    .line 1916
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v4

    .line 1920
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    .line 1922
    .line 1923
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1924
    .line 1925
    .line 1926
    goto/16 :goto_15

    .line 1927
    .line 1928
    :cond_27
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1929
    .line 1930
    .line 1931
    :goto_1a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1932
    .line 1933
    .line 1934
    goto/16 :goto_15

    .line 1935
    .line 1936
    :pswitch_a
    if-eqz v40, :cond_2a

    .line 1937
    .line 1938
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v5

    .line 1942
    const-string/jumbo v7, "installerPackage"

    .line 1943
    .line 1944
    .line 1945
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v7

    .line 1949
    if-nez v5, :cond_28

    .line 1950
    .line 1951
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1952
    .line 1953
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1954
    .line 1955
    .line 1956
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    .line 1958
    .line 1959
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    .line 1961
    .line 1962
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    .line 1964
    .line 1965
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1966
    .line 1967
    .line 1968
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    .line 1970
    .line 1971
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v11

    .line 1975
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    .line 1977
    .line 1978
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v9

    .line 1982
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    .line 1984
    .line 1985
    :cond_28
    if-nez v7, :cond_29

    .line 1986
    .line 1987
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1988
    .line 1989
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    .line 1997
    .line 1998
    const-string v8, "> without installerPackage in "

    .line 1999
    .line 2000
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    .line 2002
    .line 2003
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2004
    .line 2005
    .line 2006
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    .line 2008
    .line 2009
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v4

    .line 2013
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    .line 2015
    .line 2016
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v4

    .line 2020
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    .line 2022
    .line 2023
    :cond_29
    if-eqz v5, :cond_2b

    .line 2024
    .line 2025
    if-eqz v7, :cond_2b

    .line 2026
    .line 2027
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    .line 2028
    .line 2029
    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    .line 2031
    .line 2032
    goto :goto_1b

    .line 2033
    :cond_2a
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2034
    .line 2035
    .line 2036
    :cond_2b
    :goto_1b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2037
    .line 2038
    .line 2039
    goto/16 :goto_15

    .line 2040
    .line 2041
    :pswitch_b
    if-eqz v19, :cond_2e

    .line 2042
    .line 2043
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v5

    .line 2047
    const-string/jumbo v7, "isModulesInstaller"

    .line 2048
    .line 2049
    .line 2050
    const/4 v9, 0x0

    .line 2051
    invoke-static {v2, v7, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 2052
    .line 2053
    .line 2054
    move-result v7

    .line 2055
    if-nez v5, :cond_2c

    .line 2056
    .line 2057
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2058
    .line 2059
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2060
    .line 2061
    .line 2062
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    .line 2064
    .line 2065
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    .line 2067
    .line 2068
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    .line 2070
    .line 2071
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    .line 2076
    .line 2077
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v4

    .line 2081
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    .line 2083
    .line 2084
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2085
    .line 2086
    .line 2087
    move-result-object v4

    .line 2088
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    .line 2090
    .line 2091
    goto :goto_1c

    .line 2092
    :cond_2c
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 2093
    .line 2094
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2095
    .line 2096
    .line 2097
    :goto_1c
    if-eqz v7, :cond_2f

    .line 2098
    .line 2099
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    .line 2100
    .line 2101
    if-nez v4, :cond_2d

    .line 2102
    .line 2103
    iput-object v5, v1, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    .line 2104
    .line 2105
    goto :goto_1d

    .line 2106
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2107
    .line 2108
    const-string v3, "Multiple modules installers"

    .line 2109
    .line 2110
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2111
    .line 2112
    .line 2113
    throw v2

    .line 2114
    :cond_2e
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2115
    .line 2116
    .line 2117
    :cond_2f
    :goto_1d
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2118
    .line 2119
    .line 2120
    goto/16 :goto_15

    .line 2121
    .line 2122
    :pswitch_c
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v5

    .line 2126
    if-nez v5, :cond_30

    .line 2127
    .line 2128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2129
    .line 2130
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2131
    .line 2132
    .line 2133
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    .line 2135
    .line 2136
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    .line 2138
    .line 2139
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    .line 2141
    .line 2142
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2143
    .line 2144
    .line 2145
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2146
    .line 2147
    .line 2148
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v4

    .line 2152
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    .line 2154
    .line 2155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v4

    .line 2159
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    .line 2161
    .line 2162
    goto :goto_1e

    .line 2163
    :cond_30
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    .line 2164
    .line 2165
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2166
    .line 2167
    .line 2168
    :goto_1e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2169
    .line 2170
    .line 2171
    goto/16 :goto_15

    .line 2172
    .line 2173
    :pswitch_d
    if-eqz v15, :cond_33

    .line 2174
    .line 2175
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v5

    .line 2179
    if-nez v5, :cond_31

    .line 2180
    .line 2181
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2182
    .line 2183
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2184
    .line 2185
    .line 2186
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    .line 2188
    .line 2189
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    .line 2191
    .line 2192
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    .line 2194
    .line 2195
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2196
    .line 2197
    .line 2198
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    .line 2200
    .line 2201
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v4

    .line 2205
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    .line 2207
    .line 2208
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v4

    .line 2212
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    .line 2214
    .line 2215
    goto :goto_1f

    .line 2216
    :cond_31
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 2217
    .line 2218
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2219
    .line 2220
    .line 2221
    move-result v4

    .line 2222
    if-eqz v4, :cond_32

    .line 2223
    .line 2224
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v4

    .line 2228
    iput-object v4, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 2229
    .line 2230
    goto :goto_1f

    .line 2231
    :cond_32
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2232
    .line 2233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2234
    .line 2235
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2236
    .line 2237
    .line 2238
    const-string v4, "Reference signature package defined as both "

    .line 2239
    .line 2240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    .line 2242
    .line 2243
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 2244
    .line 2245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    .line 2247
    .line 2248
    move-object/from16 v7, v39

    .line 2249
    .line 2250
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    .line 2252
    .line 2253
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    .line 2255
    .line 2256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v3

    .line 2260
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2261
    .line 2262
    .line 2263
    throw v2

    .line 2264
    :cond_33
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2265
    .line 2266
    .line 2267
    :goto_1f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2268
    .line 2269
    .line 2270
    goto/16 :goto_15

    .line 2271
    .line 2272
    :pswitch_e
    move-object/from16 v7, v39

    .line 2273
    .line 2274
    const-string/jumbo v5, "namespace"

    .line 2275
    .line 2276
    .line 2277
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2278
    .line 2279
    .line 2280
    move-result-object v5

    .line 2281
    invoke-static {v5}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v5

    .line 2285
    move-object/from16 v12, v38

    .line 2286
    .line 2287
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v9

    .line 2291
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v11

    .line 2295
    invoke-static {v11}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v11

    .line 2299
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2300
    .line 2301
    .line 2302
    move-result v12

    .line 2303
    if-eqz v12, :cond_34

    .line 2304
    .line 2305
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2306
    .line 2307
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2308
    .line 2309
    .line 2310
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    .line 2312
    .line 2313
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    .line 2315
    .line 2316
    const-string v7, "> without namespace in "

    .line 2317
    .line 2318
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2319
    .line 2320
    .line 2321
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2322
    .line 2323
    .line 2324
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    .line 2326
    .line 2327
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v4

    .line 2331
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    .line 2333
    .line 2334
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v4

    .line 2338
    invoke-static {v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    .line 2340
    .line 2341
    goto/16 :goto_21

    .line 2342
    .line 2343
    :cond_34
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2344
    .line 2345
    .line 2346
    move-result v12

    .line 2347
    if-eqz v12, :cond_35

    .line 2348
    .line 2349
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2350
    .line 2351
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2352
    .line 2353
    .line 2354
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2355
    .line 2356
    .line 2357
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    .line 2359
    .line 2360
    const-string v7, "> without actor name in "

    .line 2361
    .line 2362
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2363
    .line 2364
    .line 2365
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2366
    .line 2367
    .line 2368
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2369
    .line 2370
    .line 2371
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v4

    .line 2375
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    .line 2377
    .line 2378
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2379
    .line 2380
    .line 2381
    move-result-object v4

    .line 2382
    invoke-static {v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    .line 2384
    .line 2385
    goto :goto_21

    .line 2386
    :cond_35
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2387
    .line 2388
    .line 2389
    move-result v12

    .line 2390
    if-eqz v12, :cond_36

    .line 2391
    .line 2392
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2393
    .line 2394
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2395
    .line 2396
    .line 2397
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2398
    .line 2399
    .line 2400
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2401
    .line 2402
    .line 2403
    const-string v7, "> without package name in "

    .line 2404
    .line 2405
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2406
    .line 2407
    .line 2408
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2409
    .line 2410
    .line 2411
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    .line 2413
    .line 2414
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2415
    .line 2416
    .line 2417
    move-result-object v4

    .line 2418
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    .line 2420
    .line 2421
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2422
    .line 2423
    .line 2424
    move-result-object v4

    .line 2425
    invoke-static {v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    .line 2427
    .line 2428
    goto :goto_21

    .line 2429
    :cond_36
    const-string v4, "android"

    .line 2430
    .line 2431
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2432
    .line 2433
    .line 2434
    move-result v4

    .line 2435
    if-nez v4, :cond_3a

    .line 2436
    .line 2437
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 2438
    .line 2439
    if-nez v4, :cond_37

    .line 2440
    .line 2441
    new-instance v4, Landroid/util/ArrayMap;

    .line 2442
    .line 2443
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 2444
    .line 2445
    .line 2446
    iput-object v4, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 2447
    .line 2448
    :cond_37
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2449
    .line 2450
    :try_start_12
    check-cast v4, Landroid/util/ArrayMap;

    .line 2451
    .line 2452
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    .line 2454
    .line 2455
    move-result-object v4
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 2456
    :try_start_13
    check-cast v4, Ljava/util/Map;

    .line 2457
    .line 2458
    if-nez v4, :cond_38

    .line 2459
    .line 2460
    new-instance v4, Landroid/util/ArrayMap;

    .line 2461
    .line 2462
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 2463
    .line 2464
    .line 2465
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2466
    .line 2467
    :try_start_14
    check-cast v7, Landroid/util/ArrayMap;

    .line 2468
    .line 2469
    invoke-virtual {v7, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 2470
    .line 2471
    .line 2472
    goto :goto_20

    .line 2473
    :cond_38
    :try_start_15
    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2474
    .line 2475
    .line 2476
    move-result v8

    .line 2477
    if-nez v8, :cond_39

    .line 2478
    .line 2479
    :goto_20
    invoke-interface {v4, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    .line 2481
    .line 2482
    :goto_21
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2483
    .line 2484
    .line 2485
    goto/16 :goto_15

    .line 2486
    .line 2487
    :cond_39
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2488
    .line 2489
    .line 2490
    move-result-object v2

    .line 2491
    check-cast v2, Ljava/lang/String;

    .line 2492
    .line 2493
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 2494
    .line 2495
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2496
    .line 2497
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2498
    .line 2499
    .line 2500
    const-string v8, "Duplicate actor definition for "

    .line 2501
    .line 2502
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    .line 2504
    .line 2505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    .line 2507
    .line 2508
    move-object/from16 v5, v37

    .line 2509
    .line 2510
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    .line 2512
    .line 2513
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    .line 2515
    .line 2516
    const-string v5, "; defined as both "

    .line 2517
    .line 2518
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    .line 2520
    .line 2521
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    .line 2523
    .line 2524
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    .line 2526
    .line 2527
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2528
    .line 2529
    .line 2530
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2531
    .line 2532
    .line 2533
    move-result-object v2

    .line 2534
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2535
    .line 2536
    .line 2537
    throw v3

    .line 2538
    :cond_3a
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2539
    .line 2540
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2541
    .line 2542
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2543
    .line 2544
    .line 2545
    const-string v4, "Defining "

    .line 2546
    .line 2547
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2548
    .line 2549
    .line 2550
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    .line 2552
    .line 2553
    const-string v4, " as "

    .line 2554
    .line 2555
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    .line 2557
    .line 2558
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    .line 2560
    .line 2561
    const-string v4, " for the android namespace is not allowed"

    .line 2562
    .line 2563
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    .line 2565
    .line 2566
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2567
    .line 2568
    .line 2569
    move-result-object v3

    .line 2570
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2571
    .line 2572
    .line 2573
    throw v2

    .line 2574
    :pswitch_f
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 2575
    .line 2576
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 2577
    .line 2578
    invoke-static {v2, v4, v5}, Lcom/android/server/SystemConfig;->readInstallInUserType(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)V

    .line 2579
    .line 2580
    .line 2581
    goto/16 :goto_15

    .line 2582
    .line 2583
    :pswitch_10
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2584
    .line 2585
    .line 2586
    move-result-object v5

    .line 2587
    if-nez v5, :cond_3b

    .line 2588
    .line 2589
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2590
    .line 2591
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2592
    .line 2593
    .line 2594
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    .line 2596
    .line 2597
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    .line 2599
    .line 2600
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    .line 2602
    .line 2603
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2604
    .line 2605
    .line 2606
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    .line 2608
    .line 2609
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2610
    .line 2611
    .line 2612
    move-result-object v4

    .line 2613
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    .line 2615
    .line 2616
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2617
    .line 2618
    .line 2619
    move-result-object v4

    .line 2620
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    .line 2622
    .line 2623
    goto :goto_22

    .line 2624
    :cond_3b
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mPreventUserDisablePackages:Ljava/util/ArrayList;

    .line 2625
    .line 2626
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2627
    .line 2628
    .line 2629
    :goto_22
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2630
    .line 2631
    .line 2632
    goto/16 :goto_15

    .line 2633
    .line 2634
    :pswitch_11
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2635
    .line 2636
    .line 2637
    move-result-object v5

    .line 2638
    if-nez v5, :cond_3c

    .line 2639
    .line 2640
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2641
    .line 2642
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2643
    .line 2644
    .line 2645
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    .line 2647
    .line 2648
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2649
    .line 2650
    .line 2651
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2652
    .line 2653
    .line 2654
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2655
    .line 2656
    .line 2657
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    .line 2659
    .line 2660
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2661
    .line 2662
    .line 2663
    move-result-object v4

    .line 2664
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    .line 2666
    .line 2667
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2668
    .line 2669
    .line 2670
    move-result-object v4

    .line 2671
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    .line 2673
    .line 2674
    goto :goto_23

    .line 2675
    :cond_3c
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 2676
    .line 2677
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2678
    .line 2679
    .line 2680
    :goto_23
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2681
    .line 2682
    .line 2683
    goto/16 :goto_15

    .line 2684
    .line 2685
    :pswitch_12
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2686
    .line 2687
    .line 2688
    move-result-object v5

    .line 2689
    if-nez v5, :cond_3d

    .line 2690
    .line 2691
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2692
    .line 2693
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2694
    .line 2695
    .line 2696
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2697
    .line 2698
    .line 2699
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    .line 2701
    .line 2702
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    .line 2704
    .line 2705
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2706
    .line 2707
    .line 2708
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2709
    .line 2710
    .line 2711
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2712
    .line 2713
    .line 2714
    move-result-object v4

    .line 2715
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    .line 2717
    .line 2718
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2719
    .line 2720
    .line 2721
    move-result-object v4

    .line 2722
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    .line 2724
    .line 2725
    goto :goto_24

    .line 2726
    :cond_3d
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    .line 2727
    .line 2728
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2729
    .line 2730
    .line 2731
    :goto_24
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2732
    .line 2733
    .line 2734
    goto/16 :goto_15

    .line 2735
    .line 2736
    :pswitch_13
    if-eqz v35, :cond_41

    .line 2737
    .line 2738
    const-string/jumbo v5, "target"

    .line 2739
    .line 2740
    .line 2741
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2742
    .line 2743
    .line 2744
    move-result-object v5

    .line 2745
    if-nez v5, :cond_3e

    .line 2746
    .line 2747
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2748
    .line 2749
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2750
    .line 2751
    .line 2752
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2753
    .line 2754
    .line 2755
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    .line 2757
    .line 2758
    const-string v7, "> without target in "

    .line 2759
    .line 2760
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2761
    .line 2762
    .line 2763
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2764
    .line 2765
    .line 2766
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2767
    .line 2768
    .line 2769
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2770
    .line 2771
    .line 2772
    move-result-object v4

    .line 2773
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    .line 2775
    .line 2776
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2777
    .line 2778
    .line 2779
    move-result-object v4

    .line 2780
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    .line 2782
    .line 2783
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2784
    .line 2785
    .line 2786
    goto/16 :goto_15

    .line 2787
    .line 2788
    :cond_3e
    const-string v7, "allowed"

    .line 2789
    .line 2790
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v7

    .line 2794
    if-nez v7, :cond_3f

    .line 2795
    .line 2796
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2797
    .line 2798
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2799
    .line 2800
    .line 2801
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    .line 2803
    .line 2804
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2805
    .line 2806
    .line 2807
    const-string v7, "> without allowed in "

    .line 2808
    .line 2809
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    .line 2811
    .line 2812
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2813
    .line 2814
    .line 2815
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    .line 2817
    .line 2818
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2819
    .line 2820
    .line 2821
    move-result-object v4

    .line 2822
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    .line 2824
    .line 2825
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2826
    .line 2827
    .line 2828
    move-result-object v4

    .line 2829
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    .line 2831
    .line 2832
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2833
    .line 2834
    .line 2835
    goto/16 :goto_15

    .line 2836
    .line 2837
    :cond_3f
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 2838
    .line 2839
    .line 2840
    move-result-object v4

    .line 2841
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 2842
    .line 2843
    .line 2844
    move-result-object v5

    .line 2845
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 2846
    .line 2847
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    .line 2849
    .line 2850
    move-result-object v7

    .line 2851
    check-cast v7, Landroid/util/ArraySet;

    .line 2852
    .line 2853
    if-nez v7, :cond_40

    .line 2854
    .line 2855
    new-instance v7, Landroid/util/ArraySet;

    .line 2856
    .line 2857
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2858
    .line 2859
    .line 2860
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 2861
    .line 2862
    invoke-virtual {v8, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2863
    .line 2864
    .line 2865
    :cond_40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2866
    .line 2867
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2868
    .line 2869
    .line 2870
    const-string v9, "Adding association: "

    .line 2871
    .line 2872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2873
    .line 2874
    .line 2875
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    .line 2877
    .line 2878
    const-string v4, " <- "

    .line 2879
    .line 2880
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2881
    .line 2882
    .line 2883
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    .line 2885
    .line 2886
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2887
    .line 2888
    .line 2889
    move-result-object v4

    .line 2890
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    .line 2892
    .line 2893
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2894
    .line 2895
    .line 2896
    goto :goto_25

    .line 2897
    :cond_41
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2898
    .line 2899
    .line 2900
    :goto_25
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2901
    .line 2902
    .line 2903
    goto/16 :goto_15

    .line 2904
    .line 2905
    :pswitch_14
    if-eqz v22, :cond_43

    .line 2906
    .line 2907
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2908
    .line 2909
    .line 2910
    move-result-object v5

    .line 2911
    if-nez v5, :cond_42

    .line 2912
    .line 2913
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2914
    .line 2915
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2916
    .line 2917
    .line 2918
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    .line 2920
    .line 2921
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2922
    .line 2923
    .line 2924
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    .line 2926
    .line 2927
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2928
    .line 2929
    .line 2930
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2931
    .line 2932
    .line 2933
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2934
    .line 2935
    .line 2936
    move-result-object v4

    .line 2937
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    .line 2939
    .line 2940
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2941
    .line 2942
    .line 2943
    move-result-object v4

    .line 2944
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    .line 2946
    .line 2947
    goto :goto_26

    .line 2948
    :cond_42
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    .line 2949
    .line 2950
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2951
    .line 2952
    .line 2953
    goto :goto_26

    .line 2954
    :cond_43
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2955
    .line 2956
    .line 2957
    :goto_26
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2958
    .line 2959
    .line 2960
    goto/16 :goto_15

    .line 2961
    .line 2962
    :pswitch_15
    if-eqz v21, :cond_44

    .line 2963
    .line 2964
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemConfig;->readOemPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2965
    .line 2966
    .line 2967
    goto/16 :goto_15

    .line 2968
    .line 2969
    :cond_44
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2970
    .line 2971
    .line 2972
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2973
    .line 2974
    .line 2975
    goto/16 :goto_15

    .line 2976
    .line 2977
    :pswitch_16
    move-object/from16 v5, v37

    .line 2978
    .line 2979
    if-eqz v33, :cond_4b

    .line 2980
    .line 2981
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 2982
    .line 2983
    .line 2984
    move-result-object v4

    .line 2985
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2986
    .line 2987
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2988
    .line 2989
    .line 2990
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 2991
    .line 2992
    .line 2993
    move-result-object v8

    .line 2994
    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 2995
    .line 2996
    .line 2997
    move-result-object v8

    .line 2998
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2999
    .line 3000
    .line 3001
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    .line 3003
    .line 3004
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3005
    .line 3006
    .line 3007
    move-result-object v7

    .line 3008
    invoke-interface {v4, v7}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3009
    .line 3010
    .line 3011
    move-result v4

    .line 3012
    if-nez v4, :cond_46

    .line 3013
    .line 3014
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3015
    .line 3016
    .line 3017
    move-result-object v4

    .line 3018
    new-instance v7, Ljava/lang/StringBuilder;

    .line 3019
    .line 3020
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3021
    .line 3022
    .line 3023
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 3024
    .line 3025
    .line 3026
    move-result-object v8

    .line 3027
    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3028
    .line 3029
    .line 3030
    move-result-object v8

    .line 3031
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3032
    .line 3033
    .line 3034
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    .line 3036
    .line 3037
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3038
    .line 3039
    .line 3040
    move-result-object v7

    .line 3041
    invoke-interface {v4, v7}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3042
    .line 3043
    .line 3044
    move-result v4

    .line 3045
    if-eqz v4, :cond_45

    .line 3046
    .line 3047
    goto :goto_27

    .line 3048
    :cond_45
    const/4 v4, 0x0

    .line 3049
    goto :goto_28

    .line 3050
    :cond_46
    :goto_27
    const/4 v4, 0x1

    .line 3051
    :goto_28
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3052
    .line 3053
    .line 3054
    move-result-object v7

    .line 3055
    new-instance v8, Ljava/lang/StringBuilder;

    .line 3056
    .line 3057
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3058
    .line 3059
    .line 3060
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 3061
    .line 3062
    .line 3063
    move-result-object v9

    .line 3064
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3065
    .line 3066
    .line 3067
    move-result-object v9

    .line 3068
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3069
    .line 3070
    .line 3071
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3072
    .line 3073
    .line 3074
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3075
    .line 3076
    .line 3077
    move-result-object v8

    .line 3078
    invoke-interface {v7, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3079
    .line 3080
    .line 3081
    move-result v7

    .line 3082
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3083
    .line 3084
    .line 3085
    move-result-object v8

    .line 3086
    new-instance v9, Ljava/lang/StringBuilder;

    .line 3087
    .line 3088
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3089
    .line 3090
    .line 3091
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 3092
    .line 3093
    .line 3094
    move-result-object v10

    .line 3095
    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3096
    .line 3097
    .line 3098
    move-result-object v10

    .line 3099
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3100
    .line 3101
    .line 3102
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3103
    .line 3104
    .line 3105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3106
    .line 3107
    .line 3108
    move-result-object v9

    .line 3109
    invoke-interface {v8, v9}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3110
    .line 3111
    .line 3112
    move-result v8

    .line 3113
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3114
    .line 3115
    .line 3116
    move-result-object v9

    .line 3117
    new-instance v10, Ljava/lang/StringBuilder;

    .line 3118
    .line 3119
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3120
    .line 3121
    .line 3122
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 3123
    .line 3124
    .line 3125
    move-result-object v11

    .line 3126
    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3127
    .line 3128
    .line 3129
    move-result-object v11

    .line 3130
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3131
    .line 3132
    .line 3133
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3134
    .line 3135
    .line 3136
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3137
    .line 3138
    .line 3139
    move-result-object v5

    .line 3140
    invoke-interface {v9, v5}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3141
    .line 3142
    .line 3143
    move-result v5

    .line 3144
    if-eqz v4, :cond_47

    .line 3145
    .line 3146
    move-object/from16 v4, v36

    .line 3147
    .line 3148
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3149
    .line 3150
    move-object/from16 v9, v32

    .line 3151
    .line 3152
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3153
    .line 3154
    .line 3155
    goto/16 :goto_15

    .line 3156
    .line 3157
    :cond_47
    move-object/from16 v9, v32

    .line 3158
    .line 3159
    move-object/from16 v4, v36

    .line 3160
    .line 3161
    if-eqz v7, :cond_48

    .line 3162
    .line 3163
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3164
    .line 3165
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3166
    .line 3167
    .line 3168
    goto/16 :goto_15

    .line 3169
    .line 3170
    :cond_48
    if-eqz v8, :cond_49

    .line 3171
    .line 3172
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3173
    .line 3174
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3175
    .line 3176
    .line 3177
    goto/16 :goto_15

    .line 3178
    .line 3179
    :cond_49
    if-eqz v5, :cond_4a

    .line 3180
    .line 3181
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3182
    .line 3183
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3184
    .line 3185
    .line 3186
    goto/16 :goto_15

    .line 3187
    .line 3188
    :cond_4a
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3189
    .line 3190
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3191
    .line 3192
    .line 3193
    goto/16 :goto_15

    .line 3194
    .line 3195
    :cond_4b
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3196
    .line 3197
    .line 3198
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3199
    .line 3200
    .line 3201
    goto/16 :goto_15

    .line 3202
    .line 3203
    :pswitch_17
    move-object/from16 v4, v36

    .line 3204
    .line 3205
    move-object/from16 v5, v37

    .line 3206
    .line 3207
    if-eqz v20, :cond_52

    .line 3208
    .line 3209
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3210
    .line 3211
    .line 3212
    move-result-object v7

    .line 3213
    new-instance v8, Ljava/lang/StringBuilder;

    .line 3214
    .line 3215
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3216
    .line 3217
    .line 3218
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 3219
    .line 3220
    .line 3221
    move-result-object v9

    .line 3222
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3223
    .line 3224
    .line 3225
    move-result-object v9

    .line 3226
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3227
    .line 3228
    .line 3229
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3230
    .line 3231
    .line 3232
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3233
    .line 3234
    .line 3235
    move-result-object v8

    .line 3236
    invoke-interface {v7, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3237
    .line 3238
    .line 3239
    move-result v7

    .line 3240
    if-nez v7, :cond_4d

    .line 3241
    .line 3242
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3243
    .line 3244
    .line 3245
    move-result-object v7

    .line 3246
    new-instance v8, Ljava/lang/StringBuilder;

    .line 3247
    .line 3248
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3249
    .line 3250
    .line 3251
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 3252
    .line 3253
    .line 3254
    move-result-object v9

    .line 3255
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3256
    .line 3257
    .line 3258
    move-result-object v9

    .line 3259
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3260
    .line 3261
    .line 3262
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3263
    .line 3264
    .line 3265
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3266
    .line 3267
    .line 3268
    move-result-object v8

    .line 3269
    invoke-interface {v7, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3270
    .line 3271
    .line 3272
    move-result v7

    .line 3273
    if-eqz v7, :cond_4c

    .line 3274
    .line 3275
    goto :goto_29

    .line 3276
    :cond_4c
    const/4 v7, 0x0

    .line 3277
    goto :goto_2a

    .line 3278
    :cond_4d
    :goto_29
    const/4 v7, 0x1

    .line 3279
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3280
    .line 3281
    .line 3282
    move-result-object v8

    .line 3283
    new-instance v9, Ljava/lang/StringBuilder;

    .line 3284
    .line 3285
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3286
    .line 3287
    .line 3288
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 3289
    .line 3290
    .line 3291
    move-result-object v10

    .line 3292
    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3293
    .line 3294
    .line 3295
    move-result-object v10

    .line 3296
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3297
    .line 3298
    .line 3299
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    .line 3301
    .line 3302
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3303
    .line 3304
    .line 3305
    move-result-object v9

    .line 3306
    invoke-interface {v8, v9}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3307
    .line 3308
    .line 3309
    move-result v8

    .line 3310
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3311
    .line 3312
    .line 3313
    move-result-object v9

    .line 3314
    new-instance v10, Ljava/lang/StringBuilder;

    .line 3315
    .line 3316
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3317
    .line 3318
    .line 3319
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 3320
    .line 3321
    .line 3322
    move-result-object v11

    .line 3323
    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3324
    .line 3325
    .line 3326
    move-result-object v11

    .line 3327
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3328
    .line 3329
    .line 3330
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3331
    .line 3332
    .line 3333
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3334
    .line 3335
    .line 3336
    move-result-object v10

    .line 3337
    invoke-interface {v9, v10}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3338
    .line 3339
    .line 3340
    move-result v9

    .line 3341
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3342
    .line 3343
    .line 3344
    move-result-object v10

    .line 3345
    new-instance v11, Ljava/lang/StringBuilder;

    .line 3346
    .line 3347
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 3348
    .line 3349
    .line 3350
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 3351
    .line 3352
    .line 3353
    move-result-object v12

    .line 3354
    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3355
    .line 3356
    .line 3357
    move-result-object v12

    .line 3358
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3359
    .line 3360
    .line 3361
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    .line 3363
    .line 3364
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3365
    .line 3366
    .line 3367
    move-result-object v5

    .line 3368
    invoke-interface {v10, v5}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3369
    .line 3370
    .line 3371
    move-result v5

    .line 3372
    if-eqz v7, :cond_4e

    .line 3373
    .line 3374
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 3375
    .line 3376
    move-object/from16 v7, v31

    .line 3377
    .line 3378
    invoke-static {v2, v4, v7}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3379
    .line 3380
    .line 3381
    goto/16 :goto_15

    .line 3382
    .line 3383
    :cond_4e
    move-object/from16 v7, v31

    .line 3384
    .line 3385
    if-eqz v8, :cond_4f

    .line 3386
    .line 3387
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 3388
    .line 3389
    invoke-static {v2, v4, v7}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3390
    .line 3391
    .line 3392
    goto/16 :goto_15

    .line 3393
    .line 3394
    :cond_4f
    if-eqz v9, :cond_50

    .line 3395
    .line 3396
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 3397
    .line 3398
    invoke-static {v2, v4, v7}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3399
    .line 3400
    .line 3401
    goto/16 :goto_15

    .line 3402
    .line 3403
    :cond_50
    if-eqz v5, :cond_51

    .line 3404
    .line 3405
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 3406
    .line 3407
    .line 3408
    move-result-object v4

    .line 3409
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3410
    .line 3411
    .line 3412
    move-result-object v4

    .line 3413
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/SystemConfig;->readApexPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;Ljava/nio/file/Path;)V

    .line 3414
    .line 3415
    .line 3416
    goto/16 :goto_15

    .line 3417
    .line 3418
    :cond_51
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 3419
    .line 3420
    invoke-static {v2, v4, v7}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3421
    .line 3422
    .line 3423
    goto/16 :goto_15

    .line 3424
    .line 3425
    :cond_52
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3426
    .line 3427
    .line 3428
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3429
    .line 3430
    .line 3431
    goto/16 :goto_15

    .line 3432
    .line 3433
    :pswitch_18
    if-eqz v19, :cond_54

    .line 3434
    .line 3435
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3436
    .line 3437
    .line 3438
    move-result-object v5

    .line 3439
    if-nez v5, :cond_53

    .line 3440
    .line 3441
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3442
    .line 3443
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3444
    .line 3445
    .line 3446
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    .line 3448
    .line 3449
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3450
    .line 3451
    .line 3452
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3453
    .line 3454
    .line 3455
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3456
    .line 3457
    .line 3458
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3459
    .line 3460
    .line 3461
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3462
    .line 3463
    .line 3464
    move-result-object v4

    .line 3465
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3466
    .line 3467
    .line 3468
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3469
    .line 3470
    .line 3471
    move-result-object v4

    .line 3472
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    .line 3474
    .line 3475
    goto :goto_2b

    .line 3476
    :cond_53
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    .line 3477
    .line 3478
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3479
    .line 3480
    .line 3481
    goto :goto_2b

    .line 3482
    :cond_54
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3483
    .line 3484
    .line 3485
    :goto_2b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3486
    .line 3487
    .line 3488
    goto/16 :goto_15

    .line 3489
    .line 3490
    :pswitch_19
    if-eqz v19, :cond_59

    .line 3491
    .line 3492
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3493
    .line 3494
    .line 3495
    move-result-object v5

    .line 3496
    const-string/jumbo v7, "carrierAppPackage"

    .line 3497
    .line 3498
    .line 3499
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3500
    .line 3501
    .line 3502
    move-result-object v7

    .line 3503
    if-eqz v5, :cond_58

    .line 3504
    .line 3505
    if-nez v7, :cond_55

    .line 3506
    .line 3507
    goto :goto_2d

    .line 3508
    :cond_55
    const-string v9, "addedInSdk"

    .line 3509
    .line 3510
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3511
    .line 3512
    .line 3513
    move-result-object v9

    .line 3514
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3515
    .line 3516
    .line 3517
    move-result v11
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 3518
    if-nez v11, :cond_56

    .line 3519
    .line 3520
    :try_start_16
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3521
    .line 3522
    .line 3523
    move-result v4
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 3524
    goto :goto_2c

    .line 3525
    :catch_6
    :try_start_17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3526
    .line 3527
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3528
    .line 3529
    .line 3530
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3531
    .line 3532
    .line 3533
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3534
    .line 3535
    .line 3536
    const-string v7, "> addedInSdk not an integer in "

    .line 3537
    .line 3538
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3539
    .line 3540
    .line 3541
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3542
    .line 3543
    .line 3544
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    .line 3546
    .line 3547
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3548
    .line 3549
    .line 3550
    move-result-object v4

    .line 3551
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3552
    .line 3553
    .line 3554
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3555
    .line 3556
    .line 3557
    move-result-object v4

    .line 3558
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    .line 3560
    .line 3561
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3562
    .line 3563
    .line 3564
    goto/16 :goto_15

    .line 3565
    .line 3566
    :cond_56
    const/4 v4, -0x1

    .line 3567
    :goto_2c
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 3568
    .line 3569
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3570
    .line 3571
    .line 3572
    move-result-object v8

    .line 3573
    check-cast v8, Ljava/util/List;

    .line 3574
    .line 3575
    if-nez v8, :cond_57

    .line 3576
    .line 3577
    new-instance v8, Ljava/util/ArrayList;

    .line 3578
    .line 3579
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3580
    .line 3581
    .line 3582
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 3583
    .line 3584
    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3585
    .line 3586
    .line 3587
    :cond_57
    new-instance v7, Landroid/os/CarrierAssociatedAppEntry;

    .line 3588
    .line 3589
    invoke-direct {v7, v5, v4}, Landroid/os/CarrierAssociatedAppEntry;-><init>(Ljava/lang/String;I)V

    .line 3590
    .line 3591
    .line 3592
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3593
    .line 3594
    .line 3595
    goto :goto_2e

    .line 3596
    :cond_58
    :goto_2d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3597
    .line 3598
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3599
    .line 3600
    .line 3601
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3602
    .line 3603
    .line 3604
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3605
    .line 3606
    .line 3607
    const-string v7, "> without package or carrierAppPackage in "

    .line 3608
    .line 3609
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3610
    .line 3611
    .line 3612
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3613
    .line 3614
    .line 3615
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3616
    .line 3617
    .line 3618
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3619
    .line 3620
    .line 3621
    move-result-object v4

    .line 3622
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3623
    .line 3624
    .line 3625
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3626
    .line 3627
    .line 3628
    move-result-object v4

    .line 3629
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    .line 3631
    .line 3632
    goto :goto_2e

    .line 3633
    :cond_59
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3634
    .line 3635
    .line 3636
    :goto_2e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3637
    .line 3638
    .line 3639
    goto/16 :goto_15

    .line 3640
    .line 3641
    :pswitch_1a
    move-object/from16 v7, v41

    .line 3642
    .line 3643
    if-eqz v17, :cond_5c

    .line 3644
    .line 3645
    const-string/jumbo v5, "service"

    .line 3646
    .line 3647
    .line 3648
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3649
    .line 3650
    .line 3651
    move-result-object v5

    .line 3652
    if-nez v5, :cond_5a

    .line 3653
    .line 3654
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3655
    .line 3656
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3657
    .line 3658
    .line 3659
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    .line 3661
    .line 3662
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    .line 3664
    .line 3665
    const-string v7, "> without service in "

    .line 3666
    .line 3667
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3668
    .line 3669
    .line 3670
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3671
    .line 3672
    .line 3673
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3674
    .line 3675
    .line 3676
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3677
    .line 3678
    .line 3679
    move-result-object v4

    .line 3680
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3681
    .line 3682
    .line 3683
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3684
    .line 3685
    .line 3686
    move-result-object v4

    .line 3687
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    .line 3689
    .line 3690
    goto :goto_2f

    .line 3691
    :cond_5a
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 3692
    .line 3693
    .line 3694
    move-result-object v9

    .line 3695
    if-nez v9, :cond_5b

    .line 3696
    .line 3697
    new-instance v9, Ljava/lang/StringBuilder;

    .line 3698
    .line 3699
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3700
    .line 3701
    .line 3702
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3703
    .line 3704
    .line 3705
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3706
    .line 3707
    .line 3708
    const-string v8, "> with invalid service name "

    .line 3709
    .line 3710
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
    .line 3712
    .line 3713
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3714
    .line 3715
    .line 3716
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3717
    .line 3718
    .line 3719
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3720
    .line 3721
    .line 3722
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3723
    .line 3724
    .line 3725
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3726
    .line 3727
    .line 3728
    move-result-object v4

    .line 3729
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3730
    .line 3731
    .line 3732
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3733
    .line 3734
    .line 3735
    move-result-object v4

    .line 3736
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    .line 3738
    .line 3739
    goto :goto_2f

    .line 3740
    :cond_5b
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 3741
    .line 3742
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3743
    .line 3744
    .line 3745
    goto :goto_2f

    .line 3746
    :cond_5c
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3747
    .line 3748
    .line 3749
    :goto_2f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3750
    .line 3751
    .line 3752
    goto/16 :goto_15

    .line 3753
    .line 3754
    :pswitch_1b
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/SystemConfig;->readComponentOverrides(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V

    .line 3755
    .line 3756
    .line 3757
    goto/16 :goto_15

    .line 3758
    .line 3759
    :pswitch_1c
    if-eqz v19, :cond_5f

    .line 3760
    .line 3761
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3762
    .line 3763
    .line 3764
    move-result-object v5

    .line 3765
    const-string/jumbo v7, "class"

    .line 3766
    .line 3767
    .line 3768
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3769
    .line 3770
    .line 3771
    move-result-object v7

    .line 3772
    if-nez v5, :cond_5d

    .line 3773
    .line 3774
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3775
    .line 3776
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3777
    .line 3778
    .line 3779
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3780
    .line 3781
    .line 3782
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3783
    .line 3784
    .line 3785
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3786
    .line 3787
    .line 3788
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3789
    .line 3790
    .line 3791
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3792
    .line 3793
    .line 3794
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3795
    .line 3796
    .line 3797
    move-result-object v4

    .line 3798
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3799
    .line 3800
    .line 3801
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3802
    .line 3803
    .line 3804
    move-result-object v4

    .line 3805
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    .line 3807
    .line 3808
    goto :goto_30

    .line 3809
    :cond_5d
    if-nez v7, :cond_5e

    .line 3810
    .line 3811
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3812
    .line 3813
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3814
    .line 3815
    .line 3816
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3817
    .line 3818
    .line 3819
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    .line 3821
    .line 3822
    const-string v7, "> without class in "

    .line 3823
    .line 3824
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3825
    .line 3826
    .line 3827
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3828
    .line 3829
    .line 3830
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3831
    .line 3832
    .line 3833
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3834
    .line 3835
    .line 3836
    move-result-object v4

    .line 3837
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3838
    .line 3839
    .line 3840
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3841
    .line 3842
    .line 3843
    move-result-object v4

    .line 3844
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    .line 3846
    .line 3847
    goto :goto_30

    .line 3848
    :cond_5e
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 3849
    .line 3850
    new-instance v8, Landroid/content/ComponentName;

    .line 3851
    .line 3852
    invoke-direct {v8, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    .line 3854
    .line 3855
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3856
    .line 3857
    .line 3858
    goto :goto_30

    .line 3859
    :cond_5f
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3860
    .line 3861
    .line 3862
    :goto_30
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3863
    .line 3864
    .line 3865
    goto/16 :goto_15

    .line 3866
    .line 3867
    :pswitch_1d
    if-eqz v30, :cond_61

    .line 3868
    .line 3869
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3870
    .line 3871
    .line 3872
    move-result-object v5

    .line 3873
    if-nez v5, :cond_60

    .line 3874
    .line 3875
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3876
    .line 3877
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3878
    .line 3879
    .line 3880
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3881
    .line 3882
    .line 3883
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    .line 3885
    .line 3886
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3887
    .line 3888
    .line 3889
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3890
    .line 3891
    .line 3892
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3893
    .line 3894
    .line 3895
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3896
    .line 3897
    .line 3898
    move-result-object v4

    .line 3899
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3900
    .line 3901
    .line 3902
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3903
    .line 3904
    .line 3905
    move-result-object v4

    .line 3906
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    .line 3908
    .line 3909
    goto :goto_31

    .line 3910
    :cond_60
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    .line 3911
    .line 3912
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3913
    .line 3914
    .line 3915
    goto :goto_31

    .line 3916
    :cond_61
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3917
    .line 3918
    .line 3919
    :goto_31
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3920
    .line 3921
    .line 3922
    goto/16 :goto_15

    .line 3923
    .line 3924
    :pswitch_1e
    if-eqz v19, :cond_63

    .line 3925
    .line 3926
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3927
    .line 3928
    .line 3929
    move-result-object v5

    .line 3930
    if-nez v5, :cond_62

    .line 3931
    .line 3932
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3933
    .line 3934
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3935
    .line 3936
    .line 3937
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3938
    .line 3939
    .line 3940
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3941
    .line 3942
    .line 3943
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3944
    .line 3945
    .line 3946
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3947
    .line 3948
    .line 3949
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3950
    .line 3951
    .line 3952
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3953
    .line 3954
    .line 3955
    move-result-object v4

    .line 3956
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3957
    .line 3958
    .line 3959
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3960
    .line 3961
    .line 3962
    move-result-object v4

    .line 3963
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    .line 3965
    .line 3966
    goto :goto_32

    .line 3967
    :cond_62
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 3968
    .line 3969
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3970
    .line 3971
    .line 3972
    goto :goto_32

    .line 3973
    :cond_63
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3974
    .line 3975
    .line 3976
    :goto_32
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3977
    .line 3978
    .line 3979
    goto/16 :goto_15

    .line 3980
    .line 3981
    :pswitch_1f
    if-eqz v29, :cond_65

    .line 3982
    .line 3983
    const-string v5, "action"

    .line 3984
    .line 3985
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3986
    .line 3987
    .line 3988
    move-result-object v5

    .line 3989
    if-nez v5, :cond_64

    .line 3990
    .line 3991
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3992
    .line 3993
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3994
    .line 3995
    .line 3996
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3997
    .line 3998
    .line 3999
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    .line 4001
    .line 4002
    const-string v7, "> without action in "

    .line 4003
    .line 4004
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4005
    .line 4006
    .line 4007
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4008
    .line 4009
    .line 4010
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4011
    .line 4012
    .line 4013
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4014
    .line 4015
    .line 4016
    move-result-object v4

    .line 4017
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4018
    .line 4019
    .line 4020
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4021
    .line 4022
    .line 4023
    move-result-object v4

    .line 4024
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    .line 4026
    .line 4027
    goto :goto_33

    .line 4028
    :cond_64
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    .line 4029
    .line 4030
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4031
    .line 4032
    .line 4033
    goto :goto_33

    .line 4034
    :cond_65
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4035
    .line 4036
    .line 4037
    :goto_33
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4038
    .line 4039
    .line 4040
    goto/16 :goto_15

    .line 4041
    .line 4042
    :pswitch_20
    if-eqz v30, :cond_6a

    .line 4043
    .line 4044
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4045
    .line 4046
    .line 4047
    move-result-object v5

    .line 4048
    move-object/from16 v7, v28

    .line 4049
    .line 4050
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4051
    .line 4052
    .line 4053
    move-result-object v7

    .line 4054
    if-nez v5, :cond_66

    .line 4055
    .line 4056
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4057
    .line 4058
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4059
    .line 4060
    .line 4061
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4062
    .line 4063
    .line 4064
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4065
    .line 4066
    .line 4067
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4068
    .line 4069
    .line 4070
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4071
    .line 4072
    .line 4073
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    .line 4075
    .line 4076
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4077
    .line 4078
    .line 4079
    move-result-object v4

    .line 4080
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4081
    .line 4082
    .line 4083
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4084
    .line 4085
    .line 4086
    move-result-object v4

    .line 4087
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    .line 4089
    .line 4090
    goto :goto_35

    .line 4091
    :cond_66
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 4092
    .line 4093
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4094
    .line 4095
    .line 4096
    move-result-object v4

    .line 4097
    check-cast v4, Landroid/util/ArraySet;

    .line 4098
    .line 4099
    if-eqz v4, :cond_67

    .line 4100
    .line 4101
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4102
    .line 4103
    .line 4104
    move-result v8

    .line 4105
    if-nez v8, :cond_6b

    .line 4106
    .line 4107
    :cond_67
    if-nez v4, :cond_68

    .line 4108
    .line 4109
    new-instance v4, Landroid/util/ArraySet;

    .line 4110
    .line 4111
    const/4 v8, 0x1

    .line 4112
    invoke-direct {v4, v8}, Landroid/util/ArraySet;-><init>(I)V

    .line 4113
    .line 4114
    .line 4115
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 4116
    .line 4117
    invoke-virtual {v8, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4118
    .line 4119
    .line 4120
    :cond_68
    move-object/from16 v5, v27

    .line 4121
    .line 4122
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4123
    .line 4124
    .line 4125
    move-result v5

    .line 4126
    if-nez v5, :cond_6b

    .line 4127
    .line 4128
    move-object/from16 v9, p3

    .line 4129
    .line 4130
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4131
    .line 4132
    .line 4133
    move-result v5

    .line 4134
    if-eqz v5, :cond_69

    .line 4135
    .line 4136
    goto :goto_34

    .line 4137
    :cond_69
    move-object v14, v7

    .line 4138
    :goto_34
    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4139
    .line 4140
    .line 4141
    goto :goto_35

    .line 4142
    :cond_6a
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4143
    .line 4144
    .line 4145
    :cond_6b
    :goto_35
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4146
    .line 4147
    .line 4148
    goto/16 :goto_15

    .line 4149
    .line 4150
    :pswitch_21
    if-eqz v30, :cond_6d

    .line 4151
    .line 4152
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4153
    .line 4154
    .line 4155
    move-result-object v5

    .line 4156
    if-nez v5, :cond_6c

    .line 4157
    .line 4158
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4159
    .line 4160
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4161
    .line 4162
    .line 4163
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4164
    .line 4165
    .line 4166
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    .line 4168
    .line 4169
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4170
    .line 4171
    .line 4172
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4173
    .line 4174
    .line 4175
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4176
    .line 4177
    .line 4178
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4179
    .line 4180
    .line 4181
    move-result-object v4

    .line 4182
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4183
    .line 4184
    .line 4185
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4186
    .line 4187
    .line 4188
    move-result-object v4

    .line 4189
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    .line 4191
    .line 4192
    goto :goto_36

    .line 4193
    :cond_6c
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowlistCameraPrivacy:Landroid/util/ArraySet;

    .line 4194
    .line 4195
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4196
    .line 4197
    .line 4198
    goto :goto_36

    .line 4199
    :cond_6d
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4200
    .line 4201
    .line 4202
    :goto_36
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4203
    .line 4204
    .line 4205
    goto/16 :goto_15

    .line 4206
    .line 4207
    :pswitch_22
    move-object/from16 v9, p3

    .line 4208
    .line 4209
    move-object/from16 v5, v27

    .line 4210
    .line 4211
    move-object/from16 v7, v28

    .line 4212
    .line 4213
    if-eqz v30, :cond_72

    .line 4214
    .line 4215
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4216
    .line 4217
    .line 4218
    move-result-object v11

    .line 4219
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4220
    .line 4221
    .line 4222
    move-result-object v7

    .line 4223
    if-nez v11, :cond_6e

    .line 4224
    .line 4225
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4226
    .line 4227
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4228
    .line 4229
    .line 4230
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4231
    .line 4232
    .line 4233
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    .line 4235
    .line 4236
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4237
    .line 4238
    .line 4239
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4240
    .line 4241
    .line 4242
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    .line 4244
    .line 4245
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4246
    .line 4247
    .line 4248
    move-result-object v4

    .line 4249
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4250
    .line 4251
    .line 4252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4253
    .line 4254
    .line 4255
    move-result-object v4

    .line 4256
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    .line 4258
    .line 4259
    goto :goto_38

    .line 4260
    :cond_6e
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 4261
    .line 4262
    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4263
    .line 4264
    .line 4265
    move-result-object v4

    .line 4266
    check-cast v4, Landroid/util/ArraySet;

    .line 4267
    .line 4268
    if-eqz v4, :cond_6f

    .line 4269
    .line 4270
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4271
    .line 4272
    .line 4273
    move-result v8

    .line 4274
    if-nez v8, :cond_73

    .line 4275
    .line 4276
    :cond_6f
    if-nez v4, :cond_70

    .line 4277
    .line 4278
    new-instance v4, Landroid/util/ArraySet;

    .line 4279
    .line 4280
    const/4 v8, 0x1

    .line 4281
    invoke-direct {v4, v8}, Landroid/util/ArraySet;-><init>(I)V

    .line 4282
    .line 4283
    .line 4284
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 4285
    .line 4286
    invoke-virtual {v8, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4287
    .line 4288
    .line 4289
    :cond_70
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4290
    .line 4291
    .line 4292
    move-result v5

    .line 4293
    if-nez v5, :cond_73

    .line 4294
    .line 4295
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4296
    .line 4297
    .line 4298
    move-result v5

    .line 4299
    if-eqz v5, :cond_71

    .line 4300
    .line 4301
    goto :goto_37

    .line 4302
    :cond_71
    move-object v14, v7

    .line 4303
    :goto_37
    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4304
    .line 4305
    .line 4306
    goto :goto_38

    .line 4307
    :cond_72
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4308
    .line 4309
    .line 4310
    :cond_73
    :goto_38
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4311
    .line 4312
    .line 4313
    goto/16 :goto_15

    .line 4314
    .line 4315
    :pswitch_23
    if-eqz v30, :cond_75

    .line 4316
    .line 4317
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4318
    .line 4319
    .line 4320
    move-result-object v5

    .line 4321
    if-nez v5, :cond_74

    .line 4322
    .line 4323
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4324
    .line 4325
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4326
    .line 4327
    .line 4328
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4329
    .line 4330
    .line 4331
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4332
    .line 4333
    .line 4334
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4335
    .line 4336
    .line 4337
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4338
    .line 4339
    .line 4340
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4341
    .line 4342
    .line 4343
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4344
    .line 4345
    .line 4346
    move-result-object v4

    .line 4347
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4348
    .line 4349
    .line 4350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4351
    .line 4352
    .line 4353
    move-result-object v4

    .line 4354
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    .line 4356
    .line 4357
    goto :goto_39

    .line 4358
    :cond_74
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    .line 4359
    .line 4360
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4361
    .line 4362
    .line 4363
    goto :goto_39

    .line 4364
    :cond_75
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4365
    .line 4366
    .line 4367
    :goto_39
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4368
    .line 4369
    .line 4370
    goto/16 :goto_15

    .line 4371
    .line 4372
    :pswitch_24
    if-eqz v30, :cond_77

    .line 4373
    .line 4374
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4375
    .line 4376
    .line 4377
    move-result-object v5

    .line 4378
    if-nez v5, :cond_76

    .line 4379
    .line 4380
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4381
    .line 4382
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4383
    .line 4384
    .line 4385
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4386
    .line 4387
    .line 4388
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4389
    .line 4390
    .line 4391
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4392
    .line 4393
    .line 4394
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4395
    .line 4396
    .line 4397
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4398
    .line 4399
    .line 4400
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4401
    .line 4402
    .line 4403
    move-result-object v4

    .line 4404
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4405
    .line 4406
    .line 4407
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4408
    .line 4409
    .line 4410
    move-result-object v4

    .line 4411
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    .line 4413
    .line 4414
    goto :goto_3a

    .line 4415
    :cond_76
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 4416
    .line 4417
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4418
    .line 4419
    .line 4420
    goto :goto_3a

    .line 4421
    :cond_77
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4422
    .line 4423
    .line 4424
    :goto_3a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4425
    .line 4426
    .line 4427
    goto/16 :goto_15

    .line 4428
    .line 4429
    :pswitch_25
    if-eqz v30, :cond_79

    .line 4430
    .line 4431
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4432
    .line 4433
    .line 4434
    move-result-object v5

    .line 4435
    if-nez v5, :cond_78

    .line 4436
    .line 4437
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4438
    .line 4439
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4440
    .line 4441
    .line 4442
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4443
    .line 4444
    .line 4445
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    .line 4447
    .line 4448
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4449
    .line 4450
    .line 4451
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4452
    .line 4453
    .line 4454
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4455
    .line 4456
    .line 4457
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4458
    .line 4459
    .line 4460
    move-result-object v4

    .line 4461
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4462
    .line 4463
    .line 4464
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4465
    .line 4466
    .line 4467
    move-result-object v4

    .line 4468
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    .line 4470
    .line 4471
    goto :goto_3b

    .line 4472
    :cond_78
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 4473
    .line 4474
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4475
    .line 4476
    .line 4477
    goto :goto_3b

    .line 4478
    :cond_79
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4479
    .line 4480
    .line 4481
    :goto_3b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4482
    .line 4483
    .line 4484
    goto/16 :goto_15

    .line 4485
    .line 4486
    :pswitch_26
    if-eqz v30, :cond_7b

    .line 4487
    .line 4488
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4489
    .line 4490
    .line 4491
    move-result-object v5

    .line 4492
    if-nez v5, :cond_7a

    .line 4493
    .line 4494
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4495
    .line 4496
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4497
    .line 4498
    .line 4499
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4500
    .line 4501
    .line 4502
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4503
    .line 4504
    .line 4505
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4506
    .line 4507
    .line 4508
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4509
    .line 4510
    .line 4511
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4512
    .line 4513
    .line 4514
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4515
    .line 4516
    .line 4517
    move-result-object v4

    .line 4518
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4519
    .line 4520
    .line 4521
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4522
    .line 4523
    .line 4524
    move-result-object v4

    .line 4525
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4526
    .line 4527
    .line 4528
    goto :goto_3c

    .line 4529
    :cond_7a
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 4530
    .line 4531
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4532
    .line 4533
    .line 4534
    goto :goto_3c

    .line 4535
    :cond_7b
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4536
    .line 4537
    .line 4538
    :goto_3c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4539
    .line 4540
    .line 4541
    goto/16 :goto_15

    .line 4542
    .line 4543
    :pswitch_27
    move-object/from16 v12, v38

    .line 4544
    .line 4545
    if-eqz v17, :cond_7d

    .line 4546
    .line 4547
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4548
    .line 4549
    .line 4550
    move-result-object v5

    .line 4551
    if-nez v5, :cond_7c

    .line 4552
    .line 4553
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4554
    .line 4555
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4556
    .line 4557
    .line 4558
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4559
    .line 4560
    .line 4561
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4562
    .line 4563
    .line 4564
    move-object/from16 v7, v34

    .line 4565
    .line 4566
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4567
    .line 4568
    .line 4569
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4570
    .line 4571
    .line 4572
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4573
    .line 4574
    .line 4575
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4576
    .line 4577
    .line 4578
    move-result-object v4

    .line 4579
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4580
    .line 4581
    .line 4582
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4583
    .line 4584
    .line 4585
    move-result-object v4

    .line 4586
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    .line 4588
    .line 4589
    goto :goto_3d

    .line 4590
    :cond_7c
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 4591
    .line 4592
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4593
    .line 4594
    .line 4595
    goto :goto_3d

    .line 4596
    :cond_7d
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4597
    .line 4598
    .line 4599
    :goto_3d
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4600
    .line 4601
    .line 4602
    goto/16 :goto_15

    .line 4603
    .line 4604
    :pswitch_28
    move-object/from16 v7, v34

    .line 4605
    .line 4606
    move-object/from16 v12, v38

    .line 4607
    .line 4608
    if-eqz v17, :cond_80

    .line 4609
    .line 4610
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4611
    .line 4612
    .line 4613
    move-result-object v5

    .line 4614
    const-string/jumbo v9, "version"

    .line 4615
    .line 4616
    .line 4617
    const/4 v11, 0x0

    .line 4618
    invoke-static {v2, v9, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 4619
    .line 4620
    .line 4621
    move-result v9

    .line 4622
    if-nez v26, :cond_7e

    .line 4623
    .line 4624
    const/4 v11, 0x1

    .line 4625
    const/16 v24, 0x1

    .line 4626
    .line 4627
    goto :goto_3e

    .line 4628
    :cond_7e
    const-string/jumbo v11, "notLowRam"

    .line 4629
    .line 4630
    .line 4631
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4632
    .line 4633
    .line 4634
    move-result-object v11

    .line 4635
    const-string/jumbo v12, "true"

    .line 4636
    .line 4637
    .line 4638
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4639
    .line 4640
    .line 4641
    move-result v11

    .line 4642
    const/16 v24, 0x1

    .line 4643
    .line 4644
    xor-int/lit8 v11, v11, 0x1

    .line 4645
    .line 4646
    :goto_3e
    if-nez v5, :cond_7f

    .line 4647
    .line 4648
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4649
    .line 4650
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4651
    .line 4652
    .line 4653
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4654
    .line 4655
    .line 4656
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4657
    .line 4658
    .line 4659
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4660
    .line 4661
    .line 4662
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4663
    .line 4664
    .line 4665
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4666
    .line 4667
    .line 4668
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4669
    .line 4670
    .line 4671
    move-result-object v4

    .line 4672
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4673
    .line 4674
    .line 4675
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4676
    .line 4677
    .line 4678
    move-result-object v4

    .line 4679
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    .line 4681
    .line 4682
    goto :goto_3f

    .line 4683
    :cond_7f
    if-eqz v11, :cond_81

    .line 4684
    .line 4685
    invoke-virtual {v1, v9, v5}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 4686
    .line 4687
    .line 4688
    goto :goto_3f

    .line 4689
    :cond_80
    const/16 v24, 0x1

    .line 4690
    .line 4691
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4692
    .line 4693
    .line 4694
    :cond_81
    :goto_3f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4695
    .line 4696
    .line 4697
    goto/16 :goto_49

    .line 4698
    .line 4699
    :pswitch_29
    move-object/from16 v7, v34

    .line 4700
    .line 4701
    move-object/from16 v12, v38

    .line 4702
    .line 4703
    const/16 v24, 0x1

    .line 4704
    .line 4705
    if-eqz v16, :cond_8d

    .line 4706
    .line 4707
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4708
    .line 4709
    .line 4710
    move-result-object v5

    .line 4711
    const-string/jumbo v9, "file"

    .line 4712
    .line 4713
    .line 4714
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4715
    .line 4716
    .line 4717
    move-result-object v9

    .line 4718
    const-string/jumbo v11, "dependency"

    .line 4719
    .line 4720
    .line 4721
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4722
    .line 4723
    .line 4724
    move-result-object v11

    .line 4725
    const-string/jumbo v12, "min-device-sdk"

    .line 4726
    .line 4727
    .line 4728
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4729
    .line 4730
    .line 4731
    move-result-object v12

    .line 4732
    const-string/jumbo v13, "max-device-sdk"

    .line 4733
    .line 4734
    .line 4735
    invoke-interface {v2, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4736
    .line 4737
    .line 4738
    move-result-object v13

    .line 4739
    if-nez v5, :cond_82

    .line 4740
    .line 4741
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4742
    .line 4743
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4744
    .line 4745
    .line 4746
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4747
    .line 4748
    .line 4749
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4750
    .line 4751
    .line 4752
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4753
    .line 4754
    .line 4755
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4756
    .line 4757
    .line 4758
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4759
    .line 4760
    .line 4761
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4762
    .line 4763
    .line 4764
    move-result-object v4

    .line 4765
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4766
    .line 4767
    .line 4768
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4769
    .line 4770
    .line 4771
    move-result-object v4

    .line 4772
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    .line 4774
    .line 4775
    goto/16 :goto_46

    .line 4776
    .line 4777
    :cond_82
    if-nez v9, :cond_83

    .line 4778
    .line 4779
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4780
    .line 4781
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4782
    .line 4783
    .line 4784
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4785
    .line 4786
    .line 4787
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4788
    .line 4789
    .line 4790
    const-string v7, "> without file in "

    .line 4791
    .line 4792
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4793
    .line 4794
    .line 4795
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4796
    .line 4797
    .line 4798
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4799
    .line 4800
    .line 4801
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4802
    .line 4803
    .line 4804
    move-result-object v4

    .line 4805
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4806
    .line 4807
    .line 4808
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4809
    .line 4810
    .line 4811
    move-result-object v4

    .line 4812
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 4813
    .line 4814
    .line 4815
    goto/16 :goto_46

    .line 4816
    .line 4817
    :cond_83
    if-eqz v12, :cond_85

    .line 4818
    .line 4819
    :try_start_18
    invoke-static {v12}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    .line 4820
    .line 4821
    .line 4822
    move-result v4
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 4823
    goto :goto_40

    .line 4824
    :catch_7
    const/4 v4, 0x0

    .line 4825
    :goto_40
    if-eqz v4, :cond_84

    .line 4826
    .line 4827
    goto :goto_41

    .line 4828
    :cond_84
    const/4 v4, 0x0

    .line 4829
    goto :goto_42

    .line 4830
    :cond_85
    :goto_41
    move/from16 v4, v24

    .line 4831
    .line 4832
    :goto_42
    if-eqz v13, :cond_87

    .line 4833
    .line 4834
    :try_start_19
    invoke-static {v13}, Lcom/android/server/SystemConfig;->isAtMostSdkLevel(Ljava/lang/String;)Z

    .line 4835
    .line 4836
    .line 4837
    move-result v7

    .line 4838
    if-eqz v7, :cond_86

    .line 4839
    .line 4840
    goto :goto_43

    .line 4841
    :cond_86
    const/4 v7, 0x0

    .line 4842
    goto :goto_44

    .line 4843
    :cond_87
    :goto_43
    move/from16 v7, v24

    .line 4844
    .line 4845
    :goto_44
    new-instance v8, Ljava/io/File;

    .line 4846
    .line 4847
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4848
    .line 4849
    .line 4850
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 4851
    .line 4852
    .line 4853
    move-result v8
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 4854
    const-string v10, ":"

    .line 4855
    .line 4856
    if-eqz v4, :cond_89

    .line 4857
    .line 4858
    if-eqz v7, :cond_89

    .line 4859
    .line 4860
    if-eqz v8, :cond_89

    .line 4861
    .line 4862
    :try_start_1a
    const-string/jumbo v4, "on-bootclasspath-since"

    .line 4863
    .line 4864
    .line 4865
    invoke-interface {v2, v14, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4866
    .line 4867
    .line 4868
    move-result-object v4

    .line 4869
    const-string/jumbo v7, "on-bootclasspath-before"

    .line 4870
    .line 4871
    .line 4872
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4873
    .line 4874
    .line 4875
    move-result-object v12

    .line 4876
    new-instance v13, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 4877
    .line 4878
    if-nez v11, :cond_88

    .line 4879
    .line 4880
    const/4 v7, 0x0

    .line 4881
    new-array v8, v7, [Ljava/lang/String;

    .line 4882
    .line 4883
    move-object v10, v8

    .line 4884
    goto :goto_45

    .line 4885
    :cond_88
    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4886
    .line 4887
    .line 4888
    move-result-object v7

    .line 4889
    move-object v10, v7

    .line 4890
    :goto_45
    move-object v7, v13

    .line 4891
    move-object v8, v5

    .line 4892
    move-object v11, v4

    .line 4893
    invoke-direct/range {v7 .. v12}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4894
    .line 4895
    .line 4896
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 4897
    .line 4898
    invoke-virtual {v4, v5, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4899
    .line 4900
    .line 4901
    goto :goto_46

    .line 4902
    :cond_89
    new-instance v11, Ljava/lang/StringBuilder;

    .line 4903
    .line 4904
    const-string v14, "Ignore shared library "

    .line 4905
    .line 4906
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4907
    .line 4908
    .line 4909
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4910
    .line 4911
    .line 4912
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4913
    .line 4914
    .line 4915
    if-nez v4, :cond_8a

    .line 4916
    .line 4917
    const-string v4, " min-device-sdk="

    .line 4918
    .line 4919
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4920
    .line 4921
    .line 4922
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4923
    .line 4924
    .line 4925
    :cond_8a
    if-nez v7, :cond_8b

    .line 4926
    .line 4927
    const-string v4, " max-device-sdk="

    .line 4928
    .line 4929
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4930
    .line 4931
    .line 4932
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4933
    .line 4934
    .line 4935
    :cond_8b
    if-nez v8, :cond_8c

    .line 4936
    .line 4937
    const-string v4, " "

    .line 4938
    .line 4939
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4940
    .line 4941
    .line 4942
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4943
    .line 4944
    .line 4945
    const-string v4, " does not exist"

    .line 4946
    .line 4947
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4948
    .line 4949
    .line 4950
    :cond_8c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4951
    .line 4952
    .line 4953
    move-result-object v4

    .line 4954
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4955
    .line 4956
    .line 4957
    goto :goto_46

    .line 4958
    :cond_8d
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4959
    .line 4960
    .line 4961
    :goto_46
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4962
    .line 4963
    .line 4964
    goto/16 :goto_49

    .line 4965
    .line 4966
    :pswitch_2a
    const/16 v24, 0x1

    .line 4967
    .line 4968
    if-eqz v18, :cond_8e

    .line 4969
    .line 4970
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/SystemConfig;->readSplitPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V

    .line 4971
    .line 4972
    .line 4973
    goto/16 :goto_49

    .line 4974
    .line 4975
    :cond_8e
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4976
    .line 4977
    .line 4978
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4979
    .line 4980
    .line 4981
    goto/16 :goto_49

    .line 4982
    .line 4983
    :pswitch_2b
    move-object/from16 v7, v34

    .line 4984
    .line 4985
    move-object/from16 v12, v38

    .line 4986
    .line 4987
    const/16 v24, 0x1

    .line 4988
    .line 4989
    if-eqz v18, :cond_93

    .line 4990
    .line 4991
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4992
    .line 4993
    .line 4994
    move-result-object v5

    .line 4995
    if-nez v5, :cond_8f

    .line 4996
    .line 4997
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4998
    .line 4999
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5000
    .line 5001
    .line 5002
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5003
    .line 5004
    .line 5005
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5006
    .line 5007
    .line 5008
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5009
    .line 5010
    .line 5011
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5012
    .line 5013
    .line 5014
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5015
    .line 5016
    .line 5017
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5018
    .line 5019
    .line 5020
    move-result-object v4

    .line 5021
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5022
    .line 5023
    .line 5024
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5025
    .line 5026
    .line 5027
    move-result-object v4

    .line 5028
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5029
    .line 5030
    .line 5031
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5032
    .line 5033
    .line 5034
    goto/16 :goto_49

    .line 5035
    .line 5036
    :cond_8f
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5037
    .line 5038
    .line 5039
    move-result-object v7

    .line 5040
    if-nez v7, :cond_90

    .line 5041
    .line 5042
    new-instance v5, Ljava/lang/StringBuilder;

    .line 5043
    .line 5044
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5045
    .line 5046
    .line 5047
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5048
    .line 5049
    .line 5050
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5051
    .line 5052
    .line 5053
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5054
    .line 5055
    .line 5056
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5057
    .line 5058
    .line 5059
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5060
    .line 5061
    .line 5062
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5063
    .line 5064
    .line 5065
    move-result-object v4

    .line 5066
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    .line 5068
    .line 5069
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5070
    .line 5071
    .line 5072
    move-result-object v4

    .line 5073
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    .line 5075
    .line 5076
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5077
    .line 5078
    .line 5079
    goto/16 :goto_49

    .line 5080
    .line 5081
    :cond_90
    invoke-static {v7}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    .line 5082
    .line 5083
    .line 5084
    move-result v9

    .line 5085
    if-gez v9, :cond_91

    .line 5086
    .line 5087
    new-instance v5, Ljava/lang/StringBuilder;

    .line 5088
    .line 5089
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5090
    .line 5091
    .line 5092
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5093
    .line 5094
    .line 5095
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5096
    .line 5097
    .line 5098
    const-string v8, "> with unknown uid \""

    .line 5099
    .line 5100
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5101
    .line 5102
    .line 5103
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5104
    .line 5105
    .line 5106
    const-string v7, "  in "

    .line 5107
    .line 5108
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5109
    .line 5110
    .line 5111
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5112
    .line 5113
    .line 5114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5115
    .line 5116
    .line 5117
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5118
    .line 5119
    .line 5120
    move-result-object v4

    .line 5121
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5122
    .line 5123
    .line 5124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5125
    .line 5126
    .line 5127
    move-result-object v4

    .line 5128
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    .line 5130
    .line 5131
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5132
    .line 5133
    .line 5134
    goto/16 :goto_49

    .line 5135
    .line 5136
    :cond_91
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 5137
    .line 5138
    .line 5139
    move-result-object v4

    .line 5140
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 5141
    .line 5142
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5143
    .line 5144
    .line 5145
    move-result-object v5

    .line 5146
    check-cast v5, Landroid/util/ArraySet;

    .line 5147
    .line 5148
    if-nez v5, :cond_92

    .line 5149
    .line 5150
    new-instance v5, Landroid/util/ArraySet;

    .line 5151
    .line 5152
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 5153
    .line 5154
    .line 5155
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 5156
    .line 5157
    invoke-virtual {v7, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5158
    .line 5159
    .line 5160
    :cond_92
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5161
    .line 5162
    .line 5163
    goto :goto_47

    .line 5164
    :cond_93
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5165
    .line 5166
    .line 5167
    :goto_47
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5168
    .line 5169
    .line 5170
    goto/16 :goto_49

    .line 5171
    .line 5172
    :pswitch_2c
    move-object/from16 v7, v34

    .line 5173
    .line 5174
    move-object/from16 v12, v38

    .line 5175
    .line 5176
    const/16 v24, 0x1

    .line 5177
    .line 5178
    if-eqz v18, :cond_95

    .line 5179
    .line 5180
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5181
    .line 5182
    .line 5183
    move-result-object v5

    .line 5184
    if-nez v5, :cond_94

    .line 5185
    .line 5186
    new-instance v5, Ljava/lang/StringBuilder;

    .line 5187
    .line 5188
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5189
    .line 5190
    .line 5191
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5192
    .line 5193
    .line 5194
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5195
    .line 5196
    .line 5197
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5198
    .line 5199
    .line 5200
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5201
    .line 5202
    .line 5203
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5204
    .line 5205
    .line 5206
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5207
    .line 5208
    .line 5209
    move-result-object v4

    .line 5210
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5211
    .line 5212
    .line 5213
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5214
    .line 5215
    .line 5216
    move-result-object v4

    .line 5217
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5218
    .line 5219
    .line 5220
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5221
    .line 5222
    .line 5223
    goto :goto_49

    .line 5224
    :cond_94
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 5225
    .line 5226
    .line 5227
    move-result-object v4

    .line 5228
    invoke-virtual {v1, v2, v4}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 5229
    .line 5230
    .line 5231
    goto :goto_49

    .line 5232
    :cond_95
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5233
    .line 5234
    .line 5235
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5236
    .line 5237
    .line 5238
    goto :goto_49

    .line 5239
    :pswitch_2d
    const/16 v24, 0x1

    .line 5240
    .line 5241
    if-eqz v15, :cond_97

    .line 5242
    .line 5243
    const-string/jumbo v5, "gid"

    .line 5244
    .line 5245
    .line 5246
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5247
    .line 5248
    .line 5249
    move-result-object v5

    .line 5250
    if-eqz v5, :cond_96

    .line 5251
    .line 5252
    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    .line 5253
    .line 5254
    .line 5255
    move-result v4

    .line 5256
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 5257
    .line 5258
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 5259
    .line 5260
    .line 5261
    move-result-object v4

    .line 5262
    iput-object v4, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 5263
    .line 5264
    goto :goto_48

    .line 5265
    :cond_96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 5266
    .line 5267
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5268
    .line 5269
    .line 5270
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5271
    .line 5272
    .line 5273
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5274
    .line 5275
    .line 5276
    const-string v7, "> without gid in "

    .line 5277
    .line 5278
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5279
    .line 5280
    .line 5281
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5282
    .line 5283
    .line 5284
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5285
    .line 5286
    .line 5287
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5288
    .line 5289
    .line 5290
    move-result-object v4

    .line 5291
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5292
    .line 5293
    .line 5294
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5295
    .line 5296
    .line 5297
    move-result-object v4

    .line 5298
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    .line 5300
    .line 5301
    goto :goto_48

    .line 5302
    :cond_97
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5303
    .line 5304
    .line 5305
    :goto_48
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5306
    .line 5307
    .line 5308
    :goto_49
    move-object/from16 v5, v23

    .line 5309
    .line 5310
    move/from16 v9, v24

    .line 5311
    .line 5312
    move-object/from16 v7, v25

    .line 5313
    .line 5314
    move/from16 v8, v26

    .line 5315
    .line 5316
    move/from16 v14, v29

    .line 5317
    .line 5318
    move/from16 v13, v30

    .line 5319
    .line 5320
    move/from16 v11, v33

    .line 5321
    .line 5322
    move/from16 v12, v35

    .line 5323
    .line 5324
    move/from16 v4, v40

    .line 5325
    .line 5326
    goto/16 :goto_e

    .line 5327
    .line 5328
    :catchall_2
    move-exception v0

    .line 5329
    move-object/from16 v25, v7

    .line 5330
    .line 5331
    goto/16 :goto_10

    .line 5332
    .line 5333
    :catch_8
    move-exception v0

    .line 5334
    move-object/from16 v23, v5

    .line 5335
    .line 5336
    move-object/from16 v25, v7

    .line 5337
    .line 5338
    goto/16 :goto_11

    .line 5339
    .line 5340
    :catch_9
    move-exception v0

    .line 5341
    move-object/from16 v23, v5

    .line 5342
    .line 5343
    move-object/from16 v25, v7

    .line 5344
    .line 5345
    goto/16 :goto_12

    .line 5346
    .line 5347
    :cond_98
    move-object/from16 v23, v5

    .line 5348
    .line 5349
    move-object/from16 v25, v7

    .line 5350
    .line 5351
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 5352
    .line 5353
    const-string v3, "No start tag found"

    .line 5354
    .line 5355
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 5356
    .line 5357
    .line 5358
    throw v2
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 5359
    :goto_4a
    :try_start_1b
    invoke-static {v6, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 5360
    .line 5361
    .line 5362
    :goto_4b
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5363
    .line 5364
    .line 5365
    goto :goto_4d

    .line 5366
    :catch_a
    move-exception v0

    .line 5367
    move-object v3, v5

    .line 5368
    move-object/from16 v25, v7

    .line 5369
    .line 5370
    move-object v2, v0

    .line 5371
    :goto_4c
    :try_start_1c
    invoke-static {v6, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 5372
    .line 5373
    .line 5374
    goto :goto_4b

    .line 5375
    :goto_4d
    const-string/jumbo v2, "com.samsung.feature.support_repair_mode"

    .line 5376
    .line 5377
    .line 5378
    const/4 v3, 0x0

    .line 5379
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5380
    .line 5381
    .line 5382
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 5383
    .line 5384
    .line 5385
    move-result v2

    .line 5386
    if-eqz v2, :cond_99

    .line 5387
    .line 5388
    const-string v2, "android.software.file_based_encryption"

    .line 5389
    .line 5390
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5391
    .line 5392
    .line 5393
    const-string v2, "android.software.securely_removes_users"

    .line 5394
    .line 5395
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5396
    .line 5397
    .line 5398
    :cond_99
    invoke-static {}, Landroid/os/storage/StorageManager;->hasAdoptable()Z

    .line 5399
    .line 5400
    .line 5401
    move-result v2

    .line 5402
    if-eqz v2, :cond_9a

    .line 5403
    .line 5404
    const-string v2, "android.software.adoptable_storage"

    .line 5405
    .line 5406
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5407
    .line 5408
    .line 5409
    :cond_9a
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 5410
    .line 5411
    .line 5412
    move-result v2

    .line 5413
    if-eqz v2, :cond_9b

    .line 5414
    .line 5415
    const-string v2, "android.hardware.ram.low"

    .line 5416
    .line 5417
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5418
    .line 5419
    .line 5420
    goto :goto_4e

    .line 5421
    :cond_9b
    const-string v2, "android.hardware.ram.normal"

    .line 5422
    .line 5423
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5424
    .line 5425
    .line 5426
    :goto_4e
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->getVersion()I

    .line 5427
    .line 5428
    .line 5429
    move-result v2

    .line 5430
    if-lez v2, :cond_9c

    .line 5431
    .line 5432
    const-string v4, "android.software.incremental_delivery"

    .line 5433
    .line 5434
    invoke-virtual {v1, v2, v4}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5435
    .line 5436
    .line 5437
    :cond_9c
    const-string v2, "android.software.app_enumeration"

    .line 5438
    .line 5439
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5440
    .line 5441
    .line 5442
    sget v2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 5443
    .line 5444
    const/16 v4, 0x1d

    .line 5445
    .line 5446
    if-lt v2, v4, :cond_9d

    .line 5447
    .line 5448
    const-string v2, "android.software.ipsec_tunnels"

    .line 5449
    .line 5450
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5451
    .line 5452
    .line 5453
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemConfig;->enableIpSecTunnelMigrationOnVsrUAndAbove()V

    .line 5454
    .line 5455
    .line 5456
    invoke-static {}, Lcom/android/server/SystemConfig;->isErofsSupported()Z

    .line 5457
    .line 5458
    .line 5459
    move-result v2

    .line 5460
    if-eqz v2, :cond_9f

    .line 5461
    .line 5462
    const/4 v2, 0x5

    .line 5463
    const/16 v4, 0xa

    .line 5464
    .line 5465
    invoke-static {v2, v4}, Lcom/android/server/SystemConfig;->isKernelVersionAtLeast(II)Z

    .line 5466
    .line 5467
    .line 5468
    move-result v2

    .line 5469
    if-eqz v2, :cond_9e

    .line 5470
    .line 5471
    const-string v2, "android.software.erofs"

    .line 5472
    .line 5473
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5474
    .line 5475
    .line 5476
    goto :goto_4f

    .line 5477
    :cond_9e
    const/16 v2, 0x13

    .line 5478
    .line 5479
    const/4 v4, 0x4

    .line 5480
    invoke-static {v4, v2}, Lcom/android/server/SystemConfig;->isKernelVersionAtLeast(II)Z

    .line 5481
    .line 5482
    .line 5483
    move-result v2

    .line 5484
    if-eqz v2, :cond_9f

    .line 5485
    .line 5486
    const-string v2, "android.software.erofs_legacy"

    .line 5487
    .line 5488
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5489
    .line 5490
    .line 5491
    :cond_9f
    :goto_4f
    iget-object v2, v1, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 5492
    .line 5493
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 5494
    .line 5495
    .line 5496
    move-result-object v2

    .line 5497
    :cond_a0
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 5498
    .line 5499
    .line 5500
    move-result v3

    .line 5501
    if-eqz v3, :cond_a1

    .line 5502
    .line 5503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 5504
    .line 5505
    .line 5506
    move-result-object v3

    .line 5507
    check-cast v3, Ljava/lang/String;

    .line 5508
    .line 5509
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 5510
    .line 5511
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5512
    .line 5513
    .line 5514
    move-result-object v4

    .line 5515
    if-eqz v4, :cond_a0

    .line 5516
    .line 5517
    const-string v4, "Removed unavailable feature "

    .line 5518
    .line 5519
    invoke-static {v4, v3, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5520
    .line 5521
    .line 5522
    goto :goto_50

    .line 5523
    :cond_a1
    return-void

    .line 5524
    :goto_51
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5525
    .line 5526
    .line 5527
    throw v1

    .line 5528
    :catch_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5529
    .line 5530
    const-string v2, "Couldn\'t find or open permissions file "

    .line 5531
    .line 5532
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5533
    .line 5534
    .line 5535
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5536
    .line 5537
    .line 5538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5539
    .line 5540
    .line 5541
    move-result-object v1

    .line 5542
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    .line 5544
    .line 5545
    return-void

    .line 5546
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dd2a531 -> :sswitch_2e
        -0x799cf7fb -> :sswitch_2d
        -0x70348497 -> :sswitch_2c
        -0x5e5059f9 -> :sswitch_2b
        -0x5cae799f -> :sswitch_2a
        -0x571c3164 -> :sswitch_29
        -0x52df1221 -> :sswitch_28
        -0x3bf447ba -> :sswitch_27
        -0x3a731403 -> :sswitch_26
        -0x3a5d850a -> :sswitch_25
        -0x31681987 -> :sswitch_24
        -0x2650a45c -> :sswitch_23
        -0x25ce2480 -> :sswitch_22
        -0x254be711 -> :sswitch_21
        -0x216bddfc -> :sswitch_20
        -0x1eda3a31 -> :sswitch_1f
        -0x8f1dbba -> :sswitch_1e
        -0x5838d3 -> :sswitch_1d
        0x4534aef -> :sswitch_1c
        0x5e0f67f -> :sswitch_1b
        0x9e824bb -> :sswitch_1a
        0xa8c0e1c -> :sswitch_19
        0xabd1ca4 -> :sswitch_18
        0x14b2939f -> :sswitch_17
        0x155483f3 -> :sswitch_16
        0x18b029e2 -> :sswitch_15
        0x2eaeaf6b -> :sswitch_14
        0x2fd2a088 -> :sswitch_13
        0x38d2156d -> :sswitch_12
        0x39bdfa11 -> :sswitch_11
        0x3be88f10 -> :sswitch_10
        0x3e3a690e -> :sswitch_f
        0x3e631f68 -> :sswitch_e
        0x4293dfd1 -> :sswitch_d
        0x42d78426 -> :sswitch_c
        0x4bac0262 -> :sswitch_b
        0x505286c4 -> :sswitch_a
        0x5d6b90a8 -> :sswitch_9
        0x6159b995 -> :sswitch_8
        0x66b52049 -> :sswitch_7
        0x66bbd981 -> :sswitch_6
        0x68390181 -> :sswitch_5
        0x6ae33fca -> :sswitch_4
        0x6edf61fd -> :sswitch_3
        0x6f313418 -> :sswitch_2
        0x7485cbdd -> :sswitch_1
        0x77e2fb80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final readPublicLibrariesListFile(Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "SystemConfig"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 4
    .line 5
    new-instance v2, Ljava/io/FileReader;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const-string v3, "#"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, " "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    aget-object v2, v2, v3

    .line 46
    .line 47
    new-instance v4, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 48
    .line 49
    new-array v3, v3, [Ljava/lang/String;

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    invoke-direct {v4, v2, v2, v3, v5}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 56
    .line 57
    iget-object v3, v4, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception v1

    .line 76
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 80
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "Failed to read public libraries file "

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, " does not exist"

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :goto_4
    return-void
.end method

.method public final readPublicNativeLibrariesList()V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/vendor/etc/public.libraries.txt"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/SystemConfig;->readPublicLibrariesListFile(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "/system_ext/etc"

    .line 12
    .line 13
    const-string v1, "/product/etc"

    .line 14
    .line 15
    const-string v2, "/system/etc"

    .line 16
    .line 17
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_0
    const/4 v3, 0x3

    .line 24
    if-ge v2, v3, :cond_3

    .line 25
    .line 26
    aget-object v3, v0, v2

    .line 27
    .line 28
    new-instance v4, Ljava/io/File;

    .line 29
    .line 30
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    const-string v4, "Public libraries file folder missing: "

    .line 40
    .line 41
    const-string v5, "SystemConfig"

    .line 42
    .line 43
    invoke-static {v4, v3, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    array-length v3, v4

    .line 48
    move v5, v1

    .line 49
    :goto_1
    if-ge v5, v3, :cond_2

    .line 50
    .line 51
    aget-object v6, v4, v5

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const-string/jumbo v8, "public.libraries-"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_1

    .line 65
    .line 66
    const-string v8, ".txt"

    .line 67
    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0, v6}, Lcom/android/server/SystemConfig;->readPublicLibrariesListFile(Ljava/io/File;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    return-void
.end method

.method public final readSplitPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "name"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, " at "

    .line 10
    .line 11
    const-string v4, "SystemConfig"

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "<split-permission> without name in "

    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const-string/jumbo v5, "targetSdk"

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, "<split-permission> targetSdk not an integer in "

    .line 67
    .line 68
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    const/16 p2, 0x2711

    .line 96
    .line 97
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_4

    .line 111
    .line 112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const-string/jumbo v7, "new-permission"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_3

    .line 124
    .line 125
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_2

    .line 134
    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string/jumbo v7, "name is required for <new-permission> in "

    .line 138
    .line 139
    .line 140
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_5

    .line 171
    .line 172
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 173
    .line 174
    new-instance p1, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 175
    .line 176
    invoke-direct {p1, v2, v5, p2}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :cond_5
    return-void
.end method
