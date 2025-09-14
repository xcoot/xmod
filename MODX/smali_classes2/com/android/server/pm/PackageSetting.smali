.class public final Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/SettingBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageStateInternal;


# instance fields
.field public categoryOverride:I

.field public installSource:Lcom/android/server/pm/InstallSource;

.field public keySetData:Lcom/android/server/pm/PackageKeySetData;

.field public lastUpdateTime:J

.field public legacyNativeLibraryPath:Ljava/lang/String;

.field public mAppId:I

.field public mAppMetadataFilePath:Ljava/lang/String;

.field public mAppMetadataSource:I

.field public mBaseRevisionCode:I

.field public mBooleans:I

.field public mCpuAbiOverride:Ljava/lang/String;

.field public mDomainSetId:Ljava/util/UUID;

.field public mLastModifiedTime:J

.field public mLoadingCompletedTime:J

.field public mLoadingProgress:F

.field public mName:Ljava/lang/String;

.field public mOldPaths:Ljava/util/LinkedHashSet;

.field public mPath:Ljava/io/File;

.field public mPathString:Ljava/lang/String;

.field public mPrimaryCpuAbi:Ljava/lang/String;

.field public mRealName:Ljava/lang/String;

.field public mRestrictUpdateHash:[B

.field public mSecondaryCpuAbi:Ljava/lang/String;

.field public mSharedUserAppId:I

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSplitNames:[Ljava/lang/String;

.field public mSplitRevisionCodes:[I

.field public mTargetSdkVersion:I

.field public final mUserStates:Landroid/util/SparseArray;

.field public mimeGroups:Ljava/util/Map;

.field public pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

.field public final pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

.field public signatures:Lcom/android/server/pm/PackageSignatures;

.field public usesSdkLibraries:[Ljava/lang/String;

.field public usesSdkLibrariesOptional:[Z

.field public usesSdkLibrariesVersionsMajor:[J

.field public usesStaticLibraries:[Ljava/lang/String;

.field public usesStaticLibrariesVersions:[J

.field public versionCode:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 18
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 21
    new-instance v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    if-eqz p2, :cond_0

    .line 24
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 25
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lcom/android/server/pm/PackageSetting$1;

    const/4 p2, 0x0

    .line 28
    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p5}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 2
    new-instance p4, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {p4}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 3
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 p4, -0x1

    .line 4
    iput p4, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 5
    new-instance p4, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {p4, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object p4, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    const/4 p4, 0x0

    .line 6
    iput p4, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 7
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 10
    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {p1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 12
    sget-object p1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 13
    iput-object p6, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 14
    new-instance p1, Lcom/android/server/pm/PackageSetting$1;

    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public final copyMimeGroups(Ljava/util/Map;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/util/Set;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 47
    .line 48
    new-instance v4, Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 58
    .line 59
    new-instance v3, Landroid/util/ArraySet;

    .line 60
    .line 61
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

.method public final copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 4
    .line 5
    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 17
    .line 18
    .line 19
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 22
    .line 23
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 26
    .line 27
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 30
    .line 31
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 34
    .line 35
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 46
    .line 47
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 48
    .line 49
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 50
    .line 51
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 54
    .line 55
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 58
    .line 59
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    move-object v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 71
    .line 72
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 78
    .line 79
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 90
    .line 91
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 92
    .line 93
    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 94
    .line 95
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 96
    .line 97
    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 98
    .line 99
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 100
    .line 101
    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 102
    .line 103
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 106
    .line 107
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    .line 108
    .line 109
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 110
    .line 111
    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 115
    .line 116
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 119
    .line 120
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 123
    .line 124
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 125
    .line 126
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 127
    .line 128
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 131
    .line 132
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 135
    .line 136
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 137
    .line 138
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 139
    .line 140
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 141
    .line 142
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 143
    .line 144
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 145
    .line 146
    if-nez v0, :cond_1

    .line 147
    .line 148
    move-object v0, v1

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, [B

    .line 155
    .line 156
    :goto_1
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 157
    .line 158
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 159
    .line 160
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 161
    .line 162
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 163
    .line 164
    if-eqz v0, :cond_2

    .line 165
    .line 166
    array-length v2, v0

    .line 167
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, [Ljava/lang/String;

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_2
    move-object v0, v1

    .line 175
    :goto_2
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 176
    .line 177
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 178
    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    array-length v2, v0

    .line 182
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    goto :goto_3

    .line 187
    :cond_3
    move-object v0, v1

    .line 188
    :goto_3
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 189
    .line 190
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 191
    .line 192
    if-eqz v0, :cond_4

    .line 193
    .line 194
    array-length v2, v0

    .line 195
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, [Ljava/lang/String;

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_4
    move-object v0, v1

    .line 203
    :goto_4
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 204
    .line 205
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 206
    .line 207
    if-eqz v0, :cond_5

    .line 208
    .line 209
    array-length v2, v0

    .line 210
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    goto :goto_5

    .line 215
    :cond_5
    move-object v0, v1

    .line 216
    :goto_5
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 217
    .line 218
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 219
    .line 220
    if-eqz v0, :cond_6

    .line 221
    .line 222
    array-length v2, v0

    .line 223
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    goto :goto_6

    .line 228
    :cond_6
    move-object v0, v1

    .line 229
    :goto_6
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 230
    .line 231
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 232
    .line 233
    if-eqz v0, :cond_7

    .line 234
    .line 235
    array-length v2, v0

    .line 236
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, [Ljava/lang/String;

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_7
    move-object v0, v1

    .line 244
    :goto_7
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 245
    .line 246
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 247
    .line 248
    if-eqz v0, :cond_8

    .line 249
    .line 250
    array-length v1, v0

    .line 251
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    :cond_8
    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 256
    .line 257
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 260
    .line 261
    .line 262
    const/4 v0, 0x0

    .line 263
    :goto_8
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 264
    .line 265
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-ge v0, v1, :cond_a

    .line 270
    .line 271
    if-eqz p2, :cond_9

    .line 272
    .line 273
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 274
    .line 275
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 276
    .line 277
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 282
    .line 283
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 288
    .line 289
    iget-object v3, v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 290
    .line 291
    invoke-virtual {v3}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 296
    .line 297
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_9
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 308
    .line 309
    iput-object p0, v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 310
    .line 311
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 312
    .line 313
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 314
    .line 315
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_a
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 326
    .line 327
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 328
    .line 329
    .line 330
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 331
    .line 332
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 333
    .line 334
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 338
    .line 339
    iput-boolean v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 340
    .line 341
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 342
    .line 343
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-nez v0, :cond_b

    .line 348
    .line 349
    new-instance v0, Ljava/util/ArrayList;

    .line 350
    .line 351
    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 352
    .line 353
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    .line 355
    .line 356
    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 357
    .line 358
    :cond_b
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 359
    .line 360
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_c

    .line 365
    .line 366
    new-instance v0, Ljava/util/ArrayList;

    .line 367
    .line 368
    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 369
    .line 370
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 371
    .line 372
    .line 373
    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 374
    .line 375
    :cond_c
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 376
    .line 377
    iput-boolean v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 378
    .line 379
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    .line 380
    .line 381
    iput-boolean v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    .line 382
    .line 383
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 384
    .line 385
    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 386
    .line 387
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 388
    .line 389
    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 390
    .line 391
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    .line 392
    .line 393
    iput-object v0, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    .line 394
    .line 395
    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    .line 396
    .line 397
    iput-object p1, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    .line 398
    .line 399
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 400
    .line 401
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 405
    .line 406
    .line 407
    return-void
.end method

.method public final getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApexModuleName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getAppId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getAppMetadataFilePath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppMetadataSource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBoolean(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final getCategoryOverride()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 2
    .line 3
    return p0
.end method

.method public final getCpuAbiOverride()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDomainSetId()Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnabled(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getHiddenApiEnforcementPolicy()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getInstallReason(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInstalled(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getInstantApp(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getKeySetData()Lcom/android/server/pm/PackageKeySetData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLastModifiedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLastPackageUsageTime()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLastUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLoadingCompletedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLoadingProgress()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 2
    .line 3
    return p0
.end method

.method public final getMimeGroups()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
.end method

.method public final getNotInstalledUserIds()[I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/4 v4, 0x1

    .line 11
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-nez v3, :cond_2

    .line 33
    .line 34
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    new-array v2, v3, [I

    .line 38
    .line 39
    move v3, v1

    .line 40
    :goto_1
    if-ge v1, v0, :cond_4

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 49
    .line 50
    invoke-virtual {v5, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    add-int/lit8 v5, v3, 0x1

    .line 57
    .line 58
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    aput v6, v2, v3

    .line 65
    .line 66
    move v3, v5

    .line 67
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    return-object v2
.end method

.method public final getOldPaths()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPath()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPathString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrimaryCpuAbi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getPrimaryCpuAbiLegacy()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRealName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRestrictUpdateHash()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSeInfo()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getSecondaryCpuAbi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getSecondaryCpuAbiLegacy()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibraryDependencies()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getSharedUserAppId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getSigningInfo()Landroid/content/pm/SigningInfo;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/pm/SigningInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getSplitNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 15
    .line 16
    :cond_1
    return-object p0
.end method

.method public final getSplitRevisionCodes()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitRevisionCodes()[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    .line 15
    .line 16
    :cond_1
    return-object p0
.end method

.method public final getStateForUser(Landroid/os/UserHandle;)Lcom/android/server/pm/pkg/PackageUserState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/pm/pkg/PackageUserState;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public final getTargetSdkVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUninstallReason(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getUserStates()Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUsesLibraryFiles()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getUsesSdkLibraries()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final getUsesSdkLibrariesOptional()[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final getUsesSdkLibrariesVersionsMajor()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final getUsesStaticLibraries()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final getUsesStaticLibrariesVersions()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final getVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getVolumeUuid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasSharedUser()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isApex()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

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

.method public final isApkInUpdatedApex()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isDebuggable()Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDefaultToDeviceProtectedStorage()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x20

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isExternalStorage()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 2
    .line 3
    const/high16 v0, 0x40000

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isForceQueryableOverride()Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isHiddenUntilInstalled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isInstallPermissionsFixed()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 4
    .line 5
    sub-float/2addr v0, p0

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const v0, 0x322bcc77    # 1.0E-8f

    .line 11
    .line 12
    .line 13
    cmpl-float p0, p0, v0

    .line 14
    .line 15
    if-ltz p0, :cond_0

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
    return p0
.end method

.method public final isOdm()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isOem()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    const/high16 v0, 0x20000

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isPendingRestore()Z
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPersistent()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isPrivileged()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isProduct()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    const/high16 v0, 0x80000

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isRequiredForSystemUser()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0x200

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isScannedAsStoppedSystemApp()Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSystem()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final isSystemExt()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    const/high16 v0, 0x200000

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isUpdateAvailable()Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isUpdatedSystemApp()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isVendor()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    const/high16 v0, 0x40000

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object v0
.end method

.method public final modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)V

    .line 18
    .line 19
    .line 20
    move p2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p2, 0x0

    .line 23
    :goto_0
    if-eqz p3, :cond_1

    .line 24
    .line 25
    iget-object p3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    new-instance p2, Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, p2

    .line 39
    :goto_1
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-object p1
.end method

.method public overrideNonLocalizedLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 10
    .line 11
    .line 12
    return p1
.end method

.method public final queryInstalledUsers([IZ)[I
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget v4, p1, v2

    .line 8
    .line 9
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ne v4, p2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-array v0, v3, [I

    .line 21
    .line 22
    array-length v2, p1

    .line 23
    move v3, v1

    .line 24
    :goto_1
    if-ge v1, v2, :cond_3

    .line 25
    .line 26
    aget v4, p1, v1

    .line 27
    .line 28
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-ne v5, p2, :cond_2

    .line 33
    .line 34
    aput v4, v0, v3

    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    return-object v0
.end method

.method public final queryUsersInstalledOrHasData([I)[I
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    .line 7
    aget v4, p1, v2

    .line 8
    .line 9
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    new-array v0, v3, [I

    .line 31
    .line 32
    array-length v2, p1

    .line 33
    move v3, v1

    .line 34
    :goto_1
    if-ge v1, v2, :cond_5

    .line 35
    .line 36
    aget v4, p1, v1

    .line 37
    .line 38
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    :cond_3
    aput v4, v0, v3

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    return-object v0
.end method

.method public final readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public removeOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-object p0
.end method

.method public final restoreComponentLPw(ILjava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :cond_1
    or-int p1, v0, v1

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return p1
.end method

.method public final restoreComponentSettings(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v2, v0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ltz v2, :cond_2

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 21
    .line 22
    iget-object v5, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    iget-object v3, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-boolean v4, v1, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    instance-of v4, v3, Lcom/android/server/utils/Watchable;

    .line 47
    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    iget-object v4, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    check-cast v3, Lcom/android/server/utils/Watchable;

    .line 59
    .line 60
    iget-object v4, v1, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    .line 61
    .line 62
    invoke-interface {v3, v4}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {v1, v1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 66
    .line 67
    .line 68
    move v3, v0

    .line 69
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sub-int/2addr v1, v0

    .line 79
    :goto_1
    if-ltz v1, :cond_5

    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 82
    .line 83
    iget-object v4, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 84
    .line 85
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v2, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    iget-object v2, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-boolean v3, p1, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 104
    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    instance-of v3, v2, Lcom/android/server/utils/Watchable;

    .line 108
    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    iget-object v3, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_3

    .line 118
    .line 119
    check-cast v2, Lcom/android/server/utils/Watchable;

    .line 120
    .line 121
    iget-object v3, p1, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    .line 122
    .line 123
    invoke-interface {v2, v3}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {p1, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 127
    .line 128
    .line 129
    move v3, v0

    .line 130
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    if-eqz v3, :cond_6

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 136
    .line 137
    .line 138
    :cond_6
    return-void
.end method

.method public final setAppId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setAppMetadataFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setAppMetadataSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setBoolean(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 4
    .line 5
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 10
    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final setEnabled(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 8
    .line 9
    .line 10
    iput-object p3, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setFirstInstallTime(IJ)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ge v0, p1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 20
    .line 21
    iput-wide p2, v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-wide p2, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setInstalled(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setLastUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public final setSharedUserAppId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUninstallReason(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 6
    .line 7
    const-class v0, Landroid/content/pm/PackageManager$UninstallReason;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setUpdateOwnerPackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V
    .locals 7

    move-object/from16 v0, p12

    move/from16 v1, p18

    move/from16 v2, p19

    move/from16 v3, p24

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v4

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    move-wide v5, p2

    goto :goto_1

    .line 3
    :cond_0
    iget-object v5, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v5, :cond_1

    .line 4
    new-instance v5, Lcom/android/server/utils/WatchedArrayMap;

    const/4 v6, 0x0

    .line 5
    invoke-direct {v5, v6}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 6
    iput-object v5, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 7
    iget-object v5, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 8
    :cond_1
    iget-object v5, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 9
    iget-object v5, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v0}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 10
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    goto :goto_0

    .line 11
    :goto_1
    iput-wide v5, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 12
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-wide v5, p4

    .line 13
    iput-wide v5, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 14
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move v0, p6

    .line 15
    iput v0, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 16
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/4 v0, 0x1

    move v5, p7

    .line 17
    invoke-virtual {v4, v0, p7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 18
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/4 v0, 0x2

    move v5, p8

    .line 19
    invoke-virtual {v4, v0, p8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 20
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/4 v0, 0x4

    move/from16 v5, p9

    .line 21
    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 22
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/16 v0, 0x8

    move/from16 v5, p10

    .line 23
    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 24
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move/from16 v0, p11

    .line 25
    iput v0, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 26
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 v0, p15

    .line 27
    iput-object v0, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 28
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 v0, p16

    .line 29
    invoke-virtual {v4, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)V

    move-object/from16 v0, p17

    .line 30
    invoke-virtual {v4, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)V

    .line 31
    iput v1, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 32
    const-class v0, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v5, 0x0

    invoke-static {v0, v5, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 33
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 34
    iput v2, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 35
    const-class v0, Landroid/content/pm/PackageManager$UninstallReason;

    invoke-static {v0, v5, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 36
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/16 v0, 0x10

    move/from16 v1, p13

    .line 37
    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 38
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    const/16 v0, 0x20

    move/from16 v1, p14

    .line 39
    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 40
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 v0, p20

    .line 41
    iput-object v0, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 42
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 v0, p21

    .line 43
    iput-object v0, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 44
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-wide/from16 v0, p22

    .line 45
    iput-wide v0, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 46
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 47
    iput v3, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 48
    const-class v0, Landroid/content/pm/PackageManager$UserMinAspectRatio;

    invoke-static {v0, v5, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 49
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    move-object/from16 v0, p25

    .line 50
    iput-object v0, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 51
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 8
    .line 9
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PackageSetting{"

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
    const-string v1, " "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "/"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 35
    .line 36
    const-string/jumbo v1, "}"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public final updateMimeGroups(Ljava/util/Set;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 16
    .line 17
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/util/Set;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 75
    .line 76
    return-void
.end method
