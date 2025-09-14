.class public final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppId:I

.field public final mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

.field public final mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mObserver:Lcom/android/server/pm/SharedUserSetting$1;

.field public final mPackages:Lcom/android/server/utils/WatchedArraySet;

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final name:Ljava/lang/String;

.field public final processes:Landroid/util/ArrayMap;

.field public seInfoTargetSdkVersion:I

.field public final signatures:Lcom/android/server/pm/PackageSignatures;

.field public signaturesChanged:Ljava/lang/Boolean;

.field public final uidFlags:I

.field public final uidPrivateFlags:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 2
    new-instance v0, Lcom/android/server/pm/SharedUserSetting$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedUserSetting$1;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    .line 3
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 4
    iput p1, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 5
    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 6
    iput-object p3, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const/16 p1, 0x2710

    .line 7
    iput p1, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 8
    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 9
    new-instance p2, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 10
    const-string p3, "SharedUserSetting.packages"

    const/4 v1, 0x0

    invoke-direct {p2, p1, p1, p3, v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 11
    iput-object p2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 12
    new-instance p2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 13
    new-instance p3, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 14
    const-string v1, "SharedUserSetting.mDisabledPackages"

    const/4 v2, 0x0

    invoke-direct {p3, p2, p2, v1, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 16
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 18
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 19
    new-instance p1, Lcom/android/server/pm/SharedUserSetting$2;

    const/4 p2, 0x0

    .line 20
    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 23
    new-instance v0, Lcom/android/server/pm/SharedUserSetting$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedUserSetting$1;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    .line 24
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 25
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 26
    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 27
    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 28
    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 29
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 30
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 31
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 33
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 34
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 35
    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 37
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 38
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 40
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 41
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 28
    .line 29
    iget v1, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 30
    .line 31
    or-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 38
    .line 39
    iget v1, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 40
    .line 41
    or-int/2addr v0, v1

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProcesses()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public final addProcesses(Ljava/util/Map;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    new-instance v2, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedProcess;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v2, v1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->addStateFrom(Lcom/android/internal/pm/pkg/component/ParsedProcess;Lcom/android/internal/pm/pkg/component/ParsedProcess;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final fixSeInfoLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    iget-object v3, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_3

    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget v5, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 44
    .line 45
    if-ge v4, v5, :cond_2

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 48
    .line 49
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iput v3, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-ge v1, v2, :cond_6

    .line 68
    .line 69
    iget-object v2, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 80
    .line 81
    if-nez v3, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    or-int/2addr v3, v4

    .line 93
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 94
    .line 95
    iget v5, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 96
    .line 97
    invoke-static {v2, v4, v3, v5}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;ZI)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 102
    .line 103
    iput-object v3, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v2, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    :goto_4
    return-void
.end method

.method public final getPackages()Ljava/util/List;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v1, v2, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return-object v0

    .line 56
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
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

.method public final isSingleUser()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-le v0, v2, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v2, :cond_3

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    move v1, v2

    .line 52
    :cond_2
    return v1

    .line 53
    :cond_3
    return v2
.end method

.method public final removePackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 11
    .line 12
    iget v2, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 13
    .line 14
    and-int/2addr v1, v2

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 19
    .line 20
    move v3, v2

    .line 21
    :goto_0
    iget-object v4, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 36
    .line 37
    iget v4, v4, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 38
    .line 39
    or-int/2addr v1, v4

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iput v1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget v1, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 49
    .line 50
    iget p1, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 51
    .line 52
    and-int/2addr p1, v1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget p1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 56
    .line 57
    :goto_1
    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ge v2, v1, :cond_3

    .line 64
    .line 65
    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 72
    .line 73
    iget v1, v1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 74
    .line 75
    or-int/2addr p1, v1

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

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
    const-string v1, "SharedUserSetting{"

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
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

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
    iget p0, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

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

.method public final updateProcesses()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v1, :cond_1

    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p0, v2}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method
