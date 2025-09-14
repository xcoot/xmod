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

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

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

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "SystemConfig"

    .line 12
    const-string v1, "SystemConfig is being accessed by a process other than system_server."

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_0
    const-class v0, Lcom/android/server/SystemConfig;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    .line 22
    if-nez v1, :cond_1

    .line 24
    new-instance v1, Lcom/android/server/SystemConfig;

    .line 26
    invoke-direct {v1}, Lcom/android/server/SystemConfig;-><init>()V

    .line 29
    sput-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

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

    .line 4
    new-array v2, v0, [Ljava/lang/String;

    .line 6
    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 9
    move-result-object v1

    .line 10
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    .line 12
    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

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

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\\."

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

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

    .line 16
    return v3

    .line 17
    :cond_0
    :try_start_0
    aget-object v1, v0, v3

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aget-object v0, v0, v2

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-gt v1, p0, :cond_1

    .line 32
    if-ne v1, p0, :cond_2

    .line 34
    if-lt v0, p1, :cond_2

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

    .line 3
    const-string v1, "<"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p1, "> not allowed in partition of "

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, " at "

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    const-string p1, "SystemConfig"

    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public static parseEnhancedConfirmationTrustedPackage(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SignedPackage;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 5
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    const-string v3, " at "

    .line 15
    const-string v4, "<"

    .line 17
    const-string v5, "SystemConfig"

    .line 19
    if-eqz v2, :cond_0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p1, "> without package "

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object v0

    .line 55
    :cond_0
    const-string/jumbo v2, "sha256-cert-digest"

    .line 58
    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string p1, "> without sha256-cert-digest in "

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v0

    .line 102
    :cond_1
    :try_start_0
    new-instance v6, Landroid/content/pm/Signature;

    .line 104
    const-string v7, ":"

    .line 106
    const-string v8, ""

    .line 108
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    invoke-direct {v6, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 118
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    new-instance p1, Landroid/content/pm/SignedPackage;

    .line 121
    invoke-direct {p1, v1, p0}, Landroid/content/pm/SignedPackage;-><init>(Ljava/lang/String;[B)V

    .line 124
    return-object p1

    .line 125
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string p1, "> with invalid sha256-cert-digest in "

    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p0

    .line 155
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object v0
.end method

.method public static readInstallInUserType(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    const-string v3, "SystemConfig"

    .line 15
    if-eqz v2, :cond_0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo p2, "package is required for <install-in-user-type> in "

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 40
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/util/Set;

    .line 46
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/Set;

    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 55
    move-result v5

    .line 56
    :goto_0
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_7

    .line 62
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 65
    move-result-object v6

    .line 66
    const-string/jumbo v7, "install-in"

    .line 69
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v7

    .line 73
    const-string/jumbo v8, "user-type is required for <install-in-user-type> in "

    .line 76
    const-string/jumbo v9, "user-type"

    .line 79
    if-eqz v7, :cond_3

    .line 81
    invoke-interface {p0, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v6

    .line 85
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_1

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v6

    .line 107
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    if-nez v2, :cond_2

    .line 113
    new-instance v2, Landroid/util/ArraySet;

    .line 115
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 118
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    goto :goto_0

    .line 125
    :cond_3
    const-string/jumbo v7, "do-not-install-in"

    .line 128
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_6

    .line 134
    invoke-interface {p0, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v6

    .line 138
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_4

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v6

    .line 160
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    goto :goto_0

    .line 164
    :cond_4
    if-nez v4, :cond_5

    .line 166
    new-instance v4, Landroid/util/ArraySet;

    .line 168
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 171
    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_5
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    goto :goto_0

    .line 178
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 180
    const-string/jumbo v7, "unrecognized tag in <install-in-user-type> in "

    .line 183
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v6

    .line 197
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    goto/16 :goto_0

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

    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    const-string v3, "SystemConfig"

    .line 15
    if-eqz v2, :cond_0

    .line 17
    const-string/jumbo p1, "package is required for <"

    .line 20
    const-string v0, "> in "

    .line 22
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/util/ArrayMap;

    .line 47
    if-nez p2, :cond_1

    .line 49
    new-instance p2, Landroid/util/ArrayMap;

    .line 51
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 54
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 57
    move-result v2

    .line 58
    :cond_2
    :goto_0
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_6

    .line 64
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    const-string/jumbo v5, "permission"

    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v5

    .line 75
    const-string/jumbo v6, "name"

    .line 78
    if-eqz v5, :cond_4

    .line 80
    invoke-interface {p0, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_3

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v5, "name is required for <permission> in "

    .line 95
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    invoke-virtual {p2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    const-string/jumbo v5, "deny-permission"

    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_2

    .line 128
    invoke-interface {p0, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v4

    .line 132
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_5

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v5, "name is required for <deny-permission> in "

    .line 143
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v4

    .line 157
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    goto :goto_0

    .line 161
    :cond_5
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    invoke-virtual {p2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    goto :goto_0

    .line 167
    :cond_6
    invoke-virtual {p1, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method


# virtual methods
.method public final addFeature(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Landroid/content/pm/FeatureInfo;

    .line 13
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 16
    iput-object p2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 18
    iput p1, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 20
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p0, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p0

    .line 32
    iput p0, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 34
    :goto_0
    return-void
.end method

.method public final enableIpSecTunnelMigrationOnVsrUAndAbove()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.vendor.api_level"

    .line 4
    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x21

    .line 12
    if-le v0, v1, :cond_0

    .line 14
    const-string v0, "android.software.ipsec_tunnel_migration"

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public final getAppMetadataFilePaths()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mAppMetadataFilePaths:Landroid/util/ArrayMap;

    .line 3
    return-object p0
.end method

.method public final getInitialNonStoppedSystemPackages()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 3
    return-object p0
.end method

.method public final getOverlayConfigSignaturePackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 13
    :goto_0
    return-object p0
.end method

.method public final readAllPermissions()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "SystemConfig"

    .line 5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 8
    move-result-object v3

    .line 9
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v4, "etc"

    .line 16
    const-string/jumbo v5, "sysconfig"

    .line 19
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 22
    move-result-object v6

    .line 23
    invoke-static {v0, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 26
    move-result-object v0

    .line 27
    const/4 v6, -0x1

    .line 28
    invoke-virtual {v1, v3, v0, v6}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 31
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v7, "permissions"

    .line 38
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 41
    move-result-object v8

    .line 42
    invoke-static {v0, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v3, v0, v6}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 49
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 51
    const/16 v8, 0x1b

    .line 53
    if-gt v0, v8, :cond_0

    .line 55
    const/16 v8, 0xc9f

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/16 v8, 0xc93

    .line 60
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 63
    move-result-object v9

    .line 64
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 67
    move-result-object v10

    .line 68
    invoke-static {v9, v10}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 75
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 78
    move-result-object v9

    .line 79
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 82
    move-result-object v10

    .line 83
    invoke-static {v9, v10}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 90
    const-string/jumbo v9, "ro.boot.product.vendor.sku"

    .line 93
    const-string v10, ""

    .line 95
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 102
    move-result v11

    .line 103
    const-string/jumbo v12, "sku_"

    .line 106
    if-nez v11, :cond_1

    .line 108
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v9

    .line 112
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 115
    move-result-object v11

    .line 116
    filled-new-array {v4, v5, v9}, [Ljava/lang/String;

    .line 119
    move-result-object v13

    .line 120
    invoke-static {v11, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v1, v3, v11, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 127
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 130
    move-result-object v11

    .line 131
    filled-new-array {v4, v7, v9}, [Ljava/lang/String;

    .line 134
    move-result-object v9

    .line 135
    invoke-static {v11, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 142
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 145
    move-result-object v9

    .line 146
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 149
    move-result-object v11

    .line 150
    invoke-static {v9, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 153
    move-result-object v9

    .line 154
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 157
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 160
    move-result-object v9

    .line 161
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 164
    move-result-object v11

    .line 165
    invoke-static {v9, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 168
    move-result-object v9

    .line 169
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 172
    const-string/jumbo v9, "ro.boot.product.hardware.sku"

    .line 175
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v11

    .line 179
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 182
    move-result v13

    .line 183
    if-nez v13, :cond_2

    .line 185
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v11

    .line 189
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 192
    move-result-object v13

    .line 193
    filled-new-array {v4, v5, v11}, [Ljava/lang/String;

    .line 196
    move-result-object v14

    .line 197
    invoke-static {v13, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 200
    move-result-object v13

    .line 201
    invoke-virtual {v1, v3, v13, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 204
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 207
    move-result-object v13

    .line 208
    filled-new-array {v4, v7, v11}, [Ljava/lang/String;

    .line 211
    move-result-object v11

    .line 212
    invoke-static {v13, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 215
    move-result-object v11

    .line 216
    invoke-virtual {v1, v3, v11, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 219
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    .line 222
    move-result-object v8

    .line 223
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 226
    move-result-object v11

    .line 227
    invoke-static {v8, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 230
    move-result-object v8

    .line 231
    const/16 v11, 0x4a1

    .line 233
    invoke-virtual {v1, v3, v8, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 236
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    .line 239
    move-result-object v8

    .line 240
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 243
    move-result-object v13

    .line 244
    invoke-static {v8, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {v1, v3, v8, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 251
    const/16 v8, 0x1e

    .line 253
    if-gt v0, v8, :cond_3

    .line 255
    move v8, v6

    .line 256
    goto :goto_1

    .line 257
    :cond_3
    const/16 v0, 0xfdf

    .line 259
    move v8, v0

    .line 260
    :goto_1
    const-string v11, "Got exception parsing permissions."

    .line 262
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 265
    move-result-object v0

    .line 266
    const-string v13, "aer_product_name.xml"

    .line 268
    filled-new-array {v4, v13}, [Ljava/lang/String;

    .line 271
    move-result-object v13

    .line 272
    invoke-static {v0, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 275
    move-result-object v0

    .line 276
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    .line 278
    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 281
    new-instance v15, Ljava/lang/StringBuilder;

    .line 283
    const-string v6, "Reading aerProductName from "

    .line 285
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v6

    .line 295
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 301
    move-result v6

    .line 302
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 305
    move-result-object v15

    .line 306
    invoke-interface {v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 309
    :goto_2
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 312
    move-result v13
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    move-object/from16 v16, v9

    .line 315
    const/4 v9, 0x2

    .line 316
    if-eq v13, v9, :cond_5

    .line 318
    const/4 v9, 0x1

    .line 319
    if-eq v13, v9, :cond_4

    .line 321
    move-object/from16 v9, v16

    .line 323
    goto :goto_2

    .line 324
    :cond_4
    const/4 v9, 0x2

    .line 325
    :cond_5
    if-ne v13, v9, :cond_e

    .line 327
    :try_start_2
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 330
    move-result-object v9

    .line 331
    const-string/jumbo v13, "device"

    .line 334
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    move-result v9

    .line 338
    if-eqz v9, :cond_d

    .line 340
    :goto_3
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 343
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

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

    .line 350
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 353
    move-object/from16 v18, v10

    .line 355
    move-object/from16 v17, v12

    .line 357
    goto/16 :goto_e

    .line 359
    :cond_6
    :try_start_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 362
    move-result-object v9

    .line 363
    if-nez v9, :cond_7

    .line 365
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 368
    goto :goto_3

    .line 369
    :catchall_0
    move-exception v0

    .line 370
    goto/16 :goto_d

    .line 372
    :catch_0
    move-exception v0

    .line 373
    :goto_4
    move-object/from16 v18, v10

    .line 375
    move-object/from16 v17, v12

    .line 377
    goto/16 :goto_a

    .line 379
    :catch_1
    move-exception v0

    .line 380
    :goto_5
    move-object/from16 v18, v10

    .line 382
    move-object/from16 v17, v12

    .line 384
    goto/16 :goto_c

    .line 386
    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 389
    move-result v13
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    move-object/from16 v17, v12

    .line 392
    const v12, -0x12723311

    .line 395
    move-object/from16 v18, v10

    .line 397
    const-string v10, " at "

    .line 399
    if-eq v13, v12, :cond_9

    .line 401
    :cond_8
    move/from16 v19, v6

    .line 403
    goto :goto_8

    .line 404
    :cond_9
    :try_start_4
    const-string/jumbo v12, "product"

    .line 407
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    move-result v12

    .line 411
    if-eqz v12, :cond_8

    .line 413
    const-string/jumbo v12, "name"

    .line 416
    const/4 v13, 0x0

    .line 417
    invoke-interface {v15, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    move-result-object v12

    .line 421
    if-nez v6, :cond_a

    .line 423
    move/from16 v19, v6

    .line 425
    const/4 v6, 0x1

    .line 426
    goto :goto_6

    .line 427
    :cond_a
    move/from16 v19, v6

    .line 429
    const-string/jumbo v6, "notLowRam"

    .line 432
    invoke-interface {v15, v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    move-result-object v6

    .line 436
    const-string/jumbo v13, "true"

    .line 439
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    move-result v6

    .line 443
    const/4 v13, 0x1

    .line 444
    xor-int/2addr v6, v13

    .line 445
    :goto_6
    if-nez v12, :cond_b

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    .line 449
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    const-string v12, "<"

    .line 454
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v9, "> without name in "

    .line 462
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 474
    move-result-object v9

    .line 475
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    move-result-object v6

    .line 482
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    goto :goto_7

    .line 486
    :catch_2
    move-exception v0

    .line 487
    goto/16 :goto_a

    .line 489
    :catch_3
    move-exception v0

    .line 490
    goto/16 :goto_c

    .line 492
    :cond_b
    if-eqz v6, :cond_c

    .line 494
    const-string/jumbo v6, "ro.product.name"

    .line 497
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    move-result-object v6

    .line 501
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    move-result v6

    .line 505
    if-eqz v6, :cond_c

    .line 507
    const/4 v6, 0x1

    .line 508
    iput-boolean v6, v1, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 510
    :cond_c
    :goto_7
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 513
    goto :goto_9

    .line 514
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 516
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    const-string v12, "Tag "

    .line 521
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v9, " is unknown in "

    .line 529
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 541
    move-result-object v9

    .line 542
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    move-result-object v6

    .line 549
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 555
    :goto_9
    move-object/from16 v12, v17

    .line 557
    move-object/from16 v10, v18

    .line 559
    move/from16 v6, v19

    .line 561
    goto/16 :goto_3

    .line 563
    :cond_d
    move-object/from16 v18, v10

    .line 565
    move-object/from16 v17, v12

    .line 567
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    .line 569
    new-instance v9, Ljava/lang/StringBuilder;

    .line 571
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    const-string v10, "Unexpected start tag in "

    .line 576
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    const-string v0, ": found "

    .line 584
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v0, ", expected \'product\'"

    .line 596
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    move-result-object v0

    .line 603
    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 606
    throw v6

    .line 607
    :cond_e
    move-object/from16 v18, v10

    .line 609
    move-object/from16 v17, v12

    .line 611
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 613
    const-string v6, "No start tag found"

    .line 615
    invoke-direct {v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

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

    .line 622
    goto/16 :goto_4

    .line 624
    :catch_5
    move-exception v0

    .line 625
    move-object/from16 v16, v9

    .line 627
    goto/16 :goto_5

    .line 629
    :goto_a
    :try_start_5
    invoke-static {v2, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 632
    :goto_b
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 635
    goto :goto_e

    .line 636
    :goto_c
    :try_start_6
    invoke-static {v2, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 639
    goto :goto_b

    .line 640
    :goto_d
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 643
    throw v0

    .line 644
    :catch_6
    move-object/from16 v16, v9

    .line 646
    move-object/from16 v18, v10

    .line 648
    move-object/from16 v17, v12

    .line 650
    new-instance v6, Ljava/lang/StringBuilder;

    .line 652
    const-string v9, "Couldn\'t find or open aerProductName file "

    .line 654
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    move-result-object v0

    .line 664
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_e
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 670
    move-result-object v0

    .line 671
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 674
    move-result-object v6

    .line 675
    invoke-static {v0, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 678
    move-result-object v0

    .line 679
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 682
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 685
    move-result-object v0

    .line 686
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 689
    move-result-object v6

    .line 690
    invoke-static {v0, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 697
    const-string/jumbo v0, "ro.boot.hardware.sku"

    .line 700
    move-object/from16 v6, v18

    .line 702
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 709
    move-result v9

    .line 710
    if-nez v9, :cond_f

    .line 712
    move-object/from16 v9, v17

    .line 714
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 717
    move-result-object v0

    .line 718
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 721
    move-result-object v9

    .line 722
    filled-new-array {v4, v5, v0}, [Ljava/lang/String;

    .line 725
    move-result-object v10

    .line 726
    invoke-static {v9, v10}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 729
    move-result-object v9

    .line 730
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 733
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 736
    move-result-object v9

    .line 737
    filled-new-array {v4, v7, v0}, [Ljava/lang/String;

    .line 740
    move-result-object v0

    .line 741
    invoke-static {v9, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 748
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 751
    move-result-object v0

    .line 752
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 755
    move-result-object v8

    .line 756
    invoke-static {v0, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 759
    move-result-object v0

    .line 760
    const/4 v8, -0x1

    .line 761
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 764
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 767
    move-result-object v0

    .line 768
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 771
    move-result-object v9

    .line 772
    invoke-static {v0, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 775
    move-result-object v0

    .line 776
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 779
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 782
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 785
    move-result-object v0

    .line 786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 789
    move-result v8

    .line 790
    const-string/jumbo v9, "carrier"

    .line 793
    if-nez v8, :cond_10

    .line 795
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 798
    move-result-object v8

    .line 799
    filled-new-array {v4, v9, v0, v7}, [Ljava/lang/String;

    .line 802
    move-result-object v0

    .line 803
    invoke-static {v8, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 806
    move-result-object v0

    .line 807
    const/4 v8, 0x1

    .line 808
    invoke-virtual {v1, v3, v0, v8}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 811
    goto :goto_f

    .line 812
    :cond_10
    const/4 v8, 0x1

    .line 813
    :goto_f
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 816
    move-result-object v0

    .line 817
    filled-new-array {v9, v5}, [Ljava/lang/String;

    .line 820
    move-result-object v10

    .line 821
    invoke-static {v0, v10}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 824
    move-result-object v0

    .line 825
    const/4 v10, -0x1

    .line 826
    invoke-virtual {v1, v3, v0, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 829
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 832
    move-result-object v0

    .line 833
    filled-new-array {v9, v7}, [Ljava/lang/String;

    .line 836
    move-result-object v9

    .line 837
    invoke-static {v0, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {v1, v3, v0, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 844
    const-string/jumbo v0, "mdc.sys.omc_etcpath"

    .line 847
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 850
    move-result-object v9

    .line 851
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 854
    move-result v11

    .line 855
    if-nez v11, :cond_11

    .line 857
    new-instance v11, Ljava/io/File;

    .line 859
    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    filled-new-array {v5}, [Ljava/lang/String;

    .line 865
    move-result-object v5

    .line 866
    invoke-static {v11, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 869
    move-result-object v5

    .line 870
    invoke-virtual {v1, v3, v5, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 873
    filled-new-array {v7}, [Ljava/lang/String;

    .line 876
    move-result-object v5

    .line 877
    invoke-static {v11, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 880
    move-result-object v5

    .line 881
    invoke-virtual {v1, v3, v5, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 884
    :cond_11
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 886
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 889
    move-result v9

    .line 890
    if-nez v9, :cond_14

    .line 892
    const-string/jumbo v9, "eea"

    .line 895
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 898
    move-result v5

    .line 899
    if-eqz v5, :cond_14

    .line 901
    const-string/jumbo v5, "ro.boot.carrierid"

    .line 904
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 907
    move-result-object v5

    .line 908
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 911
    move-result v5

    .line 912
    if-eqz v5, :cond_12

    .line 914
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 917
    move-result-object v0

    .line 918
    goto :goto_10

    .line 919
    :cond_12
    const-string/jumbo v0, "mdc.sys.carrierid_etcpath"

    .line 922
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 925
    move-result-object v0

    .line 926
    :goto_10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 928
    const-string/jumbo v9, "omcEtcPathCid "

    .line 931
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    move-result-object v5

    .line 941
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 947
    move-result v5

    .line 948
    const-string/jumbo v9, "cid/permissions"

    .line 951
    const-string/jumbo v10, "cid/sysconfig"

    .line 954
    if-nez v5, :cond_13

    .line 956
    new-instance v5, Ljava/io/File;

    .line 958
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 961
    filled-new-array {v10}, [Ljava/lang/String;

    .line 964
    move-result-object v0

    .line 965
    invoke-static {v5, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 968
    move-result-object v0

    .line 969
    const/4 v11, -0x1

    .line 970
    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 973
    filled-new-array {v9}, [Ljava/lang/String;

    .line 976
    move-result-object v0

    .line 977
    invoke-static {v5, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 980
    move-result-object v0

    .line 981
    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 984
    goto :goto_11

    .line 985
    :cond_13
    const/4 v11, -0x1

    .line 986
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 989
    move-result-object v0

    .line 990
    filled-new-array {v4, v10}, [Ljava/lang/String;

    .line 993
    move-result-object v5

    .line 994
    invoke-static {v0, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 997
    move-result-object v0

    .line 998
    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 1001
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 1004
    move-result-object v0

    .line 1005
    filled-new-array {v4, v9}, [Ljava/lang/String;

    .line 1008
    move-result-object v5

    .line 1009
    invoke-static {v0, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 1012
    move-result-object v0

    .line 1013
    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 1016
    :cond_14
    :goto_11
    const-string v0, "SEServiceFeature running"

    .line 1018
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    move-object/from16 v5, v16

    .line 1023
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1026
    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1030
    move-result-object v0

    .line 1031
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    .line 1034
    move-result-object v5

    .line 1035
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1038
    move-result-object v6

    .line 1039
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1042
    move-result-object v5

    .line 1043
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1045
    const-string v9, "NFC SKU: "

    .line 1047
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    move-result-object v6

    .line 1057
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string/jumbo v6, "eSE_COS: "

    .line 1063
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const-string/jumbo v6, "hce"

    .line 1069
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1072
    move-result v6

    .line 1073
    const/4 v9, 0x0

    .line 1074
    if-eqz v6, :cond_15

    .line 1076
    const-string/jumbo v6, "ese"

    .line 1079
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1082
    move-result v0

    .line 1083
    if-eqz v0, :cond_15

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

    .line 1090
    const-string/jumbo v10, "com.samsung.android.nfc.gpfelica"

    .line 1093
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    move-result-object v6

    .line 1097
    check-cast v6, Landroid/content/pm/FeatureInfo;

    .line 1099
    if-eqz v6, :cond_16

    .line 1101
    const-string/jumbo v6, "support GP Felica"

    .line 1104
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 1112
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1115
    move-result v10

    .line 1116
    if-nez v10, :cond_18

    .line 1118
    const-string v10, "JP"

    .line 1120
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1123
    move-result v10

    .line 1124
    if-eqz v10, :cond_17

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

    .line 1132
    const-string/jumbo v12, "countryCode: "

    .line 1135
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1144
    move-result-object v5

    .line 1145
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1150
    const-string/jumbo v11, "isJapan: "

    .line 1153
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1162
    move-result-object v5

    .line 1163
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    if-eqz v0, :cond_19

    .line 1168
    if-eqz v10, :cond_1a

    .line 1170
    :cond_19
    if-eqz v6, :cond_1b

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

    .line 1178
    invoke-static {v0, v2, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1181
    const-string v0, "android.hardware.se.omapi.ese"

    .line 1183
    if-eqz v13, :cond_1c

    .line 1185
    invoke-virtual {v1, v9, v0}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 1188
    const-string v0, "add eSE secure element feature"

    .line 1190
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    goto :goto_17

    .line 1194
    :cond_1c
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 1196
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    move-result-object v0

    .line 1200
    if-eqz v0, :cond_1d

    .line 1202
    const-string v0, "Removed unavailable feature android.hardware.se.omapi.ese"

    .line 1204
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_1d
    const-string/jumbo v0, "removed eSE secure element feature: not support se"

    .line 1210
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :goto_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 1216
    move-result v0

    .line 1217
    const/16 v2, 0x3e8

    .line 1219
    if-ne v0, v2, :cond_21

    .line 1221
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->apexSignaturePermissionAllowlistEnabled()Z

    .line 1224
    move-result v0

    .line 1225
    if-eqz v0, :cond_1e

    .line 1227
    const/16 v0, 0x813

    .line 1229
    goto :goto_18

    .line 1230
    :cond_1e
    const/16 v0, 0x13

    .line 1232
    :goto_18
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 1235
    move-result-object v2

    .line 1236
    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    .line 1239
    move-result-object v2

    .line 1240
    array-length v5, v2

    .line 1241
    :goto_19
    if-ge v9, v5, :cond_21

    .line 1243
    aget-object v6, v2, v9

    .line 1245
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 1248
    move-result v8

    .line 1249
    if-nez v8, :cond_20

    .line 1251
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1254
    move-result-object v8

    .line 1255
    const-string v10, "@"

    .line 1257
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1260
    move-result v8

    .line 1261
    if-eqz v8, :cond_1f

    .line 1263
    goto :goto_1a

    .line 1264
    :cond_1f
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 1267
    move-result-object v8

    .line 1268
    invoke-static {v6, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 1271
    move-result-object v6

    .line 1272
    invoke-virtual {v1, v3, v6, v0}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 1275
    :cond_20
    :goto_1a
    add-int/lit8 v9, v9, 0x1

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

    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2, p3}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    .line 8
    move-result v0

    .line 9
    const-string v1, "File "

    .line 11
    if-eqz v0, :cond_2

    .line 13
    invoke-interface {p2}, Ljava/nio/file/Path;->getNameCount()I

    .line 16
    move-result v0

    .line 17
    invoke-interface {p3}, Ljava/nio/file/Path;->getNameCount()I

    .line 20
    move-result v2

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 23
    if-le v0, v2, :cond_1

    .line 25
    invoke-interface {p3}, Ljava/nio/file/Path;->getNameCount()I

    .line 28
    move-result p3

    .line 29
    invoke-interface {p2, p3}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 39
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    .line 41
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Landroid/util/ArrayMap;

    .line 47
    if-nez p3, :cond_0

    .line 49
    new-instance p3, Landroid/util/ArrayMap;

    .line 51
    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 54
    invoke-virtual {p0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    const-string/jumbo p0, "privapp-permissions"

    .line 60
    invoke-static {p1, p3, p0}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 63
    return-void

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string p2, " is in the APEX partition, but not inside a module."

    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string p2, " is not part of an APEX."

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0
.end method

.method public final readComponentOverrides(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 5
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, " at "

    .line 11
    const-string v3, "SystemConfig"

    .line 13
    if-nez v1, :cond_0

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "<component-override> without package in "

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 50
    move-result v4

    .line 51
    :cond_1
    :goto_0
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_6

    .line 57
    const-string/jumbo v5, "component"

    .line 60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_1

    .line 70
    const-string/jumbo v5, "class"

    .line 73
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    const-string/jumbo v6, "enabled"

    .line 80
    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    if-nez v5, :cond_2

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "<component> without class in "

    .line 90
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 114
    :cond_2
    if-nez v6, :cond_3

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "<component> without enabled in "

    .line 120
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 144
    :cond_3
    const-string v7, "."

    .line 146
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_4

    .line 152
    invoke-static {v1, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v5

    .line 156
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 159
    move-result-object v5

    .line 160
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 162
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Landroid/util/ArrayMap;

    .line 168
    if-nez v7, :cond_5

    .line 170
    new-instance v7, Landroid/util/ArrayMap;

    .line 172
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 175
    iget-object v8, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 177
    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_5
    const-string/jumbo v8, "false"

    .line 183
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v6

    .line 187
    xor-int/lit8 v6, v6, 0x1

    .line 189
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_6
    return-void
.end method

.method public final readOemPermissions(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    .line 5
    const-string/jumbo v0, "oem-permissions"

    .line 8
    invoke-static {p1, p0, v0}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public final readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 9
    const-string/jumbo v0, "perUser"

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 16
    move-result v0

    .line 17
    new-instance v1, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 19
    invoke-direct {v1, p2, v0}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    .line 22
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 30
    move-result p0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eq v0, v2, :cond_6

    .line 38
    const/4 v2, 0x3

    .line 39
    if-ne v0, v2, :cond_1

    .line 41
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 44
    move-result v3

    .line 45
    if-le v3, p0, :cond_6

    .line 47
    :cond_1
    if-eq v0, v2, :cond_0

    .line 49
    const/4 v2, 0x4

    .line 50
    if-ne v0, v2, :cond_2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const-string/jumbo v2, "group"

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_5

    .line 66
    const/4 v0, 0x0

    .line 67
    const-string/jumbo v2, "gid"

    .line 70
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    const-string v2, "SystemConfig"

    .line 76
    if-eqz v0, :cond_4

    .line 78
    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    .line 81
    move-result v3

    .line 82
    const/4 v4, -0x1

    .line 83
    if-eq v3, v4, :cond_3

    .line 85
    iget-object v0, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 87
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 90
    move-result-object v0

    .line 91
    iput-object v0, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const-string v3, "<group> with unknown gid \""

    .line 96
    const-string v4, " for permission "

    .line 98
    const-string v5, " in "

    .line 100
    invoke-static {v3, v0, v4, p2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object v0

    .line 104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    const-string v3, "<group> without gid at "

    .line 123
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 143
    goto :goto_0

    .line 144
    :cond_6
    return-void

    .line 145
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 147
    const-string p1, "Duplicate permission definition for "

    .line 149
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    throw p0
.end method

.method public readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "SystemConfig"

    .line 7
    if-eqz v0, :cond_9

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto/16 :goto_2

    .line 17
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    .line 20
    move-result v0

    .line 21
    const-string v2, " cannot be read"

    .line 23
    if-nez v0, :cond_1

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    const-string p1, "Directory "

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 46
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

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

    .line 55
    aget-object v6, v0, v5

    .line 57
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 60
    move-result v7

    .line 61
    if-nez v7, :cond_2

    .line 63
    goto/16 :goto_1

    .line 65
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 68
    move-result-object v7

    .line 69
    const-string/jumbo v8, "etc/permissions/platform.xml"

    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 78
    move-object v4, v6

    .line 79
    goto/16 :goto_1

    .line 81
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 84
    move-result-object v7

    .line 85
    const-string v8, ".xml"

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_4

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    .line 95
    const-string v8, "Non-xml file "

    .line 97
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v6, " in "

    .line 105
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    const-string v6, " directory, ignoring"

    .line 113
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v6

    .line 120
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    .line 127
    move-result v7

    .line 128
    if-nez v7, :cond_5

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    .line 132
    const-string v8, "Permissions library file "

    .line 134
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v6

    .line 147
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    goto :goto_1

    .line 151
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 153
    if-nez v7, :cond_6

    .line 155
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 158
    move-result-object v7

    .line 159
    const-string v8, "aer"

    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_6

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    .line 169
    const-string v9, "aer = "

    .line 171
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    iget-boolean v9, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 176
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    const-string v9, ", f.getPath().contains = "

    .line 181
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 191
    move-result v6

    .line 192
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v6

    .line 199
    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    goto :goto_1

    .line 203
    :cond_6
    invoke-virtual {p0, p1, v6, p3}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 206
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 208
    goto/16 :goto_0

    .line 210
    :cond_7
    if-eqz v4, :cond_8

    .line 212
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 215
    :cond_8
    return-void

    .line 216
    :cond_9
    :goto_2
    const/4 p0, -0x1

    .line 217
    if-ne p3, p0, :cond_a

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    .line 221
    const-string p1, "No directory "

    .line 223
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    const-string p1, ", skipping"

    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object p0

    .line 238
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_a
    return-void
.end method

.method public final readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    move/from16 v4, p3

    .line 9
    const-string v5, "Got exception parsing permissions."

    .line 11
    const-string v6, "SystemConfig"

    .line 13
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    .line 15
    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b

    .line 18
    new-instance v8, Ljava/lang/StringBuilder;

    .line 20
    const-string v9, "Reading permissions from "

    .line 22
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v8

    .line 32
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 38
    move-result v8

    .line 39
    :try_start_1
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 42
    :goto_0
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 45
    move-result v15

    .line 46
    const/4 v9, 0x1

    .line 47
    const/4 v11, 0x2

    .line 48
    if-eq v15, v11, :cond_0

    .line 50
    if-eq v15, v9, :cond_0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    if-ne v15, v11, :cond_98

    .line 55
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 58
    move-result-object v15

    .line 59
    const-string/jumbo v11, "permissions"

    .line 62
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v11
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 66
    if-nez v11, :cond_2

    .line 68
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 71
    move-result-object v11

    .line 72
    const-string/jumbo v15, "config"

    .line 75
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v9, "Unexpected start tag in "

    .line 91
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v3, ": found "

    .line 99
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v2, ", expected \'permissions\' or \'config\'"

    .line 111
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-direct {v4, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

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

    .line 126
    goto/16 :goto_51

    .line 128
    :catch_0
    move-exception v0

    .line 129
    move-object v2, v0

    .line 130
    move-object v3, v5

    .line 131
    move-object/from16 v25, v7

    .line 133
    goto/16 :goto_4a

    .line 135
    :catch_1
    move-exception v0

    .line 136
    move-object v2, v0

    .line 137
    move-object v3, v5

    .line 138
    move-object/from16 v25, v7

    .line 140
    goto/16 :goto_4c

    .line 142
    :cond_2
    :goto_1
    const/4 v11, -0x1

    .line 143
    if-ne v4, v11, :cond_3

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

    .line 150
    if-eqz v16, :cond_4

    .line 152
    move/from16 v16, v9

    .line 154
    goto :goto_3

    .line 155
    :cond_4
    const/16 v16, 0x0

    .line 157
    :goto_3
    and-int/lit8 v17, v4, 0x1

    .line 159
    if-eqz v17, :cond_5

    .line 161
    move/from16 v17, v9

    .line 163
    goto :goto_4

    .line 164
    :cond_5
    const/16 v17, 0x0

    .line 166
    :goto_4
    and-int/lit8 v18, v4, 0x4

    .line 168
    if-eqz v18, :cond_6

    .line 170
    move/from16 v18, v9

    .line 172
    goto :goto_5

    .line 173
    :cond_6
    const/16 v18, 0x0

    .line 175
    :goto_5
    and-int/lit8 v19, v4, 0x8

    .line 177
    if-eqz v19, :cond_7

    .line 179
    move/from16 v19, v9

    .line 181
    goto :goto_6

    .line 182
    :cond_7
    const/16 v19, 0x0

    .line 184
    :goto_6
    and-int/lit8 v20, v4, 0x10

    .line 186
    if-eqz v20, :cond_8

    .line 188
    move/from16 v20, v9

    .line 190
    goto :goto_7

    .line 191
    :cond_8
    const/16 v20, 0x0

    .line 193
    :goto_7
    and-int/lit16 v11, v4, 0x800

    .line 195
    if-eqz v11, :cond_9

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

    .line 202
    if-eqz v21, :cond_a

    .line 204
    move/from16 v21, v9

    .line 206
    goto :goto_9

    .line 207
    :cond_a
    const/16 v21, 0x0

    .line 209
    :goto_9
    and-int/lit8 v22, v4, 0x40

    .line 211
    if-eqz v22, :cond_b

    .line 213
    move/from16 v22, v9

    .line 215
    goto :goto_a

    .line 216
    :cond_b
    const/16 v22, 0x0

    .line 218
    :goto_a
    and-int/lit16 v12, v4, 0x80

    .line 220
    if-eqz v12, :cond_c

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

    .line 227
    if-eqz v13, :cond_d

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

    .line 234
    if-eqz v14, :cond_e

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

    .line 241
    if-eqz v4, :cond_f

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

    .line 249
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 252
    move-result v10
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 253
    if-ne v10, v9, :cond_10

    .line 255
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 258
    goto/16 :goto_4d

    .line 260
    :cond_10
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 263
    move-result-object v10
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 264
    if-nez v10, :cond_11

    .line 266
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 269
    goto :goto_e

    .line 270
    :cond_11
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 273
    move-result v23
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 274
    const-string/jumbo v9, "privapp-permissions"

    .line 277
    move-object/from16 v25, v7

    .line 279
    const-string/jumbo v7, "signature-permissions"

    .line 282
    sparse-switch v23, :sswitch_data_0

    .line 285
    move-object/from16 v23, v5

    .line 287
    goto/16 :goto_13

    .line 289
    :sswitch_0
    move-object/from16 v23, v5

    .line 291
    :try_start_8
    const-string v5, "allow-package-shareduid"

    .line 293
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_12

    .line 299
    const/16 v5, 0x29

    .line 301
    :goto_f
    move/from16 v26, v8

    .line 303
    goto/16 :goto_14

    .line 305
    :catchall_1
    move-exception v0

    .line 306
    :goto_10
    move-object v1, v0

    .line 307
    goto/16 :goto_51

    .line 309
    :catch_2
    move-exception v0

    .line 310
    :goto_11
    move-object v2, v0

    .line 311
    move-object/from16 v3, v23

    .line 313
    goto/16 :goto_4a

    .line 315
    :catch_3
    move-exception v0

    .line 316
    :goto_12
    move-object v2, v0

    .line 317
    move-object/from16 v3, v23

    .line 319
    goto/16 :goto_4c

    .line 321
    :sswitch_1
    move-object/from16 v23, v5

    .line 323
    const-string v5, "allow-implicit-broadcast"

    .line 325
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_12

    .line 331
    const/16 v5, 0xf

    .line 333
    goto :goto_f

    .line 334
    :sswitch_2
    move-object/from16 v23, v5

    .line 336
    const-string/jumbo v5, "required-package"

    .line 339
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_12

    .line 345
    const/16 v5, 0x2b

    .line 347
    goto :goto_f

    .line 348
    :sswitch_3
    move-object/from16 v23, v5

    .line 350
    const-string v5, "assign-uid-for-data-usage"

    .line 352
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    move-result v5

    .line 356
    if-eqz v5, :cond_12

    .line 358
    const/16 v5, 0x25

    .line 360
    goto :goto_f

    .line 361
    :sswitch_4
    move-object/from16 v23, v5

    .line 363
    const-string/jumbo v5, "overlay-config-signature"

    .line 366
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    move-result v5

    .line 370
    if-eqz v5, :cond_12

    .line 372
    const/16 v5, 0x21

    .line 374
    goto :goto_f

    .line 375
    :sswitch_5
    move-object/from16 v23, v5

    .line 377
    const-string/jumbo v5, "initial-package-state"

    .line 380
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    move-result v5

    .line 384
    if-eqz v5, :cond_12

    .line 386
    const/16 v5, 0x28

    .line 388
    goto :goto_f

    .line 389
    :sswitch_6
    move-object/from16 v23, v5

    .line 391
    const-string/jumbo v5, "bugreport-whitelisted"

    .line 394
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    move-result v5

    .line 398
    if-eqz v5, :cond_12

    .line 400
    move/from16 v26, v8

    .line 402
    const/16 v5, 0x1d

    .line 404
    goto/16 :goto_14

    .line 406
    :sswitch_7
    move-object/from16 v23, v5

    .line 408
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    move-result v5

    .line 412
    if-eqz v5, :cond_12

    .line 414
    const/16 v5, 0x17

    .line 416
    goto :goto_f

    .line 417
    :sswitch_8
    move-object/from16 v23, v5

    .line 419
    const-string/jumbo v5, "disabled-until-used-preinstalled-carrier-associated-app"

    .line 422
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    move-result v5

    .line 426
    if-eqz v5, :cond_12

    .line 428
    const/16 v5, 0x15

    .line 430
    goto/16 :goto_f

    .line 432
    :sswitch_9
    move-object/from16 v23, v5

    .line 434
    const-string/jumbo v5, "default-enabled-vr-app"

    .line 437
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    move-result v5

    .line 441
    if-eqz v5, :cond_12

    .line 443
    const/16 v5, 0x12

    .line 445
    goto/16 :goto_f

    .line 447
    :sswitch_a
    move-object/from16 v23, v5

    .line 449
    const-string v5, "app-data-isolation-whitelisted-app"

    .line 451
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_12

    .line 457
    const/16 v5, 0x1c

    .line 459
    goto/16 :goto_f

    .line 461
    :sswitch_b
    move-object/from16 v23, v5

    .line 463
    const-string/jumbo v5, "split-permission"

    .line 466
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    move-result v5

    .line 470
    if-eqz v5, :cond_12

    .line 472
    const/4 v5, 0x3

    .line 473
    goto/16 :goto_f

    .line 475
    :sswitch_c
    move-object/from16 v23, v5

    .line 477
    const-string v5, "app-link"

    .line 479
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    move-result v5

    .line 483
    if-eqz v5, :cond_12

    .line 485
    const/16 v5, 0x10

    .line 487
    goto/16 :goto_f

    .line 489
    :sswitch_d
    move-object/from16 v23, v5

    .line 491
    const-string/jumbo v5, "enhanced-confirmation-trusted-installer"

    .line 494
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 497
    move-result v5

    .line 498
    if-eqz v5, :cond_12

    .line 500
    const/16 v5, 0x2e

    .line 502
    goto/16 :goto_f

    .line 504
    :sswitch_e
    move-object/from16 v23, v5

    .line 506
    const-string/jumbo v5, "whitelisted-staged-installer"

    .line 509
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    move-result v5

    .line 513
    if-eqz v5, :cond_12

    .line 515
    const/16 v5, 0x23

    .line 517
    goto/16 :goto_f

    .line 519
    :sswitch_f
    move-object/from16 v23, v5

    .line 521
    const-string/jumbo v5, "oem-permissions"

    .line 524
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    move-result v5

    .line 528
    if-eqz v5, :cond_12

    .line 530
    const/16 v5, 0x19

    .line 532
    goto/16 :goto_f

    .line 534
    :sswitch_10
    move-object/from16 v23, v5

    .line 536
    const-string v5, "apex-library"

    .line 538
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    move-result v5

    .line 542
    if-eqz v5, :cond_12

    .line 544
    move/from16 v26, v8

    .line 546
    const/4 v5, 0x4

    .line 547
    goto/16 :goto_14

    .line 549
    :sswitch_11
    move-object/from16 v23, v5

    .line 551
    const-string/jumbo v5, "rollback-whitelisted-app"

    .line 554
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    move-result v5

    .line 558
    if-eqz v5, :cond_12

    .line 560
    const/16 v5, 0x22

    .line 562
    goto/16 :goto_f

    .line 564
    :sswitch_12
    move-object/from16 v23, v5

    .line 566
    const-string v5, "assign-permission"

    .line 568
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    move-result v5

    .line 572
    if-eqz v5, :cond_12

    .line 574
    move/from16 v26, v8

    .line 576
    const/4 v5, 0x2

    .line 577
    goto/16 :goto_14

    .line 579
    :sswitch_13
    move-object/from16 v23, v5

    .line 581
    const-string v5, "allow-in-data-usage-save"

    .line 583
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    move-result v5

    .line 587
    if-eqz v5, :cond_12

    .line 589
    move/from16 v26, v8

    .line 591
    const/16 v5, 0xa

    .line 593
    goto/16 :goto_14

    .line 595
    :sswitch_14
    move-object/from16 v23, v5

    .line 597
    const-string/jumbo v5, "update-ownership"

    .line 600
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    move-result v5

    .line 604
    if-eqz v5, :cond_12

    .line 606
    const/16 v5, 0x27

    .line 608
    goto/16 :goto_f

    .line 610
    :sswitch_15
    move-object/from16 v23, v5

    .line 612
    const-string v5, "allowed-vendor-apex"

    .line 614
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 617
    move-result v5

    .line 618
    if-eqz v5, :cond_12

    .line 620
    const/16 v5, 0x24

    .line 622
    goto/16 :goto_f

    .line 624
    :sswitch_16
    move-object/from16 v23, v5

    .line 626
    const-string/jumbo v5, "prevent-disable"

    .line 629
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    move-result v5

    .line 633
    if-eqz v5, :cond_12

    .line 635
    const/16 v5, 0x1e

    .line 637
    goto/16 :goto_f

    .line 639
    :sswitch_17
    move-object/from16 v23, v5

    .line 641
    const-string v5, "backup-transport-whitelisted-service"

    .line 643
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    move-result v5

    .line 647
    if-eqz v5, :cond_12

    .line 649
    const/16 v5, 0x14

    .line 651
    goto/16 :goto_f

    .line 653
    :sswitch_18
    move-object/from16 v23, v5

    .line 655
    const-string/jumbo v5, "hidden-api-whitelisted-app"

    .line 658
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    move-result v5

    .line 662
    if-eqz v5, :cond_12

    .line 664
    const/16 v5, 0x1a

    .line 666
    goto/16 :goto_f

    .line 668
    :sswitch_19
    move-object/from16 v23, v5

    .line 670
    const-string/jumbo v5, "require-strict-signature"

    .line 673
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    move-result v5

    .line 677
    if-eqz v5, :cond_12

    .line 679
    const/16 v5, 0x2c

    .line 681
    goto/16 :goto_f

    .line 683
    :sswitch_1a
    move-object/from16 v23, v5

    .line 685
    const-string/jumbo v5, "library"

    .line 688
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    move-result v5

    .line 692
    if-eqz v5, :cond_12

    .line 694
    move/from16 v26, v8

    .line 696
    const/4 v5, 0x5

    .line 697
    goto/16 :goto_14

    .line 699
    :sswitch_1b
    move-object/from16 v23, v5

    .line 701
    const-string/jumbo v5, "group"

    .line 704
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    move-result v5

    .line 708
    if-eqz v5, :cond_12

    .line 710
    move/from16 v26, v8

    .line 712
    const/4 v5, 0x0

    .line 713
    goto/16 :goto_14

    .line 715
    :sswitch_1c
    move-object/from16 v23, v5

    .line 717
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    move-result v5

    .line 721
    if-eqz v5, :cond_12

    .line 723
    const/16 v5, 0x18

    .line 725
    goto/16 :goto_f

    .line 727
    :sswitch_1d
    move-object/from16 v23, v5

    .line 729
    const-string/jumbo v5, "camera-privacy-allowlisted-app"

    .line 732
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    move-result v5

    .line 736
    if-eqz v5, :cond_12

    .line 738
    const/16 v5, 0xd

    .line 740
    goto/16 :goto_f

    .line 742
    :sswitch_1e
    move-object/from16 v23, v5

    .line 744
    const-string/jumbo v5, "install-in-user-type"

    .line 747
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 750
    move-result v5

    .line 751
    if-eqz v5, :cond_12

    .line 753
    const/16 v5, 0x1f

    .line 755
    goto/16 :goto_f

    .line 757
    :sswitch_1f
    move-object/from16 v23, v5

    .line 759
    const-string/jumbo v5, "permission"

    .line 762
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    move-result v5

    .line 766
    if-eqz v5, :cond_12

    .line 768
    move/from16 v26, v8

    .line 770
    const/4 v5, 0x1

    .line 771
    goto/16 :goto_14

    .line 773
    :sswitch_20
    move-object/from16 v23, v5

    .line 775
    const-string v5, "allow-ignore-location-settings"

    .line 777
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 780
    move-result v5

    .line 781
    if-eqz v5, :cond_12

    .line 783
    const/16 v5, 0xe

    .line 785
    goto/16 :goto_f

    .line 787
    :sswitch_21
    move-object/from16 v23, v5

    .line 789
    const-string v5, "asl-file"

    .line 791
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    move-result v5

    .line 795
    if-eqz v5, :cond_12

    .line 797
    const/16 v5, 0x2a

    .line 799
    goto/16 :goto_f

    .line 801
    :sswitch_22
    move-object/from16 v23, v5

    .line 803
    const-string v5, "bg-restriction-exemption"

    .line 805
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 808
    move-result v5

    .line 809
    if-eqz v5, :cond_12

    .line 811
    const/16 v5, 0x11

    .line 813
    goto/16 :goto_f

    .line 815
    :sswitch_23
    move-object/from16 v23, v5

    .line 817
    const-string v5, "allow-in-power-save-except-idle"

    .line 819
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 822
    move-result v5

    .line 823
    if-eqz v5, :cond_12

    .line 825
    const/16 v5, 0x8

    .line 827
    goto/16 :goto_f

    .line 829
    :sswitch_24
    move-object/from16 v23, v5

    .line 831
    const-string/jumbo v5, "unavailable-feature"

    .line 834
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 837
    move-result v5

    .line 838
    if-eqz v5, :cond_12

    .line 840
    const/4 v5, 0x7

    .line 841
    goto/16 :goto_f

    .line 843
    :sswitch_25
    move-object/from16 v23, v5

    .line 845
    const-string/jumbo v5, "feature"

    .line 848
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 851
    move-result v5

    .line 852
    if-eqz v5, :cond_12

    .line 854
    const/4 v5, 0x6

    .line 855
    goto/16 :goto_f

    .line 857
    :sswitch_26
    move-object/from16 v23, v5

    .line 859
    const-string v5, "allow-association"

    .line 861
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 864
    move-result v5

    .line 865
    if-eqz v5, :cond_12

    .line 867
    const/16 v5, 0x1b

    .line 869
    goto/16 :goto_f

    .line 871
    :sswitch_27
    move-object/from16 v23, v5

    .line 873
    const-string/jumbo v5, "disabled-until-used-preinstalled-carrier-app"

    .line 876
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    move-result v5

    .line 880
    if-eqz v5, :cond_12

    .line 882
    const/16 v5, 0x16

    .line 884
    goto/16 :goto_f

    .line 886
    :sswitch_28
    move-object/from16 v23, v5

    .line 888
    const-string/jumbo v5, "install-constraints-allowed"

    .line 891
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 894
    move-result v5

    .line 895
    if-eqz v5, :cond_12

    .line 897
    const/16 v5, 0x26

    .line 899
    goto/16 :goto_f

    .line 901
    :sswitch_29
    move-object/from16 v23, v5

    .line 903
    const-string/jumbo v5, "component-override"

    .line 906
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 909
    move-result v5

    .line 910
    if-eqz v5, :cond_12

    .line 912
    move/from16 v26, v8

    .line 914
    const/16 v5, 0x13

    .line 916
    goto :goto_14

    .line 917
    :sswitch_2a
    move-object/from16 v23, v5

    .line 919
    const-string/jumbo v5, "named-actor"

    .line 922
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 925
    move-result v5

    .line 926
    if-eqz v5, :cond_12

    .line 928
    const/16 v5, 0x20

    .line 930
    goto/16 :goto_f

    .line 932
    :sswitch_2b
    move-object/from16 v23, v5

    .line 934
    const-string v5, "allow-adas-location-settings"

    .line 936
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 939
    move-result v5

    .line 940
    if-eqz v5, :cond_12

    .line 942
    const/16 v5, 0xc

    .line 944
    goto/16 :goto_f

    .line 946
    :sswitch_2c
    move-object/from16 v23, v5

    .line 948
    const-string v5, "allow-in-power-save"

    .line 950
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 953
    move-result v5

    .line 954
    if-eqz v5, :cond_12

    .line 956
    const/16 v5, 0x9

    .line 958
    goto/16 :goto_f

    .line 960
    :sswitch_2d
    move-object/from16 v23, v5

    .line 962
    const-string v5, "allow-unthrottled-location"

    .line 964
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 967
    move-result v5

    .line 968
    if-eqz v5, :cond_12

    .line 970
    const/16 v5, 0xb

    .line 972
    goto/16 :goto_f

    .line 974
    :sswitch_2e
    move-object/from16 v23, v5

    .line 976
    const-string/jumbo v5, "enhanced-confirmation-trusted-package"

    .line 979
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 982
    move-result v5
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 983
    if-eqz v5, :cond_12

    .line 985
    const/16 v5, 0x2d

    .line 987
    goto/16 :goto_f

    .line 989
    :cond_12
    :goto_13
    move/from16 v26, v8

    .line 991
    const/4 v5, -0x1

    .line 992
    :goto_14
    const-string/jumbo v8, "null"

    .line 995
    move-object/from16 p3, v8

    .line 997
    const-string v8, "*"

    .line 999
    move-object/from16 v27, v8

    .line 1001
    const-string v8, "attributionTag"

    .line 1003
    move-object/from16 v28, v8

    .line 1005
    const-string v8, " and "

    .line 1007
    move/from16 v29, v14

    .line 1009
    const-string v14, " in "

    .line 1011
    move/from16 v30, v13

    .line 1013
    const-string v13, "> without uid in "

    .line 1015
    move-object/from16 v31, v9

    .line 1017
    const-string/jumbo v9, "uid"

    .line 1020
    move-object/from16 v32, v7

    .line 1022
    const-string v7, "> without valid package in "

    .line 1024
    move/from16 v33, v11

    .line 1026
    const-string v11, "> without name in "

    .line 1028
    move-object/from16 v34, v11

    .line 1030
    const-string/jumbo v11, "name"

    .line 1033
    move/from16 v35, v12

    .line 1035
    iget-object v12, v1, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 1037
    move-object/from16 v36, v12

    .line 1039
    const-string v12, "/"

    .line 1041
    move-object/from16 v37, v12

    .line 1043
    const-string v12, "> without package in "

    .line 1045
    move-object/from16 v38, v11

    .line 1047
    const-string/jumbo v11, "package"

    .line 1050
    move-object/from16 v39, v8

    .line 1052
    const-string v8, "<"

    .line 1054
    move/from16 v40, v4

    .line 1056
    const-string v4, " at "

    .line 1058
    move-object/from16 v41, v14

    .line 1060
    const/4 v14, 0x0

    .line 1061
    packed-switch v5, :pswitch_data_0

    .line 1064
    goto :goto_16

    .line 1065
    :pswitch_0
    :try_start_9
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 1068
    move-result v5

    .line 1069
    if-eqz v5, :cond_14

    .line 1071
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->parseEnhancedConfirmationTrustedPackage(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SignedPackage;

    .line 1074
    move-result-object v4

    .line 1075
    if-eqz v4, :cond_13

    .line 1077
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedPackages:Landroid/util/ArraySet;

    .line 1079
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_13
    :goto_15
    const/16 v24, 0x1

    .line 1084
    goto/16 :goto_49

    .line 1086
    :cond_14
    :pswitch_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 1089
    move-result v5

    .line 1090
    if-eqz v5, :cond_15

    .line 1092
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->parseEnhancedConfirmationTrustedPackage(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SignedPackage;

    .line 1095
    move-result-object v4

    .line 1096
    if-eqz v4, :cond_13

    .line 1098
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedInstallers:Landroid/util/ArraySet;

    .line 1100
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1103
    goto :goto_15

    .line 1104
    :cond_15
    :goto_16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1106
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    const-string v7, "Tag "

    .line 1111
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    const-string v7, " is unknown in "

    .line 1119
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1131
    move-result-object v4

    .line 1132
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    move-result-object v4

    .line 1139
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1145
    goto :goto_15

    .line 1146
    :pswitch_2
    invoke-static {}, Landroid/security/Flags;->extendVbChainToUpdatedApk()Z

    .line 1149
    move-result v5

    .line 1150
    if-eqz v5, :cond_13

    .line 1152
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1155
    move-result-object v5

    .line 1156
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1159
    move-result v9

    .line 1160
    if-eqz v9, :cond_16

    .line 1162
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1164
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1185
    move-result-object v4

    .line 1186
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    move-result-object v4

    .line 1193
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    goto :goto_15

    .line 1197
    :cond_16
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1199
    :try_start_a
    check-cast v4, Landroid/util/ArraySet;

    .line 1201
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1204
    goto :goto_15

    .line 1205
    :catch_4
    move-exception v0

    .line 1206
    goto/16 :goto_11

    .line 1208
    :catch_5
    move-exception v0

    .line 1209
    goto/16 :goto_12

    .line 1211
    :pswitch_3
    :try_start_b
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    move-result-object v5

    .line 1215
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1218
    move-result v7

    .line 1219
    if-eqz v7, :cond_17

    .line 1221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1223
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1226
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1244
    move-result-object v4

    .line 1245
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1251
    move-result-object v4

    .line 1252
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    goto/16 :goto_15

    .line 1257
    :cond_17
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mRequiredSystemPackages:Ljava/util/Set;
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1259
    :try_start_c
    check-cast v4, Landroid/util/ArraySet;

    .line 1261
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1264
    goto/16 :goto_15

    .line 1266
    :pswitch_4
    :try_start_d
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1269
    move-result-object v5

    .line 1270
    const-string/jumbo v9, "path"

    .line 1273
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1276
    move-result-object v9

    .line 1277
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1280
    move-result v11

    .line 1281
    if-eqz v11, :cond_18

    .line 1283
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1285
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1288
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1306
    move-result-object v4

    .line 1307
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1313
    move-result-object v4

    .line 1314
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    goto/16 :goto_15

    .line 1319
    :cond_18
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1322
    move-result v7

    .line 1323
    if-eqz v7, :cond_19

    .line 1325
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1327
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1330
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    const-string v7, "> without valid path in "

    .line 1338
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1350
    move-result-object v4

    .line 1351
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1357
    move-result-object v4

    .line 1358
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    goto/16 :goto_15

    .line 1363
    :cond_19
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAppMetadataFilePaths:Landroid/util/ArrayMap;

    .line 1365
    invoke-virtual {v4, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    goto/16 :goto_15

    .line 1370
    :pswitch_5
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1373
    move-result-object v5

    .line 1374
    const-string/jumbo v7, "shareduid"

    .line 1377
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1380
    move-result-object v7

    .line 1381
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1384
    move-result v9

    .line 1385
    if-eqz v9, :cond_1a

    .line 1387
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1389
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1392
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1410
    move-result-object v4

    .line 1411
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1417
    move-result-object v4

    .line 1418
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    goto/16 :goto_15

    .line 1423
    :cond_1a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1426
    move-result v9

    .line 1427
    if-eqz v9, :cond_1b

    .line 1429
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1431
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1434
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    const-string v7, "> without shareduid in "

    .line 1442
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1448
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1454
    move-result-object v4

    .line 1455
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1461
    move-result-object v4

    .line 1462
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    goto/16 :goto_15

    .line 1467
    :cond_1b
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mPackageToSharedUidAllowList:Landroid/util/ArrayMap;

    .line 1469
    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    goto/16 :goto_15

    .line 1474
    :pswitch_6
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1477
    move-result-object v5

    .line 1478
    const-string/jumbo v7, "stopped"

    .line 1481
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1484
    move-result-object v7

    .line 1485
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1488
    move-result v9

    .line 1489
    if-eqz v9, :cond_1c

    .line 1491
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1493
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1496
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1514
    move-result-object v4

    .line 1515
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1521
    move-result-object v4

    .line 1522
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    goto/16 :goto_15

    .line 1527
    :cond_1c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1530
    move-result v9

    .line 1531
    if-eqz v9, :cond_1d

    .line 1533
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1535
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1538
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    const-string v7, "> without stopped in "

    .line 1546
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1558
    move-result-object v4

    .line 1559
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1565
    move-result-object v4

    .line 1566
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    goto/16 :goto_15

    .line 1571
    :cond_1d
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1574
    move-result v4

    .line 1575
    if-nez v4, :cond_13

    .line 1577
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mInitialNonStoppedSystemPackages:Ljava/util/Set;
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1579
    :try_start_e
    check-cast v4, Landroid/util/ArraySet;

    .line 1581
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1584
    goto/16 :goto_15

    .line 1586
    :pswitch_7
    :try_start_f
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1589
    move-result-object v5

    .line 1590
    const-string/jumbo v9, "installer"

    .line 1593
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1596
    move-result-object v9

    .line 1597
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1600
    move-result v11

    .line 1601
    if-eqz v11, :cond_1e

    .line 1603
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1605
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1608
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1626
    move-result-object v4

    .line 1627
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1633
    move-result-object v4

    .line 1634
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    goto :goto_17

    .line 1638
    :cond_1e
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1641
    move-result v7

    .line 1642
    if-eqz v7, :cond_1f

    .line 1644
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1646
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1649
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    const-string v7, "> without valid installer in "

    .line 1657
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1663
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1669
    move-result-object v4

    .line 1670
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1676
    move-result-object v4

    .line 1677
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    goto :goto_17

    .line 1681
    :cond_1f
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    .line 1683
    invoke-virtual {v4, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    :goto_17
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1689
    goto/16 :goto_15

    .line 1691
    :pswitch_8
    if-eqz v19, :cond_21

    .line 1693
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1696
    move-result-object v5

    .line 1697
    if-nez v5, :cond_20

    .line 1699
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1701
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1704
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1716
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1722
    move-result-object v4

    .line 1723
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1729
    move-result-object v4

    .line 1730
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    goto :goto_18

    .line 1734
    :cond_20
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mInstallConstraintsAllowlist:Ljava/util/Set;
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1736
    :try_start_10
    check-cast v4, Landroid/util/ArraySet;

    .line 1738
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1741
    goto :goto_18

    .line 1742
    :cond_21
    :try_start_11
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1745
    :goto_18
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1748
    goto/16 :goto_15

    .line 1750
    :pswitch_9
    if-eqz v15, :cond_27

    .line 1752
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1755
    move-result-object v5

    .line 1756
    if-nez v5, :cond_22

    .line 1758
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1760
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1763
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1775
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1781
    move-result-object v4

    .line 1782
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1788
    move-result-object v4

    .line 1789
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1795
    goto/16 :goto_15

    .line 1797
    :cond_22
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1800
    move-result-object v7

    .line 1801
    if-nez v7, :cond_23

    .line 1803
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1805
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1808
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1820
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1826
    move-result-object v4

    .line 1827
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1833
    move-result-object v4

    .line 1834
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1840
    goto/16 :goto_15

    .line 1842
    :cond_23
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1845
    move-result v9

    .line 1846
    const/16 v11, 0xb54

    .line 1848
    if-lt v9, v11, :cond_26

    .line 1850
    const/16 v11, 0xbb7

    .line 1852
    if-le v9, v11, :cond_24

    .line 1854
    goto :goto_19

    .line 1855
    :cond_24
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    .line 1857
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1860
    move-result-object v4

    .line 1861
    check-cast v4, Ljava/util/ArrayList;

    .line 1863
    if-nez v4, :cond_25

    .line 1865
    new-instance v4, Ljava/util/ArrayList;

    .line 1867
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    .line 1872
    invoke-virtual {v7, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1875
    :cond_25
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1878
    goto :goto_1a

    .line 1879
    :cond_26
    :goto_19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1881
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1884
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    const-string v8, "> with unknown uid "

    .line 1892
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    move-object/from16 v7, v41

    .line 1900
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1906
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1912
    move-result-object v4

    .line 1913
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1919
    move-result-object v4

    .line 1920
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1926
    goto/16 :goto_15

    .line 1928
    :cond_27
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1931
    :goto_1a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1934
    goto/16 :goto_15

    .line 1936
    :pswitch_a
    if-eqz v40, :cond_2a

    .line 1938
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1941
    move-result-object v5

    .line 1942
    const-string/jumbo v7, "installerPackage"

    .line 1945
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1948
    move-result-object v7

    .line 1949
    if-nez v5, :cond_28

    .line 1951
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1953
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1956
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1971
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1974
    move-result-object v11

    .line 1975
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1981
    move-result-object v9

    .line 1982
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_28
    if-nez v7, :cond_29

    .line 1987
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1989
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1992
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    const-string v8, "> without installerPackage in "

    .line 2000
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2006
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2012
    move-result-object v4

    .line 2013
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2019
    move-result-object v4

    .line 2020
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_29
    if-eqz v5, :cond_2b

    .line 2025
    if-eqz v7, :cond_2b

    .line 2027
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    .line 2029
    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    goto :goto_1b

    .line 2033
    :cond_2a
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2036
    :cond_2b
    :goto_1b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2039
    goto/16 :goto_15

    .line 2041
    :pswitch_b
    if-eqz v19, :cond_2e

    .line 2043
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2046
    move-result-object v5

    .line 2047
    const-string/jumbo v7, "isModulesInstaller"

    .line 2050
    const/4 v9, 0x0

    .line 2051
    invoke-static {v2, v7, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 2054
    move-result v7

    .line 2055
    if-nez v5, :cond_2c

    .line 2057
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2059
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2062
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2074
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2080
    move-result-object v4

    .line 2081
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2087
    move-result-object v4

    .line 2088
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    goto :goto_1c

    .line 2092
    :cond_2c
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 2094
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2097
    :goto_1c
    if-eqz v7, :cond_2f

    .line 2099
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    .line 2101
    if-nez v4, :cond_2d

    .line 2103
    iput-object v5, v1, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    .line 2105
    goto :goto_1d

    .line 2106
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2108
    const-string v3, "Multiple modules installers"

    .line 2110
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2113
    throw v2

    .line 2114
    :cond_2e
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2117
    :cond_2f
    :goto_1d
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2120
    goto/16 :goto_15

    .line 2122
    :pswitch_c
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2125
    move-result-object v5

    .line 2126
    if-nez v5, :cond_30

    .line 2128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2130
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2133
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2145
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2151
    move-result-object v4

    .line 2152
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2158
    move-result-object v4

    .line 2159
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    goto :goto_1e

    .line 2163
    :cond_30
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    .line 2165
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2168
    :goto_1e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2171
    goto/16 :goto_15

    .line 2173
    :pswitch_d
    if-eqz v15, :cond_33

    .line 2175
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2178
    move-result-object v5

    .line 2179
    if-nez v5, :cond_31

    .line 2181
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2183
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2186
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2198
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2204
    move-result-object v4

    .line 2205
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2211
    move-result-object v4

    .line 2212
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    goto :goto_1f

    .line 2216
    :cond_31
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 2218
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2221
    move-result v4

    .line 2222
    if-eqz v4, :cond_32

    .line 2224
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 2227
    move-result-object v4

    .line 2228
    iput-object v4, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 2230
    goto :goto_1f

    .line 2231
    :cond_32
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2235
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2238
    const-string v4, "Reference signature package defined as both "

    .line 2240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 2245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    move-object/from16 v7, v39

    .line 2250
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2259
    move-result-object v3

    .line 2260
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2263
    throw v2

    .line 2264
    :cond_33
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2267
    :goto_1f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2270
    goto/16 :goto_15

    .line 2272
    :pswitch_e
    move-object/from16 v7, v39

    .line 2274
    const-string/jumbo v5, "namespace"

    .line 2277
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2280
    move-result-object v5

    .line 2281
    invoke-static {v5}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    .line 2284
    move-result-object v5

    .line 2285
    move-object/from16 v12, v38

    .line 2287
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2290
    move-result-object v9

    .line 2291
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2294
    move-result-object v11

    .line 2295
    invoke-static {v11}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    .line 2298
    move-result-object v11

    .line 2299
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2302
    move-result v12

    .line 2303
    if-eqz v12, :cond_34

    .line 2305
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2307
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2310
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    const-string v7, "> without namespace in "

    .line 2318
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2321
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2324
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2327
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2330
    move-result-object v4

    .line 2331
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2337
    move-result-object v4

    .line 2338
    invoke-static {v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    goto/16 :goto_21

    .line 2343
    :cond_34
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2346
    move-result v12

    .line 2347
    if-eqz v12, :cond_35

    .line 2349
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2351
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2354
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2357
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    const-string v7, "> without actor name in "

    .line 2362
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2365
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2368
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2371
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2374
    move-result-object v4

    .line 2375
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2381
    move-result-object v4

    .line 2382
    invoke-static {v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    goto :goto_21

    .line 2386
    :cond_35
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2389
    move-result v12

    .line 2390
    if-eqz v12, :cond_36

    .line 2392
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2394
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2397
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2403
    const-string v7, "> without package name in "

    .line 2405
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2411
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2417
    move-result-object v4

    .line 2418
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2424
    move-result-object v4

    .line 2425
    invoke-static {v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    goto :goto_21

    .line 2429
    :cond_36
    const-string v4, "android"

    .line 2431
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2434
    move-result v4

    .line 2435
    if-nez v4, :cond_3a

    .line 2437
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 2439
    if-nez v4, :cond_37

    .line 2441
    new-instance v4, Landroid/util/ArrayMap;

    .line 2443
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 2446
    iput-object v4, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 2448
    :cond_37
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2450
    :try_start_12
    check-cast v4, Landroid/util/ArrayMap;

    .line 2452
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    move-result-object v4
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 2456
    :try_start_13
    check-cast v4, Ljava/util/Map;

    .line 2458
    if-nez v4, :cond_38

    .line 2460
    new-instance v4, Landroid/util/ArrayMap;

    .line 2462
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 2465
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2467
    :try_start_14
    check-cast v7, Landroid/util/ArrayMap;

    .line 2469
    invoke-virtual {v7, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 2472
    goto :goto_20

    .line 2473
    :cond_38
    :try_start_15
    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2476
    move-result v8

    .line 2477
    if-nez v8, :cond_39

    .line 2479
    :goto_20
    invoke-interface {v4, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    :goto_21
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2485
    goto/16 :goto_15

    .line 2487
    :cond_39
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2490
    move-result-object v2

    .line 2491
    check-cast v2, Ljava/lang/String;

    .line 2493
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 2495
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2497
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2500
    const-string v8, "Duplicate actor definition for "

    .line 2502
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    move-object/from16 v5, v37

    .line 2510
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2516
    const-string v5, "; defined as both "

    .line 2518
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2533
    move-result-object v2

    .line 2534
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2537
    throw v3

    .line 2538
    :cond_3a
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2540
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2542
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2545
    const-string v4, "Defining "

    .line 2547
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2550
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    const-string v4, " as "

    .line 2555
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    const-string v4, " for the android namespace is not allowed"

    .line 2563
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2569
    move-result-object v3

    .line 2570
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2573
    throw v2

    .line 2574
    :pswitch_f
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 2576
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 2578
    invoke-static {v2, v4, v5}, Lcom/android/server/SystemConfig;->readInstallInUserType(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)V

    .line 2581
    goto/16 :goto_15

    .line 2583
    :pswitch_10
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2586
    move-result-object v5

    .line 2587
    if-nez v5, :cond_3b

    .line 2589
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2591
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2594
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2600
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2606
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2612
    move-result-object v4

    .line 2613
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2619
    move-result-object v4

    .line 2620
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    goto :goto_22

    .line 2624
    :cond_3b
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mPreventUserDisablePackages:Ljava/util/ArrayList;

    .line 2626
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2629
    :goto_22
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2632
    goto/16 :goto_15

    .line 2634
    :pswitch_11
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2637
    move-result-object v5

    .line 2638
    if-nez v5, :cond_3c

    .line 2640
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2642
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2645
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2648
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2651
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2654
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2657
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2663
    move-result-object v4

    .line 2664
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2667
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2670
    move-result-object v4

    .line 2671
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    goto :goto_23

    .line 2675
    :cond_3c
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 2677
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2680
    :goto_23
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2683
    goto/16 :goto_15

    .line 2685
    :pswitch_12
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2688
    move-result-object v5

    .line 2689
    if-nez v5, :cond_3d

    .line 2691
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2693
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2696
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2705
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2708
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2711
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2714
    move-result-object v4

    .line 2715
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2718
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2721
    move-result-object v4

    .line 2722
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    goto :goto_24

    .line 2726
    :cond_3d
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    .line 2728
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2731
    :goto_24
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2734
    goto/16 :goto_15

    .line 2736
    :pswitch_13
    if-eqz v35, :cond_41

    .line 2738
    const-string/jumbo v5, "target"

    .line 2741
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2744
    move-result-object v5

    .line 2745
    if-nez v5, :cond_3e

    .line 2747
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2749
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2752
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2755
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    const-string v7, "> without target in "

    .line 2760
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2766
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2769
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2772
    move-result-object v4

    .line 2773
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2779
    move-result-object v4

    .line 2780
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2786
    goto/16 :goto_15

    .line 2788
    :cond_3e
    const-string v7, "allowed"

    .line 2790
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2793
    move-result-object v7

    .line 2794
    if-nez v7, :cond_3f

    .line 2796
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2798
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2801
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2804
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    const-string v7, "> without allowed in "

    .line 2809
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2815
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2821
    move-result-object v4

    .line 2822
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2828
    move-result-object v4

    .line 2829
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2835
    goto/16 :goto_15

    .line 2837
    :cond_3f
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 2840
    move-result-object v4

    .line 2841
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 2844
    move-result-object v5

    .line 2845
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 2847
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    move-result-object v7

    .line 2851
    check-cast v7, Landroid/util/ArraySet;

    .line 2853
    if-nez v7, :cond_40

    .line 2855
    new-instance v7, Landroid/util/ArraySet;

    .line 2857
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2860
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 2862
    invoke-virtual {v8, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    :cond_40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2867
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2870
    const-string v9, "Adding association: "

    .line 2872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2875
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    const-string v4, " <- "

    .line 2880
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2886
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2889
    move-result-object v4

    .line 2890
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2896
    goto :goto_25

    .line 2897
    :cond_41
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2900
    :goto_25
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2903
    goto/16 :goto_15

    .line 2905
    :pswitch_14
    if-eqz v22, :cond_43

    .line 2907
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2910
    move-result-object v5

    .line 2911
    if-nez v5, :cond_42

    .line 2913
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2915
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2918
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2930
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 2936
    move-result-object v4

    .line 2937
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2943
    move-result-object v4

    .line 2944
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    goto :goto_26

    .line 2948
    :cond_42
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    .line 2950
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2953
    goto :goto_26

    .line 2954
    :cond_43
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2957
    :goto_26
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2960
    goto/16 :goto_15

    .line 2962
    :pswitch_15
    if-eqz v21, :cond_44

    .line 2964
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemConfig;->readOemPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2967
    goto/16 :goto_15

    .line 2969
    :cond_44
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2972
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2975
    goto/16 :goto_15

    .line 2977
    :pswitch_16
    move-object/from16 v5, v37

    .line 2979
    if-eqz v33, :cond_4b

    .line 2981
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 2984
    move-result-object v4

    .line 2985
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2987
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2990
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 2993
    move-result-object v8

    .line 2994
    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 2997
    move-result-object v8

    .line 2998
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3001
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3007
    move-result-object v7

    .line 3008
    invoke-interface {v4, v7}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3011
    move-result v4

    .line 3012
    if-nez v4, :cond_46

    .line 3014
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3017
    move-result-object v4

    .line 3018
    new-instance v7, Ljava/lang/StringBuilder;

    .line 3020
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3023
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 3026
    move-result-object v8

    .line 3027
    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3030
    move-result-object v8

    .line 3031
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3034
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3037
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3040
    move-result-object v7

    .line 3041
    invoke-interface {v4, v7}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3044
    move-result v4

    .line 3045
    if-eqz v4, :cond_45

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

    .line 3054
    move-result-object v7

    .line 3055
    new-instance v8, Ljava/lang/StringBuilder;

    .line 3057
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3060
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 3063
    move-result-object v9

    .line 3064
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3067
    move-result-object v9

    .line 3068
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3071
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3074
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3077
    move-result-object v8

    .line 3078
    invoke-interface {v7, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3081
    move-result v7

    .line 3082
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3085
    move-result-object v8

    .line 3086
    new-instance v9, Ljava/lang/StringBuilder;

    .line 3088
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3091
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 3094
    move-result-object v10

    .line 3095
    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3098
    move-result-object v10

    .line 3099
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3102
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3108
    move-result-object v9

    .line 3109
    invoke-interface {v8, v9}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3112
    move-result v8

    .line 3113
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3116
    move-result-object v9

    .line 3117
    new-instance v10, Ljava/lang/StringBuilder;

    .line 3119
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3122
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 3125
    move-result-object v11

    .line 3126
    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3129
    move-result-object v11

    .line 3130
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3133
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3139
    move-result-object v5

    .line 3140
    invoke-interface {v9, v5}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3143
    move-result v5

    .line 3144
    if-eqz v4, :cond_47

    .line 3146
    move-object/from16 v4, v36

    .line 3148
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3150
    move-object/from16 v9, v32

    .line 3152
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3155
    goto/16 :goto_15

    .line 3157
    :cond_47
    move-object/from16 v9, v32

    .line 3159
    move-object/from16 v4, v36

    .line 3161
    if-eqz v7, :cond_48

    .line 3163
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3165
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3168
    goto/16 :goto_15

    .line 3170
    :cond_48
    if-eqz v8, :cond_49

    .line 3172
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3174
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3177
    goto/16 :goto_15

    .line 3179
    :cond_49
    if-eqz v5, :cond_4a

    .line 3181
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3183
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3186
    goto/16 :goto_15

    .line 3188
    :cond_4a
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 3190
    invoke-static {v2, v4, v9}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3193
    goto/16 :goto_15

    .line 3195
    :cond_4b
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3198
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3201
    goto/16 :goto_15

    .line 3203
    :pswitch_17
    move-object/from16 v4, v36

    .line 3205
    move-object/from16 v5, v37

    .line 3207
    if-eqz v20, :cond_52

    .line 3209
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3212
    move-result-object v7

    .line 3213
    new-instance v8, Ljava/lang/StringBuilder;

    .line 3215
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3218
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 3221
    move-result-object v9

    .line 3222
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3225
    move-result-object v9

    .line 3226
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3229
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3232
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3235
    move-result-object v8

    .line 3236
    invoke-interface {v7, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3239
    move-result v7

    .line 3240
    if-nez v7, :cond_4d

    .line 3242
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3245
    move-result-object v7

    .line 3246
    new-instance v8, Ljava/lang/StringBuilder;

    .line 3248
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3251
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 3254
    move-result-object v9

    .line 3255
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3258
    move-result-object v9

    .line 3259
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3262
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3265
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3268
    move-result-object v8

    .line 3269
    invoke-interface {v7, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3272
    move-result v7

    .line 3273
    if-eqz v7, :cond_4c

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

    .line 3282
    move-result-object v8

    .line 3283
    new-instance v9, Ljava/lang/StringBuilder;

    .line 3285
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3288
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 3291
    move-result-object v10

    .line 3292
    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3295
    move-result-object v10

    .line 3296
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3299
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3302
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3305
    move-result-object v9

    .line 3306
    invoke-interface {v8, v9}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3309
    move-result v8

    .line 3310
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3313
    move-result-object v9

    .line 3314
    new-instance v10, Ljava/lang/StringBuilder;

    .line 3316
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3319
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 3322
    move-result-object v11

    .line 3323
    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3326
    move-result-object v11

    .line 3327
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3330
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3333
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3336
    move-result-object v10

    .line 3337
    invoke-interface {v9, v10}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3340
    move-result v9

    .line 3341
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3344
    move-result-object v10

    .line 3345
    new-instance v11, Ljava/lang/StringBuilder;

    .line 3347
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 3350
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 3353
    move-result-object v12

    .line 3354
    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3357
    move-result-object v12

    .line 3358
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3361
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3364
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3367
    move-result-object v5

    .line 3368
    invoke-interface {v10, v5}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 3371
    move-result v5

    .line 3372
    if-eqz v7, :cond_4e

    .line 3374
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 3376
    move-object/from16 v7, v31

    .line 3378
    invoke-static {v2, v4, v7}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3381
    goto/16 :goto_15

    .line 3383
    :cond_4e
    move-object/from16 v7, v31

    .line 3385
    if-eqz v8, :cond_4f

    .line 3387
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 3389
    invoke-static {v2, v4, v7}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3392
    goto/16 :goto_15

    .line 3394
    :cond_4f
    if-eqz v9, :cond_50

    .line 3396
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 3398
    invoke-static {v2, v4, v7}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3401
    goto/16 :goto_15

    .line 3403
    :cond_50
    if-eqz v5, :cond_51

    .line 3405
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 3408
    move-result-object v4

    .line 3409
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 3412
    move-result-object v4

    .line 3413
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/SystemConfig;->readApexPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;Ljava/nio/file/Path;)V

    .line 3416
    goto/16 :goto_15

    .line 3418
    :cond_51
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionAllowlist;->mPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 3420
    invoke-static {v2, v4, v7}, Lcom/android/server/SystemConfig;->readPermissionAllowlist(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 3423
    goto/16 :goto_15

    .line 3425
    :cond_52
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3428
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3431
    goto/16 :goto_15

    .line 3433
    :pswitch_18
    if-eqz v19, :cond_54

    .line 3435
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3438
    move-result-object v5

    .line 3439
    if-nez v5, :cond_53

    .line 3441
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3443
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3446
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3449
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3452
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3455
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3458
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3461
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3464
    move-result-object v4

    .line 3465
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3468
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3471
    move-result-object v4

    .line 3472
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    goto :goto_2b

    .line 3476
    :cond_53
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    .line 3478
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3481
    goto :goto_2b

    .line 3482
    :cond_54
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3485
    :goto_2b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3488
    goto/16 :goto_15

    .line 3490
    :pswitch_19
    if-eqz v19, :cond_59

    .line 3492
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3495
    move-result-object v5

    .line 3496
    const-string/jumbo v7, "carrierAppPackage"

    .line 3499
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3502
    move-result-object v7

    .line 3503
    if-eqz v5, :cond_58

    .line 3505
    if-nez v7, :cond_55

    .line 3507
    goto :goto_2d

    .line 3508
    :cond_55
    const-string v9, "addedInSdk"

    .line 3510
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3513
    move-result-object v9

    .line 3514
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3517
    move-result v11
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 3518
    if-nez v11, :cond_56

    .line 3520
    :try_start_16
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

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

    .line 3527
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3530
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3533
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3536
    const-string v7, "> addedInSdk not an integer in "

    .line 3538
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3541
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3544
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3547
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3550
    move-result-object v4

    .line 3551
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3554
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3557
    move-result-object v4

    .line 3558
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3564
    goto/16 :goto_15

    .line 3566
    :cond_56
    const/4 v4, -0x1

    .line 3567
    :goto_2c
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 3569
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3572
    move-result-object v8

    .line 3573
    check-cast v8, Ljava/util/List;

    .line 3575
    if-nez v8, :cond_57

    .line 3577
    new-instance v8, Ljava/util/ArrayList;

    .line 3579
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3582
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 3584
    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3587
    :cond_57
    new-instance v7, Landroid/os/CarrierAssociatedAppEntry;

    .line 3589
    invoke-direct {v7, v5, v4}, Landroid/os/CarrierAssociatedAppEntry;-><init>(Ljava/lang/String;I)V

    .line 3592
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3595
    goto :goto_2e

    .line 3596
    :cond_58
    :goto_2d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3598
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3601
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3604
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3607
    const-string v7, "> without package or carrierAppPackage in "

    .line 3609
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3615
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3618
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3621
    move-result-object v4

    .line 3622
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3625
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3628
    move-result-object v4

    .line 3629
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    goto :goto_2e

    .line 3633
    :cond_59
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3636
    :goto_2e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3639
    goto/16 :goto_15

    .line 3641
    :pswitch_1a
    move-object/from16 v7, v41

    .line 3643
    if-eqz v17, :cond_5c

    .line 3645
    const-string/jumbo v5, "service"

    .line 3648
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3651
    move-result-object v5

    .line 3652
    if-nez v5, :cond_5a

    .line 3654
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3656
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3659
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3662
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    const-string v7, "> without service in "

    .line 3667
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3670
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3673
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3676
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3679
    move-result-object v4

    .line 3680
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3683
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3686
    move-result-object v4

    .line 3687
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    goto :goto_2f

    .line 3691
    :cond_5a
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 3694
    move-result-object v9

    .line 3695
    if-nez v9, :cond_5b

    .line 3697
    new-instance v9, Ljava/lang/StringBuilder;

    .line 3699
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3702
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3705
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3708
    const-string v8, "> with invalid service name "

    .line 3710
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3713
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3716
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3719
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3722
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3725
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3728
    move-result-object v4

    .line 3729
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3732
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3735
    move-result-object v4

    .line 3736
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    goto :goto_2f

    .line 3740
    :cond_5b
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 3742
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3745
    goto :goto_2f

    .line 3746
    :cond_5c
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3749
    :goto_2f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3752
    goto/16 :goto_15

    .line 3754
    :pswitch_1b
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/SystemConfig;->readComponentOverrides(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V

    .line 3757
    goto/16 :goto_15

    .line 3759
    :pswitch_1c
    if-eqz v19, :cond_5f

    .line 3761
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3764
    move-result-object v5

    .line 3765
    const-string/jumbo v7, "class"

    .line 3768
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3771
    move-result-object v7

    .line 3772
    if-nez v5, :cond_5d

    .line 3774
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3776
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3779
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3782
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3785
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3788
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3791
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3794
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3797
    move-result-object v4

    .line 3798
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3801
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3804
    move-result-object v4

    .line 3805
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    goto :goto_30

    .line 3809
    :cond_5d
    if-nez v7, :cond_5e

    .line 3811
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3813
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3816
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3819
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3822
    const-string v7, "> without class in "

    .line 3824
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3827
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3830
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3833
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3836
    move-result-object v4

    .line 3837
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3840
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3843
    move-result-object v4

    .line 3844
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    goto :goto_30

    .line 3848
    :cond_5e
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 3850
    new-instance v8, Landroid/content/ComponentName;

    .line 3852
    invoke-direct {v8, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3855
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3858
    goto :goto_30

    .line 3859
    :cond_5f
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3862
    :goto_30
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3865
    goto/16 :goto_15

    .line 3867
    :pswitch_1d
    if-eqz v30, :cond_61

    .line 3869
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3872
    move-result-object v5

    .line 3873
    if-nez v5, :cond_60

    .line 3875
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3877
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3880
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3883
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3886
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3889
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3892
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3895
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3898
    move-result-object v4

    .line 3899
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3902
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3905
    move-result-object v4

    .line 3906
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    goto :goto_31

    .line 3910
    :cond_60
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    .line 3912
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3915
    goto :goto_31

    .line 3916
    :cond_61
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3919
    :goto_31
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3922
    goto/16 :goto_15

    .line 3924
    :pswitch_1e
    if-eqz v19, :cond_63

    .line 3926
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3929
    move-result-object v5

    .line 3930
    if-nez v5, :cond_62

    .line 3932
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3934
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3937
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3940
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3943
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3946
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3949
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3952
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 3955
    move-result-object v4

    .line 3956
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3959
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3962
    move-result-object v4

    .line 3963
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    goto :goto_32

    .line 3967
    :cond_62
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 3969
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3972
    goto :goto_32

    .line 3973
    :cond_63
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3976
    :goto_32
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3979
    goto/16 :goto_15

    .line 3981
    :pswitch_1f
    if-eqz v29, :cond_65

    .line 3983
    const-string v5, "action"

    .line 3985
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3988
    move-result-object v5

    .line 3989
    if-nez v5, :cond_64

    .line 3991
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3993
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3996
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3999
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4002
    const-string v7, "> without action in "

    .line 4004
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4007
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4010
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4013
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4016
    move-result-object v4

    .line 4017
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4020
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4023
    move-result-object v4

    .line 4024
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    goto :goto_33

    .line 4028
    :cond_64
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    .line 4030
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4033
    goto :goto_33

    .line 4034
    :cond_65
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4037
    :goto_33
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4040
    goto/16 :goto_15

    .line 4042
    :pswitch_20
    if-eqz v30, :cond_6a

    .line 4044
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4047
    move-result-object v5

    .line 4048
    move-object/from16 v7, v28

    .line 4050
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4053
    move-result-object v7

    .line 4054
    if-nez v5, :cond_66

    .line 4056
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4058
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4061
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4067
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4070
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4073
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4076
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4079
    move-result-object v4

    .line 4080
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4083
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4086
    move-result-object v4

    .line 4087
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    goto :goto_35

    .line 4091
    :cond_66
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 4093
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4096
    move-result-object v4

    .line 4097
    check-cast v4, Landroid/util/ArraySet;

    .line 4099
    if-eqz v4, :cond_67

    .line 4101
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4104
    move-result v8

    .line 4105
    if-nez v8, :cond_6b

    .line 4107
    :cond_67
    if-nez v4, :cond_68

    .line 4109
    new-instance v4, Landroid/util/ArraySet;

    .line 4111
    const/4 v8, 0x1

    .line 4112
    invoke-direct {v4, v8}, Landroid/util/ArraySet;-><init>(I)V

    .line 4115
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 4117
    invoke-virtual {v8, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    :cond_68
    move-object/from16 v5, v27

    .line 4122
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4125
    move-result v5

    .line 4126
    if-nez v5, :cond_6b

    .line 4128
    move-object/from16 v9, p3

    .line 4130
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4133
    move-result v5

    .line 4134
    if-eqz v5, :cond_69

    .line 4136
    goto :goto_34

    .line 4137
    :cond_69
    move-object v14, v7

    .line 4138
    :goto_34
    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4141
    goto :goto_35

    .line 4142
    :cond_6a
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4145
    :cond_6b
    :goto_35
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4148
    goto/16 :goto_15

    .line 4150
    :pswitch_21
    if-eqz v30, :cond_6d

    .line 4152
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4155
    move-result-object v5

    .line 4156
    if-nez v5, :cond_6c

    .line 4158
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4160
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4163
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4166
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4169
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4172
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4175
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4178
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4181
    move-result-object v4

    .line 4182
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4185
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4188
    move-result-object v4

    .line 4189
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    goto :goto_36

    .line 4193
    :cond_6c
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowlistCameraPrivacy:Landroid/util/ArraySet;

    .line 4195
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4198
    goto :goto_36

    .line 4199
    :cond_6d
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4202
    :goto_36
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4205
    goto/16 :goto_15

    .line 4207
    :pswitch_22
    move-object/from16 v9, p3

    .line 4209
    move-object/from16 v5, v27

    .line 4211
    move-object/from16 v7, v28

    .line 4213
    if-eqz v30, :cond_72

    .line 4215
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4218
    move-result-object v11

    .line 4219
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4222
    move-result-object v7

    .line 4223
    if-nez v11, :cond_6e

    .line 4225
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4227
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4230
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4233
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4239
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4242
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4248
    move-result-object v4

    .line 4249
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4255
    move-result-object v4

    .line 4256
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    goto :goto_38

    .line 4260
    :cond_6e
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 4262
    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4265
    move-result-object v4

    .line 4266
    check-cast v4, Landroid/util/ArraySet;

    .line 4268
    if-eqz v4, :cond_6f

    .line 4270
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4273
    move-result v8

    .line 4274
    if-nez v8, :cond_73

    .line 4276
    :cond_6f
    if-nez v4, :cond_70

    .line 4278
    new-instance v4, Landroid/util/ArraySet;

    .line 4280
    const/4 v8, 0x1

    .line 4281
    invoke-direct {v4, v8}, Landroid/util/ArraySet;-><init>(I)V

    .line 4284
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 4286
    invoke-virtual {v8, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4289
    :cond_70
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4292
    move-result v5

    .line 4293
    if-nez v5, :cond_73

    .line 4295
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4298
    move-result v5

    .line 4299
    if-eqz v5, :cond_71

    .line 4301
    goto :goto_37

    .line 4302
    :cond_71
    move-object v14, v7

    .line 4303
    :goto_37
    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4306
    goto :goto_38

    .line 4307
    :cond_72
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4310
    :cond_73
    :goto_38
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4313
    goto/16 :goto_15

    .line 4315
    :pswitch_23
    if-eqz v30, :cond_75

    .line 4317
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4320
    move-result-object v5

    .line 4321
    if-nez v5, :cond_74

    .line 4323
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4325
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4328
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4331
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4334
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4337
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4340
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4343
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4346
    move-result-object v4

    .line 4347
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4353
    move-result-object v4

    .line 4354
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    goto :goto_39

    .line 4358
    :cond_74
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    .line 4360
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4363
    goto :goto_39

    .line 4364
    :cond_75
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4367
    :goto_39
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4370
    goto/16 :goto_15

    .line 4372
    :pswitch_24
    if-eqz v30, :cond_77

    .line 4374
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4377
    move-result-object v5

    .line 4378
    if-nez v5, :cond_76

    .line 4380
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4382
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4385
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4388
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4391
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4394
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4397
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4400
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4403
    move-result-object v4

    .line 4404
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4407
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4410
    move-result-object v4

    .line 4411
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    goto :goto_3a

    .line 4415
    :cond_76
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 4417
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4420
    goto :goto_3a

    .line 4421
    :cond_77
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4424
    :goto_3a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4427
    goto/16 :goto_15

    .line 4429
    :pswitch_25
    if-eqz v30, :cond_79

    .line 4431
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4434
    move-result-object v5

    .line 4435
    if-nez v5, :cond_78

    .line 4437
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4439
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4442
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4445
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4448
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4451
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4454
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4457
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4460
    move-result-object v4

    .line 4461
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4464
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4467
    move-result-object v4

    .line 4468
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    goto :goto_3b

    .line 4472
    :cond_78
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 4474
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4477
    goto :goto_3b

    .line 4478
    :cond_79
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4481
    :goto_3b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4484
    goto/16 :goto_15

    .line 4486
    :pswitch_26
    if-eqz v30, :cond_7b

    .line 4488
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4491
    move-result-object v5

    .line 4492
    if-nez v5, :cond_7a

    .line 4494
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4496
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4499
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4502
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4505
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4508
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4511
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4514
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4517
    move-result-object v4

    .line 4518
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4521
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4524
    move-result-object v4

    .line 4525
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4528
    goto :goto_3c

    .line 4529
    :cond_7a
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 4531
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4534
    goto :goto_3c

    .line 4535
    :cond_7b
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4538
    :goto_3c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4541
    goto/16 :goto_15

    .line 4543
    :pswitch_27
    move-object/from16 v12, v38

    .line 4545
    if-eqz v17, :cond_7d

    .line 4547
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4550
    move-result-object v5

    .line 4551
    if-nez v5, :cond_7c

    .line 4553
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4555
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4558
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4561
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4564
    move-object/from16 v7, v34

    .line 4566
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4569
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4572
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4575
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4578
    move-result-object v4

    .line 4579
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4582
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4585
    move-result-object v4

    .line 4586
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    goto :goto_3d

    .line 4590
    :cond_7c
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 4592
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4595
    goto :goto_3d

    .line 4596
    :cond_7d
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4599
    :goto_3d
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4602
    goto/16 :goto_15

    .line 4604
    :pswitch_28
    move-object/from16 v7, v34

    .line 4606
    move-object/from16 v12, v38

    .line 4608
    if-eqz v17, :cond_80

    .line 4610
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4613
    move-result-object v5

    .line 4614
    const-string/jumbo v9, "version"

    .line 4617
    const/4 v11, 0x0

    .line 4618
    invoke-static {v2, v9, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 4621
    move-result v9

    .line 4622
    if-nez v26, :cond_7e

    .line 4624
    const/4 v11, 0x1

    .line 4625
    const/16 v24, 0x1

    .line 4627
    goto :goto_3e

    .line 4628
    :cond_7e
    const-string/jumbo v11, "notLowRam"

    .line 4631
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4634
    move-result-object v11

    .line 4635
    const-string/jumbo v12, "true"

    .line 4638
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4641
    move-result v11

    .line 4642
    const/16 v24, 0x1

    .line 4644
    xor-int/lit8 v11, v11, 0x1

    .line 4646
    :goto_3e
    if-nez v5, :cond_7f

    .line 4648
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4650
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4653
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4656
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4659
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4662
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4665
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4668
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4671
    move-result-object v4

    .line 4672
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4675
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4678
    move-result-object v4

    .line 4679
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    goto :goto_3f

    .line 4683
    :cond_7f
    if-eqz v11, :cond_81

    .line 4685
    invoke-virtual {v1, v9, v5}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 4688
    goto :goto_3f

    .line 4689
    :cond_80
    const/16 v24, 0x1

    .line 4691
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4694
    :cond_81
    :goto_3f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4697
    goto/16 :goto_49

    .line 4699
    :pswitch_29
    move-object/from16 v7, v34

    .line 4701
    move-object/from16 v12, v38

    .line 4703
    const/16 v24, 0x1

    .line 4705
    if-eqz v16, :cond_8d

    .line 4707
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4710
    move-result-object v5

    .line 4711
    const-string/jumbo v9, "file"

    .line 4714
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4717
    move-result-object v9

    .line 4718
    const-string/jumbo v11, "dependency"

    .line 4721
    invoke-interface {v2, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4724
    move-result-object v11

    .line 4725
    const-string/jumbo v12, "min-device-sdk"

    .line 4728
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4731
    move-result-object v12

    .line 4732
    const-string/jumbo v13, "max-device-sdk"

    .line 4735
    invoke-interface {v2, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4738
    move-result-object v13

    .line 4739
    if-nez v5, :cond_82

    .line 4741
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4743
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4746
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4749
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4752
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4755
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4758
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4761
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4764
    move-result-object v4

    .line 4765
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4768
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4771
    move-result-object v4

    .line 4772
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    goto/16 :goto_46

    .line 4777
    :cond_82
    if-nez v9, :cond_83

    .line 4779
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4781
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4784
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4787
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4790
    const-string v7, "> without file in "

    .line 4792
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4795
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4798
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4801
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4804
    move-result-object v4

    .line 4805
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4808
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4811
    move-result-object v4

    .line 4812
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 4815
    goto/16 :goto_46

    .line 4817
    :cond_83
    if-eqz v12, :cond_85

    .line 4819
    :try_start_18
    invoke-static {v12}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

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

    .line 4832
    :goto_42
    if-eqz v13, :cond_87

    .line 4834
    :try_start_19
    invoke-static {v13}, Lcom/android/server/SystemConfig;->isAtMostSdkLevel(Ljava/lang/String;)Z

    .line 4837
    move-result v7

    .line 4838
    if-eqz v7, :cond_86

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

    .line 4845
    :goto_44
    new-instance v8, Ljava/io/File;

    .line 4847
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4850
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 4853
    move-result v8
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 4854
    const-string v10, ":"

    .line 4856
    if-eqz v4, :cond_89

    .line 4858
    if-eqz v7, :cond_89

    .line 4860
    if-eqz v8, :cond_89

    .line 4862
    :try_start_1a
    const-string/jumbo v4, "on-bootclasspath-since"

    .line 4865
    invoke-interface {v2, v14, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4868
    move-result-object v4

    .line 4869
    const-string/jumbo v7, "on-bootclasspath-before"

    .line 4872
    invoke-interface {v2, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4875
    move-result-object v12

    .line 4876
    new-instance v13, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 4878
    if-nez v11, :cond_88

    .line 4880
    const/4 v7, 0x0

    .line 4881
    new-array v8, v7, [Ljava/lang/String;

    .line 4883
    move-object v10, v8

    .line 4884
    goto :goto_45

    .line 4885
    :cond_88
    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

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

    .line 4896
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 4898
    invoke-virtual {v4, v5, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4901
    goto :goto_46

    .line 4902
    :cond_89
    new-instance v11, Ljava/lang/StringBuilder;

    .line 4904
    const-string v14, "Ignore shared library "

    .line 4906
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4909
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4912
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4915
    if-nez v4, :cond_8a

    .line 4917
    const-string v4, " min-device-sdk="

    .line 4919
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4922
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4925
    :cond_8a
    if-nez v7, :cond_8b

    .line 4927
    const-string v4, " max-device-sdk="

    .line 4929
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4932
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4935
    :cond_8b
    if-nez v8, :cond_8c

    .line 4937
    const-string v4, " "

    .line 4939
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4942
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4945
    const-string v4, " does not exist"

    .line 4947
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4950
    :cond_8c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4953
    move-result-object v4

    .line 4954
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    goto :goto_46

    .line 4958
    :cond_8d
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4961
    :goto_46
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4964
    goto/16 :goto_49

    .line 4966
    :pswitch_2a
    const/16 v24, 0x1

    .line 4968
    if-eqz v18, :cond_8e

    .line 4970
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/SystemConfig;->readSplitPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V

    .line 4973
    goto/16 :goto_49

    .line 4975
    :cond_8e
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4978
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4981
    goto/16 :goto_49

    .line 4983
    :pswitch_2b
    move-object/from16 v7, v34

    .line 4985
    move-object/from16 v12, v38

    .line 4987
    const/16 v24, 0x1

    .line 4989
    if-eqz v18, :cond_93

    .line 4991
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4994
    move-result-object v5

    .line 4995
    if-nez v5, :cond_8f

    .line 4997
    new-instance v5, Ljava/lang/StringBuilder;

    .line 4999
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5002
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5005
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5008
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5011
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5014
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5017
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5020
    move-result-object v4

    .line 5021
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5024
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5027
    move-result-object v4

    .line 5028
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5034
    goto/16 :goto_49

    .line 5036
    :cond_8f
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5039
    move-result-object v7

    .line 5040
    if-nez v7, :cond_90

    .line 5042
    new-instance v5, Ljava/lang/StringBuilder;

    .line 5044
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5047
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5050
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5053
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5056
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5059
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5062
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5065
    move-result-object v4

    .line 5066
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5069
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5072
    move-result-object v4

    .line 5073
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5076
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5079
    goto/16 :goto_49

    .line 5081
    :cond_90
    invoke-static {v7}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    .line 5084
    move-result v9

    .line 5085
    if-gez v9, :cond_91

    .line 5087
    new-instance v5, Ljava/lang/StringBuilder;

    .line 5089
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5092
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5095
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5098
    const-string v8, "> with unknown uid \""

    .line 5100
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5103
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5106
    const-string v7, "  in "

    .line 5108
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5111
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5117
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5120
    move-result-object v4

    .line 5121
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5127
    move-result-object v4

    .line 5128
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5131
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5134
    goto/16 :goto_49

    .line 5136
    :cond_91
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 5139
    move-result-object v4

    .line 5140
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 5142
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5145
    move-result-object v5

    .line 5146
    check-cast v5, Landroid/util/ArraySet;

    .line 5148
    if-nez v5, :cond_92

    .line 5150
    new-instance v5, Landroid/util/ArraySet;

    .line 5152
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 5155
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 5157
    invoke-virtual {v7, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5160
    :cond_92
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5163
    goto :goto_47

    .line 5164
    :cond_93
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5167
    :goto_47
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5170
    goto/16 :goto_49

    .line 5172
    :pswitch_2c
    move-object/from16 v7, v34

    .line 5174
    move-object/from16 v12, v38

    .line 5176
    const/16 v24, 0x1

    .line 5178
    if-eqz v18, :cond_95

    .line 5180
    invoke-interface {v2, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5183
    move-result-object v5

    .line 5184
    if-nez v5, :cond_94

    .line 5186
    new-instance v5, Ljava/lang/StringBuilder;

    .line 5188
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5191
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5194
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5197
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5200
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5203
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5206
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5209
    move-result-object v4

    .line 5210
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5213
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5216
    move-result-object v4

    .line 5217
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5220
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5223
    goto :goto_49

    .line 5224
    :cond_94
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 5227
    move-result-object v4

    .line 5228
    invoke-virtual {v1, v2, v4}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 5231
    goto :goto_49

    .line 5232
    :cond_95
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5235
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5238
    goto :goto_49

    .line 5239
    :pswitch_2d
    const/16 v24, 0x1

    .line 5241
    if-eqz v15, :cond_97

    .line 5243
    const-string/jumbo v5, "gid"

    .line 5246
    invoke-interface {v2, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5249
    move-result-object v5

    .line 5250
    if-eqz v5, :cond_96

    .line 5252
    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    .line 5255
    move-result v4

    .line 5256
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 5258
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 5261
    move-result-object v4

    .line 5262
    iput-object v4, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 5264
    goto :goto_48

    .line 5265
    :cond_96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 5267
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5270
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5273
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5276
    const-string v7, "> without gid in "

    .line 5278
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5281
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5284
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5287
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 5290
    move-result-object v4

    .line 5291
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5294
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5297
    move-result-object v4

    .line 5298
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5301
    goto :goto_48

    .line 5302
    :cond_97
    invoke-static {v3, v10, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/io/File;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5305
    :goto_48
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5308
    :goto_49
    move-object/from16 v5, v23

    .line 5310
    move/from16 v9, v24

    .line 5312
    move-object/from16 v7, v25

    .line 5314
    move/from16 v8, v26

    .line 5316
    move/from16 v14, v29

    .line 5318
    move/from16 v13, v30

    .line 5320
    move/from16 v11, v33

    .line 5322
    move/from16 v12, v35

    .line 5324
    move/from16 v4, v40

    .line 5326
    goto/16 :goto_e

    .line 5328
    :catchall_2
    move-exception v0

    .line 5329
    move-object/from16 v25, v7

    .line 5331
    goto/16 :goto_10

    .line 5333
    :catch_8
    move-exception v0

    .line 5334
    move-object/from16 v23, v5

    .line 5336
    move-object/from16 v25, v7

    .line 5338
    goto/16 :goto_11

    .line 5340
    :catch_9
    move-exception v0

    .line 5341
    move-object/from16 v23, v5

    .line 5343
    move-object/from16 v25, v7

    .line 5345
    goto/16 :goto_12

    .line 5347
    :cond_98
    move-object/from16 v23, v5

    .line 5349
    move-object/from16 v25, v7

    .line 5351
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 5353
    const-string v3, "No start tag found"

    .line 5355
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

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

    .line 5362
    :goto_4b
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5365
    goto :goto_4d

    .line 5366
    :catch_a
    move-exception v0

    .line 5367
    move-object v3, v5

    .line 5368
    move-object/from16 v25, v7

    .line 5370
    move-object v2, v0

    .line 5371
    :goto_4c
    :try_start_1c
    invoke-static {v6, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 5374
    goto :goto_4b

    .line 5375
    :goto_4d
    const-string/jumbo v2, "com.samsung.feature.support_repair_mode"

    .line 5378
    const/4 v3, 0x0

    .line 5379
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5382
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 5385
    move-result v2

    .line 5386
    if-eqz v2, :cond_99

    .line 5388
    const-string v2, "android.software.file_based_encryption"

    .line 5390
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5393
    const-string v2, "android.software.securely_removes_users"

    .line 5395
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5398
    :cond_99
    invoke-static {}, Landroid/os/storage/StorageManager;->hasAdoptable()Z

    .line 5401
    move-result v2

    .line 5402
    if-eqz v2, :cond_9a

    .line 5404
    const-string v2, "android.software.adoptable_storage"

    .line 5406
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5409
    :cond_9a
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 5412
    move-result v2

    .line 5413
    if-eqz v2, :cond_9b

    .line 5415
    const-string v2, "android.hardware.ram.low"

    .line 5417
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5420
    goto :goto_4e

    .line 5421
    :cond_9b
    const-string v2, "android.hardware.ram.normal"

    .line 5423
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5426
    :goto_4e
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->getVersion()I

    .line 5429
    move-result v2

    .line 5430
    if-lez v2, :cond_9c

    .line 5432
    const-string v4, "android.software.incremental_delivery"

    .line 5434
    invoke-virtual {v1, v2, v4}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5437
    :cond_9c
    const-string v2, "android.software.app_enumeration"

    .line 5439
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5442
    sget v2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 5444
    const/16 v4, 0x1d

    .line 5446
    if-lt v2, v4, :cond_9d

    .line 5448
    const-string v2, "android.software.ipsec_tunnels"

    .line 5450
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5453
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemConfig;->enableIpSecTunnelMigrationOnVsrUAndAbove()V

    .line 5456
    invoke-static {}, Lcom/android/server/SystemConfig;->isErofsSupported()Z

    .line 5459
    move-result v2

    .line 5460
    if-eqz v2, :cond_9f

    .line 5462
    const/4 v2, 0x5

    .line 5463
    const/16 v4, 0xa

    .line 5465
    invoke-static {v2, v4}, Lcom/android/server/SystemConfig;->isKernelVersionAtLeast(II)Z

    .line 5468
    move-result v2

    .line 5469
    if-eqz v2, :cond_9e

    .line 5471
    const-string v2, "android.software.erofs"

    .line 5473
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5476
    goto :goto_4f

    .line 5477
    :cond_9e
    const/16 v2, 0x13

    .line 5479
    const/4 v4, 0x4

    .line 5480
    invoke-static {v4, v2}, Lcom/android/server/SystemConfig;->isKernelVersionAtLeast(II)Z

    .line 5483
    move-result v2

    .line 5484
    if-eqz v2, :cond_9f

    .line 5486
    const-string v2, "android.software.erofs_legacy"

    .line 5488
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SystemConfig;->addFeature(ILjava/lang/String;)V

    .line 5491
    :cond_9f
    :goto_4f
    iget-object v2, v1, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 5493
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 5496
    move-result-object v2

    .line 5497
    :cond_a0
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 5500
    move-result v3

    .line 5501
    if-eqz v3, :cond_a1

    .line 5503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 5506
    move-result-object v3

    .line 5507
    check-cast v3, Ljava/lang/String;

    .line 5509
    iget-object v4, v1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 5511
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5514
    move-result-object v4

    .line 5515
    if-eqz v4, :cond_a0

    .line 5517
    const-string v4, "Removed unavailable feature "

    .line 5519
    invoke-static {v4, v3, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5522
    goto :goto_50

    .line 5523
    :cond_a1
    return-void

    .line 5524
    :goto_51
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5527
    throw v1

    .line 5528
    :catch_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5530
    const-string v2, "Couldn\'t find or open permissions file "

    .line 5532
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5535
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5541
    move-result-object v1

    .line 5542
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 5
    new-instance v2, Ljava/io/FileReader;

    .line 7
    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 10
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 25
    const-string v3, "#"

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    const-string v3, " "

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    aget-object v2, v2, v3

    .line 47
    new-instance v4, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 49
    new-array v3, v3, [Ljava/lang/String;

    .line 51
    const/4 v5, 0x1

    .line 52
    invoke-direct {v4, v2, v2, v3, v5}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 55
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 57
    iget-object v3, v4, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception v1

    .line 76
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 80
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    const-string v2, "Failed to read public libraries file "

    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    goto :goto_4

    .line 98
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string p1, " does not exist"

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_4
    return-void
.end method

.method public final readPublicNativeLibrariesList()V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/vendor/etc/public.libraries.txt"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/SystemConfig;->readPublicLibrariesListFile(Ljava/io/File;)V

    .line 11
    const-string v0, "/system_ext/etc"

    .line 13
    const-string v1, "/product/etc"

    .line 15
    const-string v2, "/system/etc"

    .line 17
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

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

    .line 26
    aget-object v3, v0, v2

    .line 28
    new-instance v4, Ljava/io/File;

    .line 30
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 36
    move-result-object v4

    .line 37
    if-nez v4, :cond_0

    .line 39
    const-string v4, "Public libraries file folder missing: "

    .line 41
    const-string v5, "SystemConfig"

    .line 43
    invoke-static {v4, v3, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 51
    aget-object v6, v4, v5

    .line 53
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 56
    move-result-object v7

    .line 57
    const-string/jumbo v8, "public.libraries-"

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_1

    .line 66
    const-string v8, ".txt"

    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_1

    .line 74
    invoke-virtual {p0, v6}, Lcom/android/server/SystemConfig;->readPublicLibrariesListFile(Ljava/io/File;)V

    .line 77
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

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

    .line 5
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    const-string v3, " at "

    .line 11
    const-string v4, "SystemConfig"

    .line 13
    if-nez v2, :cond_0

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "<split-permission> without name in "

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 45
    return-void

    .line 46
    :cond_0
    const-string/jumbo v5, "targetSdk"

    .line 49
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_1

    .line 59
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "<split-permission> targetSdk not an integer in "

    .line 68
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 94
    return-void

    .line 95
    :cond_1
    const/16 p2, 0x2711

    .line 97
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 100
    move-result v3

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    .line 103
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :goto_1
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_4

    .line 112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 115
    move-result-object v6

    .line 116
    const-string/jumbo v7, "new-permission"

    .line 119
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_3

    .line 125
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v6

    .line 129
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_2

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v7, "name is required for <new-permission> in "

    .line 140
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v6

    .line 154
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_5

    .line 172
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 174
    new-instance p1, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 176
    invoke-direct {p1, v2, v5, p2}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 179
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_5
    return-void
.end method
